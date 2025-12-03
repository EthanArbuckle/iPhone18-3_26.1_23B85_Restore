@interface UIBarButtonItem.Handler
- (_TtCE12NowPlayingUICSo15UIBarButtonItemP33_3C2750B9C1FB5BBBDC498E18BB98C28C7Handler)init;
- (void)handleBarButtonAction:(id)action;
@end

@implementation UIBarButtonItem.Handler

- (void)handleBarButtonAction:(id)action
{
  if (action)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtCE12NowPlayingUICSo15UIBarButtonItemP33_3C2750B9C1FB5BBBDC498E18BB98C28C7Handler__handler);
    selfCopy = self;
    swift_unknownObjectRetain();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    v3(v5);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (_TtCE12NowPlayingUICSo15UIBarButtonItemP33_3C2750B9C1FB5BBBDC498E18BB98C28C7Handler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end