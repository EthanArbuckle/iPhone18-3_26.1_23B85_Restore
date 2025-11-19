@interface GeneralASRAssetDelegateInterface
+ (_TtC22localspeechrecognition32GeneralASRAssetDelegateInterface)sharedInstance;
- (void)setStatusForLanguage:(id)a3;
@end

@implementation GeneralASRAssetDelegateInterface

+ (_TtC22localspeechrecognition32GeneralASRAssetDelegateInterface)sharedInstance
{
  v2 = sub_100002AC0(&qword_10006DD88, &qword_100071680);

  return v2;
}

- (void)setStatusForLanguage:(id)a3
{
  v4 = sub_100046D7C();
  v5 = self;
  sub_1000057FC(v4);
}

@end