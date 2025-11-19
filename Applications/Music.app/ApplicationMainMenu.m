@interface ApplicationMainMenu
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC5Music19ApplicationMainMenu)init;
- (void)autoPlayToggleAction:(id)a3;
- (void)backAction:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)find:(id)a3;
- (void)newPlaylistAction:(id)a3;
- (void)newPlaylistFolderAction:(id)a3;
- (void)playbackAction:(id)a3;
- (void)setRepeatAction:(id)a3;
- (void)showLyricsAction:(id)a3;
- (void)showNowPlayingAction:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation ApplicationMainMenu

- (void)find:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1001158F4();

  sub_100011DF0(v6);
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100314DE4(a3);
  swift_unknownObjectRelease();
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003150B0(v4);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_1003151F4(a3, v10);

  sub_100011DF0(v10);
  return v8 & 1;
}

- (_TtC5Music19ApplicationMainMenu)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)playbackAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100319E3C();
}

- (void)setRepeatAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10031860C(v4);
}

- (void)autoPlayToggleAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10031A0C4();
}

- (void)newPlaylistAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10031C2A8();
}

- (void)newPlaylistFolderAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10031C7B4();
}

- (void)showNowPlayingAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10031F3F8();
}

- (void)showLyricsAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10031F640();
}

- (void)backAction:(id)a3
{
  v3 = (*(&self->super.super.isa + OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext))[4];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v8 = self;
    v4 = v3;
    v5 = sub_1006BDF60([v4 selectedIndex]);

    if (v5)
    {
      v6 = [(ApplicationMainMenu *)v5 popViewControllerAnimated:1];

      v7 = v5;
    }

    else
    {
      v7 = v8;
    }
  }
}

@end