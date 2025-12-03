@interface FMEmailViewController
- (_TtC6FindMy21FMEmailViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy21FMEmailViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)handleBackgroundTap;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMEmailViewController

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100341670();
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMEmailViewController();
  v2 = v7.receiver;
  [(FMEmailViewController *)&v7 viewDidLoad];
  sub_100340BC4();
  sub_100341370();
  v3 = objc_allocWithZone(UITapGestureRecognizer);
  v4 = [v3 initWithTarget:v2 action:{"handleBackgroundTap", v7.receiver, v7.super_class}];
  view = [v2 view];
  if (view)
  {
    v6 = view;
    [view addGestureRecognizer:v4];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMEmailViewController();
  v4 = v8.receiver;
  [(FMEmailViewController *)&v8 viewWillAppear:appearCopy];
  sub_10034199C();
  v5 = sub_1003421A0();
  if (v5)
  {
    v6 = v5;
    [v5 resignFirstResponder];
  }

  v7 = &v4[OBJC_IVAR____TtC6FindMy21FMEmailViewController_paddingHeight];
  *v7 = 0;
  v7[8] = 1;
  v4[OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight] = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMEmailViewController();
  v4 = v8.receiver;
  [(FMEmailViewController *)&v8 viewWillDisappear:disappearCopy];
  v5 = sub_1003421A0();
  if (v5)
  {
    v6 = v5;
    [v5 resignFirstResponder];
  }

  sub_100341C88();
  v7 = &v4[OBJC_IVAR____TtC6FindMy21FMEmailViewController_paddingHeight];
  *v7 = 0;
  v7[8] = 1;
  v4[OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight] = 0;
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
  v12 = sub_100341E5C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)handleBackgroundTap
{
  selfCopy = self;
  v2 = sub_1003421A0();
  if (v2)
  {
    v3 = v2;
    [v2 resignFirstResponder];

    v4 = &selfCopy->OBWelcomeController_opaque[OBJC_IVAR____TtC6FindMy21FMEmailViewController_paddingHeight];
    *v4 = 0;
    v4[8] = 1;
    selfCopy->OBWelcomeController_opaque[OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight] = 0;
  }
}

- (_TtC6FindMy21FMEmailViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_1003428F4(v9, v11, text, v13, v14, v16, layout);
  }

  text = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_1003428F4(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC6FindMy21FMEmailViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (text)
  {
    text = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  iconCopy = icon;
  return sub_100342C0C(v9, v11, text, v13, icon, layout);
}

@end