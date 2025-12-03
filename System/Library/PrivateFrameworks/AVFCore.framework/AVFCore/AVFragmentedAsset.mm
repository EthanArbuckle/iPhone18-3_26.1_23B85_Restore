@interface AVFragmentedAsset
+ (AVFragmentedAsset)fragmentedAssetWithURL:(NSURL *)URL options:(NSDictionary *)options;
- (AVFragmentedAsset)initWithURL:(id)l options:(id)options;
- (AVFragmentedAssetTrack)trackWithTrackID:(CMPersistentTrackID)trackID;
- (BOOL)isAssociatedWithFragmentMinder;
- (NSArray)tracks;
- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (NSArray)tracksWithMediaType:(AVMediaType)mediaType;
- (void)_setIsAssociatedWithFragmentMinder:(BOOL)minder;
@end

@implementation AVFragmentedAsset

+ (AVFragmentedAsset)fragmentedAssetWithURL:(NSURL *)URL options:(NSDictionary *)options
{
  v4 = [[self alloc] initWithURL:URL options:options];

  return v4;
}

- (AVFragmentedAsset)initWithURL:(id)l options:(id)options
{
  if (options)
  {
    dictionary = [options mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = dictionary;
  [dictionary setValue:*MEMORY[0x1E695E4D0] forKey:0x1F0A8DA50];
  v9.receiver = self;
  v9.super_class = AVFragmentedAsset;
  return [(AVURLAsset *)&v9 initWithURL:l options:v7];
}

- (NSArray)tracks
{
  v3.receiver = self;
  v3.super_class = AVFragmentedAsset;
  return [(AVURLAsset *)&v3 tracks];
}

- (AVFragmentedAssetTrack)trackWithTrackID:(CMPersistentTrackID)trackID
{
  v4.receiver = self;
  v4.super_class = AVFragmentedAsset;
  return [(AVAsset *)&v4 trackWithTrackID:*&trackID];
}

- (NSArray)tracksWithMediaType:(AVMediaType)mediaType
{
  v4.receiver = self;
  v4.super_class = AVFragmentedAsset;
  return [(AVAsset *)&v4 tracksWithMediaType:mediaType];
}

- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v4.receiver = self;
  v4.super_class = AVFragmentedAsset;
  return [(AVAsset *)&v4 tracksWithMediaCharacteristic:mediaCharacteristic];
}

- (BOOL)isAssociatedWithFragmentMinder
{
  _assetInspectorLoader = [(AVURLAsset *)self _assetInspectorLoader];

  return [_assetInspectorLoader isAssociatedWithFragmentMinder];
}

- (void)_setIsAssociatedWithFragmentMinder:(BOOL)minder
{
  minderCopy = minder;
  _assetInspectorLoader = [(AVURLAsset *)self _assetInspectorLoader];

  [_assetInspectorLoader _setIsAssociatedWithFragmentMinder:minderCopy];
}

@end