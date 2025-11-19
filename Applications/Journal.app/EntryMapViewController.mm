@interface EntryMapViewController
- (_TtC7Journal22EntryMapViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dataSourceDidChange:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didSelectGeotaggableItems:(id)a3 fromMapView:(id)a4;
- (void)didTapMapModeSettingsButton;
- (void)dismissPresentedMapModePicker;
- (void)mapRegionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation EntryMapViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100715298();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10071586C(a3);
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100715A2C(a3);
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for EntryMapViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(EntryMapViewController *)&v6 willMoveToParentViewController:v4];
  sub_1007182C8();
}

- (void)didTapMapModeSettingsButton
{
  v2 = self;
  sub_100717A0C();
}

- (void)dismissPresentedMapModePicker
{
  v2 = self;
  sub_1007182C8();
}

- (_TtC7Journal22EntryMapViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didSelectGeotaggableItems:(id)a3 fromMapView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100718CC4(v6);
}

- (void)mapRegionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100719174();
}

- (void)dataSourceDidChange:(id)a3
{
  v3 = self;
  sub_10071877C();
}

@end