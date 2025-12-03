@interface CRLWPTextKnob
- (CRLWPTextKnob)initWithType:(unint64_t)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep;
- (id)createKnobRenderable;
@end

@implementation CRLWPTextKnob

- (CRLWPTextKnob)initWithType:(unint64_t)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep
{
  v10.receiver = self;
  v10.super_class = CRLWPTextKnob;
  radius = [(CRLCanvasKnob *)&v10 initWithType:type position:tag radius:rep tag:position.x onRep:position.y, radius];
  v8 = radius;
  if (radius)
  {
    [(CRLCanvasKnob *)radius setWorksWhenEditingDisabled:1];
  }

  return v8;
}

- (id)createKnobRenderable
{
  v4.receiver = self;
  v4.super_class = CRLWPTextKnob;
  createKnobRenderable = [(CRLCanvasKnob *)&v4 createKnobRenderable];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isRedesignedTextCursorEnabled])
  {
    [createKnobRenderable setOpacity:0.0];
  }

  return createKnobRenderable;
}

@end