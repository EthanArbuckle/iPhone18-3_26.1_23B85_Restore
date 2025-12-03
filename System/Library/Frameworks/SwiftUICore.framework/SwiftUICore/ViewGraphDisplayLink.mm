@interface ViewGraphDisplayLink
+ (void)asyncThreadWithArg:(id)arg;
- (_TtC7SwiftUI20ViewGraphDisplayLink)init;
- (void)displayLinkTimer:(id)timer;
@end

@implementation ViewGraphDisplayLink

- (void)displayLinkTimer:(id)timer
{
  timerCopy = timer;
  selfCopy = self;
  ViewGraphDisplayLink.displayLinkTimer(_:)(timerCopy);
}

+ (void)asyncThreadWithArg:(id)arg
{
  if (arg)
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