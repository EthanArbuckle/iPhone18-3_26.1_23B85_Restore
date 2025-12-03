@interface AMSStorefrontHeaderValueCreation
+ (id)combinedStorefrontFromStorefront:(id)storefront suffix:(id)suffix error:(id *)error;
+ (void)storefrontHeaderValueForAccount:(ACAccount *)account bag:(AMSBagProtocol *)bag mediaType:(NSString *)type allowFailedSuffixFetch:(BOOL)fetch completionHandler:(id)handler;
@end

@implementation AMSStorefrontHeaderValueCreation

+ (id)combinedStorefrontFromStorefront:(id)storefront suffix:(id)suffix error:(id *)error
{
  v6 = sub_192F967CC();
  v8 = v7;
  if (suffix)
  {
    v9 = sub_192F967CC();
    suffix = v10;
  }

  else
  {
    v9 = 0;
  }

  static StorefrontHeaderValueCreation.combinedStorefront(fromStorefront:suffix:)(v6, v8, v9, suffix);

  v11 = sub_192F9679C();

  return v11;
}

+ (void)storefrontHeaderValueForAccount:(ACAccount *)account bag:(AMSBagProtocol *)bag mediaType:(NSString *)type allowFailedSuffixFetch:(BOOL)fetch completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = account;
  *(v13 + 24) = bag;
  *(v13 + 32) = type;
  *(v13 + 40) = fetch;
  *(v13 + 48) = v12;
  *(v13 + 56) = self;
  accountCopy = account;
  swift_unknownObjectRetain();
  typeCopy = type;

  sub_1928FB3BC(&unk_192FCE290, v13);
}

@end