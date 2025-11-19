@interface CRLSurfaceRep
- (_TtC8Freeform13CRLSurfaceRep)initWithLayout:(id)a3 canvas:(id)a4;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation CRLSurfaceRep

- (_TtC8Freeform13CRLSurfaceRep)initWithLayout:(id)a3 canvas:(id)a4
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLSurfaceRep_cleanupItems) = _swiftEmptyArrayStorage;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLSurfaceRep_shouldUpdateObservers) = 1;
  v7 = OBJC_IVAR____TtC8Freeform13CRLSurfaceRep_snapshotInvalid;
  sub_1005B981C(&qword_101A14A90);
  swift_allocObject();
  v8 = a3;
  v9 = a4;
  *(&self->super.super.isa + v7) = PassthroughSubject.init()();
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLSurfaceRep_cancellables) = _swiftEmptySetSingleton;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CRLSurfaceRep();
  v10 = [(CRLCanvasRep *)&v12 initWithLayout:v8 canvas:v9];

  return v10;
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  sub_100BDBD50(v4);
}

@end