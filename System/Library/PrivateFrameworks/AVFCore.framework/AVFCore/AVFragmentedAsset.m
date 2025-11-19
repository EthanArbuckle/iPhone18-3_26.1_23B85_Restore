@interface AVFragmentedAsset
+ (AVFragmentedAsset)fragmentedAssetWithURL:(NSURL *)URL options:(NSDictionary *)options;
- (AVFragmentedAsset)initWithURL:(id)a3 options:(id)a4;
- (AVFragmentedAssetTrack)trackWithTrackID:(CMPersistentTrackID)trackID;
- (BOOL)isAssociatedWithFragmentMinder;
- (NSArray)tracks;
- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (NSArray)tracksWithMediaType:(AVMediaType)mediaType;
- (void)_setIsAssociatedWithFragmentMinder:(BOOL)a3;
@end

@implementation AVFragmentedAsset

+ (AVFragmentedAsset)fragmentedAssetWithURL:(NSURL *)URL options:(NSDictionary *)options
{
  v4 = [[a1 alloc] initWithURL:URL options:options];

  return v4;
}

- (AVFragmentedAsset)initWithURL:(id)a3 options:(id)a4
{
  if (a4)
  {
    v6 = [a4 mutableCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = v6;
  [v6 setValue:*MEMORY[0x1E695E4D0] forKey:0x1F0A8DA50];
  v9.receiver = self;
  v9.super_class = AVFragmentedAsset;
  return [(AVURLAsset *)&v9 initWithURL:a3 options:v7];
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
  v2 = [(AVURLAsset *)self _assetInspectorLoader];

  return [v2 isAssociatedWithFragmentMinder];
}

- (void)_setIsAssociatedWithFragmentMinder:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVURLAsset *)self _assetInspectorLoader];

  [v4 _setIsAssociatedWithFragmentMinder:v3];
}

@end