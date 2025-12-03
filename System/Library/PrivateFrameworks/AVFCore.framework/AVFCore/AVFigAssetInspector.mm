@interface AVFigAssetInspector
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumTimeOffsetFromLive;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overallDurationHint;
- (AVFigAssetInspector)initWithFigAsset:(OpaqueFigAsset *)asset;
- (BOOL)_hasQTSaveRestriction;
- (BOOL)_isDefunct;
- (BOOL)_isStreaming;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)preferredTransform;
- (CGSize)maximumVideoResolution;
- (CGSize)naturalSize;
- (NSArray)contentKeySpecifiersEligibleForPreloading;
- (OpaqueFigFormatReader)_copyFormatReader;
- (float)preferredRate;
- (float)preferredVolume;
- (id)_localizedMediaSelectionOptionDisplayNames;
- (id)_nameForProxy;
- (id)availableMetadataFormats;
- (id)commonMetadata;
- (id)creationDate;
- (id)httpSessionIdentifier;
- (id)identifyingTagClass;
- (id)lyrics;
- (id)metadataForFormat:(id)format;
- (id)preferredDisplayCriteria;
- (id)propertyListForProxy;
- (id)uniqueIdentifier;
- (int)naturalTimeScale;
- (int64_t)trackCount;
- (unint64_t)downloadToken;
- (unint64_t)hash;
- (void)_valueAsCFTypeForProperty:(__CFString *)property;
- (void)_valueAsCFTypeForProperty:(__CFString *)property propertyString:(id)string;
- (void)dealloc;
@end

@implementation AVFigAssetInspector

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  result = NSStringFromSelector(sel_duration);
  if (self)
  {
    v6 = *MEMORY[0x1E6973820];

    return [(AVFigObjectInspector *)self _timeForProperty:v6 propertyString:result];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (BOOL)_isStreaming
{
  checkIsStreamingOnce = self->_checkIsStreamingOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__AVFigAssetInspector__isStreaming__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)checkIsStreamingOnce runBlockOnce:v5];
  return self->_isStreaming;
}

uint64_t __35__AVFigAssetInspector__isStreaming__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _tollFreeBridgedObjectForProperty:*MEMORY[0x1E6971180]];
  result = [v2 isEqualToString:*MEMORY[0x1E6971508]];
  *(*(a1 + 32) + 40) = result;
  return result;
}

- (int64_t)trackCount
{
  v2 = [(AVFigObjectInspector *)self _nonNilArrayForProperty:*MEMORY[0x1E6971308]];

  return [v2 count];
}

- (AVFigAssetInspector)initWithFigAsset:(OpaqueFigAsset *)asset
{
  v7.receiver = self;
  v7.super_class = AVFigAssetInspector;
  v4 = [(AVFigAssetInspector *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (asset)
    {
      v4->_figAsset = CFRetain(asset);
      v5->_checkIsStreamingOnce = objc_alloc_init(AVDispatchOnce);
      v5->_makeDisplayCriteriaOnce = objc_alloc_init(AVDispatchOnce);
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  figAsset = self->_figAsset;
  if (figAsset)
  {
    CFRelease(figAsset);
  }

  self->_displayCriteria = 0;
  v4.receiver = self;
  v4.super_class = AVFigAssetInspector;
  [(AVFigAssetInspector *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  _figAsset = [(AVFigAssetInspector *)self _figAsset];
  _figAsset2 = [equal _figAsset];
  if (_figAsset == _figAsset2)
  {
    return 1;
  }

  v7 = _figAsset2;
  result = 0;
  if (_figAsset)
  {
    if (v7)
    {
      return CFEqual(_figAsset, v7) != 0;
    }
  }

  return result;
}

- (unint64_t)hash
{
  _figAsset = [(AVFigAssetInspector *)self _figAsset];
  if (_figAsset)
  {

    return CFHash(_figAsset);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AVFigAssetInspector;
    return [(AVFigAssetInspector *)&v5 hash];
  }
}

- (OpaqueFigFormatReader)_copyFormatReader
{
  v5 = 0;
  result = self->_figAsset;
  if (result)
  {
    CMBaseObject = FigAssetGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E6971228], *MEMORY[0x1E695E480], &v5);
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_valueAsCFTypeForProperty:(__CFString *)property propertyString:(id)string
{
  cf = 0;
  v11 = 0;
  _figAsset = [(AVFigAssetInspector *)self _figAsset];
  if (_figAsset)
  {
    v7 = _figAsset;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v8)
    {
      v8(v7, property, *MEMORY[0x1E695E480], &v11, &cf);
      if (cf)
      {
        AVLogRuntimeIssueIndicatingAssetPropertyLoadHangRisk(string);
        CFRelease(cf);
      }
    }
  }

  return v11;
}

- (void)_valueAsCFTypeForProperty:(__CFString *)property
{
  v7 = 0;
  result = [(AVFigAssetInspector *)self _figAsset];
  if (result)
  {
    CMBaseObject = FigAssetGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, property, *MEMORY[0x1E695E480], &v7);
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)identifyingTagClass
{
  v2 = [(AVFigObjectInspector *)self _SInt32ForProperty:*MEMORY[0x1E6971290]];
  if (v2 == 2)
  {
    v3 = MEMORY[0x1E6982C50];
    return *v3;
  }

  if (!v2)
  {
    v3 = MEMORY[0x1E6982C48];
    return *v3;
  }

  return 0;
}

- (id)httpSessionIdentifier
{
  result = [(AVFigObjectInspector *)self _stringForProperty:*MEMORY[0x1E6971278]];
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:result];

    return v3;
  }

  return result;
}

- (id)uniqueIdentifier
{
  result = [(AVFigObjectInspector *)self _stringForProperty:*MEMORY[0x1E6971278]];
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:result];

    return v3;
  }

  return result;
}

