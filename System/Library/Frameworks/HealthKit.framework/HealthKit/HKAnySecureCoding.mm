@interface HKAnySecureCoding
- (HKAnySecureCoding)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAnySecureCoding

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AnySecureCoding.encode(with:)(v4);
}

- (HKAnySecureCoding)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end