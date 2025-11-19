@interface CRLCanvasBackground
- (CGPoint)canvasCenterInCanvasBackgroundLayer:(id)a3;
- (CGPoint)contentOffsetForCanvasBackgroundLayer:(id)a3;
- (CGPoint)originOffsetForCanvasBackgroundLayer:(id)a3;
- (CRLInteractiveCanvasController)icc;
- (Class)layerClass;
- (Class)viewClass;
- (_TtC8Freeform19CRLCanvasBackground)init;
- (_TtC8Freeform19CRLCanvasBackground)initWithICC:(id)a3;
- (double)contentsScaleForCanvasBackgroundLayer:(id)a3;
@end

@implementation CRLCanvasBackground

- (CRLInteractiveCanvasController)icc
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC8Freeform19CRLCanvasBackground)initWithICC:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLCanvasBackground();
  return [(CRLCanvasBackground *)&v5 init];
}

- (Class)layerClass
{
  type metadata accessor for CRLCanvasBackgroundLayer();

  return swift_getObjCClassFromMetadata();
}

- (Class)viewClass
{
  type metadata accessor for CRLCanvasBackgroundView();

  return swift_getObjCClassFromMetadata();
}

- (double)contentsScaleForCanvasBackgroundLayer:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1.0;
  }

  v5 = Strong;
  v6 = self;
  v7 = [v5 canvas];
  [v7 contentsScale];
  v9 = v8;

  return v9;
}

- (CGPoint)canvasCenterInCanvasBackgroundLayer:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)originOffsetForCanvasBackgroundLayer:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)contentOffsetForCanvasBackgroundLayer:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (_TtC8Freeform19CRLCanvasBackground)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end