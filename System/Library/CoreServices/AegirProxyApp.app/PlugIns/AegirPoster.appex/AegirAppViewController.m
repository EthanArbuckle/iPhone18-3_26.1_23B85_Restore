@interface AegirAppViewController
- (_TtC11AegirPoster22AegirAppViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (uint64_t)astronomyVistaViewContentsAnimationFinished:;
- (void)dealloc;
- (void)didTapView:(id)a3;
- (void)onDeviceOrientationDidChange;
- (void)preferencePaneDidChangeWithPreference:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)viewDidLoad;
@end

@implementation AegirAppViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10002DF0C();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6 = [objc_opt_self() currentDevice];
  [v6 endGeneratingDeviceOrientationNotifications];

  sub_10002EAFC();
  v7.receiver = v4;
  v7.super_class = type metadata accessor for AegirAppViewController();
  [(AegirAppViewController *)&v7 dealloc];
}

- (void)onDeviceOrientationDidChange
{
  v2 = self;
  sub_10002E41C();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002EF94(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002F25C(v4);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v5 = self;
    sub_10002F544();
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v8 = a3;
  v9 = self;
  sub_100031C94(v8, a5, x);
}

- (void)didTapView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002FB7C(v4);
}

- (void)preferencePaneDidChangeWithPreference:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100030EEC();
}

- (_TtC11AegirPoster22AegirAppViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1000349B4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10003106C(v5, v7, a4);
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