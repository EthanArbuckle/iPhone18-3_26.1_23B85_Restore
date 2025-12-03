@interface AMKRawMigrationRequest
- (AMKRawMigrationRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMKRawMigrationRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EAFDACC(coderCopy);
}

- (AMKRawMigrationRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end