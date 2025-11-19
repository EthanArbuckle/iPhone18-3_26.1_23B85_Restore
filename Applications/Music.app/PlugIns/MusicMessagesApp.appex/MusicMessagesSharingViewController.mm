@interface MusicMessagesSharingViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (_TtC16MusicMessagesApp34MusicMessagesSharingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MusicMessagesSharingViewController

- (_TtC16MusicMessagesApp34MusicMessagesSharingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1004DD43C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10000920C(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100009A8C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for MusicMessagesSharingViewController();
  v4 = v9.receiver;
  v5 = a3;
  [(MusicMessagesSharingViewController *)&v9 traitCollectionDidChange:v5];
  sub_10000B6E8();
  v6 = *&v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout];
  if (v6)
  {
    [v6 invalidateLayout];
    v7 = [v4 view];
    if (v7)
    {
      v8 = v7;
      [v7 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100009F2C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MusicMessagesSharingViewController();
  v4 = v5.receiver;
  [(MusicMessagesSharingViewController *)&v5 viewWillAppear:v3];
  sub_10000BB34();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10000A14C(a3, &selRef_viewWillDisappear_);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10000A14C(a3, &selRef_viewDidDisappear_);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MusicMessagesSharingViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(MusicMessagesSharingViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_10001097C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000A2F8;
  v11[3] = &unk_1005CF858;
  v9 = _Block_copy(v11);
  v10 = v7;

  [a4 animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v8 = self;
  v9 = sub_1004DED5C();
  self = v8;
  if (v9 < 1)
  {
    return 1;
  }

LABEL_3:
  v6 = *(&self->super.super.super.isa + v4);
  if (!(v6 >> 62))
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1004DED5C();
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  v10 = a3;
  v11 = self;
  v12 = sub_10000A548();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_1004D85FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  v11 = a3;
  v12 = self;
  v13 = sub_10000EB38();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = sub_1004D85FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  v9 = *(v6 + 8);
  v10 = self;
  v9(v8, v5);
  LOBYTE(self) = *(&v10->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack) == 0;

  return self;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_10000ED1C();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  v10 = a3;
  v11 = self;
  sub_10000EF8C();

  (*(v7 + 8))(v9, v6);
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = sub_1004D85FC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = sub_10000F1A0(v12);
  v17 = v16;

  (*(v9 + 8))(v11, v8);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_10000F40C(v7);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = *&qword_1006330B8;
  v6 = 0.0;
  v7 = *&qword_1006330B8;
  v8 = *&qword_1006330B8;
  result.right = v8;
  result.bottom = v7;
  result.left = v5;
  result.top = v6;
  return result;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10000F634(v6);

  return v9;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = sub_10000F894(x, y);

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1000100D8();

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack) = 0;
  v6 = self;

  if (qword_100631E68 != -1)
  {
    swift_once();
  }

  sub_100007320();
  v5 = v6;
  if (*(&v6->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload) == 1)
  {
    *(&v6->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload) = 0;
    sub_10000BB34();
    v5 = v6;
  }
}

@end