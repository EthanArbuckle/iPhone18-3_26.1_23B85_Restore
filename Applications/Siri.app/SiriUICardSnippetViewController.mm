@interface SiriUICardSnippetViewController
- (void)emitInstrumentationEvent:(id)a3;
- (void)emitInstrumentationEvent:(id)a3 viewId:(id)a4;
- (void)informHostOfBackgroundColor:(id)a3;
- (void)informHostOfBackgroundMaterial:(int64_t)a3;
@end

@implementation SiriUICardSnippetViewController

- (void)emitInstrumentationEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  SiriUICardSnippetViewController.emitInstrumentationEvent(_:)(v4);
}

- (void)emitInstrumentationEvent:(id)a3 viewId:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  SiriUICardSnippetViewController.emitInstrumentationEvent(_:viewId:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)informHostOfBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  SiriUICardSnippetViewController.informHostOfBackgroundColor(_:)(v9);
}

- (void)informHostOfBackgroundMaterial:(int64_t)a3
{
  v4 = self;
  SiriUICardSnippetViewController.informHostOfBackgroundMaterial(_:)(a3);
}

@end