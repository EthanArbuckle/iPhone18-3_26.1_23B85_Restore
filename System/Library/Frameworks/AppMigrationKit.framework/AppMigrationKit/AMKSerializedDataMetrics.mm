@interface AMKSerializedDataMetrics
- (AMKSerializedDataMetrics)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMKSerializedDataMetrics

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EAB7460(coderCopy);
}

- (AMKSerializedDataMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end