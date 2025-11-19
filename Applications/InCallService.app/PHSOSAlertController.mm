@interface PHSOSAlertController
+ (void)playSOSEntryHaptic;
- (void)playAlertWithAudio:(BOOL)a3 alertTopic:(id)a4;
- (void)stopAlert;
@end

@implementation PHSOSAlertController

+ (void)playSOSEntryHaptic
{
  v3 = [[TLAlertConfiguration alloc] initWithType:22];
  [v3 setTopic:TLAlertTopicSOSButtonChordingTimeout];
  v2 = [TLAlert alertWithConfiguration:v3];
  [v2 play];
}

- (void)playAlertWithAudio:(BOOL)a3 alertTopic:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(PHSOSAlertController *)self playingWithAudio]!= v4)
  {
    [(PHSOSAlertController *)self setPlayingWithAudio:v4];
    [(PHSOSAlertController *)self stopAlert];
  }

  v7 = [SOSUtilities BOOLOverrideForDefaultsKey:@"debug.countdown.subtle" defaultValue:0];
  v8 = v7;
  if (v7)
  {
    v9 = 22;
    if ([(PHSOSAlertController *)self playingWithAudio]&& TLAlertTopicSOSCountdownTick == v6)
    {
      v10 = TLAlertTopicIncomingCallFaceTimeParticipantJoined;

      v9 = 1;
      v6 = v10;
    }
  }

  else
  {
    v9 = 22;
  }

  v11 = [(PHSOSAlertController *)self alertConfiguration];
  if (!v11 || (v12 = v11, -[PHSOSAlertController alertConfiguration](self, "alertConfiguration"), v13 = objc_claimAutoreleasedReturnValue(), [v13 topic], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v14 != v6))
  {
    v15 = [[TLAlertConfiguration alloc] initWithType:v9];
    [v15 setTopic:v6];
    if (v6 == TLAlertTopicSOSCountdownTick)
    {
      [v15 setMaximumDuration:0.850000024];
    }

    if (![(PHSOSAlertController *)self playingWithAudio])
    {
      [v15 setToneIdentifier:TLToneIdentifierNone];
    }

    [(PHSOSAlertController *)self setAlertConfiguration:v15];
  }

  v16 = [(PHSOSAlertController *)self alertConfiguration];
  v17 = [TLAlert alertWithConfiguration:v16];

  [(PHSOSAlertController *)self setAlert:v17];
  v18 = [(PHSOSAlertController *)self alertActivationAssertion];
  if (!v18 && v6 != TLAlertTopicSOSButtonChordingTimeout)
  {
    if (v8)
    {
      goto LABEL_20;
    }

    v18 = [[TLAlertActivationAssertion alloc] initWithAlert:v17];
    [v18 acquire];
    [(PHSOSAlertController *)self setAlertActivationAssertion:v18];
  }

LABEL_20:
  v19 = sub_100004F84();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(PHSOSAlertController *)self alertConfiguration];
    v22 = 138412290;
    v23 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Playing countdown alert sound with alertConfiguration: %@", &v22, 0xCu);
  }

  v21 = [(PHSOSAlertController *)self alert];
  [v21 play];
}

- (void)stopAlert
{
  v3 = [(PHSOSAlertController *)self alert];

  if (v3)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping countdown alert sound...", buf, 2u);
    }

    v5 = [(PHSOSAlertController *)self alert];
    [v5 stop];
  }

  v6 = [(PHSOSAlertController *)self alertActivationAssertion];

  if (v6)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Relinquishing alert activation assertion...", v10, 2u);
    }

    v8 = [(PHSOSAlertController *)self alertActivationAssertion];
    [v8 relinquish];

    [(PHSOSAlertController *)self setAlertActivationAssertion:0];
  }

  v9 = [(PHSOSAlertController *)self alertConfiguration];

  if (v9)
  {
    [(PHSOSAlertController *)self setAlertConfiguration:0];
  }
}

@end