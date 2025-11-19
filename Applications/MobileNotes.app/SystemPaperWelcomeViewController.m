@interface SystemPaperWelcomeViewController
- (_TtC11MobileNotes32SystemPaperWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11MobileNotes32SystemPaperWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)dismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SystemPaperWelcomeViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(SystemPaperWelcomeViewController *)&v8 viewDidAppear:v3];
  v5 = [objc_opt_self() standardUserDefaults];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v7];
}

- (void)dismiss:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [(SystemPaperWelcomeViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_10027CAAC(&v6);
}

- (_TtC11MobileNotes32SystemPaperWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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
    return sub_100410C90(v9, v11, a4, v13, v14, v16, a6);
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
  return sub_100410C90(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC11MobileNotes32SystemPaperWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
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
  v16 = [(SystemPaperWelcomeViewController *)&v18 initWithTitle:a3 detailText:a4 icon:a5 contentLayout:a6];

  return v16;
}

@end