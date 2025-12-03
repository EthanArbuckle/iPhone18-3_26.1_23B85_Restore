@interface FMRecipientsViewController
- (NSArray)keyCommands;
- (_TtC6FindMy26FMRecipientsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)actionWithSender:;
- (void)cancelActionWithSender:(id)sender;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)showSelectedRecipientContactDetails;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMRecipientsViewController

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewHeightConstraint);
  if (v4)
  {
    height = size.height;
    v7 = objc_opt_self();
    selfCopy = self;
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

- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (v3)
  {
    selfCopy = self;
    addButton = [v3 addButton];
    if (addButton)
    {
      v5 = addButton;
      [addButton setAlpha:1.0];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  selfCopy = self;
  sub_100194A48();
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient
{
  recipientCopy = recipient;
  selfCopy = self;
  sub_100158628();
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  if (change)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  viewCopy = view;
  selfCopy = self;
  sub_100157C74(view, v6, v8);
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  selfCopy = self;
  sub_100194344();
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  if (address)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  selfCopy = self;
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_100180E48(viewCopy);

  return v7;
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
  v12 = sub_100180794(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_100180A9C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (NSArray)keyCommands
{
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005528C0;
  v4 = objc_opt_self();
  selfCopy = self;
  *(v3 + 32) = [v4 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"cancelActionWithSender:"];

  sub_10000905C(0, &unk_1006B50D0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100194FA0();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMRecipientsViewController();
  v4 = v5.receiver;
  [(FMRecipientsViewController *)&v5 viewWillAppear:appearCopy];
  sub_10019415C();
  sub_100194344();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (v3)
  {
    disappearCopy = disappear;
    selfCopy = self;
    textView = [v3 textView];
    if (textView)
    {
      v7 = textView;
      [textView resignFirstResponder];

      v8.receiver = selfCopy;
      v8.super_class = type metadata accessor for FMRecipientsViewController();
      [(FMRecipientsViewController *)&v8 viewWillDisappear:disappearCopy];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001951A4(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMRecipientsViewController();
  v4 = v6.receiver;
  [(FMRecipientsViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_peopleSuggester];
  *&v4[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_peopleSuggester] = 0;
}

- (void)showSelectedRecipientContactDetails
{
  selfCopy = self;
  sub_1001944EC();
}

- (void)cancelActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10019B404();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100199C1C(change);
}

- (_TtC6FindMy26FMRecipientsViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  pickerCopy = picker;
  propertyCopy = property;
  selfCopy = self;
  sub_10030DAE0(propertyCopy);
}

@end