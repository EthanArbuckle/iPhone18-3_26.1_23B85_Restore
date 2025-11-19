@interface ADGenericIntentService
- (ADGenericIntentService)init;
@end

@implementation ADGenericIntentService

- (ADGenericIntentService)init
{
  v3 = [ADServiceCommandType alloc];
  v4 = [(ADServiceCommandType *)v3 initWithDomainName:SAIntentGroupGroupIdentifier className:SAIntentGroupSupportedIntentResponseClassIdentifier];
  v5 = objc_alloc_init(ADGenericIntentRequestTransformer);
  v6 = objc_alloc_init(ADGenericIntentResponseTransformer);
  v7 = objc_alloc_init(ADGenericIntentRequestHandler);
  v10.receiver = self;
  v10.super_class = ADGenericIntentService;
  v8 = [(ADSiriTaskService *)&v10 initWithCommandType:v4 requestTransformer:v5 responseTransformer:v6 requestHandler:v7];

  return v8;
}

@end