- (float)preferredRate
{
  v3 = *MEMORY[0x1E6973848];
  v4 = NSStringFromSelector(sel_preferredRate);
  LODWORD(v5) = 1.0;

  [(AVFigObjectInspector *)self _floatForProperty:v3 defaultValue:v4 propertyString:v5];
  return result;
}

- (float)preferredVolume
{
  v3 = *MEMORY[0x1E6973860];
  v4 = NSStringFromSelector(sel_preferredVolume);
  LODWORD(v5) = 1.0;

  [(AVFigObjectInspector *)self _floatForProperty:v3 defaultValue:v4 propertyString:v5];
  return result;
}

- (CGAffineTransform)preferredTransform
{
  result = NSStringFromSelector(sel_preferredTransform);
  if (self)
  {
    v6 = *MEMORY[0x1E6973858];

    return [(AVFigObjectInspector *)self _affineTransformForProperty:v6 propertyString:result];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGSize)naturalSize
{
  v4.receiver = self;
  v4.super_class = AVFigAssetInspector;
  [(AVAssetInspector *)&v4 naturalSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (int)naturalTimeScale
{
  valuePtr = 0;
  number = 0;
  _copyFormatReader = [(AVFigAssetInspector *)self _copyFormatReader];
  if (_copyFormatReader)
  {
    v3 = _copyFormatReader;
    FigBaseObject = FigFormatReaderGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6971AB0], *MEMORY[0x1E695E480], &number);
      if (number)
      {
        CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
        if (number)
        {
          CFRelease(number);
        }
      }
    }

    CFRelease(v3);
    LODWORD(_copyFormatReader) = valuePtr;
  }

  return _copyFormatReader;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumTimeOffsetFromLive
{
  result = NSStringFromSelector(sel_minimumTimeOffsetFromLive);
  if (self)
  {
    v6 = *MEMORY[0x1E6973840];
    v7 = *MEMORY[0x1E6960C70];
    v8 = *(MEMORY[0x1E6960C70] + 16);
    return [(AVFigObjectInspector *)self _timeForProperty:v6 defaultValue:&v7 propertyString:result];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)_localizedMediaSelectionOptionDisplayNames
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(AVFigObjectInspector *)self _nonNilDictionaryForProperty:@"LocalizedMSODisplayNames"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [v2 objectForKey:*(*(&v9 + 1) + 8 * i)];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            return [MEMORY[0x1E695DF20] dictionary];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    return v2;
  }

  else
  {
    v7 = MEMORY[0x1E695DF20];

    return [v7 dictionary];
  }
}

- (id)creationDate
{
  v2 = [(AVFigObjectInspector *)self _tollFreeBridgedObjectForProperty:*MEMORY[0x1E6973818] propertyString:NSStringFromSelector(sel_creationDate)];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v2, *MEMORY[0x1E6971F80], @"creationDate", *MEMORY[0x1E6971F40], @"comn", *MEMORY[0x1E6971F48], 0}];
  }

  if (!v2)
  {
    return 0;
  }

  return [AVMetadataItem _metadataItemWithFigMetadataDictionary:v2];
}

