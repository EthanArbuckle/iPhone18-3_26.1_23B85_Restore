@interface AVComposition
- (AVComposition)init;
- (AVComposition)initWithCoder:(id)a3;
- (AVCompositionTrack)trackWithTrackID:(CMPersistentTrackID)trackID;
- (BOOL)_clientProvidesNaturalSize;
- (BOOL)_setURLAssetInitializationOptions:(id)a3 error:(id *)a4;
- (BOOL)isDefunct;
- (CGSize)naturalSize;
- (NSArray)tracks;
- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (NSArray)tracksWithMediaType:(AVMediaType)mediaType;
- (NSDictionary)URLAssetInitializationOptions;
- (OpaqueFigAsset)_figAsset;
- (OpaqueFigFormatReader)_copyFormatReader;
- (id)_initWithComposition:(id)a3;
- (id)_mediaSelectionGroupDictionaries;
- (id)_mutableTracks;
- (id)_newTrackForIndex:(int64_t)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int)_createEmptyMutableCompositionIfNeeded;
- (void)_loadAssetInspectorAndLoaderOnce;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVComposition

- (int)_createEmptyMutableCompositionIfNeeded
{
  priv = self->_priv;
  mutableComposition = priv->mutableComposition;
  p_mutableComposition = &priv->mutableComposition;
  if (mutableComposition)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEDCD5F0](*MEMORY[0x1E695E480], 0, p_mutableComposition);
  }
}

- (id)_initWithComposition:(id)a3
{
  v12.receiver = self;
  v12.super_class = AVComposition;
  v4 = [(AVAsset *)&v12 init];
  if (!v4)
  {
    return v4;
  }

  v5 = objc_alloc_init(AVCompositionInternal);
  v4->_priv = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  CFRetain(v5);
  v4->_priv->mutableComposition = 0;
  v4->_priv->formatReaderInitializationOnce = objc_alloc_init(AVDispatchOnce);
  v4->_priv->assetInspectorInitializationOnce = objc_alloc_init(AVDispatchOnce);
  v4->_priv->tracksInitializationOnce = objc_alloc_init(AVDispatchOnce);
  v4->_priv->figAssetInitializationOnce = objc_alloc_init(AVDispatchOnce);
  v4->_priv->assetInspector = 0;
  v4->_priv->formatReader = 0;
  v4->_priv->figAsset = 0;
  v4->_priv->naturalSize = *MEMORY[0x1E695F060];
  if ([a3 _mutableComposition])
  {
    v6 = [a3 _mutableComposition];
    priv = v4->_priv;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v9 = v8(*MEMORY[0x1E695E480], v6, &priv->mutableComposition);
      if (!a3)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_12:

    return 0;
  }

  v9 = [(AVComposition *)v4 _createEmptyMutableCompositionIfNeeded];
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!v9)
  {
    v10 = *(a3 + 2);
    if (v10)
    {
      v4->_priv->naturalSize = v10[4];
      v4->_priv->URLAssetInitializationOptions = [*(*(a3 + 2) + 80) copy];
    }

    return v4;
  }

LABEL_11:
  if (v9)
  {
    goto LABEL_12;
  }

  return v4;
}

- (AVComposition)init
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:17];
  v3 = [(AVComposition *)self _initWithComposition:0];
  AVTelemetryIntervalEnd(&v5);
  return v3;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {

    v4 = self->_priv;
    formatReader = v4->formatReader;
    if (formatReader)
    {
      CFRelease(formatReader);
      self->_priv->formatReader = 0;
      v4 = self->_priv;
    }

    figAsset = v4->figAsset;
    if (figAsset)
    {
      CFRelease(figAsset);
      self->_priv->figAsset = 0;
      v4 = self->_priv;
    }

    mutableComposition = v4->mutableComposition;
    if (mutableComposition)
    {
      CFRelease(mutableComposition);
      self->_priv->mutableComposition = 0;
      v4 = self->_priv;
    }

    v8 = self->_priv;
    if (v8)
    {
      CFRelease(v8);
      self->_priv = 0;
    }
  }

  v9.receiver = self;
  v9.super_class = AVComposition;
  [(AVAsset *)&v9 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p tracks = %@>", NSStringFromClass(v4), self, -[AVComposition tracks](self, "tracks")];
}

- (void)_loadAssetInspectorAndLoaderOnce
{
  assetInspectorInitializationOnce = self->_priv->assetInspectorInitializationOnce;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__AVComposition__loadAssetInspectorAndLoaderOnce__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  [(AVDispatchOnce *)assetInspectorInitializationOnce runBlockOnce:v3];
}

