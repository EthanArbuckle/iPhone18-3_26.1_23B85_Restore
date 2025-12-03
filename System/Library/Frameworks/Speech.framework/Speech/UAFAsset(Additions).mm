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
  metadata = [self metadata];
  v2 = [metadata objectForKey:@"PreferOverServer"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)_assetMetadataAvailable
{
  metadata = [self metadata];
  v2 = [metadata count] != 0;

  return v2;
}

- (uint64_t)_supportsContinuousListening
{
  metadata = [self metadata];
  v2 = [metadata objectForKey:@"SupportsContinuousListening"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)_supportsOnDeviceSearch
{
  metadata = [self metadata];
  v2 = [metadata objectForKey:@"SupportsOnDeviceSearch"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)_supportsAutoPunctuation
{
  metadata = [self metadata];
  v2 = [metadata objectForKey:@"SupportsAutoPunctuation"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)_supportsEmojiRecognition
{
  metadata = [self metadata];
  v2 = [metadata objectForKey:@"SupportsEmojiRecognition"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)_supportsVoiceCommands
{
  metadata = [self metadata];
  v2 = [metadata objectForKey:@"SupportsVoiceCommands"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)_assetId
{
  metadata = [self metadata];
  v2 = [metadata objectForKey:*MEMORY[0x1E69DEF18]];

  return v2;
}

- (id)_assetVersion
{
  metadata = [self metadata];
  v2 = [metadata objectForKey:*MEMORY[0x1E69DEF28]];

  return v2;
}

@end