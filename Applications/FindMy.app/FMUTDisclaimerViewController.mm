@interface FMUTDisclaimerViewController
- (_TtC6FindMy28FMUTDisclaimerViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy28FMUTDisclaimerViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continue;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMUTDisclaimerViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(FMUTDisclaimerViewController *)&v8 viewWillAppear:appearCopy];
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

- (void)continue
{
  selfCopy = self;
  parentViewController = [(FMUTDisclaimerViewController *)selfCopy parentViewController];
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

- (_TtC6FindMy28FMUTDisclaimerViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_10027E6F4(v9, v11, text, v13, v14, v16, layout);
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
  return sub_10027E6F4(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC6FindMy28FMUTDisclaimerViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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
  v16 = [(FMUTDisclaimerViewController *)&v18 initWithTitle:title detailText:text icon:icon contentLayout:layout];

  return v16;
}

@end