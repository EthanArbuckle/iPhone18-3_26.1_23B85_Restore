@interface BAPurchaseFailData
- (BAPurchaseFailData)init;
- (BAPurchaseFailData)initWithPurchaseFailureReason:(int64_t)reason errorCode:(id)code errorDescription:(id)description errorDomain:(id)domain;
@end

@implementation BAPurchaseFailData

- (BAPurchaseFailData)initWithPurchaseFailureReason:(int64_t)reason errorCode:(id)code errorDescription:(id)description errorDomain:(id)domain
{
  if (!description)
  {
    v10 = 0;
    v12 = 0;
    if (domain)
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
  if (!domain)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1E1780();
LABEL_6:
  *(&self->super.isa + OBJC_IVAR___BAPurchaseFailData_purchaseFailureReason) = reason;
  *(&self->super.isa + OBJC_IVAR___BAPurchaseFailData_errorCode) = code;
  v15 = (self + OBJC_IVAR___BAPurchaseFailData_errorDescription);
  *v15 = v10;
  v15[1] = v12;
  v16 = (self + OBJC_IVAR___BAPurchaseFailData_errorDomain);
  *v16 = v13;
  v16[1] = v14;
  v19.receiver = self;
  v19.super_class = type metadata accessor for BridgedPurchaseFailData();
  codeCopy = code;
  return [(BAPurchaseFailData *)&v19 init];
}

- (BAPurchaseFailData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end