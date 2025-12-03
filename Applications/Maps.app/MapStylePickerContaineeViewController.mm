@interface MapStylePickerContaineeViewController
- (_TtC4Maps37MapStylePickerContaineeViewController)initWithCoder:(id)coder;
- (_TtC4Maps37MapStylePickerContaineeViewController)initWithMapView:(id)view delegate:(id)delegate;
- (_TtC4Maps37MapStylePickerContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps45MapStylePickerContaineeViewControllerDelegate_)delegate;
- (int64_t)floatingControlsOptions;
- (void)didDismissByGesture;
- (void)handleDismissAction:(id)action;
- (void)mapView:(id)view didChangeMapType:(unint64_t)type;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MapStylePickerContaineeViewController

- (_TtP4Maps45MapStylePickerContaineeViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps37MapStylePickerContaineeViewController)initWithMapView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  swift_unknownObjectRetain();
  v5 = sub_1001D9FE0(viewCopy);

  swift_unknownObjectRelease();
  return v5;
}

- (_TtC4Maps37MapStylePickerContaineeViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_debugPanelEnabled;
  *(self + v3) = sub_10078A958();
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)handleDismissAction:(id)action
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001D9778();

  sub_10004E3D0(&v5);
}

- (void)didDismissByGesture
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  if (Strong)
  {
    [Strong mapStylePickerContaineeViewControllerDismissByGestureWithViewController:selfCopy];
    swift_unknownObjectRelease();
  }

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(ContaineeViewController *)&v6 didDismissByGesture];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001D9AF4();
}

- (int64_t)floatingControlsOptions
{
  if (sub_1000145C8(self))
  {
    return 4147;
  }

  else
  {
    return 0;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1001D9D1C(disappear);
}

- (_TtC4Maps37MapStylePickerContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mapView:(id)view didChangeMapType:(unint64_t)type
{
  viewCopy = view;
  selfCopy = self;
  sub_1001DA0A4(view);
}

@end