@interface ASCCredentialRequestTestOptions
- (NSString)description;
- (_TtC10SafariCore29WBSPasswordManagerTestOptions)passwordManagerTestOptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCCredentialRequestTestOptions

- (NSString)description
{
  selfCopy = self;
  sub_1C211ACE0();

  v3 = sub_1C21708F4();

  return v3;
}

- (_TtC10SafariCore29WBSPasswordManagerTestOptions)passwordManagerTestOptions
{
  v2 = [objc_allocWithZone(sub_1C2170264()) init];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C211B010(coderCopy);
}

@end