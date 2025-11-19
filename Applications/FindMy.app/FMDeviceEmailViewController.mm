@interface FMDeviceEmailViewController
- (_TtC6FindMy27FMDeviceEmailViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy27FMDeviceEmailViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)handleUsePhoneNumberAction;
- (void)nextAction;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMDeviceEmailViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMDeviceEmailViewController();
  v4 = v8.receiver;
  [(FMEmailViewController *)&v8 viewWillAppear:v3];
  sub_100409E18();
  v5 = [v4 parentViewController];
  if (v5)
  {
    v6 = v5;
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_100409AD8(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)nextAction
{
  v2 = self;
  sub_10040A338();
}

- (void)handleUsePhoneNumberAction
{
  v5 = self;
  v2 = [(FMDeviceEmailViewController *)v5 parentViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1001428A4(0, 0);
      v4 = v3;
    }

    else
    {
      v4 = v5;
      v5 = v3;
    }
  }
}

- (_TtC6FindMy27FMDeviceEmailViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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
    return sub_10040A4F8(v9, v11, a4, v13, v14, v16, a6);
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
  return sub_10040A4F8(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC6FindMy27FMDeviceEmailViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
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
  return sub_10040A740(v9, v11, a4, v13, a5, a6);
}

@end