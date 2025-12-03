@interface CRLSurfaceRep
- (_TtC8Freeform13CRLSurfaceRep)initWithLayout:(id)layout canvas:(id)canvas;
- (void)drawInContext:(CGContext *)context;
@end

@implementation CRLSurfaceRep

- (_TtC8Freeform13CRLSurfaceRep)initWithLayout:(id)layout canvas:(id)canvas
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLSurfaceRep_cleanupItems) = _swiftEmptyArrayStorage;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLSurfaceRep_shouldUpdateObservers) = 1;
  v7 = OBJC_IVAR____TtC8Freeform13CRLSurfaceRep_snapshotInvalid;
  sub_1005B981C(&qword_101A14A90);
  swift_allocObject();
  layoutCopy = layout;
  canvasCopy = canvas;
  *(&self->super.super.isa + v7) = PassthroughSubject.init()();
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLSurfaceRep_cancellables) = _swiftEmptySetSingleton;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CRLSurfaceRep();
  v10 = [(CRLCanvasRep *)&v12 initWithLayout:layoutCopy canvas:canvasCopy];

  return v10;
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_100BDBD50(contextCopy);
}

@end