@interface FMRecipientsViewController
- (NSArray)keyCommands;
- (_TtC6FindMy26FMRecipientsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)actionWithSender:;
- (void)cancelActionWithSender:(id)a3;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewDidBecomeFirstResponder:(id)a3;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)showSelectedRecipientContactDetails;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMRecipientsViewController

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewHeightConstraint);
  if (v4)
  {
    height = a4.height;
    v7 = objc_opt_self();
    v10 = self;
    v8 = v4;
    [v7 preferredHeight];
    if (height > v9)
    {
      v9 = height;
    }

    [v8 setConstant:v9];
  }

  else
  {
    __break(1u);
  }
}

- (void)composeRecipientViewDidBecomeFirstResponder:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (v3)
  {
    v6 = self;
    v4 = [v3 addButton];
    if (v4)
    {
      v5 = v4;
      [v4 setAlpha:1.0];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  v3 = self;
  sub_100194A48();
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100158628();
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_100157C74(a3, v6, v8);
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  v4 = self;
  sub_100194344();
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  if (a4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v9 = self;
  if (sub_100478820(v5, v7) & 1) != 0 || (v8 = sub_100477BA0(v5, v7, 0), , (v8))
  {
    if (v7)
    {
      sub_100193EAC(v5, v7, 0, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_100180E48(v5);

  return v7;
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
  v12 = sub_100180794(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_100180A9C(v10);

  (*(v7 + 8))(v9, v6);
}

- (NSArray)keyCommands
{
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005528C0;
  v4 = objc_opt_self();
  v5 = self;
  *(v3 + 32) = [v4 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"cancelActionWithSender:"];

  sub_10000905C(0, &unk_1006B50D0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100194FA0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMRecipientsViewController();
  v4 = v5.receiver;
  [(FMRecipientsViewController *)&v5 viewWillAppear:v3];
  sub_10019415C();
  sub_100194344();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (v3)
  {
    v4 = a3;
    v5 = self;
    v6 = [v3 textView];
    if (v6)
    {
      v7 = v6;
      [v6 resignFirstResponder];

      v8.receiver = v5;
      v8.super_class = type metadata accessor for FMRecipientsViewController();
      [(FMRecipientsViewController *)&v8 viewWillDisappear:v4];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1001951A4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMRecipientsViewController();
  v4 = v6.receiver;
  [(FMRecipientsViewController *)&v6 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_peopleSuggester];
  *&v4[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_peopleSuggester] = 0;
}

- (void)showSelectedRecipientContactDetails
{
  v2 = self;
  sub_1001944EC();
}

- (void)cancelActionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10019B404();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100199C1C(a3);
}

- (_TtC6FindMy26FMRecipientsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)actionWithSender:
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMRecipientsViewController: Send button pressed - override in subclass", v2, 2u);
  }
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10030DAE0(v7);
}

@end