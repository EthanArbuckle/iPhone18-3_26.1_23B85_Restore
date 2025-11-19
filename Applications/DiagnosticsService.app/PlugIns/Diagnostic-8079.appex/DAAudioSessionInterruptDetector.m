@interface DAAudioSessionInterruptDetector
- (void)audioSystemInterrupt:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation DAAudioSessionInterruptDetector

- (void)start
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"audioSystemInterrupt:" name:AVAudioSessionInterruptionNotification object:0];
}

- (void)audioSystemInterrupt:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:AVAudioSessionInterruptionTypeKey];
  v5 = [v4 isEqualToNumber:&off_100015338];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"AudioSessionInterruptNotification" object:0];
  }
}

- (void)stop
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];
}

@end