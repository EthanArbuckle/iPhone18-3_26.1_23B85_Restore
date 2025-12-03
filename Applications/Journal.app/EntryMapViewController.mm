@interface EntryMapViewController
- (_TtC7Journal22EntryMapViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dataSourceDidChange:(id)change;
- (void)didMoveToParentViewController:(id)controller;
- (void)didSelectGeotaggableItems:(id)items fromMapView:(id)view;
- (void)didTapMapModeSettingsButton;
- (void)dismissPresentedMapModePicker;
- (void)mapRegionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation EntryMapViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100715298();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10071586C(appear);
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100715A2C(controller);
}

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for EntryMapViewController();
  controllerCopy = controller;
  v5 = v6.receiver;
  [(EntryMapViewController *)&v6 willMoveToParentViewController:controllerCopy];
  sub_1007182C8();
}

- (void)didTapMapModeSettingsButton
{
  selfCopy = self;
  sub_100717A0C();
}

- (void)dismissPresentedMapModePicker
{
  selfCopy = self;
  sub_1007182C8();
}

- (_TtC7Journal22EntryMapViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didSelectGeotaggableItems:(id)items fromMapView:(id)view
{
  itemsCopy = items;
  viewCopy = view;
  selfCopy = self;
  sub_100718CC4(itemsCopy);
}

- (void)mapRegionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100719174();
}

- (void)dataSourceDidChange:(id)change
{
  selfCopy = self;
  sub_10071877C();
}

@end