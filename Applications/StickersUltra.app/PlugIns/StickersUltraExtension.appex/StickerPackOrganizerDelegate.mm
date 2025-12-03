@interface StickerPackOrganizerDelegate
- (_TtC22StickersUltraExtension28StickerPackOrganizerDelegate)init;
- (void)browserAppManagerDidSelectPlugin:(id)plugin;
- (void)dismiss;
- (void)openURL:(id)l applicationIdentifier:(id)identifier pluginID:(id)d completionHandler:(id)handler;
- (void)openURL:(id)l pluginID:(id)d completionHandler:(id)handler;
@end

@implementation StickerPackOrganizerDelegate

- (void)openURL:(id)l pluginID:(id)d completionHandler:(id)handler
{
  sub_100006D40(&qword_1000B2130);
  __chkstk_darwin();
  v7 = &v10 - v6;
  if (l)
  {
    sub_10007C390();
    v8 = sub_10007C3B0();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_10007C3B0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  sub_100006D88(v7);
}

- (void)openURL:(id)l applicationIdentifier:(id)identifier pluginID:(id)d completionHandler:(id)handler
{
  sub_100006D40(&qword_1000B2130);
  __chkstk_darwin();
  v8 = &v11 - v7;
  if (l)
  {
    sub_10007C390();
    v9 = sub_10007C3B0();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_10007C3B0();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  sub_100006D88(v8);
}

- (void)dismiss
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC22StickersUltraExtension28StickerPackOrganizerDelegate_requestDismiss);
  selfCopy = self;
  v2();
}

- (void)browserAppManagerDidSelectPlugin:(id)plugin
{
  pluginCopy = plugin;
  selfCopy = self;
  sub_100006748(plugin);
}

- (_TtC22StickersUltraExtension28StickerPackOrganizerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end