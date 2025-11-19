@interface AXAssistantSkipAhead
- (void)performWithCompletion:(id)a3;
@end

@implementation AXAssistantSkipAhead

- (void)performWithCompletion:(id)a3
{
  v3 = a3;
  if (!AXAssistantSendMissingSettingFailure(v3))
  {
    v4 = +[SpeakThisServices sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_EBC;
    v5[3] = &unk_40F0;
    v6 = v3;
    [v4 fastForward:v5];
  }
}

@end