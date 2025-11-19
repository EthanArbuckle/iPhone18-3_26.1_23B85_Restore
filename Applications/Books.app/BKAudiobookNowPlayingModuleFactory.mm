@interface BKAudiobookNowPlayingModuleFactory
+ (id)currentMiniPlayer;
+ (id)fetchOrCreateMiniPlayer;
+ (id)instantiate;
- (BKAudiobookNowPlayingModuleFactory)init;
@end

@implementation BKAudiobookNowPlayingModuleFactory

+ (id)instantiate
{
  v2 = _s5Books32AudiobookNowPlayingModuleFactoryC11instantiateAA0bcD29FullscreenTouchViewControllerCyFZ_0();

  return v2;
}

+ (id)fetchOrCreateMiniPlayer
{
  v2 = sub_100411508();
  if (!v2)
  {
    v2 = sub_10041240C();
  }

  return v2;
}

+ (id)currentMiniPlayer
{
  v2 = sub_100411508();

  return v2;
}

- (BKAudiobookNowPlayingModuleFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BKAudiobookNowPlayingModuleFactory *)&v3 init];
}

@end