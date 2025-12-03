@interface AnalyticsEvent
+ (NSString)name;
+ (void)sendLazy:(id)lazy;
- (NSDictionary)payload;
- (NSString)eventName;
- (id)createPayload;
@end

@implementation AnalyticsEvent

+ (void)sendLazy:(id)lazy
{
  v3 = _Block_copy(lazy);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  sub_100027534(sub_1000287F4, v4);
}

- (NSDictionary)payload
{
  selfCopy = self;
  sub_10002771C();

  sub_100028200();
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

+ (NSString)name
{
  swift_getObjCClassMetadata();
  sub_100027E24();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)createPayload
{
  selfCopy = self;
  v3 = sub_1000280D8();

  if (v3)
  {
    sub_100028200();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (NSString)eventName
{
  selfCopy = self;
  sub_1000281C4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end