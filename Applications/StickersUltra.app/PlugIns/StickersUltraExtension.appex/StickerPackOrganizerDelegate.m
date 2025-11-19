@interface StickerPackOrganizerDelegate
- (_TtC22StickersUltraExtension28StickerPackOrganizerDelegate)init;
- (void)browserAppManagerDidSelectPlugin:(id)a3;
- (void)dismiss;
- (void)openURL:(id)a3 applicationIdentifier:(id)a4 pluginID:(id)a5 completionHandler:(id)a6;
- (void)openURL:(id)a3 pluginID:(id)a4 completionHandler:(id)a5;
@end

@implementation StickerPackOrganizerDelegate

- (void)openURL:(id)a3 pluginID:(id)a4 completionHandler:(id)a5
{
  sub_100006D40(&qword_1000B2130);
  __chkstk_darwin();
  v7 = &v10 - v6;
  if (a3)
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

- (void)openURL:(id)a3 applicationIdentifier:(id)a4 pluginID:(id)a5 completionHandler:(id)a6
{
  sub_100006D40(&qword_1000B2130);
  __chkstk_darwin();
  v8 = &v11 - v7;
  if (a3)
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
  v3 = self;
  v2();
}

- (void)browserAppManagerDidSelectPlugin:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100006748(a3);
}

- (_TtC22StickersUltraExtension28StickerPackOrganizerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end