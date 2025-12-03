@interface AssistantAssetDelegateInterface
+ (_TtC22localspeechrecognition31AssistantAssetDelegateInterface)sharedInstance;
- (void)setStatusForLanguage:(id)language;
@end

@implementation AssistantAssetDelegateInterface

+ (_TtC22localspeechrecognition31AssistantAssetDelegateInterface)sharedInstance
{
  v2 = sub_100002AC0(&qword_10006DD80, &qword_100071678);

  return v2;
}

- (void)setStatusForLanguage:(id)language
{
  v4 = sub_100046D7C();
  selfCopy = self;
  sub_1000035C8(v4);
}

@end