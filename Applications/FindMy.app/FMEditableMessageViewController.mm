@interface FMEditableMessageViewController
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC6FindMy31FMEditableMessageViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy31FMEditableMessageViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)handleBackgroundTap;
- (void)textViewDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMEditableMessageViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMEditableMessageViewController();
  v2 = v8.receiver;
  viewDidLoad = [(FMEditableMessageViewController *)&v8 viewDidLoad];
  (*((swift_isaMask & *v2) + 0x208))(viewDidLoad);
  sub_100264F8C();
  v4 = objc_allocWithZone(UITapGestureRecognizer);
  v5 = [v4 initWithTarget:v2 action:{"handleBackgroundTap", v8.receiver, v8.super_class}];
  view = [v2 view];
  if (view)
  {
    v7 = view;
    [view addGestureRecognizer:v5];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMEditableMessageViewController();
  v4 = v7.receiver;
  [(FMEditableMessageViewController *)&v7 viewWillAppear:appearCopy];
  sub_100265920();
  v5 = sub_1002653B0();
  [v5 resignFirstResponder];

  v6 = &v4[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
  *v6 = 0;
  v6[8] = 1;
  v4[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMEditableMessageViewController();
  v4 = v7.receiver;
  [(FMEditableMessageViewController *)&v7 viewWillDisappear:disappearCopy];
  v5 = sub_1002653B0();
  [v5 resignFirstResponder];

  sub_100265C08();
  v6 = &v4[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
  *v6 = 0;
  v6[8] = 1;
  v4[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100265DB8();
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
  v12 = sub_100264DE8(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_100266AAC();

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_1006AEC48 != -1)
  {
    swift_once();
  }

  v8 = *&qword_1006D47F0;
  v9 = *&qword_1006D47F8;
  v10 = [objc_opt_self() preferredFontForTextStyle:qword_1006D47E8];
  [v10 lineHeight];
  v12 = v11;

  (*(v5 + 8))(v7, v4);
  return v9 + v9 + v8 * v12;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100265308(changeCopy);
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  selfCopy = self;
  LOBYTE(length) = sub_100265504(v7, v9, v11, length, 0);

  return length & 1;
}

- (void)handleBackgroundTap
{
  selfCopy = self;
  v2 = sub_1002653B0();
  if (v2)
  {
    v3 = v2;
    [v2 resignFirstResponder];

    v4 = &selfCopy->OBWelcomeController_opaque[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
    *v4 = 0;
    v4[8] = 1;
    selfCopy->OBWelcomeController_opaque[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
  }
}

- (_TtC6FindMy31FMEditableMessageViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy31FMEditableMessageViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end