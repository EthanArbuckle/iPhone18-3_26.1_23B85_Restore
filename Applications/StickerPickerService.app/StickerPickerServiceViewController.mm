@interface StickerPickerServiceViewController
- (_TtC20StickerPickerService34StickerPickerServiceViewController)initWithCoder:(id)coder;
- (_TtC20StickerPickerService34StickerPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation StickerPickerServiceViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for StickerPickerServiceViewController();
  [(StickerPickerServiceViewController *)&v2 viewDidLoad];
}

- (_TtC20StickerPickerService34StickerPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for StickerPickerServiceViewController();
  v9 = [(StickerPickerServiceViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC20StickerPickerService34StickerPickerServiceViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StickerPickerServiceViewController();
  coderCopy = coder;
  v5 = [(StickerPickerServiceViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end