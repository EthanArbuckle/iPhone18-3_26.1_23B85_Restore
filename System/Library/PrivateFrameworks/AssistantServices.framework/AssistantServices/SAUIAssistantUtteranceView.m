@interface SAUIAssistantUtteranceView
- (BOOL)ad_shouldUseExtendedFlowTimeout;
- (void)_adui_notifyOthersOfArrival;
@end

@implementation SAUIAssistantUtteranceView

- (void)_adui_notifyOthersOfArrival
{
  v3 = +[ADUserNotificationAnnouncementSpeakingStatePublisher sharedPublisher];
  [v3 publishObjectHasArrived:self];
}

- (BOOL)ad_shouldUseExtendedFlowTimeout
{
  v3 = [(SAUIAssistantUtteranceView *)self speakableText];
  if (v3)
  {
    v4 = [(SAUIAssistantUtteranceView *)self speakableText];
    v5 = [v4 isEqualToString:&stru_10051F508] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end