void __49__AVComposition__loadAssetInspectorAndLoaderOnce__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFormatReader];
  *(*(*(a1 + 32) + 16) + 56) = [(AVFormatReaderInspector *)[AVCompositionFormatReaderInspector alloc] initWithFormatReader:v2];
  *(*(*(a1 + 32) + 16) + 48) = [[AVAssetSynchronousInspectorLoader alloc] initWithAssetInspector:*(*(*(a1 + 32) + 16) + 56)];
  if (v2)
  {

    CFRelease(v2);
  }
}

- (OpaqueFigFormatReader)_copyFormatReader
{
  if ([(AVComposition *)self _mutableComposition])
  {
    formatReaderInitializationOnce = self->_priv->formatReaderInitializationOnce;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34__AVComposition__copyFormatReader__block_invoke;
    v5[3] = &unk_1E7460C00;
    v5[4] = self;
    [(AVDispatchOnce *)formatReaderInitializationOnce runBlockOnce:v5];
  }

  result = self->_priv->formatReader;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t __34__AVComposition__copyFormatReader__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _mutableComposition];
  v3 = *(*(a1 + 32) + 16);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 16);
  if (v7)
  {

    return v7(v2, 0, 0, v3 + 40);
  }

  return result;
}

- (OpaqueFigAsset)_figAsset
{
  if ([(AVComposition *)self _mutableComposition])
  {
    figAssetInitializationOnce = self->_priv->figAssetInitializationOnce;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __26__AVComposition__figAsset__block_invoke;
    v5[3] = &unk_1E7460C00;
    v5[4] = self;
    [(AVDispatchOnce *)figAssetInitializationOnce runBlockOnce:v5];
  }

  return self->_priv->figAsset;
}

uint64_t __26__AVComposition__figAsset__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _mutableComposition];
  v3 = *(*(a1 + 32) + 16);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 208);
  if (v7)
  {

    return v7(v2, 0, 0, v3 + 104);
  }

  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [AVMutableComposition allocWithZone:a3];

  return [(AVMutableComposition *)v4 _initWithComposition:self];
}

- (id)_newTrackForIndex:(int64_t)a3
{
  v5 = [AVCompositionTrack alloc];

  return [(AVAssetTrack *)v5 _initWithAsset:self trackIndex:a3];
}

- (id)_mutableTracks
{
  tracksInitializationOnce = self->_priv->tracksInitializationOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AVComposition__mutableTracks__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)tracksInitializationOnce runBlockOnce:v5];
  return self->_priv->tracks;
}

void __31__AVComposition__mutableTracks__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0;
  *(*(*(a1 + 32) + 16) + 88) = v2;
  v3 = [*(a1 + 32) _copyFormatReader];
  if (v3)
  {
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      if (!v5(v4, &v9) && v9 >= 1)
      {
        v7 = 0;
        while (1)
        {
          v8 = [*(a1 + 32) _newTrackForIndex:v7];
          if (!v8)
          {
            break;
          }

          [v2 addObject:v8];
          if (++v7 >= v9)
          {
            goto LABEL_12;
          }
        }

        [*(*(*(a1 + 32) + 16) + 88) removeAllObjects];
      }
    }

LABEL_12:
    CFRelease(v4);
  }
}

- (NSArray)tracks
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:20];
  v3 = [-[AVComposition _mutableTracks](self "_mutableTracks")];
  AVTelemetryIntervalEnd(&v5);
  return v3;
}

- (AVCompositionTrack)trackWithTrackID:(CMPersistentTrackID)trackID
{
  v3 = *&trackID;
  v6.receiver = self;
  v6.super_class = AVComposition;
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:21];
  v4 = [(AVAsset *)&v6 trackWithTrackID:v3];
  AVTelemetryIntervalEnd(&v7);
  return v4;
}

- (NSArray)tracksWithMediaType:(AVMediaType)mediaType
{
  v6.receiver = self;
  v6.super_class = AVComposition;
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:22];
  v4 = [(AVAsset *)&v6 tracksWithMediaType:mediaType];
  AVTelemetryIntervalEnd(&v7);
  return v4;
}

- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v6.receiver = self;
  v6.super_class = AVComposition;
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:23];
  v4 = [(AVAsset *)&v6 tracksWithMediaCharacteristic:mediaCharacteristic];
  AVTelemetryIntervalEnd(&v7);
  return v4;
}

- (BOOL)_clientProvidesNaturalSize
{
  priv = self->_priv;
  height = priv->naturalSize.height;
  v4 = priv->naturalSize.width != *MEMORY[0x1E695F060];
  return height != *(MEMORY[0x1E695F060] + 8) || v4;
}

