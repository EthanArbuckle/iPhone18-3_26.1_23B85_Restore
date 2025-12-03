@interface AMSPurchaseConfiguration
+ (void)makeConfigurationWithBag:(AMSBagProtocol *)bag completionHandler:(id)handler;
- (BOOL)isExpressCheckoutEligible;
- (BOOL)isExpressCheckoutShouldCheckForWalletBiometrics;
- (void)beginCardEnrollmentAttemptWithAccount:(ACAccount *)account completionHandler:(id)handler;
- (void)finishCardEnrollmentAttemptWithBuyParams:(AMSBuyParams *)params purchaseResult:(AMSPurchaseResult *)result completionHandler:(id)handler;
@end

@implementation AMSPurchaseConfiguration

+ (void)makeConfigurationWithBag:(AMSBagProtocol *)bag completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = bag;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();

  sub_1928FB3BC(&unk_192FCDEA8, v7);
}

- (void)beginCardEnrollmentAttemptWithAccount:(ACAccount *)account completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = account;
  v7[3] = v6;
  v7[4] = self;
  accountCopy = account;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FCDE90, v7);
}

- (void)finishCardEnrollmentAttemptWithBuyParams:(AMSBuyParams *)params purchaseResult:(AMSPurchaseResult *)result completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = params;
  v9[3] = result;
  v9[4] = v8;
  v9[5] = self;
  paramsCopy = params;
  resultCopy = result;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FCDE80, v9);
}

- (BOOL)isExpressCheckoutEligible
{
  selfCopy = self;
  v3 = PurchaseConfiguration.isExpressCheckoutEligible.getter();

  return v3 & 1;
}

- (BOOL)isExpressCheckoutShouldCheckForWalletBiometrics
{
  selfCopy = self;
  v3 = PurchaseConfiguration.isExpressCheckoutShouldCheckForWalletBiometrics.getter();

  return v3 & 1;
}

@end