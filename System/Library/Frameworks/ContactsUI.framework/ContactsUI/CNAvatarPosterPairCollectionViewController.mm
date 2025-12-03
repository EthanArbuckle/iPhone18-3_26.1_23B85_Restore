@interface CNAvatarPosterPairCollectionViewController
- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithConfiguration:(id)configuration contact:(id)contact contactForSharedProfile:(id)profile mode:(int64_t)mode delegate:(id)delegate;
- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration;
- (void)pageControlDidChangePage:(id)page;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(_BYTE *)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNAvatarPosterPairCollectionViewController

- (void)scrollViewDidEndScrollingAnimation:(_BYTE *)animation
{
  v2 = animation[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling];
  animation[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling] = 0;
  if (v2 == 1)
  {
    animationCopy = animation;
    sub_199B683B0(0, 1);
  }
}

- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithConfiguration:(id)configuration contact:(id)contact contactForSharedProfile:(id)profile mode:(int64_t)mode delegate:(id)delegate
{
  configurationCopy = configuration;
  contactCopy = contact;
  profileCopy = profile;
  swift_unknownObjectRetain();
  return sub_199B61334(configurationCopy, contactCopy, profileCopy, mode);
}

- (void)dealloc
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber))
  {
    selfCopy = self;

    sub_199DF83AC();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  [(CNAvatarPosterPairCollectionViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_199B619D0();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(CNAvatarPosterPairCollectionViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_199B6B654;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_199B61ED8;
  v11[3] = &block_descriptor_118;
  v9 = _Block_copy(v11);
  v10 = v7;

  [coordinator animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  v2 = v3.receiver;
  [(CNAvatarPosterPairCollectionViewController *)&v3 viewWillLayoutSubviews];
  sub_199B67650();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_199B620C8(appearing);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_199B62AF0(disappear);
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  v7 = v5;
  sub_199DF841C();

  if (v10 >> 62)
  {
    v8 = sub_199DFA87C();
  }

  else
  {
    v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF732C();
  viewCopy = view;
  selfCopy = self;
  sub_199B62CE8(viewCopy);
  v14 = v13;

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_199DF738C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9F8C();
  sub_199DF732C();
  viewCopy = view;
  selfCopy = self;
  sub_199B631DC(viewCopy);
  v15 = v14;

  (*(v8 + 8))(v11, v7);

  return v15;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF732C();
  viewCopy = view;
  selfCopy = self;
  sub_199B6B178();

  (*(v7 + 8))(v10, v6);
}

- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  selfCopy = self;
  sub_199B64398(controllerCopy, configuration);
}

- (void)pageControlDidChangePage:(id)page
{
  pageCopy = page;
  selfCopy = self;
  sub_199B68098(pageCopy);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_199B695AC(scrollCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  sub_199B6B2C4(&offset->x, x);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling);
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling) = 0;
    if (v4)
    {
      selfCopy = self;
      sub_199B683B0(0, 1);
    }
  }
}

- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end