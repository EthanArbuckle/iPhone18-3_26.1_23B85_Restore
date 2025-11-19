@interface FMItemPhoneNumberViewController
- (_TtC6FindMy31FMItemPhoneNumberViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy31FMItemPhoneNumberViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)handleUseEmailAction;
- (void)nextAction;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMItemPhoneNumberViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMItemPhoneNumberViewController();
  v4 = v7.receiver;
  [(FMPhoneNumberViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 parentViewController];
  if (v5)
  {
    v6 = v5;
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_10036F8C8(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)nextAction
{
  v9 = self;
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
  v5 = self;
  v2 = [(FMItemPhoneNumberViewController *)v5 parentViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100142308(1, 0, 0);
      v4 = v3;
    }

    else
    {
      v4 = v5;
      v5 = v3;
    }
  }
}

- (_TtC6FindMy31FMItemPhoneNumberViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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
    return sub_1003704E8(v9, v11, a4, v13, v14, v16, a6);
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
  return sub_1003704E8(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC6FindMy31FMItemPhoneNumberViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = OBJC_IVAR____TtC6FindMy31FMItemPhoneNumberViewController_item;
    v11 = type metadata accessor for FMIPItem();
    (*(*(v11 - 8) + 56))(&self->super.OBWelcomeController_opaque[v10], 1, 1, v11);
    v12 = a3;
    v13 = a5;
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = OBJC_IVAR____TtC6FindMy31FMItemPhoneNumberViewController_item;
    v16 = type metadata accessor for FMIPItem();
    (*(*(v16 - 8) + 56))(&self->super.OBWelcomeController_opaque[v15], 1, 1, v16);
    v17 = a3;
    v18 = a5;
    v14 = 0;
  }

  v21.receiver = self;
  v21.super_class = type metadata accessor for FMItemPhoneNumberViewController();
  v19 = [(FMPhoneNumberViewController *)&v21 initWithTitle:a3 detailText:v14 icon:a5 contentLayout:a6];

  return v19;
}

@end