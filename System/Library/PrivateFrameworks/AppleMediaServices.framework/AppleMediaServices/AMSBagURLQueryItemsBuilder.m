@interface AMSBagURLQueryItemsBuilder
+ (id)storefrontFromQueryItems:(id)a3;
- (AMSBagURLQueryItemsBuilder)initWithClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5;
- (AMSBagURLQueryItemsBuilder)initWithClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5 operatingSystem:(id)a6 operatingSystemVersion:(id)a7 deviceClass:(id)a8 buildVariant:(id)a9;
- (id)queryItemsWithCookies:(id)a3 storefront:(id)a4;
@end

@implementation AMSBagURLQueryItemsBuilder

- (AMSBagURLQueryItemsBuilder)initWithClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5 operatingSystem:(id)a6 operatingSystemVersion:(id)a7 deviceClass:(id)a8 buildVariant:(id)a9
{
  v9 = a9;
  v10 = sub_192F967CC();
  v28 = v11;
  v29 = v10;
  v12 = sub_192F967CC();
  v14 = v13;
  v15 = sub_192F967CC();
  v17 = v16;
  v18 = sub_192F967CC();
  v20 = v19;
  v21 = sub_192F967CC();
  v23 = v22;
  if (a9)
  {
    v9 = sub_192F967CC();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  return BagURLQueryItemsBuilder.init(clientInfo:profile:profileVersion:operatingSystem:operatingSystemVersion:deviceClass:buildVariant:)(a3, v29, v28, v12, v14, v15, v17, v18, v20, v21, v23, v9, v25);
}

- (id)queryItemsWithCookies:(id)a3 storefront:(id)a4
{
  sub_192874CD0(0, &unk_1ED6DEE18);
  v6 = sub_192F96B0C();
  if (a4)
  {
    v7 = sub_192F967CC();
    a4 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = self;
  BagURLQueryItemsBuilder.queryItems(withCookies:storefront:)(v6, v7, a4);

  sub_192F9550C();
  v10 = sub_192F96AFC();

  return v10;
}

- (AMSBagURLQueryItemsBuilder)initWithClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5
{
  sub_192F967CC();
  sub_192F967CC();
  return BagURLQueryItemsBuilder.init(clientInfo:profile:profileVersion:)(a3);
}

+ (id)storefrontFromQueryItems:(id)a3
{
  sub_192F9550C();
  v3 = sub_192F96B0C();
  static BagURLQueryItemsBuilder.storefront(fromQueryItems:)(v3);
  v5 = v4;

  if (v5)
  {
    v6 = sub_192F9679C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end