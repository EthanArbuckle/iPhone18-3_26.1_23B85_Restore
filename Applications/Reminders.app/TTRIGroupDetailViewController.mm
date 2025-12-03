@interface TTRIGroupDetailViewController
- (UIBarButtonItem)doneBarButtonItem;
- (UITableViewCell)includeCell;
- (UITextField)nameTextField;
- (_TtC9Reminders29TTRIGroupDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9Reminders29TTRIGroupDetailViewController)initWithStyle:(int64_t)style;
- (void)didTapCancel:(id)cancel;
- (void)didTapCreate:(id)create;
- (void)nameTextFieldDidChange:(id)change;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TTRIGroupDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100541210();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIGroupDetailViewController *)&v5 viewWillAppear:appearCopy];
  sub_10054161C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100541864(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIGroupDetailViewController *)&v5 viewWillDisappear:disappearCopy];
  [v4 resignFirstResponder];
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_10054210C();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
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
  selfCopy = self;
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

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10014FA60();
  sub_100004758(&v5);
}

- (void)didTapCreate:(id)create
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100541DBC();

  sub_100004758(&v5);
}

- (void)nameTextFieldDidChange:(id)change
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100541EC4();

  sub_100004758(&v5);
}

- (_TtC9Reminders29TTRIGroupDetailViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders29TTRIGroupDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end