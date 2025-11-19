@interface CRLUSDZPlayPauseKnob
- (CRLImage)knobImage;
- (_TtC8Freeform20CRLUSDZPlayPauseKnob)initWithType:(unint64_t)a3 position:(CGPoint)a4 radius:(double)a5 tag:(unint64_t)a6 onRep:(id)a7;
- (id)createKnobRenderable;
- (void)setIsPlaying:(BOOL)a3;
- (void)updateHitRegionPath;
@end

@implementation CRLUSDZPlayPauseKnob

- (void)setIsPlaying:(BOOL)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying);
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_10072A460();
  }
}

- (CRLImage)knobImage
{
  v2 = sub_10072AB00();

  return v2;
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

- (id)createKnobRenderable
{
  v2 = self;
  v3 = sub_10072A280();

  return v3;
}

- (_TtC8Freeform20CRLUSDZPlayPauseKnob)initWithType:(unint64_t)a3 position:(CGPoint)a4 radius:(double)a5 tag:(unint64_t)a6 onRep:(id)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end