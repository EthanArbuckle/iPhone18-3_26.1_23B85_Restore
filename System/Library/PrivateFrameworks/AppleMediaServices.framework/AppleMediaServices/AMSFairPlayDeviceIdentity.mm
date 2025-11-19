@interface AMSFairPlayDeviceIdentity
+ (AMSFairPlayDeviceIdentity)shared;
- (void)fpdiLevelFor:(NSURL *)a3 bag:(AMSSendableBag *)a4 buyParams:(NSDictionary *)a5 completionHandler:(id)a6;
- (void)headersFor:(NSURLRequest *)a3 bag:(AMSSendableBag *)a4 buyParams:(NSDictionary *)a5 networkProvider:(AMSFairPlayDeviceIdentityNetworkProviderProtocol *)a6 completionHandler:(id)a7;
- (void)initializeSessionFor:(NSURL *)a3 buyParams:(NSDictionary *)a4 networkProvider:(AMSFairPlayDeviceIdentityNetworkProviderProtocol *)a5 bag:(AMSSendableBag *)a6 completionHandler:(id)a7;
- (void)resetSessionFor:(NSURL *)a3 buyParams:(NSDictionary *)a4 bag:(AMSSendableBag *)a5 completionHandler:(id)a6;
@end

@implementation AMSFairPlayDeviceIdentity

+ (AMSFairPlayDeviceIdentity)shared
{
  v2 = static FairPlayDeviceIdentity.shared.getter();

  return v2;
}

- (void)headersFor:(NSURLRequest *)a3 bag:(AMSSendableBag *)a4 buyParams:(NSDictionary *)a5 networkProvider:(AMSFairPlayDeviceIdentityNetworkProviderProtocol *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  swift_unknownObjectRetain();

  sub_1928FB3BC(&unk_192FCA788, v13);
}

- (void)resetSessionFor:(NSURL *)a3 buyParams:(NSDictionary *)a4 bag:(AMSSendableBag *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;

  sub_1928FB3BC(&unk_192FCA7C0, v11);
}

- (void)initializeSessionFor:(NSURL *)a3 buyParams:(NSDictionary *)a4 networkProvider:(AMSFairPlayDeviceIdentityNetworkProviderProtocol *)a5 bag:(AMSSendableBag *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a4;
  swift_unknownObjectRetain();
  v16 = a6;

  sub_1928FB3BC(&unk_192FCA7A8, v13);
}

- (void)fpdiLevelFor:(NSURL *)a3 bag:(AMSSendableBag *)a4 buyParams:(NSDictionary *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;

  sub_1928FB3BC(&unk_192FCA798, v11);
}

@end