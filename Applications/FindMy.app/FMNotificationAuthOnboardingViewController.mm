@interface FMNotificationAuthOnboardingViewController
- (NSArray)keyCommands;
- (_TtC6FindMy42FMNotificationAuthOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy42FMNotificationAuthOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continue;
- (void)ignore;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMNotificationAuthOnboardingViewController

- (void)continue
{
  selfCopy = self;
  sub_100150EC8(sub_1002DB854);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(FMNotificationAuthOnboardingViewController *)&v8 viewWillAppear:appearCopy];
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

- (NSArray)keyCommands
{
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005528C0;
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() keyCommandWithInput:v3 modifierFlags:0 action:"returnPressed"];

  *(v2 + 32) = v4;
  sub_10000905C(0, &unk_1006B50D0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)ignore
{
  selfCopy = self;
  sub_100150EC8(sub_1002DB950);
}

- (_TtC6FindMy42FMNotificationAuthOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_100151028(v9, v11, text, v13, v14, v16, layout);
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
  return sub_100151028(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC6FindMy42FMNotificationAuthOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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
  return sub_1001512F0(v9, v11, text, v13, icon, layout);
}

@end