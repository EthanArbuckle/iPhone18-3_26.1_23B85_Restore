@interface AVAssetMediaSelectionGroup
- (AVAssetMediaSelectionGroup)initWithAsset:(id)a3 dictionary:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_mediaSelectionOptionWithPropertyList:(id)a3 matchToMediaSelectionArray:(BOOL)a4;
- (id)_optionWithID:(id)a3 identifier:(id)a4 source:(id)a5 displaysNonForcedSubtitles:(BOOL)a6 audioCompositionPresetIndex:(id)a7;
- (void)dealloc;
@end

@implementation AVAssetMediaSelectionGroup

- (AVAssetMediaSelectionGroup)initWithAsset:(id)a3 dictionary:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = AVAssetMediaSelectionGroup;
  v6 = [(AVMediaSelectionGroup *)&v37 init];
  v7 = v6;
  if (v6)
  {
    if (a3 && a4)
    {
      v6->_asset = a3;
      v8 = a3;
      v7->_isStreamingGroup = [a3 _isStreaming];
      v9 = a4;
      v7->_dictionary = v9;
      v7->_groupMediaCharacteristics = [AVTranslateFigMediaCharacteristicsToAVMediaCharacteristics(-[NSDictionary objectForKey:](v9 objectForKey:{*MEMORY[0x1E6973748])), "copy"}];
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

            v19 = [AVMediaSelectionOption mediaSelectionOptionForAsset:v8 group:v7 dictionary:v17 hasUnderlyingTrack:v18 & 1];
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
      v20 = [(AVAsset *)v7->_asset _customMediaSelectionScheme];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v38 count:16];
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
              objc_enumerationMutation(v20);
            }

            v27 = *(*(&v29 + 1) + 8 * j);
            if (([-[NSDictionary objectForKey:](v7->_dictionary objectForKey:{v24), "isEqualToString:", objc_msgSend(v27, "objectForKey:", @"CustomMediaSelectionSchemeGroupMediaType"}] & 1) != 0 || objc_msgSend(-[NSDictionary objectForKey:](v7->_dictionary, "objectForKey:", v25), "isEqual:", objc_msgSend(v27, "objectForKey:", @"CustomMediaSelectionSchemeGroupID")))
            {
              v7->_customMediaSelectionScheme = [[AVCustomMediaSelectionScheme alloc] initWithGroup:v7 figAssetMediaSelectionGroupCustomMediaSelectionScheme:v27];
              return v7;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v29 objects:v38 count:16];
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[AVAsset isEqual:](self->_asset, "isEqual:", [a3 asset]);
      if (v5)
      {
        dictionary = self->_dictionary;
        v7 = [a3 dictionary];

        LOBYTE(v5) = [(NSDictionary *)dictionary isEqual:v7];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)_optionWithID:(id)a3 identifier:(id)a4 source:(id)a5 displaysNonForcedSubtitles:(BOOL)a6 audioCompositionPresetIndex:(id)a7
{
  v24 = a6;
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [(AVAssetMediaSelectionGroup *)self options];
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v23 = a5;
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
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v25 + 1) + 8 * v17);
      if (!a3)
      {
        if (a4)
        {
          v19 = [objc_msgSend(*(*(&v25 + 1) + 8 * v17) "outOfBandIdentifier")];
          if (a7)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (!v23)
          {
            a4 = 0;
            goto LABEL_24;
          }

          v19 = [objc_msgSend(v18 "outOfBandSource")];
          a4 = 0;
          if (a7)
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
        if (a7)
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

      if (a7)
      {
        goto LABEL_15;
      }

LABEL_20:
      if ([v18 displaysNonForcedSubtitles] == v24)
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
    v21 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    v13 = v21;
    v18 = v15;
  }

  while (v21);
  return v18;
}

- (id)_mediaSelectionOptionWithPropertyList:(id)a3 matchToMediaSelectionArray:(BOOL)a4
{
  v4 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    [-[AVAssetMediaSelectionGroup asset](self "asset")];
    a3 = FigMediaSelectionGroupsCreateMatchingSelection();
  }

  v7 = [a3 objectForKey:*MEMORY[0x1E69737D8]];
  v8 = v7;
  if (!v7)
  {
    v8 = [a3 objectForKey:@"AVMediaSelectionTrackOptionTrackIDKey"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [a3 objectForKey:*MEMORY[0x1E6973778]];
    if (v7)
    {
      v10 = 0;
      v11 = 0;
LABEL_11:
      v7 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E6973790]), "BOOLValue"}];
      goto LABEL_20;
    }

    valuePtr = 0;
    CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
    v13 = [(AVAssetMediaSelectionGroup *)self asset];
    if ([objc_msgSend(objc_msgSend(v13 trackWithTrackID:{valuePtr), "mediaType"), "isEqualToString:", @"sbtl"}])
    {
      v7 = [objc_msgSend(objc_msgSend(a3 objectForKey:{@"AVMediaSelectionTrackOptionSettingsKey", "objectForKey:", @"AVMediaSelectionTrackOptionCharacteristicsKey", "containsObject:", @"public.subtitles.forced-only"}] ^ 1;
    }

    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = [a3 objectForKey:*MEMORY[0x1E6973788]];
    v12 = [a3 objectForKey:*MEMORY[0x1E69737F0]];
    if (!(v10 | v12))
    {
      return 0;
    }

    v11 = v12;
    v9 = [a3 objectForKey:*MEMORY[0x1E6973778]];
    if (v7 || v10 || v11)
    {
      goto LABEL_11;
    }

    v10 = 0;
    v7 = 0;
  }

LABEL_20:
  v14 = [a3 objectForKey:*MEMORY[0x1E6973750]];
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

  v15 = [a3 objectForKey:@"AVMediaSelectionKeyValueOptionMediaTypeKey"];
  if (v15)
  {
    goto LABEL_23;
  }

  v16 = 0;
LABEL_26:
  v17 = [a3 objectForKey:*MEMORY[0x1E6973740]];
  if (!v17)
  {
    v17 = [a3 objectForKey:@"AVMediaSelectionKeyValueOptionGroupIDKey"];
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