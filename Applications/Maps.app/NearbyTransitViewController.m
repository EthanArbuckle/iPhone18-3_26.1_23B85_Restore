@interface NearbyTransitViewController
- (_TtC4Maps27NearbyTransitViewController)initWithMapView:(id)a3 viewMode:(int64_t)a4;
- (_TtC4Maps27NearbyTransitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps35NearbyTransitViewControllerDelegate_)nearbyTransitDelegate;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation NearbyTransitViewController

- (_TtP4Maps35NearbyTransitViewControllerDelegate_)nearbyTransitDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps27NearbyTransitViewController)initWithMapView:(id)a3 viewMode:(int64_t)a4
{
  v5 = a3;
  v6 = sub_1003CC3B0(v5, a4);

  return v6;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1003CAFF8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1003CB4D0(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1003CB660(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1003CB7F8(a3);
}

- (_TtC4Maps27NearbyTransitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1003CC508(v5);
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1003CC874(a4);
}

@end