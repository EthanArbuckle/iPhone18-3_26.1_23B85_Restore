@interface MPMediaKitInitPropertyCuratorMap
@end

@implementation MPMediaKitInitPropertyCuratorMap

id ___MPMediaKitInitPropertyCuratorMap_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"_MPMKT_transformedType";
  v12[1] = @"type";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = a2;
  v7 = [v4 arrayWithObjects:v12 count:2];
  v8 = _MPKeyPathValueTransformFirstNonnullKeyPath(v7, v6);

  if ([v8 isEqualToString:@"activities"])
  {
    v9 = 3;
  }

  else if ([v8 isEqualToString:@"apple-curators"])
  {
    v9 = 1;
  }

  else if ([v8 isEqualToString:@"editorial-items"])
  {
    v9 = 4;
  }

  else if ([v8 isEqualToString:@"curators"])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];

  return v10;
}

id ___MPMediaKitInitPropertyCuratorMap_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.kind"];
  if ([v2 isEqualToString:@"Show"])
  {
    v3 = 3;
  }

  else if ([v2 isEqualToString:@"Genre"])
  {
    v3 = 2;
  }

  else
  {
    v3 = [v2 isEqualToString:@"Curator"];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v3];

  return v4;
}

void ___MPMediaKitInitPropertyCuratorMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___MPMediaKitInitPropertyCuratorMap_block_invoke_2;
  v11[3] = &unk_1E767FAA0;
  v12 = v6;
  v7 = v6;
  v8 = a4;
  v9 = a3;
  [v8 setUniversalStoreIdentifiersWithBlock:v11];
  v10 = [v9 personID];

  [v8 setPersonalStoreIdentifiersWithPersonID:v10 block:&__block_literal_global_596];
}

void ___MPMediaKitInitPropertyCuratorMap_block_invoke_2(uint64_t a1, void *a2)
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