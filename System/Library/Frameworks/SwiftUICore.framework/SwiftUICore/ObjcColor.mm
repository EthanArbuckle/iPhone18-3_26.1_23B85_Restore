@interface ObjcColor
- (BOOL)isEqual:(id)equal;
- (_TtC7SwiftUI9ObjcColor)init;
- (int64_t)hash;
@end

@implementation ObjcColor

- (int64_t)hash
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI9ObjcColor_color);
  Hasher.init(_seed:)();
  v4 = *(*v3 + 152);
  selfCopy = self;
  v4(v8);
  v6 = Hasher._finalize()();

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ObjcColor.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (_TtC7SwiftUI9ObjcColor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end