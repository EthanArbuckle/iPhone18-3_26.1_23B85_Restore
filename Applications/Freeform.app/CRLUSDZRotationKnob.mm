@interface CRLUSDZRotationKnob
- (CRLImage)knobImage;
- (_TtC8Freeform19CRLUSDZRotationKnob)initWithType:(unint64_t)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep;
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
  selfCopy = self;
  v3 = sub_101001DE0();

  return v3;
}

- (void)updateHitRegionPath
{
  selfCopy = self;
  [(CRLCanvasKnob *)selfCopy radius];
  v3 = -v2;
  [(CRLCanvasKnob *)selfCopy radius];
  v5 = -v4;
  [(CRLCanvasKnob *)selfCopy radius];
  v7 = v6 + v6;
  [(CRLCanvasKnob *)selfCopy radius];
  v9 = [objc_opt_self() bezierPathWithOvalInRect:{v3, v5, v7, v8 + v8}];
  [(CRLCanvasKnob *)selfCopy setHitRegionPath:v9];
}

- (_TtC8Freeform19CRLUSDZRotationKnob)initWithType:(unint64_t)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end