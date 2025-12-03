@interface TTRIListSharingViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (_TtC9Reminders29TTRIListSharingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9Reminders29TTRIListSharingViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didTapDone:(id)done;
- (void)setDoneButton:(id)button;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TTRIListSharingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10010176C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(TTRIListSharingViewController *)&v7 viewWillAppear:appearCopy];
  tableView = [v4 tableView];
  if (tableView)
  {
    v6 = tableView;
    [tableView reloadData];
  }

  else
  {
    __break(1u);
  }
}

- (void)setDoneButton:(id)button
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_doneButton);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_doneButton) = button;
  buttonCopy = button;
}

- (void)didTapDone:(id)done
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100406138();
  sub_100004758(&v5);
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
  sub_100101D98(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing) == 1)
  {
    selfCopy = self;
    v10 = sub_100101C44();
    if ((v11 & 0x100) != 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_100101D1C(v10, v11 & 1);
    }
  }

  else
  {
    v12 = 0;
  }

  (*(v6 + 8))(v8, v5);
  return v12 & 1;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100102434(viewCopy, style, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  ObjectType = swift_getObjectType();
  selfCopy = self;
  navigationItem = [(TTRIListSharingViewController *)selfCopy navigationItem];
  if (editingCopy)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_doneButton);
  }

  [navigationItem setLeftBarButtonItem:v10];

  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  [(TTRIListSharingViewController *)&v11 setEditing:editingCopy animated:animatedCopy];
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8._countAndFlagsBits = 0x61685320706F7453;
  v8._object = 0xEC000000676E6972;
  v9._object = 0x8000000100671AC0;
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  TTRLocalizedString(_:comment:)(v8, v9);
  (*(v5 + 8))(v7, v4);
  v10 = String._bridgeToObjectiveC()();

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = 2.0;
  if (section != 1)
  {
    v10 = v4;
    v11 = v5;
    v9.receiver = self;
    v9.super_class = swift_getObjectType();
    [(TTRIListSharingViewController *)&v9 tableView:view heightForHeaderInSection:section];
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  v4 = *(sub_1004058A4() + 2);

  if (v4)
  {
    v5 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_style);

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 1;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section == 1)
  {
    return section;
  }

  if (section)
  {
    return 0;
  }

  selfCopy = self;
  v5 = *(sub_1004058A4() + 2);

  v6 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing);

  section = v5 + v6;
  if (!__OFADD__(v5, v6))
  {
    return section;
  }

  __break(1u);
  return result;
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
  v12 = sub_100102EAC(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC9Reminders29TTRIListSharingViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders29TTRIListSharingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end