- (CGSize)naturalSize
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:24];
  if ([(AVComposition *)self _clientProvidesNaturalSize])
  {
    priv = self->_priv;
    width = priv->naturalSize.width;
    height = priv->naturalSize.height;
  }

  else
  {
    v6 = [(AVComposition *)self tracksWithMediaType:@"vide"];
    if ([(NSArray *)v6 count])
    {
      [-[NSArray objectAtIndex:](v6 objectAtIndex:{0), "naturalSize"}];
      width = v7;
      height = v8;
    }

    else
    {
      width = 0.0;
      height = 0.0;
    }
  }

  AVTelemetryIntervalEnd(&v11);
  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)_mediaSelectionGroupDictionaries
{
  v6 = 0;
  mutableComposition = self->_priv->mutableComposition;
  if (mutableComposition)
  {
    FigBaseObject = FigMutableCompositionGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(FigBaseObject, *MEMORY[0x1E6973838], *MEMORY[0x1E695E480], &v6);
      mutableComposition = v6;
    }

    else
    {
      mutableComposition = 0;
    }
  }

  return mutableComposition;
}

- (BOOL)_setURLAssetInitializationOptions:(id)a3 error:(id *)a4
{
  v6 = [a3 copy];

  self->_priv->URLAssetInitializationOptions = v6;
  v14 = 0;
  v7 = [AVURLAsset _getFigAssetCreationOptionsFromURLAssetInitializationOptions:v6 assetLoggingIdentifier:0 figAssetCreationFlags:&v14 error:a4];
  if (v7)
  {
    [(AVComposition *)self _mutableComposition];
    FigBaseObject = FigMutableCompositionGetFigBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v9(FigBaseObject, *MEMORY[0x1E6971FC0], v7);
    }

    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v14];
    v11 = FigMutableCompositionGetFigBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(v11, *MEMORY[0x1E6971FB8], v10);
    }
  }

  return v7 != 0;
}

- (NSDictionary)URLAssetInitializationOptions
{
  result = self->_priv->URLAssetInitializationOptions;
  if (!result)
  {
    return [MEMORY[0x1E695DF20] dictionary];
  }

  return result;
}

- (BOOL)isDefunct
{
  v8 = 0;
  mutableComposition = self->_priv->mutableComposition;
  v3 = *(CMBaseObjectGetVTable() + 8);
  if (*v3 < 5uLL)
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = v3[11];
    if (v4)
    {
      LOBYTE(v4) = v4(mutableComposition, &v8) == 0;
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v5)
  {
    v5 = v6;
  }

  return v5 == 1;
}

