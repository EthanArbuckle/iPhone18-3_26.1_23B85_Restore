@interface EntryMapPinRenderer
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (UIEdgeInsets)minimumEdgeInsets;
- (_TtC7Journal19EntryMapPinRenderer)init;
- (id)annotationForGeotaggables:(id)a3 initialCoordinate:(CLLocationCoordinate2D)a4;
- (id)selectedGeotaggablesForRenderable:(id)a3 mapView:(id)a4;
- (id)viewForAnnotation:(id)a3 andMapView:(id)a4;
- (void)imageForGeotaggable:(PXPlacesGeotaggable *)a3 ofSize:(CGSize)a4 networkAccessAllowed:(BOOL)a5 andCompletion:(id)a6;
- (void)setPipelineComponentProvider:(id)a3;
@end

@implementation EntryMapPinRenderer

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPipelineComponentProvider:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_pipelineComponentProvider) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (_TtC7Journal19EntryMapPinRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  v9 = sub_1005628FC(a3, v7);
  swift_unknownObjectRelease();

  return v9;
}

- (id)annotationForGeotaggables:(id)a3 initialCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3;
  v8 = self;
  v9 = sub_100562A2C(v7, latitude, longitude);

  return v9;
}

- (id)selectedGeotaggablesForRenderable:(id)a3 mapView:(id)a4
{
  v4 = [a3 geotaggables];

  return v4;
}

- (void)imageForGeotaggable:(PXPlacesGeotaggable *)a3 ofSize:(CGSize)a4 networkAccessAllowed:(BOOL)a5 andCompletion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = width;
  *(v16 + 32) = height;
  *(v16 + 40) = a5;
  *(v16 + 48) = v15;
  *(v16 + 56) = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10095DB10;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1009439C0;
  v19[5] = v18;
  swift_unknownObjectRetain();
  v20 = self;
  sub_100564F58(0, 0, v14, &unk_10095DB30, v19);
}

@end