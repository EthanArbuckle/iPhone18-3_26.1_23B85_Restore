@interface AMKAppExtensionMetrics
- (AMKAppExtensionMetrics)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMKAppExtensionMetrics

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EAFBE28(coderCopy);
}

- (AMKAppExtensionMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end