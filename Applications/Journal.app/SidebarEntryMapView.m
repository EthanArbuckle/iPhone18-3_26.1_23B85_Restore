@interface SidebarEntryMapView
- (_TtC7Journal19SidebarEntryMapView)initWithCoder:(id)a3;
- (void)mapController:(id)a3 didFinishExecutingPipelines:(id)a4;
- (void)mapController:(id)a3 didStartExecutingPipelines:(id)a4;
- (void)mapRegionDidChange:(id)a3;
- (void)mapViewDidFinishRendering:(id)a3;
- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4;
@end

@implementation SidebarEntryMapView

- (_TtC7Journal19SidebarEntryMapView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7Journal19SidebarEntryMapView_mapController;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(PXPlacesMapController) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal19SidebarEntryMapView_pinPipeline) = 0;
  *&self->mapController[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_loadingDelegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal19SidebarEntryMapView_mapNeedsUpdate) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)mapRegionDidChange:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_100265378();
    swift_unknownObjectRelease();
  }
}

- (void)mapViewDidFinishRendering:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = type metadata accessor for EntryMapViewRepresentable.Coordinator(0);
    v5 = self;
    sub_100266238(v4, &off_100A62798);
    swift_unknownObjectRelease();
  }
}

- (void)mapController:(id)a3 didStartExecutingPipelines:(id)a4
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = type metadata accessor for EntryMapViewRepresentable.Coordinator(0);
    v6 = self;
    sub_1002661E0(v5, &off_100A62798);
    swift_unknownObjectRelease();
  }
}

- (void)mapController:(id)a3 didFinishExecutingPipelines:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_1003C8294();
}

- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1003C832C(a4);
}

@end