@interface GalleryViewController
- (BOOL)prefersStatusBarHidden;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (_TtC8AppStore21GalleryViewController)initWithCoder:(id)coder;
- (_TtC8AppStore21GalleryViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC8AppStore21GalleryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)swipeStateChangedOn:(id)on;
- (void)tapStateChangedOn:(id)on;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation GalleryViewController

- (_TtC8AppStore21GalleryViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  selfCopy = self;
  navigationController = [(GalleryViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v4 = navigationController;
    barHideOnTapGestureRecognizer = [navigationController barHideOnTapGestureRecognizer];

    [barHideOnTapGestureRecognizer removeTarget:selfCopy action:0];
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for GalleryViewController();
  [(GalleryViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10062E16C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10062E4A0(change);
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  navigationController = [(GalleryViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v4 = navigationController;
    isNavigationBarHidden = [navigationController isNavigationBarHidden];

    LOBYTE(navigationController) = isNavigationBarHidden;
  }

  else
  {
    __break(1u);
  }

  return navigationController;
}

- (void)tapStateChangedOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  sub_10062E63C(onCopy);
}

- (void)swipeStateChangedOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  if ([onCopy state] == 3)
  {
    [(GalleryViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore21GalleryViewController_artwork);
  if (v4 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10062EBFC(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  [view frame];
  v11 = v10;
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for ArtworkCollectionViewCell();
  swift_dynamicCastClassUnconditional();
  type metadata accessor for ArtworkView();
  sub_10009A098();
  cellCopy = cell;
  selfCopy = self;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  (*(v8 + 8))(v10, v7);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  selfCopy = self;
  sub_10062E910();
}

- (_TtC8AppStore21GalleryViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore21GalleryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end