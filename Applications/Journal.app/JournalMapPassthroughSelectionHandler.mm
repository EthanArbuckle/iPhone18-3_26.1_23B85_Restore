@interface JournalMapPassthroughSelectionHandler
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (_TtC7Journal37JournalMapPassthroughSelectionHandler)init;
- (id)selectedGeotaggablesForRenderable:(id)renderable mapView:(id)view;
- (void)setPipelineComponentProvider:(id)provider;
@end

@implementation JournalMapPassthroughSelectionHandler

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPipelineComponentProvider:(id)provider
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal37JournalMapPassthroughSelectionHandler_pipelineComponentProvider) = provider;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (id)selectedGeotaggablesForRenderable:(id)renderable mapView:(id)view
{
  geotaggables = [renderable geotaggables];

  return geotaggables;
}

- (_TtC7Journal37JournalMapPassthroughSelectionHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal37JournalMapPassthroughSelectionHandler_pipelineComponentProvider) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for JournalMapPassthroughSelectionHandler();
  return [(JournalMapPassthroughSelectionHandler *)&v3 init];
}

@end