@interface CRLUSDZRotationKnob
- (CRLImage)knobImage;
- (_TtC8Freeform19CRLUSDZRotationKnob)initWithType:(unint64_t)a3 position:(CGPoint)a4 radius:(double)a5 tag:(unint64_t)a6 onRep:(id)a7;
- (id)createKnobRenderable;
- (void)updateHitRegionPath;
@end

@implementation CRLUSDZRotationKnob

- (CRLImage)knobImage
{
  v2 = sub_10100259C();

  return v2;
}

- (id)createKnobRenderable
{
  v2 = self;
  v3 = sub_101001DE0();

  return v3;
}

- (void)updateHitRegionPath
{
  v10 = self;
  [(CRLCanvasKnob *)v10 radius];
  v3 = -v2;
  [(CRLCanvasKnob *)v10 radius];
  v5 = -v4;
  [(CRLCanvasKnob *)v10 radius];
  v7 = v6 + v6;
  [(CRLCanvasKnob *)v10 radius];
  v9 = [objc_opt_self() bezierPathWithOvalInRect:{v3, v5, v7, v8 + v8}];
  [(CRLCanvasKnob *)v10 setHitRegionPath:v9];
}

- (_TtC8Freeform19CRLUSDZRotationKnob)initWithType:(unint64_t)a3 position:(CGPoint)a4 radius:(double)a5 tag:(unint64_t)a6 onRep:(id)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end