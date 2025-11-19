@interface AVAssetWriterInputUnknownHelper
- (AVAssetWriterInputUnknownHelper)initWithConfigurationState:(id)a3;
- (AVAssetWriterInputUnknownHelper)initWithMediaType:(id)a3 outputSettings:(id)a4 sourceFormatHint:(opaqueCMFormatDescription *)a5;
- (BOOL)_canAddTrackAssociationWithTrackOfInput:(id)a3 type:(id)a4 exceptionReason:(id *)a5;
- (BOOL)_validateLanguageCode:(id)a3;
- (BOOL)canStartRespondingToEachPassDescriptionReturningReason:(id *)a3;
- (void)addTrackAssociationWithTrackOfInput:(id)a3 type:(id)a4;
- (void)setAlternateGroupID:(signed __int16)a3;
- (void)setExpectsMediaDataInRealTime:(BOOL)a3;
- (void)setExtendedLanguageTag:(id)a3;
- (void)setLanguageCode:(id)a3;
- (void)setLayer:(int64_t)a3;
- (void)setMarksOutputTrackAsEnabled:(BOOL)a3;
- (void)setMaximizePowerEfficiency:(BOOL)a3;
- (void)setMediaDataLocation:(id)a3;
- (void)setMediaTimeScale:(int)a3;
- (void)setMetadata:(id)a3;
- (void)setNaturalSize:(CGSize)a3;
- (void)setPerformsMultiPassEncodingIfSupported:(BOOL)a3;
- (void)setPreferredMediaChunkAlignment:(int64_t)a3;
- (void)setPreferredMediaChunkDuration:(id *)a3;
- (void)setPreferredMediaChunkSize:(int64_t)a3;
- (void)setPreferredVolume:(float)a3;
- (void)setProvisionalAlternateGroupID:(signed __int16)a3;
- (void)setSampleReferenceBaseURL:(id)a3;
- (void)setSourcePixelBufferAttributes:(id)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation AVAssetWriterInputUnknownHelper

- (AVAssetWriterInputUnknownHelper)initWithConfigurationState:(id)a3
{
  v19.receiver = self;
  v19.super_class = AVAssetWriterInputUnknownHelper;
  v5 = [(AVAssetWriterInputHelper *)&v19 initWithConfigurationState:?];
  if (![a3 mediaType])
  {
    v7 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "mediaType != nil";
    goto LABEL_8;
  }

  if (![a3 metadataItems])
  {
    v16 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState metadataItems] != nil";
    goto LABEL_8;
  }

  if (![a3 trackReferences])
  {
    v17 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState trackReferences] != nil";
LABEL_8:
    v18 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, v15), 0}];
    objc_exception_throw(v18);
  }

  return v5;
}

- (AVAssetWriterInputUnknownHelper)initWithMediaType:(id)a3 outputSettings:(id)a4 sourceFormatHint:(opaqueCMFormatDescription *)a5
{
  v9 = objc_alloc_init(AVAssetWriterInputConfigurationState);
  [(AVAssetWriterInputConfigurationState *)v9 setMediaType:a3];
  [(AVAssetWriterInputConfigurationState *)v9 setOutputSettings:a4];
  [(AVAssetWriterInputConfigurationState *)v9 setSourceFormatHint:a5];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v16 = *MEMORY[0x1E695EFD0];
  v17 = v10;
  v18 = *(MEMORY[0x1E695EFD0] + 32);
  [(AVAssetWriterInputConfigurationState *)v9 setTransform:&v16];
  -[AVAssetWriterInputConfigurationState setMetadataItems:](v9, "setMetadataItems:", [MEMORY[0x1E695DEC8] array]);
  [(AVAssetWriterInputConfigurationState *)v9 setExpectsMediaDataInRealTime:0];
  [(AVAssetWriterInputConfigurationState *)v9 setNaturalSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(AVAssetWriterInputConfigurationState *)v9 setMarksOutputTrackAsEnabled:1];
  v11 = [a3 isEqualToString:@"soun"];
  v12 = 0.0;
  if (v11)
  {
    *&v12 = 1.0;
  }

  [(AVAssetWriterInputConfigurationState *)v9 setPreferredVolume:v12];
  -[AVAssetWriterInputConfigurationState setLayer:](v9, "setLayer:", [a3 isEqualToString:@"clcp"] << 63 >> 63);
  [(AVAssetWriterInputConfigurationState *)v9 setAlternateGroupID:0];
  [(AVAssetWriterInputConfigurationState *)v9 setProvisionalAlternateGroupID:0];
  -[AVAssetWriterInputConfigurationState setTrackReferences:](v9, "setTrackReferences:", [MEMORY[0x1E695DF20] dictionary]);
  v16 = *MEMORY[0x1E6960C70];
  *&v17 = *(MEMORY[0x1E6960C70] + 16);
  [(AVAssetWriterInputConfigurationState *)v9 setPreferredMediaChunkDuration:&v16];
  [(AVAssetWriterInputConfigurationState *)v9 setPreferredMediaChunkAlignment:FigGetCFPreferenceNumberWithDefault()];
  [(AVAssetWriterInputConfigurationState *)v9 setPreferredMediaChunkSize:0];
  if (([a3 isEqualToString:@"meta"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"auxv"))
  {
    v13 = @"AVAssetWriterInputMediaDataLocationSparselyInterleavedWithMainMediaData";
  }

  else
  {
    v13 = @"AVAssetWriterInputMediaDataLocationInterleavedWithMainMediaData";
  }

  [(AVAssetWriterInputConfigurationState *)v9 setMediaDataLocation:v13];
  [(AVAssetWriterInputConfigurationState *)v9 setMaximizePowerEfficiency:0];
  v14 = [(AVAssetWriterInputUnknownHelper *)self initWithConfigurationState:v9];

  return v14;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v4 = [(AVAssetWriterInputHelper *)self configurationState];
  v5 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v5;
  v6[2] = *&a3->tx;
  [(AVAssetWriterInputConfigurationState *)v4 setTransform:v6];
}

- (void)setMetadata:(id)a3
{
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setMetadataItems:a3];
}

