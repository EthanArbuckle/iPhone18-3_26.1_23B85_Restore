@interface AMKSerializedDataImportRequest
- (AMKSerializedDataImportRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMKSerializedDataImportRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EAE9FA4(coderCopy);
}

- (AMKSerializedDataImportRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end