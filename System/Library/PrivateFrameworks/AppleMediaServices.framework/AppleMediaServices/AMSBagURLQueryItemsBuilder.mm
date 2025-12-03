@interface AMSBagURLQueryItemsBuilder
+ (id)storefrontFromQueryItems:(id)items;
- (AMSBagURLQueryItemsBuilder)initWithClientInfo:(id)info profile:(id)profile profileVersion:(id)version;
- (AMSBagURLQueryItemsBuilder)initWithClientInfo:(id)info profile:(id)profile profileVersion:(id)version operatingSystem:(id)system operatingSystemVersion:(id)systemVersion deviceClass:(id)class buildVariant:(id)variant;
- (id)queryItemsWithCookies:(id)cookies storefront:(id)storefront;
@end

@implementation AMSBagURLQueryItemsBuilder

- (AMSBagURLQueryItemsBuilder)initWithClientInfo:(id)info profile:(id)profile profileVersion:(id)version operatingSystem:(id)system operatingSystemVersion:(id)systemVersion deviceClass:(id)class buildVariant:(id)variant
{
  variantCopy = variant;
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
  if (variant)
  {
    variantCopy = sub_192F967CC();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  return BagURLQueryItemsBuilder.init(clientInfo:profile:profileVersion:operatingSystem:operatingSystemVersion:deviceClass:buildVariant:)(info, v29, v28, v12, v14, v15, v17, v18, v20, v21, v23, variantCopy, v25);
}

- (id)queryItemsWithCookies:(id)cookies storefront:(id)storefront
{
  sub_192874CD0(0, &unk_1ED6DEE18);
  v6 = sub_192F96B0C();
  if (storefront)
  {
    v7 = sub_192F967CC();
    storefront = v8;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  BagURLQueryItemsBuilder.queryItems(withCookies:storefront:)(v6, v7, storefront);

  sub_192F9550C();
  v10 = sub_192F96AFC();

  return v10;
}

- (AMSBagURLQueryItemsBuilder)initWithClientInfo:(id)info profile:(id)profile profileVersion:(id)version
{
  sub_192F967CC();
  sub_192F967CC();
  return BagURLQueryItemsBuilder.init(clientInfo:profile:profileVersion:)(info);
}

+ (id)storefrontFromQueryItems:(id)items
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