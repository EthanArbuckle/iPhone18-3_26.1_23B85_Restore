@interface TTRIEditSectionsViewController
- (_TtC9Reminders30TTRIEditSectionsViewController)initWithCoder:(id)coder;
- (_TtC9Reminders30TTRIEditSectionsViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC9Reminders30TTRIEditSectionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapCancel:(id)cancel;
- (void)didTapDone:(id)done;
- (void)didToggleHideEmptySections:(id)sections;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TTRIEditSectionsViewController

- (_TtC9Reminders30TTRIEditSectionsViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1002FE450();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(TTRIEditSectionsViewController *)&v8 viewDidAppear:appearCopy];
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
  [(TTRIEditSectionsViewController *)&v5 viewWillDisappear:disappearCopy];
  UIViewController.endFirstResponderEditing()();
  [v4 resignFirstResponder];
}

- (void)didTapCancel:(id)cancel
{
  if (cancel)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  UIViewController.endFirstResponderEditing()();
  v6 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___cancelButton, &selRef_didTapCancel_, 1);
  sub_10023E540(v6);

  sub_1000079B4(v7, &qword_10076AE40);
}

- (void)didTapDone:(id)done
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  UIViewController.endFirstResponderEditing()();
  v5 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_presenter);
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

- (void)didToggleHideEmptySections:(id)sections
{
  sectionsCopy = sections;
  selfCopy = self;
  sub_100300560(sectionsCopy);
}

- (_TtC9Reminders30TTRIEditSectionsViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders30TTRIEditSectionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  text = [editingCopy text];
  if (text)
  {
    v7 = text;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_10023DA48(v8, v10, editingCopy);
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  text = [(TTRIEditSectionsViewController *)editingCopy text];
  if (text)
  {
    v6 = text;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_10023DFCC(v7, v9, editingCopy);

    v10 = selfCopy;
  }

  else
  {
    v10 = editingCopy;
    editingCopy = selfCopy;
  }
}

@end