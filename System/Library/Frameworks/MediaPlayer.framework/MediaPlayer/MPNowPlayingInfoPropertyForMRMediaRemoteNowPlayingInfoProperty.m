@interface MPNowPlayingInfoPropertyForMRMediaRemoteNowPlayingInfoProperty
@end

@implementation MPNowPlayingInfoPropertyForMRMediaRemoteNowPlayingInfoProperty

void ___MPNowPlayingInfoPropertyForMRMediaRemoteNowPlayingInfoProperty_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _MPNowPlayingInfoPropertyToMRMediaRemoteNowPlayingInfoPropertyMapping();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___MPNowPlayingInfoPropertyForMRMediaRemoteNowPlayingInfoProperty_block_invoke_2;
  v5[3] = &unk_1E7681A30;
  v6 = v0;
  v2 = v0;
  [v1 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = [v2 copy];
  v4 = _MPNowPlayingInfoPropertyForMRMediaRemoteNowPlayingInfoProperty___reversePropertyMapping;
  _MPNowPlayingInfoPropertyForMRMediaRemoteNowPlayingInfoProperty___reversePropertyMapping = v3;
}

@end