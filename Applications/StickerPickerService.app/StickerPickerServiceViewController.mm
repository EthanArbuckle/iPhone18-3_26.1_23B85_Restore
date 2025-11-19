@interface StickerPickerServiceViewController
- (_TtC20StickerPickerService34StickerPickerServiceViewController)initWithCoder:(id)a3;
- (_TtC20StickerPickerService34StickerPickerServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation StickerPickerServiceViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for StickerPickerServiceViewController();
  [(StickerPickerServiceViewController *)&v2 viewDidLoad];
}

- (_TtC20StickerPickerService34StickerPickerServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for StickerPickerServiceViewController();
  v9 = [(StickerPickerServiceViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC20StickerPickerService34StickerPickerServiceViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StickerPickerServiceViewController();
  v4 = a3;
  v5 = [(StickerPickerServiceViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end