- (void)setMediaTimeScale:(int)a3
{
  v3 = *&a3;
  v6 = [(NSString *)[(AVAssetWriterInputHelper *)self mediaType] isEqualToString:@"soun"];
  if (v3 && v6)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_opt_class();
    v16 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithClassAndSelector(v10 userInfo:{a2, @"Cannot set a non-default media time scale on an asset writer input with media type AVMediaTypeAudio", v11, v12, v13, v14, v15, v17), 0}];
    objc_exception_throw(v16);
  }

  v7 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v7 setMediaTimeScale:v3];
}

- (void)setExpectsMediaDataInRealTime:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setExpectsMediaDataInRealTime:v3];
}

- (void)setMaximizePowerEfficiency:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setMaximizePowerEfficiency:v3];
}

- (void)setNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v5 setNaturalSize:width, height];
}

- (BOOL)_validateLanguageCode:(id)a3
{
  v3 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:a3];
  v4 = [v3 objectForKey:*MEMORY[0x1E695D9B0]];
  return [v4 length] == 2 || objc_msgSend(v4, "length") == 3;
}

- (void)setLanguageCode:(id)a3
{
  if (a3 && [a3 length] && !-[AVAssetWriterInputUnknownHelper _validateLanguageCode:](self, "_validateLanguageCode:", a3))
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = objc_opt_class();
    v15 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithClassAndSelector(v9 userInfo:{a2, @"languageCode %@ does not conform to the ISO 639-2/T language code", v10, v11, v12, v13, v14, a3), 0}];
    objc_exception_throw(v15);
  }

  v6 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v6 setLanguageCode:a3];
}

- (void)setExtendedLanguageTag:(id)a3
{
  if (a3 && [a3 length] && !-[AVAssetWriterInputUnknownHelper _validateLanguageCode:](self, "_validateLanguageCode:", a3))
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = objc_opt_class();
    v15 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithClassAndSelector(v9 userInfo:{a2, @"extendedLanguageTag %@ does not conform to the IETF BCP 47 (RFC 4646) language identifier", v10, v11, v12, v13, v14, a3), 0}];
    objc_exception_throw(v15);
  }

  v6 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v6 setExtendedLanguageTag:a3];
}

- (void)setMarksOutputTrackAsEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setMarksOutputTrackAsEnabled:v3];
}

- (void)setPreferredVolume:(float)a3
{
  v4 = [(AVAssetWriterInputHelper *)self configurationState];
  *&v5 = a3;

  [(AVAssetWriterInputConfigurationState *)v4 setPreferredVolume:v5];
}

- (void)setLayer:(int64_t)a3
{
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setLayer:a3];
}

- (void)setAlternateGroupID:(signed __int16)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setAlternateGroupID:v3];
}

- (void)setProvisionalAlternateGroupID:(signed __int16)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setProvisionalAlternateGroupID:v3];
}

- (void)setPerformsMultiPassEncodingIfSupported:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setPerformsMultiPassEncodingIfSupported:v3];
}

- (void)setSourcePixelBufferAttributes:(id)a3
{
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setSourcePixelBufferAttributes:a3];
}

- (void)setPreferredMediaChunkDuration:(id *)a3
{
  v4 = [(AVAssetWriterInputHelper *)self configurationState];
  v5 = *a3;
  [(AVAssetWriterInputConfigurationState *)v4 setPreferredMediaChunkDuration:&v5];
}

- (void)setPreferredMediaChunkAlignment:(int64_t)a3
{
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setPreferredMediaChunkAlignment:a3];
}

