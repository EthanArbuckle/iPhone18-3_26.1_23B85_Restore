@interface FMDevicePhoneNumberViewController
- (_TtC6FindMy33FMDevicePhoneNumberViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy33FMDevicePhoneNumberViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)handleUseEmailAction;
- (void)nextAction;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMDevicePhoneNumberViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10030962C(appear);
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
  v12 = sub_10030A0B0(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)nextAction
{
  selfCopy = self;
  sub_10030CE08();
}

- (void)handleUseEmailAction
{
  selfCopy = self;
  parentViewController = [(FMDevicePhoneNumberViewController *)selfCopy parentViewController];
  if (parentViewController)
  {
    v3 = parentViewController;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100142308(1, 0, 0);
      v4 = v3;
    }

    else
    {
      v4 = selfCopy;
      selfCopy = v3;
    }
  }
}

- (_TtC6FindMy33FMDevicePhoneNumberViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_10030D054(v9, v11, text, v13, v14, v16, layout);
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
  return sub_10030D054(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC6FindMy33FMDevicePhoneNumberViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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
  return sub_10030D2A4(v9, v11, text, v13, icon, layout);
}

@end