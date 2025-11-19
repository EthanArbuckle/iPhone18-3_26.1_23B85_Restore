@interface AXAssistantSpeakSlower
- (void)performWithCompletion:(id)a3;
@end

@implementation AXAssistantSpeakSlower

- (void)performWithCompletion:(id)a3
{
  v3 = a3;
  if (!AXAssistantSendMissingSettingFailure(v3))
  {
    v4 = +[SpeakThisServices sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_BD8;
    v5[3] = &unk_40F0;
    v6 = v3;
    [v4 speakSlower:v5];
  }
}

@end