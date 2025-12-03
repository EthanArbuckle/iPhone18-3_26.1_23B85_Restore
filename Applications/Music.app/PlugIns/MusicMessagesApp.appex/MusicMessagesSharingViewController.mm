@interface MusicMessagesSharingViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC16MusicMessagesApp34MusicMessagesSharingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MusicMessagesSharingViewController

- (_TtC16MusicMessagesApp34MusicMessagesSharingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1004DD43C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000920C(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100009A8C();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for MusicMessagesSharingViewController();
  v4 = v9.receiver;
  changeCopy = change;
  [(MusicMessagesSharingViewController *)&v9 traitCollectionDidChange:changeCopy];
  sub_10000B6E8();
  v6 = *&v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout];
  if (v6)
  {
    [v6 invalidateLayout];
    view = [v4 view];
    if (view)
    {
      v8 = view;
      [view setNeedsLayout];

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
  selfCopy = self;
  sub_100009F2C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MusicMessagesSharingViewController();
  v4 = v5.receiver;
  [(MusicMessagesSharingViewController *)&v5 viewWillAppear:appearCopy];
  sub_10000BB34();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10000A14C(disappear, &selRef_viewWillDisappear_);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10000A14C(disappear, &selRef_viewDidDisappear_);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MusicMessagesSharingViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(MusicMessagesSharingViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
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

  [coordinator animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
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

  selfCopy = self;
  v9 = sub_1004DED5C();
  self = selfCopy;
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10000A548();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_1004D85FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_10000EB38();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v5 = sub_1004D85FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  v9 = *(v6 + 8);
  selfCopy = self;
  v9(v8, v5);
  LOBYTE(self) = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack) == 0;

  return self;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_10000ED1C();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  viewCopy = view;
  selfCopy = self;
  sub_10000EF8C();

  (*(v7 + 8))(v9, v6);
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_1004D85FC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D858C();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v15 = sub_10000F1A0(viewCopy);
  v17 = v16;

  (*(v9 + 8))(v11, v8);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v10 = sub_10000F40C(viewCopy);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
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

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_10000F634(interactionCopy);

  return v9;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = sub_10000F894(x, y);

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000100D8();

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack) = 0;
  selfCopy = self;

  if (qword_100631E68 != -1)
  {
    swift_once();
  }

  sub_100007320();
  v5 = selfCopy;
  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload) == 1)
  {
    *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload) = 0;
    sub_10000BB34();
    v5 = selfCopy;
  }
}

@end