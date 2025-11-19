@interface CRLAnalyticsFeatureUsed
+ (id)featurePayloadFor:(int64_t)a3;
+ (void)logFeatureUsedWithName:(int64_t)a3;
- (_TtC8Freeform23CRLAnalyticsFeatureUsed)init;
@end

@implementation CRLAnalyticsFeatureUsed

+ (id)featurePayloadFor:(int64_t)a3
{
  _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(a3);
  sub_100006370(0, &qword_1019F54D0);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

+ (void)logFeatureUsedWithName:(int64_t)a3
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(a3);
  sub_100006370(0, &qword_1019F54D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 sendEventInDomain:v5 lazily:1 eventPayload:isa];
}

- (_TtC8Freeform23CRLAnalyticsFeatureUsed)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLAnalyticsFeatureUsed();
  return [(CRLAnalyticsFeatureUsed *)&v3 init];
}

@end