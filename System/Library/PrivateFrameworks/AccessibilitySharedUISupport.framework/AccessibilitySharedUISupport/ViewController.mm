@interface ViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doneHandler;
- (void)homeHandler;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)previousHandler;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)homeHandler
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_navigationModel);
  v3 = self;
  NavigationModel.goHome()();
}

- (void)doneHandler
{
  v2 = self;
  sub_23DAB6EF8();
}

- (void)previousHandler
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_navigationModel);
  v4 = 1;
  v3 = self;
  sub_23DABB0B8(&v4);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = self;
  sub_23DAB6EF8();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_23DAB7F80();
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  sub_23DAB6EF8();

  return 1;
}

- (_TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end