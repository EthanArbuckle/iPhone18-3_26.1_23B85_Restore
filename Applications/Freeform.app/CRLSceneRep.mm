@interface CRLSceneRep
- (_TtC8Freeform11CRLSceneRep)initWithLayout:(id)a3 canvas:(id)a4;
- (void)willUpdateRenderable:(id)a3;
@end

@implementation CRLSceneRep

- (void)willUpdateRenderable:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10098F8FC(a3);
}

- (_TtC8Freeform11CRLSceneRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLSceneRep();
  return [(CRLCanvasRep *)&v7 initWithLayout:a3 canvas:a4];
}

@end