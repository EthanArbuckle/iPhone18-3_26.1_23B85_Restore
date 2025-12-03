@interface AMSFairPlayDeviceIdentityNetworkProvider
- (void)fpdiNetworkResponseFor:(NSURL *)for data:(NSData *)data bag:(AMSSendableBag *)bag completionHandler:(id)handler;
- (void)fpdiNetworkResponseFor:(NSURL *)for data:(NSData *)data completionHandler:(id)handler;
@end

@implementation AMSFairPlayDeviceIdentityNetworkProvider

- (void)fpdiNetworkResponseFor:(NSURL *)for data:(NSData *)data bag:(AMSSendableBag *)bag completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = data;
  v11[4] = bag;
  v11[5] = v10;
  v11[6] = self;
  forCopy = for;
  dataCopy = data;
  bagCopy = bag;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FCB950, v11);
}

- (void)fpdiNetworkResponseFor:(NSURL *)for data:(NSData *)data completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = for;
  v9[3] = data;
  v9[4] = v8;
  v9[5] = self;
  forCopy = for;
  dataCopy = data;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FCB940, v9);
}

@end