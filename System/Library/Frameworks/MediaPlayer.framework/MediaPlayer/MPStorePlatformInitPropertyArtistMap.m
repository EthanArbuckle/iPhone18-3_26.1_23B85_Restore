@interface MPStorePlatformInitPropertyArtistMap
@end

@implementation MPStorePlatformInitPropertyArtistMap

void *___MPStorePlatformInitPropertyArtistMap_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"classicalUrl"];
  if (v2)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = MEMORY[0x1E695E110];
  }

  v4 = v3;

  return v3;
}

void ___MPStorePlatformInitPropertyArtistMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___MPStorePlatformInitPropertyArtistMap_block_invoke_2;
  v11[3] = &unk_1E767FAA0;
  v12 = v6;
  v7 = v6;
  v8 = a4;
  v9 = a3;
  [v8 setUniversalStoreIdentifiersWithBlock:v11];
  v10 = [v9 personID];

  [v8 setPersonalStoreIdentifiersWithPersonID:v10 block:&__block_literal_global_322];
}

void ___MPStorePlatformInitPropertyArtistMap_block_invoke_2(uint64_t a1, void *a2)
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