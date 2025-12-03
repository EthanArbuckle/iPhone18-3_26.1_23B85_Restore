@interface AMSBlindedData
- (AMSBlindedData)initWithBlindedElement:(id)element privateInput:(id)input timestamp:(id)timestamp;
- (NSString)blindedElementString;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSBlindedData

- (AMSBlindedData)initWithBlindedElement:(id)element privateInput:(id)input timestamp:(id)timestamp
{
  elementCopy = element;
  inputCopy = input;
  timestampCopy = timestamp;
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
  selfCopy = self;
  BlindedData.blindedElementString.getter();

  v3 = sub_192F9679C();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  BlindedData.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  BlindedData.copy(with:)();

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_192F9774C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

@end