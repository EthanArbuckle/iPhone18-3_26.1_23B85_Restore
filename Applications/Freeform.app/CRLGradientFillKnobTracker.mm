@interface CRLGradientFillKnobTracker
- (id)shapeLayout;
- (void)beginMovingKnob;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)a3;
@end

@implementation CRLGradientFillKnobTracker

- (id)shapeLayout
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  v3 = [v2 layout];

  return v3;
}

- (void)beginMovingKnob
{
  v2 = self;
  v24.receiver = self;
  v24.super_class = CRLGradientFillKnobTracker;
  [(CRLCanvasKnobTracker *)&v24 beginMovingKnob];
  v3 = objc_opt_class();
  v4 = [(CRLGradientFillKnobTracker *)v2 shapeLayout];
  v5 = [v4 fill];
  v6 = sub_100014370(v3, v5);

  v7 = [(CRLGradientFillKnobTracker *)v2 shapeLayout];
  [v7 boundsForStandardKnobs];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(CRLGradientFillKnobTracker *)v2 shapeLayout];
  v17 = [v16 path];

  v18 = [(CRLTransformGradientFill *)[CRLMutableTransformGradientFill alloc] initWithGradient:v6 inPath:v17 andBounds:v9, v11, v13, v15];
  v19 = [(CRLGradientFillKnobTracker *)v2 shapeLayout];
  [v19 setDynamicFill:v18];

  [v6 startPointForPath:v17 andBounds:{v9, v11, v13, v15}];
  v2->mOriginalStartPoint.x = v20;
  v2->mOriginalStartPoint.y = v21;
  v2 = (v2 + 96);
  [v6 endPointForPath:v17 andBounds:{v9, v11, v13, v15}];
  v2->super.super.isa = v22;
  v2->super._rep = v23;
}

- (void)moveKnobToRepPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_opt_class();
  v7 = [(CRLGradientFillKnobTracker *)self shapeLayout];
  v8 = [v7 dynamicFill];
  v9 = sub_100014370(v6, v8);

  v10 = [(CRLCanvasKnobTracker *)self knob];
  if ([v10 tag] == 25)
  {
    v11 = 1;
  }

  else
  {
    v12 = [(CRLCanvasKnobTracker *)self knob];
    v11 = [v12 tag] == 26;
  }

  v13 = [(CRLGradientFillKnobTracker *)self shapeLayout];
  [v13 boundsForStandardKnobs];
  v15 = sub_10011F31C(x, y, v14);
  v17 = v16;

  if ([v9 gradientType])
  {
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = &OBJC_IVAR___CRLGradientFillKnobTracker_mOriginalStartPoint;
    if (v11)
    {
      v18 = &OBJC_IVAR___CRLGradientFillKnobTracker_mOriginalEndPoint;
    }

    v19 = (self + *v18);
    v21 = *v19;
    v20 = v19[1];
    v22 = [(CRLCanvasKnobTracker *)self rep];
    [v22 boundsForStandardKnobs];
    if (!v11)
    {
      [v9 setStartPoint:v21 inShapeWithNaturalSize:v20];

LABEL_13:
      v23 = [(CRLCanvasKnobTracker *)self rep];
      [v23 boundsForStandardKnobs];
      [v9 setEndPoint:v15 inShapeWithNaturalSize:v17];
      goto LABEL_14;
    }

    [v9 setEndPoint:v21 inShapeWithNaturalSize:v20];
  }

  v23 = [(CRLCanvasKnobTracker *)self rep];
  [v23 boundsForStandardKnobs];
  [v9 setStartPoint:v15 inShapeWithNaturalSize:v17];
LABEL_14:

  v24 = [(CRLCanvasKnobTracker *)self rep];
  [v24 invalidateKnobPositions];

  v25 = [(CRLCanvasKnobTracker *)self rep];
  [v25 setNeedsDisplay];

  v26.receiver = self;
  v26.super_class = CRLGradientFillKnobTracker;
  [(CRLCanvasKnobTracker *)&v26 moveKnobToRepPosition:v15, v17];
}

- (void)endMovingKnob
{
  v13.receiver = self;
  v13.super_class = CRLGradientFillKnobTracker;
  [(CRLCanvasKnobTracker *)&v13 endMovingKnob];
  v3 = [(CRLCanvasKnobTracker *)self rep];
  v4 = [v3 interactiveCanvasController];

  v5 = [v4 commandController];
  v6 = [(CRLCanvasKnobTracker *)self rep];
  v7 = [v6 info];

  v8 = [_TtC8Freeform17CRLCommandSetFill alloc];
  v9 = [(CRLGradientFillKnobTracker *)self shapeLayout];
  v10 = [v9 dynamicFill];
  v11 = [(CRLCommandSetFill *)v8 initWithShapeItem:v7 fill:v10];

  [v5 enqueueCommand:v11];
  v12 = [(CRLGradientFillKnobTracker *)self shapeLayout];
  [v12 setDynamicFill:0];
}

@end