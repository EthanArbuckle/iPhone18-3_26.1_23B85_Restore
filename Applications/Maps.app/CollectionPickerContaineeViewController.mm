@interface CollectionPickerContaineeViewController
- (_TtC4Maps39CollectionPickerContaineeViewController)initWithCoder:(id)coder;
- (_TtC4Maps39CollectionPickerContaineeViewController)initWithCollectionEditSession:(id)session;
- (_TtC4Maps39CollectionPickerContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps47CollectionPickerContaineeViewControllerDelegate_)delegate;
- (void)cancelTapped;
- (void)dataSource:(DataSource *)source confirmDeleteCollections:(NSArray *)collections sourceItem:(UIPopoverPresentationControllerSourceItem *)item sourceRect:(CGRect)rect completion:(id)completion;
- (void)dataSource:(id)source itemFocused:(id)focused;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)dataSourceUpdated:(id)updated;
- (void)viewDidLoad;
@end

@implementation CollectionPickerContaineeViewController

- (_TtP4Maps47CollectionPickerContaineeViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps39CollectionPickerContaineeViewController)initWithCollectionEditSession:(id)session
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController_collectionListDataSource) = 0;
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___modalHeaderView) = 0;
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___tableView) = 0;
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController_collectionSession) = session;
  v8.receiver = self;
  v8.super_class = ObjectType;
  sessionCopy = session;
  return [(CollectionPickerContaineeViewController *)&v8 initWithNibName:0 bundle:0];
}

- (_TtC4Maps39CollectionPickerContaineeViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController_collectionListDataSource) = 0;
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___modalHeaderView) = 0;
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___tableView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(ContaineeViewController *)&v7 viewDidLoad];
  cardPresentationController = [v2 cardPresentationController];
  if (cardPresentationController)
  {
    v4 = cardPresentationController;
    [cardPresentationController setTakesAvailableHeight:1];

    cardPresentationController2 = [v2 cardPresentationController];
    if (cardPresentationController2)
    {
      v6 = cardPresentationController2;
      [cardPresentationController2 setPresentedModally:1];

      sub_1003C79DC();
      sub_1003C7FB4();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)cancelTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong collectionPickerContaineeViewControllerCancelTapped:self];

    swift_unknownObjectRelease();
  }
}

- (void)dataSourceUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  CollectionPickerContaineeViewController.dataSourceUpdated(_:)(updated);
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  if (tapped)
  {
    sourceCopy = source;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sourceCopy2 = source;
    selfCopy2 = self;
  }

  sub_1003C89C4(v10);

  sub_1000DB2F4(v10);
}

- (void)dataSource:(DataSource *)source confirmDeleteCollections:(NSArray *)collections sourceItem:(UIPopoverPresentationControllerSourceItem *)item sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(completion);
  v20 = swift_allocObject();
  *(v20 + 2) = source;
  *(v20 + 3) = collections;
  *(v20 + 4) = item;
  v20[5] = x;
  v20[6] = y;
  v20[7] = width;
  v20[8] = height;
  *(v20 + 9) = v19;
  *(v20 + 10) = self;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_101202640;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1011F9360;
  v23[5] = v22;
  sourceCopy = source;
  collectionsCopy = collections;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10054DB08(0, 0, v18, &unk_1011F66B0, v23);
}

- (void)dataSource:(id)source itemFocused:(id)focused
{
  if (focused)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_1000DB2F4(v4);
}

- (_TtC4Maps39CollectionPickerContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end