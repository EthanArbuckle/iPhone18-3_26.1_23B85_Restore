@interface TiledDocumentView
- (id)attachments;
- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class readOnly:(BOOL)only;
- (void)_canvasView:(id)view didCompleteRefinementEntry:(id)entry;
- (void)didMoveToWindow;
@end

@implementation TiledDocumentView

- (void)didMoveToWindow
{
  selfCopy = self;
  TiledDocumentView.didMoveToWindow()();
}

- (id)attachments
{
  swift_beginAccess();
  selfCopy = self;

  v5 = specialized Sequence.flatMap<A>(_:)(v4);

  specialized _arrayForceCast<A, B>(_:)(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12PKAttachment_pMd);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)_canvasView:(id)view didCompleteRefinementEntry:(id)entry
{
  viewCopy = view;
  entryCopy = entry;
  selfCopy = self;
  specialized TiledDocumentView._canvasView(_:didCompleteRefinementEntry:)(entryCopy);
}

- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class readOnly:(BOOL)only
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end