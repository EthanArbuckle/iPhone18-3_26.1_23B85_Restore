@interface DayLockActivity
+ (void)registerActivity;
- (_TtC9appstored15DayLockActivity)init;
@end

@implementation DayLockActivity

+ (void)registerActivity
{
  v2 = [objc_opt_self() sharedScheduler];
  v3 = String._bridgeToObjectiveC()();
  v5[4] = sub_10018F1F0;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000C1214;
  v5[3] = &unk_100510CF0;
  v4 = _Block_copy(v5);
  [v2 registerForTaskWithIdentifier:v3 usingQueue:0 launchHandler:v4];
  _Block_release(v4);
}

- (_TtC9appstored15DayLockActivity)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DayLockActivity *)&v3 init];
}

@end