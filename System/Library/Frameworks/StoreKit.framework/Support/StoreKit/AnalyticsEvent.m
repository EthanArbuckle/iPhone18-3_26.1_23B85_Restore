@interface AnalyticsEvent
+ (NSString)name;
+ (void)sendLazy:(id)a3;
- (NSDictionary)payload;
- (NSString)eventName;
- (id)createPayload;
@end

@implementation AnalyticsEvent

+ (void)sendLazy:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  sub_100173C08(sub_1001759CC, v4);
}

- (NSDictionary)payload
{
  v2 = self;
  sub_100173EB4();

  sub_100175868();
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

+ (NSString)name
{
  swift_getObjCClassMetadata();
  sub_1001745A8();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)createPayload
{
  v2 = self;
  v3 = sub_100174838();

  if (v3)
  {
    sub_100175868();
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
  v2 = self;
  sub_100174924();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end