@interface CRLShapeControlKnobTracker
- (CRLShapeControlKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (CRLShapeControlLayout)shapeControlLayout;
- (CRLShapeControlRep)shapeControlRep;
- (NSArray)decoratorOverlayRenderables;
- (void)beginMovingKnob;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)position;
- (void)p_hideGuideRenderable;
- (void)p_hideHUD;
- (void)p_updateGuideRenderable;
- (void)p_updateHUDAtPoint:(CGPoint)point;
@end

@implementation CRLShapeControlKnobTracker

- (CRLShapeControlKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  repCopy = rep;
  knobCopy = knob;
  v21.receiver = self;
  v21.super_class = CRLShapeControlKnobTracker;
  v8 = [(CRLCanvasKnobTracker *)&v21 initWithRep:repCopy knob:knobCopy];
  if (v8)
  {
    if (([repCopy conformsToProtocol:&OBJC_PROTOCOL___CRLShapeControlRep] & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013496BC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013496E4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134976C();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLShapeControlKnobTracker initWithRep:knob:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeControlKnobTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:42 isFatal:0 description:"CRLShapeControlRep only valid for control knob tracker"];
    }

    layout = [repCopy layout];
    v13 = [layout conformsToProtocol:&OBJC_PROTOCOL___CRLShapeControlLayout];

    if ((v13 & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101349794();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013497BC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101349844();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLShapeControlKnobTracker initWithRep:knob:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeControlKnobTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:43 isFatal:0 description:"CRLShapeControlLayout only valid for control knob tracker"];
    }

    if ([knobCopy tag] < 0xC || objc_msgSend(knobCopy, "tag") >= 0x11)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134986C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101349894();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134991C();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      v18 = [NSString stringWithUTF8String:"[CRLShapeControlKnobTracker initWithRep:knob:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeControlKnobTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:44 isFatal:0 description:"wrong knob for control knob tracker"];
    }
  }

  return v8;
}

- (CRLShapeControlLayout)shapeControlLayout
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v2 layout];
  v4 = objc_opt_class();
  v10 = sub_1003038E0(layout, v4, 1, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLShapeControlLayout);

  return v10;
}

- (CRLShapeControlRep)shapeControlRep
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  v3 = objc_opt_class();
  v9 = sub_1003038E0(v2, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLShapeControlRep);

  return v9;
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->mNeedsDecoratorUpdate)
  {
    [(CRLShapeControlKnobTracker *)self p_updateGuideRenderable];
    self->mNeedsDecoratorUpdate = 0;
  }

  if (self->mGuideRenderable)
  {
    mGuideRenderable = self->mGuideRenderable;
    v3 = [NSArray arrayWithObjects:&mGuideRenderable count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (void)moveKnobToRepPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  shapeControlRep = [(CRLShapeControlKnobTracker *)self shapeControlRep];
  [shapeControlRep dynamicallyMovedSmartShapeKnobTo:self withTracker:{x, y}];
  [(CRLShapeControlKnobTracker *)self p_updateHUDAtPoint:x, y];
  self->mNeedsDecoratorUpdate = 1;
  interactiveCanvasController = [shapeControlRep interactiveCanvasController];
  [interactiveCanvasController invalidateLayersForDecorator:self];

  layout = [shapeControlRep layout];
  [layout adjustCustomMagnetPositions];
}

- (void)beginMovingKnob
{
  v9.receiver = self;
  v9.super_class = CRLShapeControlKnobTracker;
  [(CRLCanvasKnobTracker *)&v9 beginMovingKnob];
  shapeControlRep = [(CRLShapeControlKnobTracker *)self shapeControlRep];
  interactiveCanvasController = [shapeControlRep interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  [commandController openGroup];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Resize" value:0 table:@"UndoStrings"];
  commandController2 = [interactiveCanvasController commandController];
  [commandController2 setCurrentGroupActionString:v7];

  [interactiveCanvasController addDecorator:self];
  [shapeControlRep dynamicMoveSmartShapeKnobDidBegin];
}

- (void)endMovingKnob
{
  v24.receiver = self;
  v24.super_class = CRLShapeControlKnobTracker;
  [(CRLCanvasKnobTracker *)&v24 endMovingKnob];
  v3 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v3 layout];
  commandsForAdjustingMagnetsFromClineLayouts = [layout commandsForAdjustingMagnetsFromClineLayouts];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = commandsForAdjustingMagnetsFromClineLayouts;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(CRLCanvasKnobTracker *)self icc];
        commandController = [v12 commandController];
        [commandController enqueueCommand:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  if (![(CRLCanvasKnobTracker *)self didBegin])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101349944();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134996C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013499F4();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLShapeControlKnobTracker endMovingKnob]", v20];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeControlKnobTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:111 isFatal:0 description:"Ending knob when we didn't begin!"];
  }

  if ([(CRLCanvasKnobTracker *)self didBegin])
  {
    shapeControlRep = [(CRLShapeControlKnobTracker *)self shapeControlRep];
    interactiveCanvasController = [shapeControlRep interactiveCanvasController];
    [shapeControlRep dynamicMoveSmartShapeKnobDidEndWithTracker:self];
    commandController2 = [interactiveCanvasController commandController];
    [commandController2 closeGroup];
  }

  [(CRLShapeControlKnobTracker *)self p_hideHUD];
  [(CRLShapeControlKnobTracker *)self p_hideGuideRenderable];
}

