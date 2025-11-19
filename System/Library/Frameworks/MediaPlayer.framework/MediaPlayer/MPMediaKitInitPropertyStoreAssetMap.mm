@interface MPMediaKitInitPropertyStoreAssetMap
@end

@implementation MPMediaKitInitPropertyStoreAssetMap

id ___MPMediaKitInitPropertyStoreAssetMap_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForKeyPath:@"attributes.playParams"];
  v4 = v3 != 0;

  v5 = [v2 objectForKeyedSubscript:@"_MPMKT_transformedType"];
  v6 = [v2 valueForKeyPath:@"attributes.videoKind"];

  if ([v5 isEqualToString:@"tv-episodes"] && (objc_msgSend(v6, "isEqualToString:", @"tvtrailer") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"uploaded-videos") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"uploaded-audios"))
  {
    v4 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];

  return v7;
}

id ___MPMediaKitInitPropertyStoreAssetMap_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.playParams.reporting"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];

  return v5;
}

id ___MPMediaKitInitPropertyStoreAssetMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForKeyPath:@"attributes.playParams"];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:@"_MPMKT_transformedType"];
    if ([v5 isEqual:@"uploaded-audios"] & 1) != 0 || (objc_msgSend(v5, "isEqual:", @"uploaded-videos"))
    {
      v4 = 1;
    }

    else
    {
      v6 = [v2 valueForKeyPath:@"attributes.offers.kind"];
      v4 = [v6 containsObject:@"subscription"];
    }
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];

  return v7;
}

id ___MPMediaKitInitPropertyStoreAssetMap_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForKeyPath:@"attributes.playParams"];

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:@"_MPMKT_transformedType"];
    if ([v5 isEqual:@"uploaded-audios"] & 1) != 0 || (objc_msgSend(v5, "isEqual:", @"uploaded-videos"))
    {
      v4 = 3;
    }

    else
    {
      v6 = [v2 valueForKeyPath:@"attributes.offers.kind"];
      if ([v6 containsObject:@"subscription"])
      {
        v4 = 3;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v4];

  return v7;
}

void ___MPMediaKitInitPropertyStoreAssetMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___MPMediaKitInitPropertyStoreAssetMap_block_invoke_2;
  v11[3] = &unk_1E767FAA0;
  v12 = v6;
  v7 = v6;
  v8 = a4;
  v9 = a3;
  [v8 setUniversalStoreIdentifiersWithBlock:v11];
  v10 = [v9 personID];

  [v8 setPersonalStoreIdentifiersWithPersonID:v10 block:&__block_literal_global_841];
}

void ___MPMediaKitInitPropertyStoreAssetMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 objectForKeyedSubscript:@"id"];
  if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v4 = [v5 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  [v3 setAdamID:v4];
}

@end