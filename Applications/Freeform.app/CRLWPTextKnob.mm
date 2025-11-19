@interface CRLWPTextKnob
- (CRLWPTextKnob)initWithType:(unint64_t)a3 position:(CGPoint)a4 radius:(double)a5 tag:(unint64_t)a6 onRep:(id)a7;
- (id)createKnobRenderable;
@end

@implementation CRLWPTextKnob

- (CRLWPTextKnob)initWithType:(unint64_t)a3 position:(CGPoint)a4 radius:(double)a5 tag:(unint64_t)a6 onRep:(id)a7
{
  v10.receiver = self;
  v10.super_class = CRLWPTextKnob;
  v7 = [(CRLCanvasKnob *)&v10 initWithType:a3 position:a6 radius:a7 tag:a4.x onRep:a4.y, a5];
  v8 = v7;
  if (v7)
  {
    [(CRLCanvasKnob *)v7 setWorksWhenEditingDisabled:1];
  }

  return v8;
}

- (id)createKnobRenderable
{
  v4.receiver = self;
  v4.super_class = CRLWPTextKnob;
  v2 = [(CRLCanvasKnob *)&v4 createKnobRenderable];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isRedesignedTextCursorEnabled])
  {
    [v2 setOpacity:0.0];
  }

  return v2;
}

@end