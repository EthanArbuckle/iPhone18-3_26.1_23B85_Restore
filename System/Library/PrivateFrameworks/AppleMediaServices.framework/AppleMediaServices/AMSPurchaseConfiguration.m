@interface AMSPurchaseConfiguration
+ (void)makeConfigurationWithBag:(AMSBagProtocol *)a3 completionHandler:(id)a4;
- (BOOL)isExpressCheckoutEligible;
- (BOOL)isExpressCheckoutShouldCheckForWalletBiometrics;
- (void)beginCardEnrollmentAttemptWithAccount:(ACAccount *)a3 completionHandler:(id)a4;
- (void)finishCardEnrollmentAttemptWithBuyParams:(AMSBuyParams *)a3 purchaseResult:(AMSPurchaseResult *)a4 completionHandler:(id)a5;
@end

@implementation AMSPurchaseConfiguration

+ (void)makeConfigurationWithBag:(AMSBagProtocol *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  swift_unknownObjectRetain();

  sub_1928FB3BC(&unk_192FCDEA8, v7);
}

- (void)beginCardEnrollmentAttemptWithAccount:(ACAccount *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1928FB3BC(&unk_192FCDE90, v7);
}

- (void)finishCardEnrollmentAttemptWithBuyParams:(AMSBuyParams *)a3 purchaseResult:(AMSPurchaseResult *)a4 completionHandler:(id)a5
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

  sub_1928FB3BC(&unk_192FCDE80, v9);
}

- (BOOL)isExpressCheckoutEligible
{
  v2 = self;
  v3 = PurchaseConfiguration.isExpressCheckoutEligible.getter();

  return v3 & 1;
}

- (BOOL)isExpressCheckoutShouldCheckForWalletBiometrics
{
  v2 = self;
  v3 = PurchaseConfiguration.isExpressCheckoutShouldCheckForWalletBiometrics.getter();

  return v3 & 1;
}

@end