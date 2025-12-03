@interface QueueLocationResolutionResult
+ (id)confirmationRequiredWithQueueLocationToConfirm:(int64_t)confirm;
+ (id)successWithResolvedQueueLocation:(int64_t)location;
- (QueueLocationResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation QueueLocationResolutionResult

+ (id)successWithResolvedQueueLocation:(int64_t)location
{
  swift_getObjCClassMetadata();
  v4 = static QueueLocationResolutionResult.success(with:)(location);

  return v4;
}

+ (id)confirmationRequiredWithQueueLocationToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static QueueLocationResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

- (QueueLocationResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2CE200();
  intentCopy = intent;
  isa = sub_2CE1F0().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for QueueLocationResolutionResult();
  v8 = [(QueueLocationResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end