- (AVComposition)initWithCoder:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v81 = [[AVTelemetryInterval alloc] initAndStartWith:18];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  obj = [a3 decodeObjectOfClasses:objc_msgSend(v4 forKey:{"setWithObjects:", v5, v6, v7, v8, v9, objc_opt_class(), 0), @"tracks"}];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [a3 decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, v12, objc_opt_class(), 0), @"naturalSize"}];
  v60 = +[AVMutableComposition compositionWithURLAssetInitializationOptions:](AVMutableComposition, "compositionWithURLAssetInitializationOptions:", [a3 decodeObjectOfClasses:+[AVURLAsset _initializationOptionsClasses](AVURLAsset forKey:{"_initializationOptionsClasses"), @"URLAssetInitializationOptions"}]);
  if (v13)
  {
    size = *MEMORY[0x1E695F060];
    if (CGSizeMakeWithDictionaryRepresentation(v13, &size))
    {
      [(AVMutableComposition *)v60 setNaturalSize:size.width, size.height];
    }
  }

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [a3 decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithObjects:", v15, v16, v17, objc_opt_class(), 0), @"compositionMetadataArray"}];
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v18, "count")}];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v20 = [v18 countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v20)
  {
    v21 = *v78;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v78 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [AVMetadataItem _metadataItemWithFigMetadataDictionary:*(*(&v77 + 1) + 8 * i)];
        if (v23)
        {
          [v19 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v20);
  }

  if (v19)
  {
    [(AVMutableComposition *)v60 setMetadata:v19];
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v61 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v61)
  {
    v59 = *v74;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v74 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v73 + 1) + 8 * j);
        v25 = [v24 objectForKey:@"mediaType"];
        v26 = [objc_msgSend(v24 objectForKey:{@"trackID", "integerValue"}];
        v27 = [v24 objectForKey:@"segments"];
        v28 = [objc_msgSend(v24 objectForKey:{@"isEnabled", "BOOLValue"}];
        v29 = [(AVMutableComposition *)v60 addMutableTrackWithMediaType:v25 preferredTrackID:v26];
        v30 = v29;
        if (v29)
        {
          [(AVMutableCompositionTrack *)v29 setSegments:v27];
          [(AVMutableCompositionTrack *)v30 setEnabled:v28];
          v31 = [v24 objectForKey:@"naturalTimeScale"];
          if (v31)
          {
            -[AVMutableCompositionTrack setNaturalTimeScale:](v30, "setNaturalTimeScale:", [v31 integerValue]);
          }

          v32 = [v24 objectForKey:@"languageCode"];
          if (v32)
          {
            [(AVMutableCompositionTrack *)v30 setLanguageCode:v32];
          }

          v33 = [v24 objectForKey:@"extendedLanguageTag"];
          if (v33)
          {
            [(AVMutableCompositionTrack *)v30 setExtendedLanguageTag:v33];
          }

          if ([v24 objectForKey:@"preferredTransform"])
          {
            CGAffineTransformFromNSArray(&size);
            [(AVMutableCompositionTrack *)v30 setPreferredTransform:&size];
          }

          v34 = [v24 objectForKey:@"preferredVolume"];
          if (v34)
          {
            [v34 floatValue];
            [(AVMutableCompositionTrack *)v30 setPreferredVolume:?];
          }

          v35 = [v24 objectForKey:@"alternateGroupID"];
          if (v35)
          {
            -[AVMutableCompositionTrack setAlternateGroupID:](v30, "setAlternateGroupID:", [v35 intValue]);
          }

          v62 = v24;
          v36 = [v24 objectForKey:@"formatDescriptionReplacements"];
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v37 = [v36 countByEnumeratingWithState:&v68 objects:v83 count:16];
          if (v37)
          {
            v38 = *v69;
            do
            {
              for (k = 0; k != v37; ++k)
              {
                if (*v69 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v40 = *(*(&v68 + 1) + 8 * k);
                v41 = [v40 objectForKey:@"originalFormatDescription"];
                v42 = [v40 objectForKey:@"replacementFormatDescription"];
                v43 = v42;
                if (v41)
                {
                  v44 = v42 == 0;
                }

                else
                {
                  v44 = 1;
                }

                if (!v44)
                {
                  v45 = AVFormatDescriptionFromSerializedAtomData(v41);
                  v46 = AVFormatDescriptionFromSerializedAtomData(v43);
                  v47 = v46;
                  if (v45)
                  {
                    v48 = v46 == 0;
                  }

                  else
                  {
                    v48 = 1;
                  }

                  if (!v48)
                  {
                    [(AVMutableCompositionTrack *)v30 replaceFormatDescription:v45 withFormatDescription:v46];
                    goto LABEL_48;
                  }

                  if (v45)
                  {
LABEL_48:
                    CFRelease(v45);
                  }

                  if (v47)
                  {
                    CFRelease(v47);
                  }

                  continue;
                }
              }

              v37 = [v36 countByEnumeratingWithState:&v68 objects:v83 count:16];
            }

            while (v37);
          }

          v49 = [v62 objectForKey:@"trackMetadataArray"];
          v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v49, "count")}];
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v51 = [v49 countByEnumeratingWithState:&v64 objects:v82 count:16];
          if (v51)
          {
            v52 = *v65;
            do
            {
              for (m = 0; m != v51; ++m)
              {
                if (*v65 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                v54 = [AVMetadataItem _metadataItemWithFigMetadataDictionary:*(*(&v64 + 1) + 8 * m)];
                if (v54)
                {
                  [v50 addObject:v54];
                }
              }

              v51 = [v49 countByEnumeratingWithState:&v64 objects:v82 count:16];
            }

            while (v51);
          }

          if (v50)
          {
            [(AVMutableCompositionTrack *)v30 setMetadata:v50];
          }
        }
      }

      v61 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v61);
  }

  v55 = [(AVComposition *)self _initWithComposition:v60];
  AVTelemetryIntervalEnd(&v81);
  return v55;
}

