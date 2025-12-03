@interface B389MapViewController
- (_TtC18SharingViewService21B389MapViewController)initWithCoder:(id)coder;
- (_TtC18SharingViewService21B389MapViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewTapped:(id)tapped;
@end

@implementation B389MapViewController

- (_TtC18SharingViewService21B389MapViewController)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC18SharingViewService21B389MapViewController_tapHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MKMapView) init];
  sub_100025EF4(*v4, v4[1]);

  type metadata accessor for B389MapViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)loadView
{
  selfCopy = self;
  sub_1000AB3C0();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for B389MapViewController();
  v4 = v7.receiver;
  [(B389MapViewController *)&v7 viewDidAppear:appearCopy];
  v5 = OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapView;
  v6 = OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapAnnotation;
  [*&v4[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapView] addAnnotation:{*&v4[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapAnnotation], v7.receiver, v7.super_class}];
  [*&v4[v5] selectAnnotation:*&v4[v6] animated:appearCopy];
}

- (void)viewTapped:(id)tapped
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18SharingViewService21B389MapViewController_tapHandler);
  if (v3)
  {
    v5 = *&self->mapAnnotation[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_tapHandler];
    tappedCopy = tapped;
    selfCopy = self;
    sub_100024138(v3);
    v3(tapped);

    sub_100025EF4(v3, v5);
  }
}

- (_TtC18SharingViewService21B389MapViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v7 = sub_1000AB854(viewCopy);

  swift_unknownObjectRelease();

  return v7;
}

@end