- (void)p_updateGuideRenderable
{
  shapeControlLayout = [(CRLShapeControlKnobTracker *)self shapeControlLayout];
  smartPathSource = [shapeControlLayout smartPathSource];
  knob = [(CRLCanvasKnobTracker *)self knob];
  v6 = [smartPathSource newFeedbackPathForKnob:{objc_msgSend(knob, "tag")}];

  if (v6)
  {
    if (!self->mGuideRenderable)
    {
      v7 = [(CRLCanvasKnobTracker *)self rep];
      interactiveCanvasController = [v7 interactiveCanvasController];

      v9 = [(CRLCanvasKnobTracker *)self rep];
      shapeControlRep = [(CRLShapeControlKnobTracker *)self shapeControlRep];
      [shapeControlRep centerForGuideRenderablePlacement];
      [v9 convertNaturalPointToUnscaledCanvas:?];
      [interactiveCanvasController convertUnscaledToBoundsPoint:?];
      v12 = v11;
      v14 = v13;

      v15 = +[CRLCanvasShapeRenderable renderable];
      mGuideRenderable = self->mGuideRenderable;
      self->mGuideRenderable = v15;

      v17 = *&CGAffineTransformIdentity.c;
      *&v37.a = *&CGAffineTransformIdentity.a;
      *&v37.c = v17;
      *&v37.tx = *&CGAffineTransformIdentity.tx;
      *&v36.a = *&v37.a;
      *&v36.c = v17;
      *&v36.tx = *&v37.tx;
      CGAffineTransformTranslate(&v37, &v36, v12, v14);
      v18 = [(CRLCanvasKnobTracker *)self rep];
      canvas = [v18 canvas];
      [canvas viewScale];
      v21 = v20;
      v22 = [(CRLCanvasKnobTracker *)self rep];
      canvas2 = [v22 canvas];
      [canvas2 viewScale];
      v35 = v37;
      CGAffineTransformScale(&v36, &v35, v21, v24);
      v37 = v36;

      v25 = [(CRLCanvasKnobTracker *)self rep];
      info = [v25 info];
      geometry = [info geometry];
      [geometry angle];
      v35 = v37;
      CGAffineTransformRotate(&v36, &v35, v28 * -0.0174532925);
      v37 = v36;

      [smartPathSource naturalSize];
      v35 = v37;
      CGAffineTransformTranslate(&v36, &v35, v29 * -0.5, v30 * -0.5);
      v37 = v36;
      [shapeControlLayout pathBoundsWithoutStroke];
      v35 = v37;
      CGAffineTransformTranslate(&v36, &v35, v31, v32);
      v37 = v36;
      v33 = sub_10007187C(v6, &v36);
      [(CRLCanvasShapeRenderable *)self->mGuideRenderable setPath:v33];
      CGPathRelease(v33);
      v34 = [CRLColor colorWithWhite:0.5 alpha:0.5];
      -[CRLCanvasShapeRenderable setStrokeColor:](self->mGuideRenderable, "setStrokeColor:", [v34 CGColor]);

      [(CRLCanvasShapeRenderable *)self->mGuideRenderable setFillColor:0];
    }

    CGPathRelease(v6);
  }
}

- (void)p_hideGuideRenderable
{
  v4 = [(CRLCanvasKnobTracker *)self rep];
  interactiveCanvasController = [v4 interactiveCanvasController];
  [interactiveCanvasController removeDecorator:self];
}

- (void)p_updateHUDAtPoint:(CGPoint)point
{
  v33 = [(CRLShapeControlKnobTracker *)self shapeControlLayout:point.x];
  smartPathSource = [v33 smartPathSource];
  knob = [(CRLCanvasKnobTracker *)self knob];
  v6 = [smartPathSource getFeedbackStringForKnob:{objc_msgSend(knob, "tag")}];

  if ([v6 length])
  {
    v7 = [(CRLCanvasKnobTracker *)self rep];
    interactiveCanvasController = [v7 interactiveCanvasController];

    v9 = +[CRLCanvasHUDController sharedHUDController];
    [v9 setLabelText:v6];
    canvasView = [interactiveCanvasController canvasView];
    v11 = [(CRLCanvasKnobTracker *)self rep];
    [v11 boundsForStandardKnobs];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v35.origin.x = v13;
    v35.origin.y = v15;
    v35.size.width = v17;
    v35.size.height = v19;
    MidX = CGRectGetMidX(v35);
    v36.origin.x = v13;
    v36.origin.y = v15;
    v36.size.width = v17;
    v36.size.height = v19;
    MinY = CGRectGetMinY(v36);
    v22 = [(CRLCanvasKnobTracker *)self rep];
    [v22 convertNaturalPointToUnscaledCanvas:{MidX, MinY}];
    v24 = v23;
    v26 = v25;

    v27 = [(CRLCanvasKnobTracker *)self rep];
    interactiveCanvasController2 = [v27 interactiveCanvasController];
    [interactiveCanvasController2 convertUnscaledToBoundsPoint:{v24, v26}];
    v30 = v29;
    v32 = v31;

    [v9 showHUDForKey:self forTouchPoint:canvasView inCanvasView:sub_100122154(v30 withUpwardsNudge:v32)];
  }
}

- (void)p_hideHUD
{
  v3 = +[CRLCanvasHUDController sharedHUDController];
  [v3 hideHUDForKey:self];
}

@end