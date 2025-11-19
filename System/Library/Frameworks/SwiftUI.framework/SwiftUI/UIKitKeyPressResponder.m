@interface UIKitKeyPressResponder
- (UIResponder)nextResponder;
- (_TtC7SwiftUI22UIKitKeyPressResponder)init;
@end

@implementation UIKitKeyPressResponder

- (UIResponder)nextResponder
{
  v3 = self + OBJC_IVAR____TtC7SwiftUI22UIKitKeyPressResponder_fallbackResponderProvider;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = self;
    v8 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_TtC7SwiftUI22UIKitKeyPressResponder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end