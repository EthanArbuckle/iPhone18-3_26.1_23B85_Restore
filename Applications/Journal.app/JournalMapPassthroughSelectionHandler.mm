@interface JournalMapPassthroughSelectionHandler
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (_TtC7Journal37JournalMapPassthroughSelectionHandler)init;
- (id)selectedGeotaggablesForRenderable:(id)a3 mapView:(id)a4;
- (void)setPipelineComponentProvider:(id)a3;
@end

@implementation JournalMapPassthroughSelectionHandler

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPipelineComponentProvider:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal37JournalMapPassthroughSelectionHandler_pipelineComponentProvider) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (id)selectedGeotaggablesForRenderable:(id)a3 mapView:(id)a4
{
  v4 = [a3 geotaggables];

  return v4;
}

- (_TtC7Journal37JournalMapPassthroughSelectionHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal37JournalMapPassthroughSelectionHandler_pipelineComponentProvider) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for JournalMapPassthroughSelectionHandler();
  return [(JournalMapPassthroughSelectionHandler *)&v3 init];
}

@end