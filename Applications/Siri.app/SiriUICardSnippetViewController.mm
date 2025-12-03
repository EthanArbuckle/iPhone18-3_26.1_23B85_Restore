@interface SiriUICardSnippetViewController
- (void)emitInstrumentationEvent:(id)event;
- (void)emitInstrumentationEvent:(id)event viewId:(id)id;
- (void)informHostOfBackgroundColor:(id)color;
- (void)informHostOfBackgroundMaterial:(int64_t)material;
@end

@implementation SiriUICardSnippetViewController

- (void)emitInstrumentationEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  SiriUICardSnippetViewController.emitInstrumentationEvent(_:)(eventCopy);
}

- (void)emitInstrumentationEvent:(id)event viewId:(id)id
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  SiriUICardSnippetViewController.emitInstrumentationEvent(_:viewId:)(eventCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)informHostOfBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = color;
  SiriUICardSnippetViewController.informHostOfBackgroundColor(_:)(v9);
}

- (void)informHostOfBackgroundMaterial:(int64_t)material
{
  selfCopy = self;
  SiriUICardSnippetViewController.informHostOfBackgroundMaterial(_:)(material);
}

@end