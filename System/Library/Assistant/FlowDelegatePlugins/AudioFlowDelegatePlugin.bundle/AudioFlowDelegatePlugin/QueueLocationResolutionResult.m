@interface QueueLocationResolutionResult
+ (id)confirmationRequiredWithQueueLocationToConfirm:(int64_t)a3;
+ (id)successWithResolvedQueueLocation:(int64_t)a3;
- (QueueLocationResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation QueueLocationResolutionResult

+ (id)successWithResolvedQueueLocation:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static QueueLocationResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithQueueLocationToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static QueueLocationResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

- (QueueLocationResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2CE200();
  v6 = a4;
  isa = sub_2CE1F0().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for QueueLocationResolutionResult();
  v8 = [(QueueLocationResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end