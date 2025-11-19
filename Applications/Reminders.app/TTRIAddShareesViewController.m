@interface TTRIAddShareesViewController
+ (id)composeLabel;
+ (id)titleString;
- (_TtC9Reminders28TTRIAddShareesViewController)initWithAllowsPhoneNumbers:(BOOL)a3;
- (_TtC9Reminders28TTRIAddShareesViewController)initWithCoder:(id)a3;
- (_TtC9Reminders28TTRIAddShareesViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
  v2 = self;
  sub_10007C770();
}

- (_TtC9Reminders28TTRIAddShareesViewController)initWithAllowsPhoneNumbers:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(RemindersListAddPersonController *)&v5 initWithAllowsPhoneNumbers:v3];
}

- (_TtC9Reminders28TTRIAddShareesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIAddShareesViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC9Reminders28TTRIAddShareesViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TTRIAddShareesViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end