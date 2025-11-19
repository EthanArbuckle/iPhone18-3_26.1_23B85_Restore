@interface MPMediaKitInitPropertyTVEpisodeMap
@end

@implementation MPMediaKitInitPropertyTVEpisodeMap

void ___MPMediaKitInitPropertyTVEpisodeMap_block_invoke_10(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"playParams"];
  [v5 setObject:v7 forKeyedSubscript:@"playParams"];

  v8 = [v6 objectForKeyedSubscript:@"videoKind"];

  [v5 setObject:v8 forKeyedSubscript:@"videoKind"];
}

void ___MPMediaKitInitPropertyTVEpisodeMap_block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [a2 objectForKeyedSubscript:@"artistName"];
  [v5 setObject:v6 forKeyedSubscript:@"name"];
}

id ___MPMediaKitInitPropertyTVEpisodeMap_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _MPKeyPathValueTransformHasNonnullValue(&unk_1F150A690, v2);
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 valueForKeyPath:@"attributes.offers.kind"];
    v5 = [v6 containsObject:@"subscription"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];

  return v7;
}

id ___MPMediaKitInitPropertyTVEpisodeMap_block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 valueForKeyPath:@"attributes.previews"];
  v6 = [v5 firstObject];
  v7 = MPMediaKitEntityTranslatorTransformArtwork(&unk_1F150A660, v6);

  return v7;
}

id ___MPMediaKitInitPropertyTVEpisodeMap_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.releaseDate"];
  v3 = _MPMediaKitDateFromString(v2);

  return v3;
}

id ___MPMediaKitInitPropertyTVEpisodeMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.contentRatingsBySystem"];
  v3 = [v2 allValues];
  v4 = [v3 firstObject];
  v5 = [v4 objectForKeyedSubscript:@"value"];

  return v5;
}

id ___MPMediaKitInitPropertyTVEpisodeMap_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 valueForKeyPath:@"attributes.offers"];
  v6 = [v5 firstObject];
  v7 = MPTranslatorUtilitiesTransformMillisecondsToSeconds(&unk_1F150A600, v6);

  return v7;
}

void ___MPMediaKitInitPropertyTVEpisodeMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = ___MPMediaKitInitPropertyTVEpisodeMap_block_invoke_2;
  v15 = &unk_1E767F058;
  v16 = v6;
  v17 = v7;
  v8 = v7;
  v9 = v6;
  v10 = a4;
  [v10 setUniversalStoreIdentifiersWithBlock:&v12];
  v11 = [v8 personID];
  [v10 setPersonalStoreIdentifiersWithPersonID:v11 block:&__block_literal_global_666];
}

void ___MPMediaKitInitPropertyTVEpisodeMap_block_invoke_2(uint64_t a1, void *a2)
{
  v42[16] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"id"];
  if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v5 = [v4 longLongValue];
  }

  else
  {
    v5 = 0;
  }

  [v3 setAdamID:v5];
  v6 = [*(a1 + 32) valueForKeyPath:@"meta.formerIds"];
  if (_NSIsNSArray())
  {
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (!v8)
    {
LABEL_14:

      v12 = v7;
      goto LABEL_31;
    }

    v9 = v8;
    v10 = *v37;
LABEL_8:
    v11 = 0;
    while (1)
    {
      if (*v37 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (!_NSIsNSNumber())
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_8;
      }
    }

    v28 = v6;
    v29 = v5;
    v30 = a1;
    v31 = v3;

    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (!v14)
    {
      goto LABEL_30;
    }

    v15 = v14;
    v16 = *v33;
LABEL_19:
    v17 = 0;
    while (1)
    {
      if (*v33 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v32 + 1) + 8 * v17);
      if ((_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_27;
      }

      v19 = [v18 longLongValue];

      if (v19)
      {
        break;
      }

LABEL_28:
      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (!v15)
        {
LABEL_30:

          a1 = v30;
          v3 = v31;
          v6 = v28;
          v5 = v29;
LABEL_31:

          goto LABEL_40;
        }

        goto LABEL_19;
      }
    }

    v18 = [MEMORY[0x1E696AD98] numberWithLongLong:v19];
    [v12 addObject:v18];
LABEL_27:

    goto LABEL_28;
  }

  if (_NSIsNSNumber())
  {
    v42[0] = v6;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    goto LABEL_40;
  }

  v20 = v6;
  if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v21 = [v20 longLongValue];

    if (v21)
    {
      v22 = [MEMORY[0x1E696AD98] numberWithLongLong:v21];
      v42[0] = v22;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];

      goto LABEL_40;
    }
  }

  else
  {
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_40:

  [v3 setFormerAdamIDs:v12];
  v23 = [*(a1 + 32) valueForKeyPath:@"attributes.playParams"];

  if (!v23)
  {
    v40[0] = @"_MPMKT_transformedType";
    v40[1] = @"type";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v25 = _MPKeyPathValueTransformFirstNonnullKeyPath(v24, *(a1 + 32));

    if ([v25 isEqual:@"uploaded-audios"] & 1) != 0 || (objc_msgSend(v25, "isEqual:", @"uploaded-videos"))
    {
    }

    else
    {
      v26 = [*(a1 + 32) valueForKeyPath:@"attributes.offers.kind"];
      v27 = [v26 containsObject:@"subscription"];

      if ((v27 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  [v3 setSubscriptionAdamID:{v5, v28, v29, v30, v31}];
LABEL_45:
}

@end