@interface CRLSceneRep
- (_TtC8Freeform11CRLSceneRep)initWithLayout:(id)layout canvas:(id)canvas;
- (void)willUpdateRenderable:(id)renderable;
@end

@implementation CRLSceneRep

- (void)willUpdateRenderable:(id)renderable
{
  renderableCopy = renderable;
  selfCopy = self;
  sub_10098F8FC(renderable);
}

- (_TtC8Freeform11CRLSceneRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLSceneRep();
  return [(CRLCanvasRep *)&v7 initWithLayout:layout canvas:canvas];
}

@end