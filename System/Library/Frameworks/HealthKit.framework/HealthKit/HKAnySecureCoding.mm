@interface HKAnySecureCoding
- (HKAnySecureCoding)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAnySecureCoding

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AnySecureCoding.encode(with:)(coderCopy);
}

- (HKAnySecureCoding)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end