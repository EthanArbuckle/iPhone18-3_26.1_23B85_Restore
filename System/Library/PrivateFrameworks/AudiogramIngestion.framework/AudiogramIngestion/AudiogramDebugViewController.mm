@interface AudiogramDebugViewController
- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithCoder:(id)coder;
- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithImage:(id)image debugInfo:(id)info;
- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)sliderValueChanged:(id)changed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AudiogramDebugViewController

- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithImage:(id)image debugInfo:(id)info
{
  type metadata accessor for AudiogramDetectorResult();
  v5 = sub_2417E424C();
  return AudiogramDebugViewController.init(image:debugInfo:)(image, v5);
}

- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_scrollView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceSlider) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramDebugViewController_confidenceLabel) = 0;
  result = sub_2417E441C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2417DA53C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2417DA960(appear);
}

- (void)sliderValueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_2417DC068(changedCopy);
}

- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end