@interface DebugRecordReplayViewController
- (_TtC11AssetViewer31DebugRecordReplayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)blinkButtonPressed;
- (void)helpDismissVC;
- (void)playButtonPressed;
- (void)recordButtonPressed;
- (void)resetButtonPressed;
- (void)session:(id)session cameraDidChangeTrackingState:(id)state;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)tappedWithRecognizer:(id)recognizer;
- (void)viewDidLoad;
@end

@implementation DebugRecordReplayViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2412D6774();
}

- (void)helpDismissVC
{
  v2 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC;
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (v3)
  {
    selfCopy = self;
    v6 = v3;
    _s11AssetViewer21PreviewViewControllerC20previewWillDisappearyySbF_0();
    [v6 dismissViewControllerAnimated:1 completion:0];
    _s11AssetViewer21PreviewViewControllerC19previewDidDisappearyySbF_0();

    v7 = *(&self->super.super.super.isa + v2);
    *(&self->super.super.super.isa + v2) = 0;
  }
}

- (void)tappedWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_2412D83D4(recognizerCopy);
}

- (void)recordButtonPressed
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state))
  {
    if (*(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state) != 1)
    {
      return;
    }

    selfCopy3 = self;
    selfCopy2 = self;
    sub_2412DA57C();
  }

  else
  {
    selfCopy3 = self;
    selfCopy4 = self;
    sub_2412D9EE8();
  }
}

- (void)playButtonPressed
{
  if (!*(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state))
  {
    selfCopy = self;
    sub_2412DB20C();
  }
}

- (void)resetButtonPressed
{
  selfCopy = self;
  sub_2412D8714();
}

- (void)blinkButtonPressed
{
  selfCopy = self;
  sub_2412D8BA8();
}

- (_TtC11AssetViewer31DebugRecordReplayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  DebugRecordReplayViewController.session(_:didUpdate:)(sessionCopy, frameCopy);
}

- (void)session:(id)session cameraDidChangeTrackingState:(id)state
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (v4)
  {
    sessionCopy = session;
    stateCopy = state;
    selfCopy = self;
    v9 = v4;
    sub_2412F3FCC(stateCopy);
  }
}

@end