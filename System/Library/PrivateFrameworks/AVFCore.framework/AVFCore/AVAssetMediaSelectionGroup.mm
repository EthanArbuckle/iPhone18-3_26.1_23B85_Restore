@interface AVAssetMediaSelectionGroup
- (AVAssetMediaSelectionGroup)initWithAsset:(id)asset dictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)_mediaSelectionOptionWithPropertyList:(id)list matchToMediaSelectionArray:(BOOL)array;
- (id)_optionWithID:(id)d identifier:(id)identifier source:(id)source displaysNonForcedSubtitles:(BOOL)subtitles audioCompositionPresetIndex:(id)index;
- (void)dealloc;
@end

@implementation AVAssetMediaSelectionGroup

- (AVAssetMediaSelectionGroup)initWithAsset:(id)asset dictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = AVAssetMediaSelectionGroup;
  v6 = [(AVMediaSelectionGroup *)&v37 init];
  v7 = v6;
  if (v6)
  {
    if (asset && dictionary)
    {
      v6->_asset = asset;
      assetCopy = asset;
      v7->_isStreamingGroup = [asset _isStreaming];
      dictionaryCopy = dictionary;
      v7->_dictionary = dictionaryCopy;
      v7->_groupMediaCharacteristics = [AVTranslateFigMediaCharacteristicsToAVMediaCharacteristics(-[NSDictionary objectForKey:](dictionaryCopy objectForKey:{*MEMORY[0x1E6973748])), "copy"}];
      v7->_localizedMediaSelectionOptionDisplayNames = [-[AVAsset _localizedMediaSelectionOptionDisplayNames](v7->_asset "_localizedMediaSelectionOptionDisplayNames")];
      v10 = [(NSDictionary *)v7->_dictionary objectForKey:*MEMORY[0x1E6973758]];
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        v15 = *MEMORY[0x1E69737D8];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v33 + 1) + 8 * i);
            v18 = [v17 objectForKey:v15];
            if (v18)
            {
              LOBYTE(v18) = !v7->_isStreamingGroup;
            }

            v19 = [AVMediaSelectionOption mediaSelectionOptionForAsset:assetCopy group:v7 dictionary:v17 hasUnderlyingTrack:v18 & 1];
            [(NSArray *)v11 addObject:v19];
            if (!v7->_defaultOption && [(AVMediaSelectionOption *)v19 _isDesignatedDefault])
            {
              v7->_defaultOption = v19;
            }
          }

          v13 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v13);
      }

      v7->_options = v11;
      _customMediaSelectionScheme = [(AVAsset *)v7->_asset _customMediaSelectionScheme];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = [_customMediaSelectionScheme countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        v24 = *MEMORY[0x1E6973750];
        v25 = *MEMORY[0x1E6973740];
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(_customMediaSelectionScheme);
            }

            v27 = *(*(&v29 + 1) + 8 * j);
            if (([-[NSDictionary objectForKey:](v7->_dictionary objectForKey:{v24), "isEqualToString:", objc_msgSend(v27, "objectForKey:", @"CustomMediaSelectionSchemeGroupMediaType"}] & 1) != 0 || objc_msgSend(-[NSDictionary objectForKey:](v7->_dictionary, "objectForKey:", v25), "isEqual:", objc_msgSend(v27, "objectForKey:", @"CustomMediaSelectionSchemeGroupID")))
            {
              v7->_customMediaSelectionScheme = [[AVCustomMediaSelectionScheme alloc] initWithGroup:v7 figAssetMediaSelectionGroupCustomMediaSelectionScheme:v27];
              return v7;
            }
          }

          v22 = [_customMediaSelectionScheme countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetMediaSelectionGroup;
  [(AVMediaSelectionGroup *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[AVAsset isEqual:](self->_asset, "isEqual:", [equal asset]);
      if (v5)
      {
        dictionary = self->_dictionary;
        dictionary = [equal dictionary];

        LOBYTE(v5) = [(NSDictionary *)dictionary isEqual:dictionary];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)_optionWithID:(id)d identifier:(id)identifier source:(id)source displaysNonForcedSubtitles:(BOOL)subtitles audioCompositionPresetIndex:(id)index
{
  subtitlesCopy = subtitles;
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  options = [(AVAssetMediaSelectionGroup *)self options];
  v12 = [options countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  sourceCopy = source;
  v14 = 0;
  v15 = 0;
  v16 = *v26;
  do
  {
    v17 = 0;
    do
    {
      if (*v26 != v16)
      {
        objc_enumerationMutation(options);
      }

      v18 = *(*(&v25 + 1) + 8 * v17);
      if (!d)
      {
        if (identifier)
        {
          v19 = [objc_msgSend(*(*(&v25 + 1) + 8 * v17) "outOfBandIdentifier")];
          if (index)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (!sourceCopy)
          {
            identifier = 0;
            goto LABEL_24;
          }

          v19 = [objc_msgSend(v18 "outOfBandSource")];
          identifier = 0;
          if (index)
          {
LABEL_14:
            if (!v19)
            {
              goto LABEL_24;
            }

LABEL_15:
            if (([objc_msgSend(v18 "_audioCompositionPresetIndex")] & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_20;
          }
        }

        goto LABEL_19;
      }

      if (([objc_msgSend(*(*(&v25 + 1) + 8 * v17) "optionID")] & 1) == 0)
      {
        v19 = [objc_msgSend(v18 "fallbackIDs")];
        if (index)
        {
          goto LABEL_14;
        }

LABEL_19:
        if (!v19)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      if (index)
      {
        goto LABEL_15;
      }

LABEL_20:
      if ([v18 displaysNonForcedSubtitles] == subtitlesCopy)
      {
        return v18;
      }

      if (v14++ == 0)
      {
        v15 = v18;
      }

      else
      {
        v15 = 0;
      }

LABEL_24:
      ++v17;
    }

    while (v13 != v17);
    v21 = [options countByEnumeratingWithState:&v25 objects:v29 count:16];
    v13 = v21;
    v18 = v15;
  }

  while (v21);
  return v18;
}

- (id)_mediaSelectionOptionWithPropertyList:(id)list matchToMediaSelectionArray:(BOOL)array
{
  arrayCopy = array;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (arrayCopy)
  {
    [-[AVAssetMediaSelectionGroup asset](self "asset")];
    list = FigMediaSelectionGroupsCreateMatchingSelection();
  }

  v7 = [list objectForKey:*MEMORY[0x1E69737D8]];
  v8 = v7;
  if (!v7)
  {
    v8 = [list objectForKey:@"AVMediaSelectionTrackOptionTrackIDKey"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [list objectForKey:*MEMORY[0x1E6973778]];
    if (v7)
    {
      v10 = 0;
      v11 = 0;
LABEL_11:
      v7 = [objc_msgSend(list objectForKey:{*MEMORY[0x1E6973790]), "BOOLValue"}];
      goto LABEL_20;
    }

    valuePtr = 0;
    CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
    asset = [(AVAssetMediaSelectionGroup *)self asset];
    if ([objc_msgSend(objc_msgSend(asset trackWithTrackID:{valuePtr), "mediaType"), "isEqualToString:", @"sbtl"}])
    {
      v7 = [objc_msgSend(objc_msgSend(list objectForKey:{@"AVMediaSelectionTrackOptionSettingsKey", "objectForKey:", @"AVMediaSelectionTrackOptionCharacteristicsKey", "containsObject:", @"public.subtitles.forced-only"}] ^ 1;
    }

    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = [list objectForKey:*MEMORY[0x1E6973788]];
    v12 = [list objectForKey:*MEMORY[0x1E69737F0]];
    if (!(v10 | v12))
    {
      return 0;
    }

    v11 = v12;
    v9 = [list objectForKey:*MEMORY[0x1E6973778]];
    if (v7 || v10 || v11)
    {
      goto LABEL_11;
    }

    v10 = 0;
    v7 = 0;
  }

LABEL_20:
  v14 = [list objectForKey:*MEMORY[0x1E6973750]];
  if (v14)
  {
    v15 = v14;
LABEL_23:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v16 = 1;
    goto LABEL_26;
  }

  v15 = [list objectForKey:@"AVMediaSelectionKeyValueOptionMediaTypeKey"];
  if (v15)
  {
    goto LABEL_23;
  }

  v16 = 0;
LABEL_26:
  v17 = [list objectForKey:*MEMORY[0x1E6973740]];
  if (!v17)
  {
    v17 = [list objectForKey:@"AVMediaSelectionKeyValueOptionGroupIDKey"];
    if (((v17 == 0) & ~v16) != 0)
    {
      return [(AVAssetMediaSelectionGroup *)self _optionWithID:v8 identifier:v10 source:v11 displaysNonForcedSubtitles:v7 audioCompositionPresetIndex:v9];
    }
  }

  if ([(AVMediaSelectionGroup *)self _matchesGroupID:v17 mediaType:v15])
  {
    return [(AVAssetMediaSelectionGroup *)self _optionWithID:v8 identifier:v10 source:v11 displaysNonForcedSubtitles:v7 audioCompositionPresetIndex:v9];
  }

  return 0;
}

@end