- (id)lyrics
{
  v3 = *MEMORY[0x1E6973830];
  v4 = NSStringFromSelector(sel_lyrics);

  return [(AVFigObjectInspector *)self _stringForProperty:v3 propertyString:v4];
}

- (id)commonMetadata
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(AVFigObjectInspector *)self _nonNilArrayForProperty:*MEMORY[0x1E69711B0] propertyString:NSStringFromSelector(sel_commonMetadata)];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [AVMetadataItem _metadataItemWithFigMetadataDictionary:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          [v3 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)availableMetadataFormats
{
  v3 = *MEMORY[0x1E6971188];
  v4 = NSStringFromSelector(sel_availableMetadataFormats);

  return [(AVFigObjectInspector *)self _nonNilArrayForProperty:v3 propertyString:v4];
}

- (id)metadataForFormat:(id)format
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if ([format isEqualToString:@"com.apple.quicktime.udta"])
  {
    v6 = MEMORY[0x1E69712E0];
LABEL_15:
    v9 = *v6;
    goto LABEL_16;
  }

  if ([format isEqualToString:@"org.mp4ra"])
  {
    v6 = MEMORY[0x1E6971268];
    goto LABEL_15;
  }

  if ([format isEqualToString:@"com.apple.quicktime.mdta"])
  {
    v6 = MEMORY[0x1E69712D8];
    goto LABEL_15;
  }

  if ([format isEqualToString:@"com.apple.itunes"])
  {
    v6 = MEMORY[0x1E6971310];
    goto LABEL_15;
  }

  if ([format isEqualToString:@"org.id3"])
  {
    v7 = MEMORY[0x1E6971258];
    v8 = dyld_program_sdk_at_least();
    v6 = MEMORY[0x1E6971260];
    if (v8)
    {
      v6 = v7;
    }

    goto LABEL_15;
  }

  if ([format isEqualToString:0x1F0A8DC70])
  {
    v6 = MEMORY[0x1E6971258];
    goto LABEL_15;
  }

  if ([format isEqualToString:*MEMORY[0x1E6971EF8]])
  {
    v9 = @"assetProperty_VorbisCommentMetadata";
  }

  else if ([format isEqualToString:@"com.apple.quicktime.HLS"])
  {
    v9 = *MEMORY[0x1E6971248];
  }

  else
  {
    v9 = 0;
  }

LABEL_16:
  v10 = [(AVFigObjectInspector *)self _nonNilArrayForProperty:v9];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [AVMetadataItem _metadataItemWithFigMetadataDictionary:*(*(&v17 + 1) + 8 * v14) containerURL:[(AVFigAssetInspector *)self URL] securityOptions:0];
        if (v15)
        {
          [array addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return array;
}

- (BOOL)_hasQTSaveRestriction
{
  if (!self->didCheckForSaveRestriction)
  {
    v3 = [(AVFigAssetInspector *)self metadataForFormat:@"com.apple.quicktime.udta"];
    v4 = +[AVMetadataItem metadataItemsFromArray:withKey:keySpace:](AVMetadataItem, "metadataItemsFromArray:withKey:keySpace:", v3, [MEMORY[0x1E696AD98] numberWithUnsignedInt:1853055350], @"udta");
    if ([(NSArray *)v4 count])
    {
      v6 = 0;
      [objc_msgSend(-[NSArray objectAtIndex:](v4 objectAtIndex:{0), "dataValue"), "getBytes:length:", &v6, 4}];
      if ((v6 & 0x1000000) != 0)
      {
        self->hasSaveRestriction = 1;
      }
    }

    self->didCheckForSaveRestriction = 1;
  }

  return self->hasSaveRestriction;
}

- (unint64_t)downloadToken
{
  result = [(AVFigObjectInspector *)self _tollFreeBridgedObjectForProperty:*MEMORY[0x1E6971218]];
  if (result)
  {

    return [result unsignedLongLongValue];
  }

  return result;
}

- (NSArray)contentKeySpecifiersEligibleForPreloading
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(AVFigAssetInspector *)self _valueAsCFTypeForProperty:*MEMORY[0x1E6971250]];
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = MEMORY[0x1E695E0F8];
      do
      {
        CFArrayGetValueAtIndex(v5, v8);
        if (FigContentKeySpecifierGetKeySystem() == 1)
        {
          v10 = @"FairPlayStreaming";
        }

        else
        {
          v10 = @"ClearKeySystem";
        }

        v11 = [AVContentKeySpecifier contentKeySpecifierForKeySystem:v10 identifier:FigContentKeySpecifierGetIdentifier() options:v9];
        if (v11)
        {
          [(NSArray *)array addObject:v11];
        }

        ++v8;
      }

      while (v7 != v8);
    }

    CFRelease(v5);
  }

  return array;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overallDurationHint
{
  result = NSStringFromSelector(sel_overallDurationHint);
  if (self)
  {
    v6 = *MEMORY[0x1E69712A8];

    return [(AVFigObjectInspector *)self _timeForProperty:v6 propertyString:result];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)_nameForProxy
{
  lastPathComponent = [(NSString *)[(NSURL *)[(AVFigAssetInspector *)self resolvedURL] path] lastPathComponent];
  identifyingTag = [(AVFigAssetInspector *)self identifyingTag];
  if (!identifyingTag)
  {
    return lastPathComponent;
  }

  v5 = identifyingTag;
  v6 = [(AVFigObjectInspector *)self _SInt32ForProperty:*MEMORY[0x1E6971290]];
  if (v6 != 4)
  {
    if (v6 != 2)
    {
      return lastPathComponent;
    }

    v5 = [objc_msgSend(MEMORY[0x1E6982C40] typeWithMIMEType:{v5), "identifier"}];
    if (!v5)
    {
      return lastPathComponent;
    }
  }

  return AVFileNameWithExtensionThatAccordsWithUTI(lastPathComponent, v5);
}

- (id)propertyListForProxy
{
  v3 = [(AVFigObjectInspector *)self _dataForProperty:*MEMORY[0x1E69712B0]];
  v4 = ([(AVFigObjectInspector *)self _longLongForProperty:*MEMORY[0x1E69711E8]]>> 8) & 1;
  _nameForProxy = [(AVFigAssetInspector *)self _nameForProxy];

  return [AVAssetProxy makePropertyListForMovieProxyHeader:v3 name:_nameForProxy prefersNominalDurations:v4];
}

- (BOOL)_isDefunct
{
  v8 = 0;
  _figAsset = [(AVFigAssetInspector *)self _figAsset];
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
      LOBYTE(v4) = v4(_figAsset, &v8) == 0;
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

uint64_t __59__AVFigAssetInspector_makePropertyListForProxyWithOptions___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"creationDate", @"identifier", @"make", @"model", @"software", @"location", 0}];
  _MergedGlobals = result;
  return result;
}

