@interface NowPlayingViewController
- (_TtC5Music24NowPlayingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollView;
- (int64_t)preferredStatusBarStyle;
- (void)environmentMonitorDidChangeThermalLevel:(id)level;
- (void)handleTimeGesture;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation NowPlayingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1005CE194();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1005D4968(appear);
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

      contentScrollView = [v5 contentScrollView];

      contentScrollView2 = contentScrollView;
    }

    else
    {
      contentScrollView2 = 0;
    }
  }

  else
  {
    contentScrollView2 = [v3 contentScrollView];
  }

  return contentScrollView2;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1005D4C30(appearing);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1005D52A8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1005D5A5C(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1005D61E4(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1005D63A0();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1005D6FEC(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  traitCollection = [(NowPlayingViewController *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1005D7AFC(change);
}

- (void)handleTimeGesture
{
  selfCopy = self;
  sub_1005DC468();
}

- (_TtC5Music24NowPlayingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)environmentMonitorDidChangeThermalLevel:(id)level
{
  levelCopy = level;
  selfCopy = self;
  sub_1005EB504();
}

@end