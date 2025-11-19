@interface PHASEVolumeCommandForAllSessions
- (PHASEVolumeCommandForAllSessions)init;
@end

@implementation PHASEVolumeCommandForAllSessions

- (PHASEVolumeCommandForAllSessions)init
{
  v3.receiver = self;
  v3.super_class = PHASEVolumeCommandForAllSessions;
  return [(PHASEVolumeCommand *)&v3 initInternal];
}

@end