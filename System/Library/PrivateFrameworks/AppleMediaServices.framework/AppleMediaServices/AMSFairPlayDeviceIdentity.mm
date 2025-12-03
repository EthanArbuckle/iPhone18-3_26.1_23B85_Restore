@interface AMSFairPlayDeviceIdentity
+ (AMSFairPlayDeviceIdentity)shared;
- (void)fpdiLevelFor:(NSURL *)for bag:(AMSSendableBag *)bag buyParams:(NSDictionary *)params completionHandler:(id)handler;
- (void)headersFor:(NSURLRequest *)for bag:(AMSSendableBag *)bag buyParams:(NSDictionary *)params networkProvider:(AMSFairPlayDeviceIdentityNetworkProviderProtocol *)provider completionHandler:(id)handler;
- (void)initializeSessionFor:(NSURL *)for buyParams:(NSDictionary *)params networkProvider:(AMSFairPlayDeviceIdentityNetworkProviderProtocol *)provider bag:(AMSSendableBag *)bag completionHandler:(id)handler;
- (void)resetSessionFor:(NSURL *)for buyParams:(NSDictionary *)params bag:(AMSSendableBag *)bag completionHandler:(id)handler;
@end

@implementation AMSFairPlayDeviceIdentity

+ (AMSFairPlayDeviceIdentity)shared
{
  v2 = static FairPlayDeviceIdentity.shared.getter();

  return v2;
}

- (void)headersFor:(NSURLRequest *)for bag:(AMSSendableBag *)bag buyParams:(NSDictionary *)params networkProvider:(AMSFairPlayDeviceIdentityNetworkProviderProtocol *)provider completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = bag;
  v13[4] = params;
  v13[5] = provider;
  v13[6] = v12;
  v13[7] = self;
  forCopy = for;
  bagCopy = bag;
  paramsCopy = params;
  swift_unknownObjectRetain();

  sub_1928FB3BC(&unk_192FCA788, v13);
}

- (void)resetSessionFor:(NSURL *)for buyParams:(NSDictionary *)params bag:(AMSSendableBag *)bag completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = params;
  v11[4] = bag;
  v11[5] = v10;
  v11[6] = self;
  forCopy = for;
  paramsCopy = params;
  bagCopy = bag;

  sub_1928FB3BC(&unk_192FCA7C0, v11);
}

- (void)initializeSessionFor:(NSURL *)for buyParams:(NSDictionary *)params networkProvider:(AMSFairPlayDeviceIdentityNetworkProviderProtocol *)provider bag:(AMSSendableBag *)bag completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = params;
  v13[4] = provider;
  v13[5] = bag;
  v13[6] = v12;
  v13[7] = self;
  forCopy = for;
  paramsCopy = params;
  swift_unknownObjectRetain();
  bagCopy = bag;

  sub_1928FB3BC(&unk_192FCA7A8, v13);
}

- (void)fpdiLevelFor:(NSURL *)for bag:(AMSSendableBag *)bag buyParams:(NSDictionary *)params completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = bag;
  v11[4] = params;
  v11[5] = v10;
  v11[6] = self;
  forCopy = for;
  bagCopy = bag;
  paramsCopy = params;

  sub_1928FB3BC(&unk_192FCA798, v11);
}

@end