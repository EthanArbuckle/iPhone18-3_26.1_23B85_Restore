@interface MapStylePickerContaineeViewController
- (_TtC4Maps37MapStylePickerContaineeViewController)initWithCoder:(id)a3;
- (_TtC4Maps37MapStylePickerContaineeViewController)initWithMapView:(id)a3 delegate:(id)a4;
- (_TtC4Maps37MapStylePickerContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps45MapStylePickerContaineeViewControllerDelegate_)delegate;
- (int64_t)floatingControlsOptions;
- (void)didDismissByGesture;
- (void)handleDismissAction:(id)a3;
- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MapStylePickerContaineeViewController

- (_TtP4Maps45MapStylePickerContaineeViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps37MapStylePickerContaineeViewController)initWithMapView:(id)a3 delegate:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = sub_1001D9FE0(v4);

  swift_unknownObjectRelease();
  return v5;
}

- (_TtC4Maps37MapStylePickerContaineeViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_debugPanelEnabled;
  *(self + v3) = sub_10078A958();
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)handleDismissAction:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001D9778();

  sub_10004E3D0(&v5);
}

- (void)didDismissByGesture
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = self;
  if (Strong)
  {
    [Strong mapStylePickerContaineeViewControllerDismissByGestureWithViewController:v5];
    swift_unknownObjectRelease();
  }

  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(ContaineeViewController *)&v6 didDismissByGesture];
}

- (void)viewDidLoad
{
  v2 = self;
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

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001D9D1C(a3);
}

- (_TtC4Maps37MapStylePickerContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1001DA0A4(a3);
}

@end