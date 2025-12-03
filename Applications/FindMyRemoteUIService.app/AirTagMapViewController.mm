@interface AirTagMapViewController
- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithCoder:(id)coder;
- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)loadView;
@end

@implementation AirTagMapViewController

- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1000161D4();
}

- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_10001656C(viewCopy);

  swift_unknownObjectRelease();

  return v7;
}

@end