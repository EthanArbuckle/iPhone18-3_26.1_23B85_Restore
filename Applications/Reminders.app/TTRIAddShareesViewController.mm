@interface TTRIAddShareesViewController
+ (id)composeLabel;
+ (id)titleString;
- (_TtC9Reminders28TTRIAddShareesViewController)initWithAllowsPhoneNumbers:(BOOL)numbers;
- (_TtC9Reminders28TTRIAddShareesViewController)initWithCoder:(id)coder;
- (_TtC9Reminders28TTRIAddShareesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation TTRIAddShareesViewController

+ (id)titleString
{
  v2._countAndFlagsBits = 0x7372655020646441;
  v3._object = 0x800000010066F6E0;
  v2._object = 0xEA00000000006E6FLL;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  TTRLocalizedString(_:comment:)(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

+ (id)composeLabel
{
  v2._object = 0x800000010066F690;
  v3._countAndFlagsBits = 3829588;
  v3._object = 0xE300000000000000;
  v2._countAndFlagsBits = 0xD000000000000047;
  TTRLocalizedString(_:comment:)(v3, v2);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10007C770();
}

- (_TtC9Reminders28TTRIAddShareesViewController)initWithAllowsPhoneNumbers:(BOOL)numbers
{
  numbersCopy = numbers;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(RemindersListAddPersonController *)&v5 initWithAllowsPhoneNumbers:numbersCopy];
}

- (_TtC9Reminders28TTRIAddShareesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIAddShareesViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC9Reminders28TTRIAddShareesViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRIAddShareesViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end