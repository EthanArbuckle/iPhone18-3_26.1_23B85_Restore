@interface AMSStorefrontHeaderValueCreation
+ (id)combinedStorefrontFromStorefront:(id)a3 suffix:(id)a4 error:(id *)a5;
+ (void)storefrontHeaderValueForAccount:(ACAccount *)a3 bag:(AMSBagProtocol *)a4 mediaType:(NSString *)a5 allowFailedSuffixFetch:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation AMSStorefrontHeaderValueCreation

+ (id)combinedStorefrontFromStorefront:(id)a3 suffix:(id)a4 error:(id *)a5
{
  v6 = sub_192F967CC();
  v8 = v7;
  if (a4)
  {
    v9 = sub_192F967CC();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  static StorefrontHeaderValueCreation.combinedStorefront(fromStorefront:suffix:)(v6, v8, v9, a4);

  v11 = sub_192F9679C();

  return v11;
}

+ (void)storefrontHeaderValueForAccount:(ACAccount *)a3 bag:(AMSBagProtocol *)a4 mediaType:(NSString *)a5 allowFailedSuffixFetch:(BOOL)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = v12;
  *(v13 + 56) = a1;
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = a5;

  sub_1928FB3BC(&unk_192FCE290, v13);
}

@end