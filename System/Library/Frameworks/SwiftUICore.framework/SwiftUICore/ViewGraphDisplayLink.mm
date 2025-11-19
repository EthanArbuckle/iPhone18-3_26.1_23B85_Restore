@interface ViewGraphDisplayLink
+ (void)asyncThreadWithArg:(id)a3;
- (_TtC7SwiftUI20ViewGraphDisplayLink)init;
- (void)displayLinkTimer:(id)a3;
@end

@implementation ViewGraphDisplayLink

- (void)displayLinkTimer:(id)a3
{
  v4 = a3;
  v5 = self;
  ViewGraphDisplayLink.displayLinkTimer(_:)(v4);
}

+ (void)asyncThreadWithArg:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  specialized static ViewGraphDisplayLink.asyncThread(arg:)();
  outlined destroy of Any?(v3);
}

- (_TtC7SwiftUI20ViewGraphDisplayLink)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end