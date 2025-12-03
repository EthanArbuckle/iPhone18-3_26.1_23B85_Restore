@interface CRLGradientFillKnobTracker
- (id)shapeLayout;
- (void)beginMovingKnob;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)position;
@end

@implementation CRLGradientFillKnobTracker

- (id)shapeLayout
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v2 layout];

  return layout;
}

- (void)beginMovingKnob
{
  selfCopy = self;
  v24.receiver = self;
  v24.super_class = CRLGradientFillKnobTracker;
  [(CRLCanvasKnobTracker *)&v24 beginMovingKnob];
  v3 = objc_opt_class();
  shapeLayout = [(CRLGradientFillKnobTracker *)selfCopy shapeLayout];
  fill = [shapeLayout fill];
  v6 = sub_100014370(v3, fill);

  shapeLayout2 = [(CRLGradientFillKnobTracker *)selfCopy shapeLayout];
  [shapeLayout2 boundsForStandardKnobs];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  shapeLayout3 = [(CRLGradientFillKnobTracker *)selfCopy shapeLayout];
  path = [shapeLayout3 path];

  v18 = [(CRLTransformGradientFill *)[CRLMutableTransformGradientFill alloc] initWithGradient:v6 inPath:path andBounds:v9, v11, v13, v15];
  shapeLayout4 = [(CRLGradientFillKnobTracker *)selfCopy shapeLayout];
  [shapeLayout4 setDynamicFill:v18];

  [v6 startPointForPath:path andBounds:{v9, v11, v13, v15}];
  selfCopy->mOriginalStartPoint.x = v20;
  selfCopy->mOriginalStartPoint.y = v21;
  selfCopy = (selfCopy + 96);
  [v6 endPointForPath:path andBounds:{v9, v11, v13, v15}];
  selfCopy->super.super.isa = v22;
  selfCopy->super._rep = v23;
}

- (void)moveKnobToRepPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v6 = objc_opt_class();
  shapeLayout = [(CRLGradientFillKnobTracker *)self shapeLayout];
  dynamicFill = [shapeLayout dynamicFill];
  v9 = sub_100014370(v6, dynamicFill);

  knob = [(CRLCanvasKnobTracker *)self knob];
  if ([knob tag] == 25)
  {
    v11 = 1;
  }

  else
  {
    knob2 = [(CRLCanvasKnobTracker *)self knob];
    v11 = [knob2 tag] == 26;
  }

  shapeLayout2 = [(CRLGradientFillKnobTracker *)self shapeLayout];
  [shapeLayout2 boundsForStandardKnobs];
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
  interactiveCanvasController = [v3 interactiveCanvasController];

  commandController = [interactiveCanvasController commandController];
  v6 = [(CRLCanvasKnobTracker *)self rep];
  info = [v6 info];

  v8 = [_TtC8Freeform17CRLCommandSetFill alloc];
  shapeLayout = [(CRLGradientFillKnobTracker *)self shapeLayout];
  dynamicFill = [shapeLayout dynamicFill];
  v11 = [(CRLCommandSetFill *)v8 initWithShapeItem:info fill:dynamicFill];

  [commandController enqueueCommand:v11];
  shapeLayout2 = [(CRLGradientFillKnobTracker *)self shapeLayout];
  [shapeLayout2 setDynamicFill:0];
}

@end