@interface CodableModelIdentity
- (_TtC16MusicApplication20CodableModelIdentity)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CodableModelIdentity

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2BEFC(coderCopy);
}

- (_TtC16MusicApplication20CodableModelIdentity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end