@interface TiledDocumentView
- (id)attachments;
- (id)initInScrollView:(id)a3 sixChannelBlending:(BOOL)a4 defaultDrawingClass:(Class)a5 readOnly:(BOOL)a6;
- (void)_canvasView:(id)a3 didCompleteRefinementEntry:(id)a4;
- (void)didMoveToWindow;
@end

@implementation TiledDocumentView

- (void)didMoveToWindow
{
  v2 = self;
  TiledDocumentView.didMoveToWindow()();
}

- (id)attachments
{
  swift_beginAccess();
  v3 = self;

  v5 = specialized Sequence.flatMap<A>(_:)(v4);

  specialized _arrayForceCast<A, B>(_:)(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12PKAttachment_pMd);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)_canvasView:(id)a3 didCompleteRefinementEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized TiledDocumentView._canvasView(_:didCompleteRefinementEntry:)(v7);
}

- (id)initInScrollView:(id)a3 sixChannelBlending:(BOOL)a4 defaultDrawingClass:(Class)a5 readOnly:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end