@interface MTLibraryConfiguration
+ (id)defaultConfiguration;
- (id)initSupportsPlayback:(BOOL)playback supportsLocalMedia:(BOOL)media;
@end

@implementation MTLibraryConfiguration

+ (id)defaultConfiguration
{
  v2 = [[self alloc] initSupportsPlayback:1 supportsLocalMedia:1];

  return v2;
}

- (id)initSupportsPlayback:(BOOL)playback supportsLocalMedia:(BOOL)media
{
  mediaCopy = media;
  playbackCopy = playback;
  v9.receiver = self;
  v9.super_class = MTLibraryConfiguration;
  v6 = [(MTLibraryConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MTLibraryConfiguration *)v6 setSupportsPlayback:playbackCopy];
    [(MTLibraryConfiguration *)v7 setSupportsLocalMedia:mediaCopy];
  }

  return v7;
}

@end