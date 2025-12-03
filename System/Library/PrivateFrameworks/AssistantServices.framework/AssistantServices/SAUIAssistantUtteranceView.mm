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
  speakableText = [(SAUIAssistantUtteranceView *)self speakableText];
  if (speakableText)
  {
    speakableText2 = [(SAUIAssistantUtteranceView *)self speakableText];
    v5 = [speakableText2 isEqualToString:&stru_10051F508] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end