- (void)setPreferredMediaChunkSize:(int64_t)a3
{
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setPreferredMediaChunkSize:a3];
}

- (void)setMediaDataLocation:(id)a3
{
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setMediaDataLocation:a3];
}

- (void)setSampleReferenceBaseURL:(id)a3
{
  v4 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v4 setSampleReferenceBaseURL:a3];
}

- (BOOL)_canAddTrackAssociationWithTrackOfInput:(id)a3 type:(id)a4 exceptionReason:(id *)a5
{
  if (![a4 isEqualToString:@"forc"])
  {
    if ([a4 isEqualToString:@"folw"] && (!-[NSString isEqualToString:](-[AVAssetWriterInputHelper mediaType](self, "mediaType"), "isEqualToString:", @"soun") || (objc_msgSend(objc_msgSend(a3, "mediaType"), "isEqualToString:", @"sbtl") & 1) == 0))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = @"Associations of type AVTrackAssociationTypeSelectionFollower are supported only between AVMediaTypeAudio and AVMediaTypeSubtitle tracks.";
      goto LABEL_26;
    }

    if ([a4 isEqualToString:@"chap"])
    {
      if ([(NSString *)[(AVAssetWriterInputHelper *)self mediaType] isEqualToString:@"vide"])
      {
        v13 = 0;
      }

      else
      {
        v13 = ![(NSString *)[(AVAssetWriterInputHelper *)self mediaType] isEqualToString:@"soun"];
      }

      if ([objc_msgSend(a3 "mediaType")] & 1) != 0 || (objc_msgSend(objc_msgSend(a3, "mediaType"), "isEqualToString:", @"text"))
      {
        v15 = 0;
      }

      else
      {
        v15 = [objc_msgSend(a3 "mediaType")] ^ 1;
      }

      if ((v13 | v15))
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = @"Associations of type AVTrackAssociationTypeChapterList are supported only between (AVMediaTypeVideo/AVMediaTypeAudio) and (AVMediaTypeVideo/AVMediaTypeMetadata/AVMediaTypeText) tracks.";
        goto LABEL_26;
      }
    }

    else
    {
      if ([a4 isEqualToString:@"cdsc"] && !-[NSString isEqualToString:](-[AVAssetWriterInputHelper mediaType](self, "mediaType"), "isEqualToString:", @"meta"))
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = @"Associations of type AVTrackAssociationTypeMetadataReferent are supported only between tracks of mediaType AVMediaTypeMetadata and other tracks.";
        goto LABEL_26;
      }

      if ([a4 length] != 4)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trackAssociationType %@ must be 4 characters long.", a4];
        goto LABEL_27;
      }
    }

LABEL_30:
    v14 = 0;
    v16 = 1;
    if (!a5)
    {
      return v16;
    }

    goto LABEL_28;
  }

  v9 = [(AVAssetWriterInputHelper *)self mediaType];
  v10 = [a3 mediaType];
  if (-[NSString isEqualToString:](v9, "isEqualToString:", @"sbtl") || -[NSString isEqualToString:](v9, "isEqualToString:", @"text")) && (([v10 isEqualToString:@"sbtl"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"text")))
  {
    goto LABEL_30;
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = @"Associations of type AVTrackAssociationTypeForcedSubtitlesOnly are supported only between tracks with media type AVMediaTypeSubtitle or AVMediaTypeText.";
LABEL_26:
  v14 = [v11 stringWithFormat:v12, v18];
LABEL_27:
  v16 = 0;
  if (a5)
  {
LABEL_28:
    *a5 = v14;
  }

  return v16;
}

- (void)addTrackAssociationWithTrackOfInput:(id)a3 type:(id)a4
{
  v22 = 0;
  if (![(AVAssetWriterInputUnknownHelper *)self _canAddTrackAssociationWithTrackOfInput:a3 type:a4 exceptionReason:&v22])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = objc_opt_class();
    v20 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithClassAndSelector(v14 userInfo:{a2, v22, v15, v16, v17, v18, v19, v21), 0}];
    objc_exception_throw(v20);
  }

  v8 = [(AVAssetWriterInputHelper *)self configurationState];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[AVAssetWriterInputConfigurationState trackReferences](v8, "trackReferences")}];
  v10 = [v9 objectForKey:a4];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithArray:v10];
    [v11 addObject:a3];
  }

  else
  {
    v11 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
  }

  [v9 setObject:v11 forKey:a4];
  [(AVAssetWriterInputConfigurationState *)v8 setTrackReferences:v9];
}

- (BOOL)canStartRespondingToEachPassDescriptionReturningReason:(id *)a3
{
  if (a3)
  {
    *a3 = @"cannot be called before attaching to an instance of AVAssetWriter and calling -startWriting on this attached asset writer";
  }

  return 0;
}

@end