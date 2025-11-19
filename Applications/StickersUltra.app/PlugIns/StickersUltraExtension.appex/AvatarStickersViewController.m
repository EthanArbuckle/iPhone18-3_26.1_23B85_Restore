@interface AvatarStickersViewController
- (_TtC22StickersUltraExtension28AvatarStickersViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)stickerSheetControllerProvider:(id)a3 requestsStickerForFileURL:(id)a4 localizedDescription:(id)a5 forItemWithIdentifier:(id)a6;
- (void)stickerSheetControllerDidScrollToContentOffset:(CGPoint)a3;
- (void)stickerSheetControllerDidUpdateContent;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AvatarStickersViewController

- (void)viewDidLoad
{
  v2 = *((swift_isaMask & self->super.super.super.isa) + 0x150);
  v6 = self;
  v2();
  v3 = [(AvatarStickersViewController *)v6 view];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for KeylineView();
    v5 = sub_100053328(v4);
    (*((swift_isaMask & v6->super.super.super.isa) + 0xE8))(v5);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10007B130();
}

- (_TtC22StickersUltraExtension28AvatarStickersViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)stickerSheetControllerProvider:(id)a3 requestsStickerForFileURL:(id)a4 localizedDescription:(id)a5 forItemWithIdentifier:(id)a6
{
  v8 = sub_10007C3B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007C390();
  v12 = sub_10007D7D0();
  v14 = v13;
  sub_10007D7D0();
  v15 = a3;
  v16 = self;
  v17 = sub_10007BD80(v11, v12, v14);

  (*(v9 + 8))(v11, v8);

  return v17;
}

- (void)stickerSheetControllerDidScrollToContentOffset:(CGPoint)a3
{
  y = a3.y;
  v4 = *((swift_isaMask & self->super.super.super.isa) + 0xE0);
  v7 = self;
  v5 = v4();
  if (v5)
  {
    v6 = v5;
    (*((swift_isaMask & *v5) + 0x58))(y);
  }
}

- (void)stickerSheetControllerDidUpdateContent
{
  v2 = *((swift_isaMask & self->super.super.super.isa) + 0x158);
  v3 = self;
  v2();
}

@end