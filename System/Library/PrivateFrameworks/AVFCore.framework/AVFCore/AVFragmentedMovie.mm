@interface AVFragmentedMovie
- (AVFragmentedMovie)initWithURL:(id)l options:(id)options;
- (AVFragmentedMovieTrack)trackWithTrackID:(CMPersistentTrackID)trackID;
- (BOOL)isAssociatedWithFragmentMinder;
- (NSArray)tracks;
- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (NSArray)tracksWithMediaType:(AVMediaType)mediaType;
- (void)_setIsAssociatedWithFragmentMinder:(BOOL)minder;
@end

@implementation AVFragmentedMovie

- (AVFragmentedMovie)initWithURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  v8 = optionsCopy;
  if (optionsCopy)
  {
    dictionary = [optionsCopy mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v10 = dictionary;
  [dictionary setValue:*MEMORY[0x1E695E4D0] forKey:0x1F0A8DA50];
  v13.receiver = self;
  v13.super_class = AVFragmentedMovie;
  v11 = [(AVMovie *)&v13 initWithURL:lCopy options:v10];

  return v11;
}

- (NSArray)tracks
{
  v4.receiver = self;
  v4.super_class = AVFragmentedMovie;
  tracks = [(AVMovie *)&v4 tracks];

  return tracks;
}

- (AVFragmentedMovieTrack)trackWithTrackID:(CMPersistentTrackID)trackID
{
  v5.receiver = self;
  v5.super_class = AVFragmentedMovie;
  v3 = [(AVMovie *)&v5 trackWithTrackID:*&trackID];

  return v3;
}

- (NSArray)tracksWithMediaType:(AVMediaType)mediaType
{
  v5.receiver = self;
  v5.super_class = AVFragmentedMovie;
  v3 = [(AVMovie *)&v5 tracksWithMediaType:mediaType];

  return v3;
}

- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v5.receiver = self;
  v5.super_class = AVFragmentedMovie;
  v3 = [(AVMovie *)&v5 tracksWithMediaCharacteristic:mediaCharacteristic];

  return v3;
}

- (BOOL)isAssociatedWithFragmentMinder
{
  _assetInspectorLoader = [(AVMovie *)self _assetInspectorLoader];
  isAssociatedWithFragmentMinder = [_assetInspectorLoader isAssociatedWithFragmentMinder];

  return isAssociatedWithFragmentMinder;
}

- (void)_setIsAssociatedWithFragmentMinder:(BOOL)minder
{
  minderCopy = minder;
  _assetInspectorLoader = [(AVMovie *)self _assetInspectorLoader];
  [_assetInspectorLoader _setIsAssociatedWithFragmentMinder:minderCopy];
}

@end