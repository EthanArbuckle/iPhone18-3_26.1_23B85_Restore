@interface TTRITemplatesListViewController
- (_TtC9Reminders31TTRITemplatesListViewController)initWithCoder:(id)coder;
- (_TtC9Reminders31TTRITemplatesListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TTRITemplatesListViewController

- (_TtC9Reminders31TTRITemplatesListViewController)initWithCoder:(id)coder
{
  *&self->presenter[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource] = 0;
  *&self->presenter[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView] = 0;
  v5 = OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_lastConsumedViewModel;
  v6 = type metadata accessor for TTRTemplatesListViewModel();
  (*(*(v6 - 8) + 56))(&self->presenter[v5], 1, 1, v6);
  *&self->presenter[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___cancelButton] = 0;
  *&self->presenter[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___doneButton] = 0;
  v7 = qword_100767208;
  coderCopy = coder;
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
  selfCopy = self;
  sub_10033A2DC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10033DBD4(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(TTRITemplatesListViewController *)&v8 viewDidAppear:appearCopy];
  view = [v4 view];
  if (view)
  {
    v6 = view;
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRITemplatesListViewController *)&v5 viewWillDisappear:disappearCopy];
  UIViewController.endFirstResponderEditing()();
  [v4 resignFirstResponder];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_10033DED0(editing, animated);
}

- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_10033FE28();
}

- (_TtC9Reminders31TTRITemplatesListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10033F6E8(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100340354();
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

@end