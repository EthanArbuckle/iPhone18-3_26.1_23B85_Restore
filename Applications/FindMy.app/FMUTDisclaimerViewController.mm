@interface FMUTDisclaimerViewController
- (_TtC6FindMy28FMUTDisclaimerViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy28FMUTDisclaimerViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continue;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMUTDisclaimerViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(FMUTDisclaimerViewController *)&v8 viewWillAppear:v3];
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

- (void)continue
{
  v5 = self;
  v2 = [(FMUTDisclaimerViewController *)v5 parentViewController];
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

- (_TtC6FindMy28FMUTDisclaimerViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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
    return sub_10027E6F4(v9, v11, a4, v13, v14, v16, a6);
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
  return sub_10027E6F4(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC6FindMy28FMUTDisclaimerViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = a3;
    v13 = a5;
    a4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = a3;
    v15 = a5;
  }

  v18.receiver = self;
  v18.super_class = ObjectType;
  v16 = [(FMUTDisclaimerViewController *)&v18 initWithTitle:a3 detailText:a4 icon:a5 contentLayout:a6];

  return v16;
}

@end