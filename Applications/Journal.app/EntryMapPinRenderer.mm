@interface EntryMapPinRenderer
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (UIEdgeInsets)minimumEdgeInsets;
- (_TtC7Journal19EntryMapPinRenderer)init;
- (id)annotationForGeotaggables:(id)geotaggables initialCoordinate:(CLLocationCoordinate2D)coordinate;
- (id)selectedGeotaggablesForRenderable:(id)renderable mapView:(id)view;
- (id)viewForAnnotation:(id)annotation andMapView:(id)view;
- (void)imageForGeotaggable:(PXPlacesGeotaggable *)geotaggable ofSize:(CGSize)size networkAccessAllowed:(BOOL)allowed andCompletion:(id)completion;
- (void)setPipelineComponentProvider:(id)provider;
@end

@implementation EntryMapPinRenderer

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPipelineComponentProvider:(id)provider
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_pipelineComponentProvider) = provider;
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

- (id)viewForAnnotation:(id)annotation andMapView:(id)view
{
  swift_unknownObjectRetain();
  viewCopy = view;
  selfCopy = self;
  v9 = sub_1005628FC(annotation, viewCopy);
  swift_unknownObjectRelease();

  return v9;
}

- (id)annotationForGeotaggables:(id)geotaggables initialCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  geotaggablesCopy = geotaggables;
  selfCopy = self;
  v9 = sub_100562A2C(geotaggablesCopy, latitude, longitude);

  return v9;
}

- (id)selectedGeotaggablesForRenderable:(id)renderable mapView:(id)view
{
  geotaggables = [renderable geotaggables];

  return geotaggables;
}

- (void)imageForGeotaggable:(PXPlacesGeotaggable *)geotaggable ofSize:(CGSize)size networkAccessAllowed:(BOOL)allowed andCompletion:(id)completion
{
  height = size.height;
  width = size.width;
  v12 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = geotaggable;
  *(v16 + 24) = width;
  *(v16 + 32) = height;
  *(v16 + 40) = allowed;
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
  selfCopy = self;
  sub_100564F58(0, 0, v14, &unk_10095DB30, v19);
}

@end