@interface AMKAppIdentifier
- (AMKAppIdentifier)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMKAppIdentifier

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EB061D4(coderCopy);
}

- (AMKAppIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end