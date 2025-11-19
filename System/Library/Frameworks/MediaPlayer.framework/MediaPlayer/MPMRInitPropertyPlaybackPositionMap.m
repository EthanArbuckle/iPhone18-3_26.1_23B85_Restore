@interface MPMRInitPropertyPlaybackPositionMap
@end

@implementation MPMRInitPropertyPlaybackPositionMap

id ___MPMRInitPropertyPlaybackPositionMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 deviceSpecificUserInfo];
  v4 = [v3 objectForKeyedSubscript:@"rembok"];
  v5 = [v2 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

@end