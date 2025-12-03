@interface CRLUSDZPlayPauseKnob
- (CRLImage)knobImage;
- (_TtC8Freeform20CRLUSDZPlayPauseKnob)initWithType:(unint64_t)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep;
- (id)createKnobRenderable;
- (void)setIsPlaying:(BOOL)playing;
- (void)updateHitRegionPath;
@end

@implementation CRLUSDZPlayPauseKnob

- (void)setIsPlaying:(BOOL)playing
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying);
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) = playing;
  if (v4 != playing)
  {
    selfCopy = self;
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

- (id)createKnobRenderable
{
  selfCopy = self;
  v3 = sub_10072A280();

  return v3;
}

- (_TtC8Freeform20CRLUSDZPlayPauseKnob)initWithType:(unint64_t)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end