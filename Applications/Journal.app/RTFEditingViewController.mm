@interface RTFEditingViewController
- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController)initWithCoder:(id)coder;
- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)showRTFSheet;
- (void)viewDidLoad;
@end

@implementation RTFEditingViewController

- (void)viewDidLoad
{
  selfCopy = self;
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

- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
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
  bundleCopy = bundle;
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
  v12 = [(RTFEditingViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController_cleanTextView;
  type metadata accessor for CleanRTFTextView();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for RTFEditingViewController();
  v8 = [(RTFEditingViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end