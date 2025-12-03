@interface ApplicationMainMenu
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC5Music19ApplicationMainMenu)init;
- (void)autoPlayToggleAction:(id)action;
- (void)backAction:(id)action;
- (void)buildMenuWithBuilder:(id)builder;
- (void)find:(id)find;
- (void)newPlaylistAction:(id)action;
- (void)newPlaylistFolderAction:(id)action;
- (void)playbackAction:(id)action;
- (void)setRepeatAction:(id)action;
- (void)showLyricsAction:(id)action;
- (void)showNowPlayingAction:(id)action;
- (void)validateCommand:(id)command;
@end

@implementation ApplicationMainMenu

- (void)find:(id)find
{
  if (find)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1001158F4();

  sub_100011DF0(v6);
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100314DE4(builder);
  swift_unknownObjectRelease();
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1003150B0(commandCopy);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_1003151F4(action, v10);

  sub_100011DF0(v10);
  return v8 & 1;
}

- (_TtC5Music19ApplicationMainMenu)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)playbackAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_100319E3C();
}

- (void)setRepeatAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10031860C(actionCopy);
}

- (void)autoPlayToggleAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10031A0C4();
}

- (void)newPlaylistAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10031C2A8();
}

- (void)newPlaylistFolderAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10031C7B4();
}

- (void)showNowPlayingAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10031F3F8();
}

- (void)showLyricsAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10031F640();
}

- (void)backAction:(id)action
{
  v3 = (*(&self->super.super.isa + OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext))[4];
  if ((v3 & 0x8000000000000000) == 0)
  {
    selfCopy = self;
    v4 = v3;
    v5 = sub_1006BDF60([v4 selectedIndex]);

    if (v5)
    {
      v6 = [(ApplicationMainMenu *)v5 popViewControllerAnimated:1];

      v7 = v5;
    }

    else
    {
      v7 = selfCopy;
    }
  }
}

@end