@interface _EXDomainAttribute
- (_EXDomainAttribute)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EXDomainAttribute

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _EXDomainAttribute.encode(with:)(coderCopy);
}

- (_EXDomainAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end