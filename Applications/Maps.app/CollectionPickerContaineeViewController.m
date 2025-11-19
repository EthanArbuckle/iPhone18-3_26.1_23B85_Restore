@interface CollectionPickerContaineeViewController
- (_TtC4Maps39CollectionPickerContaineeViewController)initWithCoder:(id)a3;
- (_TtC4Maps39CollectionPickerContaineeViewController)initWithCollectionEditSession:(id)a3;
- (_TtC4Maps39CollectionPickerContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps47CollectionPickerContaineeViewControllerDelegate_)delegate;
- (void)cancelTapped;
- (void)dataSource:(DataSource *)a3 confirmDeleteCollections:(NSArray *)a4 sourceItem:(UIPopoverPresentationControllerSourceItem *)a5 sourceRect:(CGRect)a6 completion:(id)a7;
- (void)dataSource:(id)a3 itemFocused:(id)a4;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)dataSourceUpdated:(id)a3;
- (void)viewDidLoad;
@end

@implementation CollectionPickerContaineeViewController

- (_TtP4Maps47CollectionPickerContaineeViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps39CollectionPickerContaineeViewController)initWithCollectionEditSession:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController_collectionListDataSource) = 0;
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___modalHeaderView) = 0;
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___tableView) = 0;
  *(self + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController_collectionSession) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(CollectionPickerContaineeViewController *)&v8 initWithNibName:0 bundle:0];
}

- (_TtC4Maps39CollectionPickerContaineeViewController)initWithCoder:(id)a3
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
  v3 = [v2 cardPresentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setTakesAvailableHeight:1];

    v5 = [v2 cardPresentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setPresentedModally:1];

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

- (void)dataSourceUpdated:(id)a3
{
  v5 = a3;
  v6 = self;
  CollectionPickerContaineeViewController.dataSourceUpdated(_:)(a3);
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_1003C89C4(v10);

  sub_1000DB2F4(v10);
}

- (void)dataSource:(DataSource *)a3 confirmDeleteCollections:(NSArray *)a4 sourceItem:(UIPopoverPresentationControllerSourceItem *)a5 sourceRect:(CGRect)a6 completion:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v16 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(a7);
  v20 = swift_allocObject();
  *(v20 + 2) = a3;
  *(v20 + 3) = a4;
  *(v20 + 4) = a5;
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
  v24 = a3;
  v25 = a4;
  swift_unknownObjectRetain();
  v26 = self;
  sub_10054DB08(0, 0, v18, &unk_1011F66B0, v23);
}

- (void)dataSource:(id)a3 itemFocused:(id)a4
{
  if (a4)
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

- (_TtC4Maps39CollectionPickerContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end