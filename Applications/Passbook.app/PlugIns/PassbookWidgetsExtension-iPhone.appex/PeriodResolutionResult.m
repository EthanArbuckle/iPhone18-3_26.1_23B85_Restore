@interface PeriodResolutionResult
+ (id)confirmationRequiredWithPeriodToConfirm:(int64_t)a3;
+ (id)successWithResolvedPeriod:(int64_t)a3;
- (PeriodResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation PeriodResolutionResult

+ (id)successWithResolvedPeriod:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_10000C468(a3);

  return v4;
}

+ (id)confirmationRequiredWithPeriodToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_10000C4F4(a3);

  return v4;
}

- (PeriodResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_10000CD04();
  v6 = a4;
  isa = sub_10000CCF4().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for PeriodResolutionResult();
  v8 = [(PeriodResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end