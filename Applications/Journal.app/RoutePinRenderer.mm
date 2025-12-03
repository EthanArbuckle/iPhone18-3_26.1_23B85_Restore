@interface RoutePinRenderer
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (UIEdgeInsets)minimumEdgeInsets;
- (_TtC7Journal16RoutePinRenderer)init;
- (id)annotationForGeotaggables:(id)geotaggables initialCoordinate:(CLLocationCoordinate2D)coordinate;
- (id)selectedGeotaggablesForRenderable:(id)renderable mapView:(id)view;
- (id)viewForAnnotation:(id)annotation andMapView:(id)view;
- (void)setPipelineComponentProvider:(id)provider;
@end

@implementation RoutePinRenderer

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPipelineComponentProvider:(id)provider
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal16RoutePinRenderer_pipelineComponentProvider) = provider;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (_TtC7Journal16RoutePinRenderer)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal16RoutePinRenderer_pipelineComponentProvider) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RoutePinRenderer();
  return [(RoutePinRenderer *)&v3 init];
}

- (UIEdgeInsets)minimumEdgeInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)viewForAnnotation:(id)annotation andMapView:(id)view
{
  swift_unknownObjectRetain();
  viewCopy = view;
  selfCopy = self;
  v9 = sub_1001251C0(annotation, viewCopy);
  swift_unknownObjectRelease();

  return v9;
}

- (id)annotationForGeotaggables:(id)geotaggables initialCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  geotaggablesCopy = geotaggables;
  selfCopy = self;
  v9 = sub_100124FB4(geotaggablesCopy, latitude, longitude);

  return v9;
}

- (id)selectedGeotaggablesForRenderable:(id)renderable mapView:(id)view
{
  geotaggables = [renderable geotaggables];

  return geotaggables;
}

@end