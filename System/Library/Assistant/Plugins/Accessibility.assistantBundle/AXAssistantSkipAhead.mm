@interface AXAssistantSkipAhead
- (void)performWithCompletion:(id)completion;
@end

@implementation AXAssistantSkipAhead

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!AXAssistantSendMissingSettingFailure(completionCopy))
  {
    v4 = +[SpeakThisServices sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_EBC;
    v5[3] = &unk_40F0;
    v6 = completionCopy;
    [v4 fastForward:v5];
  }
}

@end