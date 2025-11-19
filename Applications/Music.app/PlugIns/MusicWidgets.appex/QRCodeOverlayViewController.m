@interface QRCodeOverlayViewController
- (_TtC11MusicCoreUI27QRCodeOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissAnimated;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation QRCodeOverlayViewController

- (void)viewDidLoad
{
  v2 = self;
  QRCodeOverlayViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  QRCodeOverlayViewController.viewIsAppearing(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  QRCodeOverlayViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  QRCodeOverlayViewController.viewDidLayoutSubviews()();
}

- (void)dismissAnimated
{
  v2 = self;
  QRCodeOverlayViewController.dismissAnimated()();
}

- (_TtC11MusicCoreUI27QRCodeOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end