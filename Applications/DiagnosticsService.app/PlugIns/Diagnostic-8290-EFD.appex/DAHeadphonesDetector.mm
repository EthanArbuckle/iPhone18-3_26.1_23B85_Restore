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
  currentRoute = [v2 currentRoute];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  outputs = [currentRoute outputs];
  v5 = [outputs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(outputs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        portType = [v9 portType];
        if ([portType isEqualToString:AVAudioSessionPortBuiltInReceiver])
        {
        }

        else
        {
          portType2 = [v9 portType];
          v12 = [portType2 isEqualToString:AVAudioSessionPortBuiltInSpeaker];

          if (!v12)
          {

            outputs = +[NSNotificationCenter defaultCenter];
            [outputs postNotificationName:@"HeadphonesConnectedNotification" object:0];
            goto LABEL_13;
          }
        }
      }

      v6 = [outputs countByEnumeratingWithState:&v13 objects:v17 count:16];
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