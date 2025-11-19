@interface FMEditableMessageViewController
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC6FindMy31FMEditableMessageViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy31FMEditableMessageViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)handleBackgroundTap;
- (void)textViewDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMEditableMessageViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMEditableMessageViewController();
  v2 = v8.receiver;
  v3 = [(FMEditableMessageViewController *)&v8 viewDidLoad];
  (*((swift_isaMask & *v2) + 0x208))(v3);
  sub_100264F8C();
  v4 = objc_allocWithZone(UITapGestureRecognizer);
  v5 = [v4 initWithTarget:v2 action:{"handleBackgroundTap", v8.receiver, v8.super_class}];
  v6 = [v2 view];
  if (v6)
  {
    v7 = v6;
    [v6 addGestureRecognizer:v5];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMEditableMessageViewController();
  v4 = v7.receiver;
  [(FMEditableMessageViewController *)&v7 viewWillAppear:v3];
  sub_100265920();
  v5 = sub_1002653B0();
  [v5 resignFirstResponder];

  v6 = &v4[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
  *v6 = 0;
  v6[8] = 1;
  v4[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMEditableMessageViewController();
  v4 = v7.receiver;
  [(FMEditableMessageViewController *)&v7 viewWillDisappear:v3];
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
  v2 = self;
  sub_100265DB8();
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
  v12 = sub_100264DE8(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_100266AAC();

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
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

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100265308(v4);
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = self;
  LOBYTE(length) = sub_100265504(v7, v9, v11, length, 0);

  return length & 1;
}

- (void)handleBackgroundTap
{
  v5 = self;
  v2 = sub_1002653B0();
  if (v2)
  {
    v3 = v2;
    [v2 resignFirstResponder];

    v4 = &v5->OBWelcomeController_opaque[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
    *v4 = 0;
    v4[8] = 1;
    v5->OBWelcomeController_opaque[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
  }
}

- (_TtC6FindMy31FMEditableMessageViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy31FMEditableMessageViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end