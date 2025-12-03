@interface BAPurchaseData
- (BAPurchaseData)init;
- (BAPurchaseData)initWithPurchaseAttemptID:(id)d purchaseMethod:(int64_t)method isPreorder:(BOOL)preorder pricingParameters:(id)parameters;
@end

@implementation BAPurchaseData

- (BAPurchaseData)initWithPurchaseAttemptID:(id)d purchaseMethod:(int64_t)method isPreorder:(BOOL)preorder pricingParameters:(id)parameters
{
  v9 = sub_1E1780();
  v11 = v10;
  v12 = sub_1E1780();
  v13 = (self + OBJC_IVAR___BAPurchaseData_purchaseAttemptID);
  *v13 = v9;
  v13[1] = v11;
  *(&self->super.isa + OBJC_IVAR___BAPurchaseData_purchaseMethod) = method;
  *(&self->super.isa + OBJC_IVAR___BAPurchaseData_isPreorder) = preorder;
  v14 = (self + OBJC_IVAR___BAPurchaseData_pricingParameters);
  *v14 = v12;
  v14[1] = v15;
  v17.receiver = self;
  v17.super_class = type metadata accessor for BridgedPurchaseData();
  return [(BAPurchaseData *)&v17 init];
}

- (BAPurchaseData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end