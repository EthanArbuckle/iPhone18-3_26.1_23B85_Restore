@interface DAHeadphonesDetector
- (void)audioRouteChanged;
- (void)start;
- (void)stop;
@end

@implementation DAHeadphonesDetector

- (void)start
{
  [(DAHeadphonesDetector *)self audioRouteChanged];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"audioRouteChanged" name:AVAudioSessionRouteChangeNotification object:0];
}

- (void)audioRouteChanged
{
  v2 = +[AVAudioSession sharedInstance];
  v3 = [v2 currentRoute];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 outputs];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 portType];
        if ([v10 isEqualToString:AVAudioSessionPortBuiltInReceiver])
        {
        }

        else
        {
          v11 = [v9 portType];
          v12 = [v11 isEqualToString:AVAudioSessionPortBuiltInSpeaker];

          if (!v12)
          {

            v4 = +[NSNotificationCenter defaultCenter];
            [v4 postNotificationName:@"HeadphonesConnectedNotification" object:0];
            goto LABEL_13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)stop
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];
}

@end