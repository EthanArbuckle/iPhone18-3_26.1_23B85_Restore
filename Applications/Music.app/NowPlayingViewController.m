@interface NowPlayingViewController
- (_TtC5Music24NowPlayingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollView;
- (int64_t)preferredStatusBarStyle;
- (void)environmentMonitorDidChangeThermalLevel:(id)a3;
- (void)handleTimeGesture;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation NowPlayingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1005CE194();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1005D4968(a3);
}

- (id)contentScrollView
{
  v2 = self + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      v4 = *(v2 + 1);
      v5 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
      v6 = v4;

      v7 = [v5 contentScrollView];

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [v3 contentScrollView];
  }

  return v8;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1005D4C30(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1005D52A8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1005D5A5C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1005D61E4(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1005D63A0();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1005D6FEC(a4, width, height);
  swift_unknownObjectRelease();
}

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = [(NowPlayingViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1005D7AFC(a3);
}

- (void)handleTimeGesture
{
  v2 = self;
  sub_1005DC468();
}

- (_TtC5Music24NowPlayingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)environmentMonitorDidChangeThermalLevel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005EB504();
}

@end