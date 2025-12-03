@interface AXLiveAudioGraph
+ (void)start;
+ (void)stop;
+ (void)updateValue:(double)value;
@end

@implementation AXLiveAudioGraph

+ (void)start
{
  sharedManager = [getAXMDataSonificationManagerClass() sharedManager];
  [sharedManager beginLiveModeSession];
}

+ (void)updateValue:(double)value
{
  sharedManager = [getAXMDataSonificationManagerClass() sharedManager];
  [sharedManager setLiveModeValue:value];
}

+ (void)stop
{
  sharedManager = [getAXMDataSonificationManagerClass() sharedManager];
  [sharedManager endLiveModeSession];
}

@end