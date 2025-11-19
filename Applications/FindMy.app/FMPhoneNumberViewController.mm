@interface FMPhoneNumberViewController
- (_TtC6FindMy27FMPhoneNumberViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy27FMPhoneNumberViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)handleBackgroundTap;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMPhoneNumberViewController

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10041880C();
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPhoneNumberViewController();
  v2 = v8.receiver;
  v3 = [(FMPhoneNumberViewController *)&v8 viewDidLoad];
  (*((swift_isaMask & *v2) + 0x208))(v3);
  sub_1004179E0();
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
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPhoneNumberViewController();
  v4 = v8.receiver;
  [(FMPhoneNumberViewController *)&v8 viewWillAppear:v3];
  sub_100418B7C();
  v5 = sub_100417D54();
  if (v5)
  {
    v6 = v5;
    [v5 resignFirstResponder];
  }

  v7 = &v4[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_paddingHeight];
  *v7 = 0;
  v7[8] = 1;
  v4[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight] = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPhoneNumberViewController();
  v4 = v8.receiver;
  [(FMPhoneNumberViewController *)&v8 viewWillDisappear:v3];
  v5 = sub_100417D54();
  if (v5)
  {
    v6 = v5;
    [v5 resignFirstResponder];
  }

  sub_100418E68();
  v7 = &v4[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_paddingHeight];
  *v7 = 0;
  v7[8] = 1;
  v4[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight] = 0;
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
  v12 = sub_100417638(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)handleBackgroundTap
{
  v5 = self;
  v2 = sub_100417D54();
  if (v2)
  {
    v3 = v2;
    [v2 resignFirstResponder];

    v4 = &v5->OBWelcomeController_opaque[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_paddingHeight];
    *v4 = 0;
    v4[8] = 1;
    v5->OBWelcomeController_opaque[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight] = 0;
  }
}

- (_TtC6FindMy27FMPhoneNumberViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_1004191E0(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_1004191E0(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC6FindMy27FMPhoneNumberViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return sub_1004194EC(v9, v11, a4, v13, a5, a6);
}

@end