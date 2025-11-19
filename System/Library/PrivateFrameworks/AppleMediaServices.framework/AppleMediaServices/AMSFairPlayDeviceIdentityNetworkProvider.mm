@interface AMSFairPlayDeviceIdentityNetworkProvider
- (void)fpdiNetworkResponseFor:(NSURL *)a3 data:(NSData *)a4 bag:(AMSSendableBag *)a5 completionHandler:(id)a6;
- (void)fpdiNetworkResponseFor:(NSURL *)a3 data:(NSData *)a4 completionHandler:(id)a5;
@end

@implementation AMSFairPlayDeviceIdentityNetworkProvider

- (void)fpdiNetworkResponseFor:(NSURL *)a3 data:(NSData *)a4 bag:(AMSSendableBag *)a5 completionHandler:(id)a6
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
  v15 = self;

  sub_1928FB3BC(&unk_192FCB950, v11);
}

- (void)fpdiNetworkResponseFor:(NSURL *)a3 data:(NSData *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1928FB3BC(&unk_192FCB940, v9);
}

@end