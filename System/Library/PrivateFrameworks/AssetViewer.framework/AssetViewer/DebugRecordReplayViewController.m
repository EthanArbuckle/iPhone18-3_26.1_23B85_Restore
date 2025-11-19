@interface DebugRecordReplayViewController
- (_TtC11AssetViewer31DebugRecordReplayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)blinkButtonPressed;
- (void)helpDismissVC;
- (void)playButtonPressed;
- (void)recordButtonPressed;
- (void)resetButtonPressed;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)tappedWithRecognizer:(id)a3;
- (void)viewDidLoad;
@end

@implementation DebugRecordReplayViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_2412D6774();
}

- (void)helpDismissVC
{
  v2 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC;
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (v3)
  {
    v5 = self;
    v6 = v3;
    _s11AssetViewer21PreviewViewControllerC20previewWillDisappearyySbF_0();
    [v6 dismissViewControllerAnimated:1 completion:0];
    _s11AssetViewer21PreviewViewControllerC19previewDidDisappearyySbF_0();

    v7 = *(&self->super.super.super.isa + v2);
    *(&self->super.super.super.isa + v2) = 0;
  }
}

- (void)tappedWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412D83D4(v4);
}

- (void)recordButtonPressed
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state))
  {
    if (*(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state) != 1)
    {
      return;
    }

    v4 = self;
    v2 = self;
    sub_2412DA57C();
  }

  else
  {
    v4 = self;
    v3 = self;
    sub_2412D9EE8();
  }
}

- (void)playButtonPressed
{
  if (!*(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state))
  {
    v3 = self;
    sub_2412DB20C();
  }
}

- (void)resetButtonPressed
{
  v2 = self;
  sub_2412D8714();
}

- (void)blinkButtonPressed
{
  v2 = self;
  sub_2412D8BA8();
}

- (_TtC11AssetViewer31DebugRecordReplayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  DebugRecordReplayViewController.session(_:didUpdate:)(v6, v7);
}

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (v4)
  {
    v7 = a3;
    v8 = a4;
    v10 = self;
    v9 = v4;
    sub_2412F3FCC(v8);
  }
}

@end