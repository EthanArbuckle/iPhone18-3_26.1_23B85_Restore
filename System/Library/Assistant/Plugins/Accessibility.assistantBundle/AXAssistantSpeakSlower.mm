@interface AXAssistantSpeakSlower
- (void)performWithCompletion:(id)completion;
@end

@implementation AXAssistantSpeakSlower

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!AXAssistantSendMissingSettingFailure(completionCopy))
  {
    v4 = +[SpeakThisServices sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_BD8;
    v5[3] = &unk_40F0;
    v6 = completionCopy;
    [v4 speakSlower:v5];
  }
}

@end