- (CGSize)maximumVideoResolution
{
  [(AVFigObjectInspector *)self _sizeForProperty:*MEMORY[0x1E6971298]];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)preferredDisplayCriteria
{
  makeDisplayCriteriaOnce = self->_makeDisplayCriteriaOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AVFigAssetInspector_preferredDisplayCriteria__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)makeDisplayCriteriaOnce runBlockOnce:v5];
  return self->_displayCriteria;
}

uint64_t __47__AVFigAssetInspector_preferredDisplayCriteria__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v2 = [*(a1 + 32) availableVideoDynamicRanges];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    LODWORD(v6) = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = [*(*(&v17 + 1) + 8 * i) integerValue];
        v10 = MTGetVideoDynamicRangeQualityGrade();
        v11 = v5;
        if (v5 <= v10)
        {
          v5 = v10;
        }

        if (v11 >= v10)
        {
          v6 = v6;
        }

        else
        {
          v6 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0;
  }

  v12 = [*(a1 + 32) _valueAsCFTypeForProperty:*MEMORY[0x1E69712B8]];
  if (v12)
  {
    v13 = v12;
    CFNumberGetValue(v12, kCFNumberFloatType, &valuePtr);
    CFRelease(v13);
  }

  v14 = [AVDisplayCriteria alloc];
  LODWORD(v15) = valuePtr;
  result = [(AVDisplayCriteria *)v14 initWithRefreshRate:v6 videoDynamicRange:v15];
  *(*(a1 + 32) + 32) = result;
  return result;
}

@end