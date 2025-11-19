@interface TTRIListSharingViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (_TtC9Reminders29TTRIListSharingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9Reminders29TTRIListSharingViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didTapDone:(id)a3;
- (void)setDoneButton:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TTRIListSharingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10010176C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(TTRIListSharingViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

- (void)setDoneButton:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_doneButton);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_doneButton) = a3;
  v3 = a3;
}

- (void)didTapDone:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100406138();
  sub_100004758(&v5);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100101D98(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing) == 1)
  {
    v9 = self;
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

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  sub_100102434(v12, a4, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  ObjectType = swift_getObjectType();
  v8 = self;
  v9 = [(TTRIListSharingViewController *)v8 navigationItem];
  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(&v8->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_doneButton);
  }

  [v9 setLeftBarButtonItem:v10];

  v11.receiver = v8;
  v11.super_class = ObjectType;
  [(TTRIListSharingViewController *)&v11 setEditing:v5 animated:v4];
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = 2.0;
  if (a4 != 1)
  {
    v10 = v4;
    v11 = v5;
    v9.receiver = self;
    v9.super_class = swift_getObjectType();
    [(TTRIListSharingViewController *)&v9 tableView:a3 heightForHeaderInSection:a4];
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = self;
  v4 = *(sub_1004058A4() + 2);

  if (v4)
  {
    v5 = *(&v3->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_style);

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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    return a4;
  }

  if (a4)
  {
    return 0;
  }

  v4 = self;
  v5 = *(sub_1004058A4() + 2);

  v6 = *(&v4->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing);

  a4 = v5 + v6;
  if (!__OFADD__(v5, v6))
  {
    return a4;
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_100102EAC(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC9Reminders29TTRIListSharingViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders29TTRIListSharingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end