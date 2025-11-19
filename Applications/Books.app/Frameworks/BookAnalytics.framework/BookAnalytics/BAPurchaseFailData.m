@interface BAPurchaseFailData
- (BAPurchaseFailData)init;
- (BAPurchaseFailData)initWithPurchaseFailureReason:(int64_t)a3 errorCode:(id)a4 errorDescription:(id)a5 errorDomain:(id)a6;
@end

@implementation BAPurchaseFailData

- (BAPurchaseFailData)initWithPurchaseFailureReason:(int64_t)a3 errorCode:(id)a4 errorDescription:(id)a5 errorDomain:(id)a6
{
  if (!a5)
  {
    v10 = 0;
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v10 = sub_1E1780();
  v12 = v11;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1E1780();
LABEL_6:
  *(&self->super.isa + OBJC_IVAR___BAPurchaseFailData_purchaseFailureReason) = a3;
  *(&self->super.isa + OBJC_IVAR___BAPurchaseFailData_errorCode) = a4;
  v15 = (self + OBJC_IVAR___BAPurchaseFailData_errorDescription);
  *v15 = v10;
  v15[1] = v12;
  v16 = (self + OBJC_IVAR___BAPurchaseFailData_errorDomain);
  *v16 = v13;
  v16[1] = v14;
  v19.receiver = self;
  v19.super_class = type metadata accessor for BridgedPurchaseFailData();
  v17 = a4;
  return [(BAPurchaseFailData *)&v19 init];
}

- (BAPurchaseFailData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end