@interface DisplayLinkHandler
- (_TtC14MusicUtilitiesP33_A1FC62D80C043A876151FA559C82DA5918DisplayLinkHandler)init;
- (void)handleDisplayLinkFired:(id)a3;
@end

@implementation DisplayLinkHandler

- (void)handleDisplayLinkFired:(id)a3
{
  if (a3)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC14MusicUtilitiesP33_A1FC62D80C043A876151FA559C82DA5918DisplayLinkHandler__handler);
    v4 = self;
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

- (_TtC14MusicUtilitiesP33_A1FC62D80C043A876151FA559C82DA5918DisplayLinkHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end