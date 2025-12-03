@interface SidebarEntryMapView
- (_TtC7Journal19SidebarEntryMapView)initWithCoder:(id)coder;
- (void)mapController:(id)controller didFinishExecutingPipelines:(id)pipelines;
- (void)mapController:(id)controller didStartExecutingPipelines:(id)pipelines;
- (void)mapRegionDidChange:(id)change;
- (void)mapViewDidFinishRendering:(id)rendering;
- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered;
@end

@implementation SidebarEntryMapView

- (_TtC7Journal19SidebarEntryMapView)initWithCoder:(id)coder
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

- (void)mapRegionDidChange:(id)change
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_100265378();
    swift_unknownObjectRelease();
  }
}

- (void)mapViewDidFinishRendering:(id)rendering
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = type metadata accessor for EntryMapViewRepresentable.Coordinator(0);
    selfCopy = self;
    sub_100266238(v4, &off_100A62798);
    swift_unknownObjectRelease();
  }
}

- (void)mapController:(id)controller didStartExecutingPipelines:(id)pipelines
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = type metadata accessor for EntryMapViewRepresentable.Coordinator(0);
    selfCopy = self;
    sub_1002661E0(v5, &off_100A62798);
    swift_unknownObjectRelease();
  }
}

- (void)mapController:(id)controller didFinishExecutingPipelines:(id)pipelines
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1003C8294();
}

- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered
{
  mapCopy = map;
  selfCopy = self;
  sub_1003C832C(rendered);
}

@end