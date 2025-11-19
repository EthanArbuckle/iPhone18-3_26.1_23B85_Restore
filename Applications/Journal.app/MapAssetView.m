@interface MapAssetView
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)layoutSubviews;
- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapViewDidFailLoadingMap:(id)a3 withError:(id)a4;
- (void)userInterfaceStyleChanged;
- (void)zoomReset:(id)a3;
@end

@implementation MapAssetView

- (void)layoutSubviews
{
  v2 = self;
  sub_100077964();
}

- (void)userInterfaceStyleChanged
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView);
  v3 = self;
  [v2 setImage:0];
  *(&v3->super.super.super.super.isa + OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad) = 1;
  [(MapAssetView *)v3 setNeedsLayout];
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_10022102C(v6, a4);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v7 = self + OBJC_IVAR____TtC7Journal12MapAssetView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v10(v11, v12, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4
{
  v7 = self + OBJC_IVAR____TtC7Journal12MapAssetView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v10(v11, v12, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (void)mapViewDidFailLoadingMap:(id)a3 withError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100092524();
}

- (void)zoomReset:(id)a3
{
  v3 = self;
  sub_100220B68();
}

@end