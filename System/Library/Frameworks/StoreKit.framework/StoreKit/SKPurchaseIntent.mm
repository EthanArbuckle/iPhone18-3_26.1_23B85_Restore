@interface SKPurchaseIntent
- (NSString)additionalBuyParams;
- (SKPurchaseIntent)initWithBundleId:(id)id productIdentifier:(id)identifier appName:(id)name productName:(id)productName;
- (void)send:(id)send;
- (void)setAdditionalBuyParams:(id)params;
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

- (void)setAdditionalBuyParams:(id)params
{
  if (params)
  {
    v4 = sub_1B256D9BC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  SKPurchaseIntent.additionalBuyParams.setter(v4, v6);
}

- (SKPurchaseIntent)initWithBundleId:(id)id productIdentifier:(id)identifier appName:(id)name productName:(id)productName
{
  v8 = sub_1B256D9BC();
  v10 = v9;
  v11 = sub_1B256D9BC();
  v13 = v12;
  if (!name)
  {
    v15 = 0;
    if (productName)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    v18 = 0;
    return sub_1B24C8460(v8, v10, v11, v13, name, v15, v16, v18);
  }

  name = sub_1B256D9BC();
  v15 = v14;
  if (!productName)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_1B256D9BC();
  v18 = v17;
  return sub_1B24C8460(v8, v10, v11, v13, name, v15, v16, v18);
}

- (void)send:(id)send
{
  v4 = _Block_copy(send);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1B251DDF8(&unk_1B2581780, v5);
}

@end