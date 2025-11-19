@interface UAFAsset(Additions)
- (BOOL)_assetMetadataAvailable;
- (id)_assetId;
- (id)_assetVersion;
- (uint64_t)_preferOverServer;
- (uint64_t)_supportsAutoPunctuation;
- (uint64_t)_supportsContinuousListening;
- (uint64_t)_supportsEmojiRecognition;
- (uint64_t)_supportsOnDeviceSearch;
- (uint64_t)_supportsVoiceCommands;
@end

@implementation UAFAsset(Additions)

- (uint64_t)_preferOverServer
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKey:@"PreferOverServer"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)_assetMetadataAvailable
{
  v1 = [a1 metadata];
  v2 = [v1 count] != 0;

  return v2;
}

- (uint64_t)_supportsContinuousListening
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKey:@"SupportsContinuousListening"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)_supportsOnDeviceSearch
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKey:@"SupportsOnDeviceSearch"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)_supportsAutoPunctuation
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKey:@"SupportsAutoPunctuation"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)_supportsEmojiRecognition
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKey:@"SupportsEmojiRecognition"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)_supportsVoiceCommands
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKey:@"SupportsVoiceCommands"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)_assetId
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKey:*MEMORY[0x1E69DEF18]];

  return v2;
}

- (id)_assetVersion
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKey:*MEMORY[0x1E69DEF28]];

  return v2;
}

@end