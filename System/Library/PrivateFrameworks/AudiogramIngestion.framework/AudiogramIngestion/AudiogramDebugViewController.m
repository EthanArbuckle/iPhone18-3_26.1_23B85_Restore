@interface AudiogramDebugViewController
- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithCoder:(id)a3;
- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithImage:(id)a3 debugInfo:(id)a4;
- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)sliderValueChanged:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AudiogramDebugViewController

- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithImage:(id)a3 debugInfo:(id)a4
{
  type metadata accessor for AudiogramDetectorResult();
  v5 = sub_2417E424C();
  return AudiogramDebugViewController.init(image:debugInfo:)(a3, v5);
}

- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_2417DA53C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2417DA960(a3);
}

- (void)sliderValueChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2417DC068(v4);
}

- (_TtC18AudiogramIngestion28AudiogramDebugViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end