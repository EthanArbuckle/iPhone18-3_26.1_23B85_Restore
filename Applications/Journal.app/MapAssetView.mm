@interface MapAssetView
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)layoutSubviews;
- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapViewDidFailLoadingMap:(id)map withError:(id)error;
- (void)userInterfaceStyleChanged;
- (void)zoomReset:(id)reset;
@end

@implementation MapAssetView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100077964();
}

- (void)userInterfaceStyleChanged
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView);
  selfCopy = self;
  [v2 setImage:0];
  *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad) = 1;
  [(MapAssetView *)selfCopy setNeedsLayout];
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_10022102C(viewCopy, annotation);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  v7 = self + OBJC_IVAR____TtC7Journal12MapAssetView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    viewCopy = view;
    annotationViewCopy = annotationView;
    selfCopy = self;
    v10(viewCopy, annotationViewCopy, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView
{
  v7 = self + OBJC_IVAR____TtC7Journal12MapAssetView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    viewCopy = view;
    annotationViewCopy = annotationView;
    selfCopy = self;
    v10(viewCopy, annotationViewCopy, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (void)mapViewDidFailLoadingMap:(id)map withError:(id)error
{
  mapCopy = map;
  errorCopy = error;
  selfCopy = self;
  sub_100092524();
}

- (void)zoomReset:(id)reset
{
  selfCopy = self;
  sub_100220B68();
}

@end