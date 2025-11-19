@interface FBANotificationManager
+ (_TtC18Feedback_Assistant22FBANotificationManager)sharedManager;
- (NSString)apnsToken;
- (_TtC18Feedback_Assistant22FBANotificationManager)init;
- (void)registerAPNSWithParticipantID:(id)a3 api:(id)a4;
- (void)requestPermission;
- (void)saveToken:(id)a3;
- (void)setApnsToken:(id)a3;
@end

@implementation FBANotificationManager

- (void)requestPermission
{
  v2 = [objc_opt_self() currentNotificationCenter];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v6[4] = sub_100041A2C;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100040DDC;
  v6[3] = &unk_1000DFE78;
  v4 = _Block_copy(v6);
  v5 = v2;

  [v5 getNotificationSettingsWithCompletionHandler:v4];
  _Block_release(v4);
}

- (NSString)apnsToken
{
  if (*(self + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken);
    v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setApnsToken:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken);
  v7 = *(self + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken + 8);
  *v6 = v4;
  v6[1] = v5;
}

+ (_TtC18Feedback_Assistant22FBANotificationManager)sharedManager
{
  if (qword_100108E00 != -1)
  {
    swift_once();
  }

  v3 = qword_10010CEC8;

  return v3;
}

- (_TtC18Feedback_Assistant22FBANotificationManager)init
{
  v3 = (self + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken);
  v4 = type metadata accessor for FBANotificationManager();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(FBANotificationManager *)&v6 init];
}

- (void)saveToken:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_1000736BC(v5, v7);
  sub_100046730(v5, v7);
}

- (void)registerAPNSWithParticipantID:(id)a3 api:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000738A8(v6, v7);
}

@end