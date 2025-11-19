@interface LocationPinRenderer
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (UIEdgeInsets)minimumEdgeInsets;
- (_TtC7Journal19LocationPinRenderer)init;
- (id)annotationForGeotaggables:(id)a3 initialCoordinate:(CLLocationCoordinate2D)a4;
- (id)selectedGeotaggablesForRenderable:(id)a3 mapView:(id)a4;
- (id)viewForAnnotation:(id)a3 andMapView:(id)a4;
- (void)setPipelineComponentProvider:(id)a3;
@end

@implementation LocationPinRenderer

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPipelineComponentProvider:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal19LocationPinRenderer_pipelineComponentProvider) = a3;
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

- (id)viewForAnnotation:(id)a3 andMapView:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  v9 = sub_100468B90(a3, v7);
  swift_unknownObjectRelease();

  return v9;
}

- (id)annotationForGeotaggables:(id)a3 initialCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3;
  v8 = self;
  v9 = sub_100468D24(v7, latitude, longitude);

  return v9;
}

- (id)selectedGeotaggablesForRenderable:(id)a3 mapView:(id)a4
{
  v4 = [a3 geotaggables];

  return v4;
}

@end