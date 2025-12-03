@interface AVAssetWriterInputSelectionOption
+ (id)assetWriterInputSelectionOptionWithAssetWriterInput:(id)input;
+ (id)assetWriterInputSelectionOptionWithAssetWriterInput:(id)input displaysNonForcedSubtitles:(BOOL)subtitles;
- (AVAssetWriterInputSelectionOption)initWithAssetWriterInput:(id)input displaysNonForcedSubtitles:(BOOL)subtitles;
- (BOOL)_hasEqualValueForKey:(id)key asObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPlayable;
- (id)_taggedCharacteristics;
- (id)associatedMediaSelectionOptionInMediaSelectionGroup:(id)group;
- (id)availableMetadataFormats;
- (id)commonMetadata;
- (id)locale;
- (id)mediaSubTypes;
- (id)metadataForFormat:(id)format;
- (id)propertyList;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVAssetWriterInputSelectionOption

+ (id)assetWriterInputSelectionOptionWithAssetWriterInput:(id)input
{
  v3 = [[AVAssetWriterInputSelectionOption alloc] initWithAssetWriterInput:input];

  return v3;
}

+ (id)assetWriterInputSelectionOptionWithAssetWriterInput:(id)input displaysNonForcedSubtitles:(BOOL)subtitles
{
  v4 = [[AVAssetWriterInputSelectionOption alloc] initWithAssetWriterInput:input displaysNonForcedSubtitles:subtitles];

  return v4;
}

- (AVAssetWriterInputSelectionOption)initWithAssetWriterInput:(id)input displaysNonForcedSubtitles:(BOOL)subtitles
{
  v9.receiver = self;
  v9.super_class = AVAssetWriterInputSelectionOption;
  v6 = [(AVMediaSelectionOption *)&v9 init];
  if (v6)
  {
    v6->_input = input;
    v6->_mediaType = [objc_msgSend(input "mediaType")];
    v6->_outputSettings = [objc_msgSend(input "outputSettings")];
    sourceFormatHint = [input sourceFormatHint];
    if (sourceFormatHint)
    {
      sourceFormatHint = CFRetain(sourceFormatHint);
    }

    v6->_sourceFormatHint = sourceFormatHint;
    v6->_languageCode = [objc_msgSend(input "languageCode")];
    v6->_extendedLanguageTag = [objc_msgSend(input "extendedLanguageTag")];
    v6->_metadata = [objc_msgSend(input "metadata")];
    v6->_trackReferences = [objc_msgSend(input "_trackReferences")];
    v6->_displaysNonForcedSubtitles = subtitles;
    v6->_enabled = [input marksOutputTrackAsEnabled];
  }

  return v6;
}

- (void)dealloc
{
  sourceFormatHint = self->_sourceFormatHint;
  if (sourceFormatHint)
  {
    CFRelease(sourceFormatHint);
  }

  v4.receiver = self;
  v4.super_class = AVAssetWriterInputSelectionOption;
  [(AVMediaSelectionOption *)&v4 dealloc];
}

