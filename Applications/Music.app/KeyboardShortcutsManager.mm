@interface KeyboardShortcutsManager
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSArray)keyCommands;
- (_TtC5Music24KeyboardShortcutsManager)init;
- (void)find:(id)find;
- (void)newPlaylistAction:(id)action;
- (void)playPauseAction:(id)action;
@end

@implementation KeyboardShortcutsManager

- (NSArray)keyCommands
{
  selfCopy = self;
  sub_1005A4128();

  sub_10043F470();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
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

  v8 = sub_1005A4808(action, v10);

  sub_1000095E8(v10, &unk_101183F30);
  return v8 & 1;
}

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

  sub_1005A4B7C();

  sub_1000095E8(v6, &unk_101183F30);
}

- (void)newPlaylistAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1005A54D4();
}

- (void)playPauseAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1005A5734();
}

- (_TtC5Music24KeyboardShortcutsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end