@interface AssistantAssetDelegateInterface
+ (_TtC22localspeechrecognition31AssistantAssetDelegateInterface)sharedInstance;
- (void)setStatusForLanguage:(id)a3;
@end

@implementation AssistantAssetDelegateInterface

+ (_TtC22localspeechrecognition31AssistantAssetDelegateInterface)sharedInstance
{
  v2 = sub_100002AC0(&qword_10006DD80, &qword_100071678);

  return v2;
}

- (void)setStatusForLanguage:(id)a3
{
  v4 = sub_100046D7C();
  v5 = self;
  sub_1000035C8(v4);
}

@end