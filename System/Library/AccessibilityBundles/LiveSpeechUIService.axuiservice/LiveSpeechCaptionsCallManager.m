@interface LiveSpeechCaptionsCallManager
+ (_TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager)shared;
- (void)handleCallStatusChanged:(id)a3;
@end

@implementation LiveSpeechCaptionsCallManager

+ (_TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager)shared
{
  if (qword_F8360 != -1)
  {
    swift_once();
  }

  v3 = static LiveSpeechCaptionsCallManager.shared;

  return v3;
}

- (void)handleCallStatusChanged:(id)a3
{
  v4 = sub_B8FF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B8FC0();
  v8 = self;
  sub_B7DC8(v7);

  (*(v5 + 8))(v7, v4);
}

@end