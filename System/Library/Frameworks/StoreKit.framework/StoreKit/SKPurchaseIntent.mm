@interface SKPurchaseIntent
- (NSString)additionalBuyParams;
- (SKPurchaseIntent)initWithBundleId:(id)a3 productIdentifier:(id)a4 appName:(id)a5 productName:(id)a6;
- (void)send:(id)a3;
- (void)setAdditionalBuyParams:(id)a3;
@end

@implementation SKPurchaseIntent

- (NSString)additionalBuyParams
{
  SKPurchaseIntent.additionalBuyParams.getter();
  if (v2)
  {
    v3 = sub_1B256D98C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAdditionalBuyParams:(id)a3
{
  if (a3)
  {
    v4 = sub_1B256D9BC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  SKPurchaseIntent.additionalBuyParams.setter(v4, v6);
}

- (SKPurchaseIntent)initWithBundleId:(id)a3 productIdentifier:(id)a4 appName:(id)a5 productName:(id)a6
{
  v8 = sub_1B256D9BC();
  v10 = v9;
  v11 = sub_1B256D9BC();
  v13 = v12;
  if (!a5)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    v18 = 0;
    return sub_1B24C8460(v8, v10, v11, v13, a5, v15, v16, v18);
  }

  a5 = sub_1B256D9BC();
  v15 = v14;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_1B256D9BC();
  v18 = v17;
  return sub_1B24C8460(v8, v10, v11, v13, a5, v15, v16, v18);
}

- (void)send:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1B251DDF8(&unk_1B2581780, v5);
}

@end