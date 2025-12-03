@interface CategoryListViewController
- (_TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController)initWithCoder:(id)coder;
- (_TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismissSelf;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CategoryListViewController

- (_TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006010A0();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(CategoryListViewController *)&v7 viewWillAppear:appearCopy];
  ArtworkLoader.isOccluded.setter();
  _isInPopoverPresentation = 0;
  if (!IndexPath.count.getter())
  {
    _isInPopoverPresentation = [v4 _isInPopoverPresentation];
  }

  navigationController = [v4 navigationController];
  [navigationController setNavigationBarHidden:_isInPopoverPresentation animated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CategoryListViewController *)&v5 viewDidDisappear:disappearCopy];
  ArtworkLoader.isOccluded.setter();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(CategoryListViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)dismissSelf
{
  selfCopy = self;
  [(CategoryListViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  v2 = (&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler);
  v3 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler);
  v4 = *&selfCopy->dataSource[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
  *v2 = 0;
  v2[1] = 0;
  sub_10011B8E8(v3, v4);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sub_10002A400(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_dataSource) + 2, (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_dataSource))[5]);
  selfCopy = self;
  v6 = dispatch thunk of TopChartsCategoriesPresenter.categoryCount(at:)();

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1006015E4(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  cellCopy = cell;
  selfCopy = self;
  imageView = [cellCopy imageView];
  if (imageView)
  {
    v14 = imageView;
    sub_100005744(0, &qword_100973120);
    sub_10055F664();
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

    sub_10003D614(v15);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100602B84();

  (*(v7 + 8))(v9, v6);
}

- (_TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end