- (BOOL)_hasEqualValueForKey:(id)key asObject:(id)object
{
  v6 = [(AVAssetWriterInputSelectionOption *)self valueForKey:?];
  v7 = [object valueForKey:key];
  if (v6)
  {
    if ([v6 isEqual:v7])
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (input = self->_input, input == [equal input]))
    {
      v6 = [(AVAssetWriterInputSelectionOption *)self _hasEqualValueForKey:@"languageCode" asObject:equal];
      if (v6)
      {
        v6 = [(AVAssetWriterInputSelectionOption *)self _hasEqualValueForKey:@"extendedLanguageTag" asObject:equal];
        if (v6)
        {
          v6 = [(AVAssetWriterInputSelectionOption *)self _hasEqualValueForKey:@"metadata" asObject:equal];
          if (v6)
          {
            v6 = [(AVAssetWriterInputSelectionOption *)self _hasEqualValueForKey:@"trackReferences" asObject:equal];
            if (v6)
            {

              LOBYTE(v6) = [(AVAssetWriterInputSelectionOption *)self _hasEqualValueForKey:@"displaysNonForcedSubtitles" asObject:equal];
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  input = self->_input;
  v4 = [(NSString *)self->_languageCode hash]^ input;
  v5 = [(NSString *)self->_extendedLanguageTag hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_metadata hash];
  return v6 ^ [(NSDictionary *)self->_trackReferences hash]^ self->_displaysNonForcedSubtitles;
}

- (id)mediaSubTypes
{
  valuePtr = 0;
  if (!self->_outputSettings)
  {
    sourceFormatHint = self->_sourceFormatHint;
    if (!sourceFormatHint)
    {
      return [MEMORY[0x1E695DEC8] array];
    }

    v5 = CFGetTypeID(sourceFormatHint);
    if (v5 != CMFormatDescriptionGetTypeID())
    {
      return [MEMORY[0x1E695DEC8] array];
    }

    MediaSubType = CMFormatDescriptionGetMediaSubType(self->_sourceFormatHint);
    v3 = 0;
    goto LABEL_12;
  }

  if ([(NSString *)self->_mediaType isEqualToString:@"soun"])
  {
    v3 = [(NSDictionary *)self->_outputSettings objectForKey:*MEMORY[0x1E69582B0]];
  }

  else
  {
    v3 = 0;
  }

  if ([(NSString *)self->_mediaType isEqualToString:@"vide"]|| [(NSString *)self->_mediaType isEqualToString:@"auxv"])
  {
    v7 = [(NSDictionary *)self->_outputSettings objectForKey:@"AVVideoCodecKey"];
    if (v7)
    {
      MediaSubType = AVOSTypeForString(v7);
LABEL_12:
      valuePtr = MediaSubType;
      if (MediaSubType)
      {
        v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      }
    }
  }

  if (v3)
  {
    return [MEMORY[0x1E695DEC8] arrayWithObject:v3];
  }

  return [MEMORY[0x1E695DEC8] array];
}

- (id)_taggedCharacteristics
{
  v3 = [AVMetadataItem metadataItemsFromArray:[(AVAssetWriterInputSelectionOption *)self metadataForFormat:@"com.apple.quicktime.udta"] withKey:@"tagc" keySpace:@"udta"];
  v4 = [AVMetadataItem metadataItemsFromArray:[(AVAssetWriterInputSelectionOption *)self metadataForFormat:@"org.mp4ra"] withKey:@"tagc" keySpace:@"uiso"];

  return [(NSArray *)v3 arrayByAddingObjectsFromArray:v4];
}

- (BOOL)isPlayable
{
  if (self->_outputSettings)
  {
    return 1;
  }

  if (self->_sourceFormatHint && +[AVURLAsset _avfValidationPlist])
  {
    return FigMediaValidatorValidateFormatDescription() == 0;
  }

  return 1;
}

- (id)locale
{
  extendedLanguageTag = self->_extendedLanguageTag;
  if (extendedLanguageTag || (extendedLanguageTag = self->_languageCode) != 0)
  {
    v4 = CFLocaleCreate(*MEMORY[0x1E695E480], extendedLanguageTag);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)commonMetadata
{
  v3 = [(NSArray *)self->_metadata indexesOfObjectsPassingTest:&__block_literal_global_8];
  metadata = self->_metadata;

  return [(NSArray *)metadata objectsAtIndexes:v3];
}

- (id)availableMetadataFormats
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)[AVMetadataItem metadataItemsFromArray:? withKey:? keySpace:?]
  {
    [array addObject:@"com.apple.quicktime.udta"];
  }

  if ([(NSArray *)[AVMetadataItem metadataItemsFromArray:? withKey:? keySpace:?]
  {
    [array addObject:@"org.mp4ra"];
    if (+[AVMetadataItem _clientExpectsISOUserDataKeysInQuickTimeUserDataKeySpace])
    {
      [array addObject:@"com.apple.quicktime.udta"];
    }
  }

  if ([(NSArray *)[AVMetadataItem metadataItemsFromArray:? withKey:? keySpace:?]
  {
    [array addObject:@"com.apple.quicktime.mdta"];
  }

  if ([(NSArray *)[AVMetadataItem metadataItemsFromArray:? withKey:? keySpace:?]
  {
    [array addObject:@"com.apple.itunes"];
  }

  if ([(NSArray *)[AVMetadataItem metadataItemsFromArray:? withKey:? keySpace:?]
  {
    [array addObject:@"org.id3"];
  }

  return array;
}

- (id)metadataForFormat:(id)format
{
  if ([format isEqualToString:@"com.apple.quicktime.udta"])
  {
    v5 = @"udta";
  }

  else
  {
    v5 = 0;
  }

  if ([format isEqualToString:@"org.mp4ra"])
  {
    v6 = &AVMetadataKeySpaceISOUserData;
LABEL_10:
    v7 = *v6;
    goto LABEL_11;
  }

  if ([format isEqualToString:@"com.apple.quicktime.mdta"])
  {
    v6 = &AVMetadataKeySpaceQuickTimeMetadata;
    goto LABEL_10;
  }

  if ([format isEqualToString:@"com.apple.itunes"])
  {
    v6 = &AVMetadataKeySpaceiTunes;
    goto LABEL_10;
  }

  if ([format isEqualToString:@"org.id3"])
  {
    v7 = @"org.id3";
  }

  else
  {
    v7 = v5;
  }

LABEL_11:
  metadata = self->_metadata;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__AVAssetWriterInputSelectionOption_metadataForFormat___block_invoke;
  v11[3] = &unk_1E7461B68;
  v11[4] = v7;
  v9 = [(NSArray *)self->_metadata objectsAtIndexes:[(NSArray *)metadata indexesOfObjectsPassingTest:v11]];
  if ([(__CFString *)v7 isEqualToString:@"udta"]&& +[AVMetadataItem _clientExpectsISOUserDataKeysInQuickTimeUserDataKeySpace])
  {
    return [(NSArray *)v9 arrayByAddingObjectsFromArray:[AVMetadataItem _replaceQuickTimeUserDataKeySpaceWithISOUserDataKeySpaceIfRequired:[(AVAssetWriterInputSelectionOption *)self metadataForFormat:@"org.mp4ra"]]];
  }

  return v9;
}

uint64_t __55__AVAssetWriterInputSelectionOption_metadataForFormat___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 keySpace];

  return [v2 isEqual:v3];
}

- (id)associatedMediaSelectionOptionInMediaSelectionGroup:(id)group
{
  v30 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  inputs = [group inputs];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  trackReferences = self->_trackReferences;
  result = [(NSDictionary *)trackReferences countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v25;
    v18 = *v25;
    v19 = trackReferences;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(trackReferences);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [(NSDictionary *)self->_trackReferences objectForKey:v11, v18];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v20 + 1) + 8 * j);
              if ([inputs containsObject:v17])
              {
                return [AVAssetWriterInputSelectionOption assetWriterInputSelectionOptionWithAssetWriterInput:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v18;
        trackReferences = v19;
      }

      v8 = [(NSDictionary *)v19 countByEnumeratingWithState:&v24 objects:v29 count:16];
      result = 0;
    }

    while (v8);
  }

  return result;
}

- (id)propertyList
{
  v5[1] = *MEMORY[0x1E69E9840];
  input = [(AVAssetWriterInputSelectionOption *)self input];
  v4 = @"UnsafeUnretainedPointerData";
  v5[0] = [MEMORY[0x1E695DEF0] dataWithBytes:&input length:8];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
}

@end