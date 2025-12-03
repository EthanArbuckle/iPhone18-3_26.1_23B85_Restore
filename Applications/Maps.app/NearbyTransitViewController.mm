@interface NearbyTransitViewController
- (_TtC4Maps27NearbyTransitViewController)initWithMapView:(id)view viewMode:(int64_t)mode;
- (_TtC4Maps27NearbyTransitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps35NearbyTransitViewControllerDelegate_)nearbyTransitDelegate;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NearbyTransitViewController

- (_TtP4Maps35NearbyTransitViewControllerDelegate_)nearbyTransitDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps27NearbyTransitViewController)initWithMapView:(id)view viewMode:(int64_t)mode
{
  viewCopy = view;
  v6 = sub_1003CC3B0(viewCopy, mode);

  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003CAFF8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003CB4D0(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1003CB660(disappear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003CB7F8(appear);
}

- (_TtC4Maps27NearbyTransitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  selfCopy = self;
  sub_1003CC508(viewCopy);
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated
{
  viewCopy = view;
  selfCopy = self;
  sub_1003CC874(mode);
}

@end