@interface PeriodResolutionResult
+ (id)confirmationRequiredWithPeriodToConfirm:(int64_t)confirm;
+ (id)successWithResolvedPeriod:(int64_t)period;
- (PeriodResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation PeriodResolutionResult

+ (id)successWithResolvedPeriod:(int64_t)period
{
  swift_getObjCClassMetadata();
  v4 = sub_10000C468(period);

  return v4;
}

+ (id)confirmationRequiredWithPeriodToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_10000C4F4(confirm);

  return v4;
}

- (PeriodResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_10000CD04();
  intentCopy = intent;
  isa = sub_10000CCF4().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for PeriodResolutionResult();
  v8 = [(PeriodResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end