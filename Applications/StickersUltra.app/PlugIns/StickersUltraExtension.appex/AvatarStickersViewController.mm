@interface AvatarStickersViewController
- (_TtC22StickersUltraExtension28AvatarStickersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)stickerSheetControllerProvider:(id)provider requestsStickerForFileURL:(id)l localizedDescription:(id)description forItemWithIdentifier:(id)identifier;
- (void)stickerSheetControllerDidScrollToContentOffset:(CGPoint)offset;
- (void)stickerSheetControllerDidUpdateContent;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AvatarStickersViewController

- (void)viewDidLoad
{
  v2 = *((swift_isaMask & self->super.super.super.isa) + 0x150);
  selfCopy = self;
  v2();
  view = [(AvatarStickersViewController *)selfCopy view];
  if (view)
  {
    v4 = view;
    type metadata accessor for KeylineView();
    v5 = sub_100053328(v4);
    (*((swift_isaMask & selfCopy->super.super.super.isa) + 0xE8))(v5);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10007B130();
}

- (_TtC22StickersUltraExtension28AvatarStickersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)stickerSheetControllerProvider:(id)provider requestsStickerForFileURL:(id)l localizedDescription:(id)description forItemWithIdentifier:(id)identifier
{
  v8 = sub_10007C3B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007C390();
  v12 = sub_10007D7D0();
  v14 = v13;
  sub_10007D7D0();
  providerCopy = provider;
  selfCopy = self;
  v17 = sub_10007BD80(v11, v12, v14);

  (*(v9 + 8))(v11, v8);

  return v17;
}

- (void)stickerSheetControllerDidScrollToContentOffset:(CGPoint)offset
{
  y = offset.y;
  v4 = *((swift_isaMask & self->super.super.super.isa) + 0xE0);
  selfCopy = self;
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
  selfCopy = self;
  v2();
}

@end