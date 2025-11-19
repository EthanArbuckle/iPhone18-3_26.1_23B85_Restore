@interface CBBootIntentManager
+ (CBBootIntentManager)sharedInstance;
- (BOOL)isCurrentProcessFirstToReadIntent;
- (CBBootIntentManager)init;
- (id)bootIntentLocale;
- (id)bootIntentWifiPassword;
- (id)bootIntentWifiSSID;
- (unint64_t)currentBootIntentReason;
- (void)deleteBootIntentSourceData;
@end

@implementation CBBootIntentManager

+ (CBBootIntentManager)sharedInstance
{
  if (qword_100091CC8 != -1)
  {
    swift_once();
  }

  v3 = qword_100092868;

  return v3;
}

- (unint64_t)currentBootIntentReason
{
  v2 = self;
  sub_100039580(v4);

  sub_10003AF20(v4);
  return v4[0];
}

- (id)bootIntentLocale
{
  v2 = self;
  sub_100039580(v6);

  v8 = v7;
  sub_10003AF50(&v8, &v5, &qword_100091D60);
  sub_10003AF20(v6);
  if (*(&v8 + 1))
  {
    v3 = String._bridgeToObjectiveC()();
    sub_10003AFB8(&v8, &qword_100091D60);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)bootIntentWifiSSID
{
  v2 = self;
  sub_100039580(v6);

  v8 = v7;
  sub_10003AF50(&v8, &v5, &qword_100091D60);
  sub_10003AF20(v6);
  if (*(&v8 + 1))
  {
    v3 = String._bridgeToObjectiveC()();
    sub_10003AFB8(&v8, &qword_100091D60);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)bootIntentWifiPassword
{
  v2 = self;
  sub_100039580(v6);

  v8 = v7;
  sub_10003AF50(&v8, &v5, &qword_100091D60);
  sub_10003AF20(v6);
  if (*(&v8 + 1))
  {
    v3 = String._bridgeToObjectiveC()();
    sub_10003AFB8(&v8, &qword_100091D60);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deleteBootIntentSourceData
{
  sub_10003923C();
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  [v3 clearNVRamVariable:v4];
}

- (BOOL)isCurrentProcessFirstToReadIntent
{
  v2 = self;
  sub_100039580(v4);

  sub_10003AF20(v4);
  return v4[56];
}

- (CBBootIntentManager)init
{
  v2 = self + OBJC_IVAR___CBBootIntentManager____lazy_storage___bootIntent;
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  v2[56] = 0;
  *(&self->super.isa + OBJC_IVAR___CBBootIntentManager____lazy_storage___checkBootIntentWasRead) = 2;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BootIntentManager();
  return [(CBBootIntentManager *)&v4 init];
}

@end