- (void)encodeWithCoder:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v69 = [[AVTelemetryInterval alloc] initAndStartWith:19];
  v5 = [(AVComposition *)self tracks];
  v45 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v5, "count")}];
  v43 = a3;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v6)
  {
    v44 = *v66;
    do
    {
      v7 = 0;
      v46 = v6;
      do
      {
        if (*v66 != v44)
        {
          objc_enumerationMutation(v5);
        }

        v47 = v7;
        v8 = *(*(&v65 + 1) + 8 * v7);
        v9 = MEMORY[0x1E695DF90];
        v10 = [v8 mediaType];
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "trackID")}];
        v12 = [v8 segments];
        v13 = [v9 dictionaryWithObjectsAndKeys:{v10, @"mediaType", v11, @"trackID", v12, @"segments", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(v8, "isEnabled")), @"isEnabled", 0}];
        v14 = [v8 naturalTimeScale];
        if (v14)
        {
          [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v14), @"naturalTimeScale"}];
        }

        v15 = [v8 languageCode];
        if (v15)
        {
          [v13 setObject:v15 forKey:@"languageCode"];
        }

        v16 = [v8 extendedLanguageTag];
        if (v16)
        {
          [v13 setObject:v16 forKey:@"extendedLanguageTag"];
        }

        memset(&v64, 0, sizeof(v64));
        if (v8)
        {
          [v8 preferredTransform];
        }

        t1 = v64;
        v17 = *(MEMORY[0x1E695EFD0] + 16);
        *&t2.a = *MEMORY[0x1E695EFD0];
        *&t2.c = v17;
        *&t2.tx = *(MEMORY[0x1E695EFD0] + 32);
        if (!CGAffineTransformEqualToTransform(&t1, &t2))
        {
          t1 = v64;
          [v13 setObject:NSArrayFromCGAffineTransform() forKey:@"preferredTransform"];
        }

        [v8 preferredVolume];
        if (v18 != 1.0)
        {
          [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:"), @"preferredVolume"}];
        }

        v19 = [v8 alternateGroupID];
        if (v19)
        {
          [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v19), @"alternateGroupID"}];
        }

        v49 = v13;
        v20 = [v8 formatDescriptionReplacements];
        v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v20, "count")}];
        v48 = v8;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v22 = [v20 countByEnumeratingWithState:&v58 objects:v74 count:16];
        if (v22)
        {
          v23 = *v59;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v59 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v58 + 1) + 8 * i);
              v26 = AVSerializedAtomDataFromFormatDescription([v25 originalFormatDescription]);
              v27 = AVSerializedAtomDataFromFormatDescription([v25 replacementFormatDescription]);
              v28 = v27;
              if (v26)
              {
                v29 = v27 == 0;
              }

              else
              {
                v29 = 1;
              }

              if (!v29)
              {
                v72[0] = @"originalFormatDescription";
                v72[1] = @"replacementFormatDescription";
                v73[0] = v26;
                v73[1] = v27;
                [v21 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v73, v72, 2)}];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v58 objects:v74 count:16];
          }

          while (v22);
        }

        if ([v21 count])
        {
          [v49 setObject:v21 forKey:@"formatDescriptionReplacements"];
        }

        v30 = [v48 metadata];
        v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v30, "count")}];
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v32 = [v30 countByEnumeratingWithState:&v54 objects:v71 count:16];
        if (v32)
        {
          v33 = *v55;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v55 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = [*(*(&v54 + 1) + 8 * j) _figMetadataDictionary];
              if (v35)
              {
                [v31 addObject:v35];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v54 objects:v71 count:16];
          }

          while (v32);
        }

        if ([v31 count])
        {
          [v49 setObject:v31 forKey:@"trackMetadataArray"];
        }

        [v45 addObject:v49];
        v7 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v6);
  }

  [v43 encodeObject:v45 forKey:@"tracks"];
  if ([(AVComposition *)self _clientProvidesNaturalSize])
  {
    [(AVComposition *)self naturalSize];
    [v43 encodeObject:CGSizeCreateDictionaryRepresentation(v77) forKey:@"naturalSize"];
  }

  v36 = [(AVComposition *)self URLAssetInitializationOptions];
  if ([(NSDictionary *)v36 count])
  {
    [v43 encodeObject:v36 forKey:@"URLAssetInitializationOptions"];
  }

  v37 = [(AVAsset *)self metadata];
  v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v37, "count")}];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v39 = [(NSArray *)v37 countByEnumeratingWithState:&v50 objects:v70 count:16];
  if (v39)
  {
    v40 = *v51;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v51 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [*(*(&v50 + 1) + 8 * k) _figMetadataDictionary];
        if (v42)
        {
          [v38 addObject:v42];
        }
      }

      v39 = [(NSArray *)v37 countByEnumeratingWithState:&v50 objects:v70 count:16];
    }

    while (v39);
  }

  if ([v38 count])
  {
    [v43 encodeObject:v38 forKey:@"compositionMetadataArray"];
  }

  AVTelemetryIntervalEnd(&v69);
}

@end