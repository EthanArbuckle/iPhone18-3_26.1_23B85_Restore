@interface TTRIEditSectionsViewController
- (_TtC9Reminders30TTRIEditSectionsViewController)initWithCoder:(id)a3;
- (_TtC9Reminders30TTRIEditSectionsViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC9Reminders30TTRIEditSectionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapCancel:(id)a3;
- (void)didTapDone:(id)a3;
- (void)didToggleHideEmptySections:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TTRIEditSectionsViewController

- (_TtC9Reminders30TTRIEditSectionsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_lastConsumedViewModel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___cancelButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___doneButton) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1002FE450();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(TTRIEditSectionsViewController *)&v8 viewDidAppear:v3];
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
  [(TTRIEditSectionsViewController *)&v5 viewWillDisappear:v3];
  UIViewController.endFirstResponderEditing()();
  [v4 resignFirstResponder];
}

- (void)didTapCancel:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  UIViewController.endFirstResponderEditing()();
  v6 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___cancelButton, &selRef_didTapCancel_, 1);
  sub_10023E540(v6);

  sub_1000079B4(v7, &qword_10076AE40);
}

- (void)didTapDone:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  UIViewController.endFirstResponderEditing()();
  v5 = *(&v4->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_presenter);
  if (qword_100767020 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100775E20);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  sub_10000C36C(v5 + 11, v5[14]);
  dispatch thunk of TTREditSectionsInteractorType.editSectionsDidCommit()();
  sub_10000C36C(v5 + 6, v5[9]);
  sub_1005CB448();
  sub_100004758(&v7);
}

- (void)didToggleHideEmptySections:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100300560(v4);
}

- (_TtC9Reminders30TTRIEditSectionsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders30TTRIEditSectionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 text];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_10023DA48(v8, v10, v4);
}

- (void)textFieldDidEndEditing:(id)a3
{
  v11 = a3;
  v4 = self;
  v5 = [(TTRIEditSectionsViewController *)v11 text];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_10023DFCC(v7, v9, v11);

    v10 = v4;
  }

  else
  {
    v10 = v11;
    v11 = v4;
  }
}

@end