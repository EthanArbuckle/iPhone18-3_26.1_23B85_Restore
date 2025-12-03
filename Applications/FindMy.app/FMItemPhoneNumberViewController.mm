@interface FMItemPhoneNumberViewController
- (_TtC6FindMy31FMItemPhoneNumberViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy31FMItemPhoneNumberViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)handleUseEmailAction;
- (void)nextAction;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMItemPhoneNumberViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMItemPhoneNumberViewController();
  v4 = v7.receiver;
  [(FMPhoneNumberViewController *)&v7 viewWillAppear:appearCopy];
  parentViewController = [v4 parentViewController];
  if (parentViewController)
  {
    v6 = parentViewController;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100142550();
    }
  }

  sub_10036FDBC();
  *(v4 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_shouldShowSecondaryLabel) = 1;
  sub_10041842C();
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
  v12 = sub_10036F8C8(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)nextAction
{
  selfCopy = self;
  v2 = sub_100417D54();
  if (v2 && (v3 = v2, v4 = [v2 text], v3, v4) && (v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v7 = v6, v4, v8 = sub_100122BFC(v5, v7), , v8))
  {
    sub_10036FF04();
  }

  else
  {
    sub_100417EA8();
  }
}

- (void)handleUseEmailAction
{
  selfCopy = self;
  parentViewController = [(FMItemPhoneNumberViewController *)selfCopy parentViewController];
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

- (_TtC6FindMy31FMItemPhoneNumberViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_1003704E8(v9, v11, text, v13, v14, v16, layout);
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
  return sub_1003704E8(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC6FindMy31FMItemPhoneNumberViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = OBJC_IVAR____TtC6FindMy31FMItemPhoneNumberViewController_item;
    v11 = type metadata accessor for FMIPItem();
    (*(*(v11 - 8) + 56))(&self->super.OBWelcomeController_opaque[v10], 1, 1, v11);
    titleCopy = title;
    iconCopy = icon;
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = OBJC_IVAR____TtC6FindMy31FMItemPhoneNumberViewController_item;
    v16 = type metadata accessor for FMIPItem();
    (*(*(v16 - 8) + 56))(&self->super.OBWelcomeController_opaque[v15], 1, 1, v16);
    titleCopy2 = title;
    iconCopy2 = icon;
    v14 = 0;
  }

  v21.receiver = self;
  v21.super_class = type metadata accessor for FMItemPhoneNumberViewController();
  v19 = [(FMPhoneNumberViewController *)&v21 initWithTitle:title detailText:v14 icon:icon contentLayout:layout];

  return v19;
}

@end