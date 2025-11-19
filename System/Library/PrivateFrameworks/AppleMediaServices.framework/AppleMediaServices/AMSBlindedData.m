@interface AMSBlindedData
- (AMSBlindedData)initWithBlindedElement:(id)a3 privateInput:(id)a4 timestamp:(id)a5;
- (NSString)blindedElementString;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSBlindedData

- (AMSBlindedData)initWithBlindedElement:(id)a3 privateInput:(id)a4 timestamp:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_192F95B7C();
  v12 = v11;

  v13 = sub_192F95B7C();
  v15 = v14;

  v16 = sub_192F967CC();
  v18 = v17;

  return sub_192BD8614(v10, v12, v13, v15, v16, v18);
}

- (NSString)blindedElementString
{
  v2 = self;
  BlindedData.blindedElementString.getter();

  v3 = sub_192F9679C();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  BlindedData.encode(with:)(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  BlindedData.copy(with:)();

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_192F9774C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

@end