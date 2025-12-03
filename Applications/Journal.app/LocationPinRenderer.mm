@interface LocationPinRenderer
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (UIEdgeInsets)minimumEdgeInsets;
- (_TtC7Journal19LocationPinRenderer)init;
- (id)annotationForGeotaggables:(id)geotaggables initialCoordinate:(CLLocationCoordinate2D)coordinate;
- (id)selectedGeotaggablesForRenderable:(id)renderable mapView:(id)view;
- (id)viewForAnnotation:(id)annotation andMapView:(id)view;
- (void)setPipelineComponentProvider:(id)provider;
@end

@implementation LocationPinRenderer

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPipelineComponentProvider:(id)provider
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal19LocationPinRenderer_pipelineComponentProvider) = provider;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (_TtC7Journal19LocationPinRenderer)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal19LocationPinRenderer_pipelineComponentProvider) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7Journal19LocationPinRenderer_allowsClustering) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocationPinRenderer();
  return [(LocationPinRenderer *)&v3 init];
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
  v9 = sub_100468B90(annotation, viewCopy);
  swift_unknownObjectRelease();

  return v9;
}

- (id)annotationForGeotaggables:(id)geotaggables initialCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  geotaggablesCopy = geotaggables;
  selfCopy = self;
  v9 = sub_100468D24(geotaggablesCopy, latitude, longitude);

  return v9;
}

- (id)selectedGeotaggablesForRenderable:(id)renderable mapView:(id)view
{
  geotaggables = [renderable geotaggables];

  return geotaggables;
}

@end