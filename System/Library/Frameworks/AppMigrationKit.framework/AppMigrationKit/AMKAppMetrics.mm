@interface AMKAppMetrics
- (AMKAppMetrics)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMKAppMetrics

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EAFC848(coderCopy);
}

- (AMKAppMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end