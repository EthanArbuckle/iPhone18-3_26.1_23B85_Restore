@interface RTFEditingViewController
- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController)initWithCoder:(id)a3;
- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)showRTFSheet;
- (void)viewDidLoad;
@end

@implementation RTFEditingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1003B4D14();
}

- (void)showRTFSheet
{
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    [v2 _showTextFormattingOptions:0];
  }
}

- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController_cleanTextView;
  type metadata accessor for CleanRTFTextView();
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = a4;
  *(&self->super.super.super.isa + v8) = [v9 init];
  if (v7)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for RTFEditingViewController();
  v12 = [(RTFEditingViewController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController_cleanTextView;
  type metadata accessor for CleanRTFTextView();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for RTFEditingViewController();
  v8 = [(RTFEditingViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end