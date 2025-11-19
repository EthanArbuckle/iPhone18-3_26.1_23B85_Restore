@interface KeyboardShortcutsManager
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSArray)keyCommands;
- (_TtC5Music24KeyboardShortcutsManager)init;
- (void)find:(id)a3;
- (void)newPlaylistAction:(id)a3;
- (void)playPauseAction:(id)a3;
@end

@implementation KeyboardShortcutsManager

- (NSArray)keyCommands
{
  v2 = self;
  sub_1005A4128();

  sub_10043F470();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
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

  v8 = sub_1005A4808(a3, v10);

  sub_1000095E8(v10, &unk_101183F30);
  return v8 & 1;
}

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

  sub_1005A4B7C();

  sub_1000095E8(v6, &unk_101183F30);
}

- (void)newPlaylistAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005A54D4();
}

- (void)playPauseAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005A5734();
}

- (_TtC5Music24KeyboardShortcutsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end