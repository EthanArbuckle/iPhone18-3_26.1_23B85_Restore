@interface CRLCanvasBackground
- (CGPoint)canvasCenterInCanvasBackgroundLayer:(id)layer;
- (CGPoint)contentOffsetForCanvasBackgroundLayer:(id)layer;
- (CGPoint)originOffsetForCanvasBackgroundLayer:(id)layer;
- (CRLInteractiveCanvasController)icc;
- (Class)layerClass;
- (Class)viewClass;
- (_TtC8Freeform19CRLCanvasBackground)init;
- (_TtC8Freeform19CRLCanvasBackground)initWithICC:(id)c;
- (double)contentsScaleForCanvasBackgroundLayer:(id)layer;
@end

@implementation CRLCanvasBackground

- (CRLInteractiveCanvasController)icc
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC8Freeform19CRLCanvasBackground)initWithICC:(id)c
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

- (double)contentsScaleForCanvasBackgroundLayer:(id)layer
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1.0;
  }

  v5 = Strong;
  selfCopy = self;
  canvas = [v5 canvas];
  [canvas contentsScale];
  v9 = v8;

  return v9;
}

- (CGPoint)canvasCenterInCanvasBackgroundLayer:(id)layer
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)originOffsetForCanvasBackgroundLayer:(id)layer
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)contentOffsetForCanvasBackgroundLayer:(id)layer
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