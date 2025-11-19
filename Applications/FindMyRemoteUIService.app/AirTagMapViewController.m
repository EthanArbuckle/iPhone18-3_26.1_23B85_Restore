@interface AirTagMapViewController
- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithCoder:(id)a3;
- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)loadView;
@end

@implementation AirTagMapViewController

- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapView;
  v5 = [objc_allocWithZone(MKMapView) init];
  *(&self->super.super.super.isa + v4) = v5;

  type metadata accessor for AirTagMapViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)loadView
{
  v2 = self;
  sub_1000161D4();
}

- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_10001656C(v5);

  swift_unknownObjectRelease();

  return v7;
}

@end