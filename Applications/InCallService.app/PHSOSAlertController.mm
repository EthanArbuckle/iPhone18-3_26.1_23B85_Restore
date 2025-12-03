@interface PHSOSAlertController
+ (void)playSOSEntryHaptic;
- (void)playAlertWithAudio:(BOOL)audio alertTopic:(id)topic;
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

- (void)playAlertWithAudio:(BOOL)audio alertTopic:(id)topic
{
  audioCopy = audio;
  topicCopy = topic;
  if ([(PHSOSAlertController *)self playingWithAudio]!= audioCopy)
  {
    [(PHSOSAlertController *)self setPlayingWithAudio:audioCopy];
    [(PHSOSAlertController *)self stopAlert];
  }

  v7 = [SOSUtilities BOOLOverrideForDefaultsKey:@"debug.countdown.subtle" defaultValue:0];
  v8 = v7;
  if (v7)
  {
    v9 = 22;
    if ([(PHSOSAlertController *)self playingWithAudio]&& TLAlertTopicSOSCountdownTick == topicCopy)
    {
      v10 = TLAlertTopicIncomingCallFaceTimeParticipantJoined;

      v9 = 1;
      topicCopy = v10;
    }
  }

  else
  {
    v9 = 22;
  }

  alertConfiguration = [(PHSOSAlertController *)self alertConfiguration];
  if (!alertConfiguration || (v12 = alertConfiguration, -[PHSOSAlertController alertConfiguration](self, "alertConfiguration"), v13 = objc_claimAutoreleasedReturnValue(), [v13 topic], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v14 != topicCopy))
  {
    v15 = [[TLAlertConfiguration alloc] initWithType:v9];
    [v15 setTopic:topicCopy];
    if (topicCopy == TLAlertTopicSOSCountdownTick)
    {
      [v15 setMaximumDuration:0.850000024];
    }

    if (![(PHSOSAlertController *)self playingWithAudio])
    {
      [v15 setToneIdentifier:TLToneIdentifierNone];
    }

    [(PHSOSAlertController *)self setAlertConfiguration:v15];
  }

  alertConfiguration2 = [(PHSOSAlertController *)self alertConfiguration];
  v17 = [TLAlert alertWithConfiguration:alertConfiguration2];

  [(PHSOSAlertController *)self setAlert:v17];
  alertActivationAssertion = [(PHSOSAlertController *)self alertActivationAssertion];
  if (!alertActivationAssertion && topicCopy != TLAlertTopicSOSButtonChordingTimeout)
  {
    if (v8)
    {
      goto LABEL_20;
    }

    alertActivationAssertion = [[TLAlertActivationAssertion alloc] initWithAlert:v17];
    [alertActivationAssertion acquire];
    [(PHSOSAlertController *)self setAlertActivationAssertion:alertActivationAssertion];
  }

LABEL_20:
  v19 = sub_100004F84();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    alertConfiguration3 = [(PHSOSAlertController *)self alertConfiguration];
    v22 = 138412290;
    v23 = alertConfiguration3;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Playing countdown alert sound with alertConfiguration: %@", &v22, 0xCu);
  }

  alert = [(PHSOSAlertController *)self alert];
  [alert play];
}

- (void)stopAlert
{
  alert = [(PHSOSAlertController *)self alert];

  if (alert)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping countdown alert sound...", buf, 2u);
    }

    alert2 = [(PHSOSAlertController *)self alert];
    [alert2 stop];
  }

  alertActivationAssertion = [(PHSOSAlertController *)self alertActivationAssertion];

  if (alertActivationAssertion)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Relinquishing alert activation assertion...", v10, 2u);
    }

    alertActivationAssertion2 = [(PHSOSAlertController *)self alertActivationAssertion];
    [alertActivationAssertion2 relinquish];

    [(PHSOSAlertController *)self setAlertActivationAssertion:0];
  }

  alertConfiguration = [(PHSOSAlertController *)self alertConfiguration];

  if (alertConfiguration)
  {
    [(PHSOSAlertController *)self setAlertConfiguration:0];
  }
}

@end