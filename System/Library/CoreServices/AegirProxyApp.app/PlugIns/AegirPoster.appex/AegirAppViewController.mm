@interface AegirAppViewController
- (_TtC11AegirPoster22AegirAppViewController)initWithNibName:(id)name bundle:(id)bundle;
- (uint64_t)astronomyVistaViewContentsAnimationFinished:;
- (void)dealloc;
- (void)didTapView:(id)view;
- (void)onDeviceOrientationDidChange;
- (void)preferencePaneDidChangeWithPreference:(id)preference;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)viewDidLoad;
@end

@implementation AegirAppViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10002DF0C();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  currentDevice = [objc_opt_self() currentDevice];
  [currentDevice endGeneratingDeviceOrientationNotifications];

  sub_10002EAFC();
  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for AegirAppViewController();
  [(AegirAppViewController *)&v7 dealloc];
}

- (void)onDeviceOrientationDidChange
{
  selfCopy = self;
  sub_10002E41C();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_10002EF94(scrollCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_10002F25C(deceleratingCopy);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    selfCopy = self;
    sub_10002F544();
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  sub_100031C94(draggingCopy, offset, x);
}

- (void)didTapView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_10002FB7C(viewCopy);
}

- (void)preferencePaneDidChangeWithPreference:(id)preference
{
  preferenceCopy = preference;
  selfCopy = self;
  sub_100030EEC();
}

- (_TtC11AegirPoster22AegirAppViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000349B4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10003106C(v5, v7, bundle);
}

- (uint64_t)astronomyVistaViewContentsAnimationFinished:
{
  v0 = sub_100034874();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034804();
  v5 = sub_100034854();
  v6 = sub_100034C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "astronomyVistaViewContentsAnimationFinished", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

@end