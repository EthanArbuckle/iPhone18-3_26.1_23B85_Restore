@interface ANAnnounceFeatureStatus
+ (BOOL)shouldStopPlaybackOnSiriActivation;
@end

@implementation ANAnnounceFeatureStatus

+ (BOOL)shouldStopPlaybackOnSiriActivation
{
  v2 = +[ANDefaults sharedInstance];
  v3 = [v2 BOOLForDefault:@"siri_interruption_stops_playback"];

  return v3;
}

@end