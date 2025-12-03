@interface FMItemEmailViewController
- (_TtC6FindMy25FMItemEmailViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy25FMItemEmailViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)handleUsePhoneNumberAction;
- (void)nextAction;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMItemEmailViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMItemEmailViewController();
  v4 = v8.receiver;
  [(FMEmailViewController *)&v8 viewWillAppear:appearCopy];
  sub_10037453C();
  parentViewController = [v4 parentViewController];
  if (parentViewController)
  {
    v6 = parentViewController;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100142550();
      v7 = v6;
    }

    else
    {
      v7 = v4;
      v4 = v6;
    }
  }
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
  v12 = sub_100374228(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)nextAction
{
  selfCopy = self;
  sub_100374A00();
}

- (void)handleUsePhoneNumberAction
{
  selfCopy = self;
  parentViewController = [(FMItemEmailViewController *)selfCopy parentViewController];
  if (parentViewController)
  {
    v3 = parentViewController;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1001428A4(0, 0);
      v4 = v3;
    }

    else
    {
      v4 = selfCopy;
      selfCopy = v3;
    }
  }
}

- (_TtC6FindMy25FMItemEmailViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_100374C54(v9, v11, text, v13, v14, v16, layout);
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
  return sub_100374C54(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC6FindMy25FMItemEmailViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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
  return sub_100374E54(v9, v11, text, v13, icon, layout);
}

@end