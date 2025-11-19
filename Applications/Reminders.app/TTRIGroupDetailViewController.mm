@interface TTRIGroupDetailViewController
- (UIBarButtonItem)doneBarButtonItem;
- (UITableViewCell)includeCell;
- (UITextField)nameTextField;
- (_TtC9Reminders29TTRIGroupDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9Reminders29TTRIGroupDetailViewController)initWithStyle:(int64_t)a3;
- (void)didTapCancel:(id)a3;
- (void)didTapCreate:(id)a3;
- (void)nameTextFieldDidChange:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TTRIGroupDetailViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100541210();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIGroupDetailViewController *)&v5 viewWillAppear:v3];
  sub_10054161C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100541864(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIGroupDetailViewController *)&v5 viewWillDisappear:v3];
  [v4 resignFirstResponder];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10054210C();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 16))(v11, v14, v5);
  v15 = self;
  IndexPath.init(item:section:)();
  LOBYTE(self) = static IndexPath.== infix(_:_:)();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  if (self)
  {
    sub_10014FC1C();
    v16(v14, v5);
  }

  else
  {

    v16(v14, v5);
  }
}

- (UITextField)nameTextField
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIBarButtonItem)doneBarButtonItem
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITableViewCell)includeCell
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didTapCancel:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10014FA60();
  sub_100004758(&v5);
}

- (void)didTapCreate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100541DBC();

  sub_100004758(&v5);
}

- (void)nameTextFieldDidChange:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100541EC4();

  sub_100004758(&v5);
}

- (_TtC9Reminders29TTRIGroupDetailViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders29TTRIGroupDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end