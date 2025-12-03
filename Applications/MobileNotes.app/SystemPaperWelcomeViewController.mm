@interface SystemPaperWelcomeViewController
- (_TtC11MobileNotes32SystemPaperWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11MobileNotes32SystemPaperWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)dismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SystemPaperWelcomeViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(SystemPaperWelcomeViewController *)&v8 viewDidAppear:appearCopy];
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  [standardUserDefaults setObject:isa forKey:v7];
}

- (void)dismiss:(id)dismiss
{
  if (dismiss)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(SystemPaperWelcomeViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_10027CAAC(&v6);
}

- (_TtC11MobileNotes32SystemPaperWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_100410C90(v9, v11, text, v13, v14, v16, layout);
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
  return sub_100410C90(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC11MobileNotes32SystemPaperWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  ObjectType = swift_getObjectType();
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    titleCopy = title;
    iconCopy = icon;
    text = String._bridgeToObjectiveC()();
  }

  else
  {
    titleCopy2 = title;
    iconCopy2 = icon;
  }

  v18.receiver = self;
  v18.super_class = ObjectType;
  v16 = [(SystemPaperWelcomeViewController *)&v18 initWithTitle:title detailText:text icon:icon contentLayout:layout];

  return v16;
}

@end