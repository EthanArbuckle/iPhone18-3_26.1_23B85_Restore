@interface AMKDeviceToDeviceTransferMetrics
- (AMKDeviceToDeviceTransferMetrics)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMKDeviceToDeviceTransferMetrics

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EAC4038(coderCopy);
}

- (AMKDeviceToDeviceTransferMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end