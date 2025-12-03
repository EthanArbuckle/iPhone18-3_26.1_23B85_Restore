@interface RequestTypeResolutionResult
+ (id)confirmationRequiredWithRequestTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedRequestType:(int64_t)type;
- (RequestTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation RequestTypeResolutionResult

+ (id)successWithResolvedRequestType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = static QueueLocationResolutionResult.success(with:)(type);

  return v4;
}

+ (id)confirmationRequiredWithRequestTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static QueueLocationResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

- (RequestTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2CE200();
  intentCopy = intent;
  isa = sub_2CE1F0().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for RequestTypeResolutionResult();
  v8 = [(RequestTypeResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end