@interface AMKResourcesImportRequest
- (AMKResourcesImportRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMKResourcesImportRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EAFB524(coderCopy);
}

- (AMKResourcesImportRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end