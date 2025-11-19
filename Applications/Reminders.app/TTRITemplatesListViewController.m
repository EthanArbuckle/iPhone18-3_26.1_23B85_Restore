@interface TTRITemplatesListViewController
- (_TtC9Reminders31TTRITemplatesListViewController)initWithCoder:(id)a3;
- (_TtC9Reminders31TTRITemplatesListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TTRITemplatesListViewController

- (_TtC9Reminders31TTRITemplatesListViewController)initWithCoder:(id)a3
{
  *&self->presenter[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource] = 0;
  *&self->presenter[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView] = 0;
  v5 = OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_lastConsumedViewModel;
  v6 = type metadata accessor for TTRTemplatesListViewModel();
  (*(*(v6 - 8) + 56))(&self->presenter[v5], 1, 1, v6);
  *&self->presenter[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___cancelButton] = 0;
  *&self->presenter[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___doneButton] = 0;
  v7 = qword_100767208;
  v8 = a3;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_10077FB00);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("init(coder:) has not been implemented", 37, 2);
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10033A2DC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10033DBD4(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(TTRITemplatesListViewController *)&v8 viewDidAppear:v3];
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    v7 = UIView.firstResponderDescendant.getter();

    if (v7)
    {

      v4 = v7;
    }

    else
    {
      [v4 becomeFirstResponder];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRITemplatesListViewController *)&v5 viewWillDisappear:v3];
  UIViewController.endFirstResponderEditing()();
  [v4 resignFirstResponder];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_10033DED0(a3, a4);
}

- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10033FE28();
}

- (_TtC9Reminders31TTRITemplatesListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10033F6E8(v10);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_100340354();
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

@end