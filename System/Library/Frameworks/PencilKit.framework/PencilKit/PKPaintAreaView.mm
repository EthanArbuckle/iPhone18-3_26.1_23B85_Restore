@interface PKPaintAreaView
- (BOOL)beginDrawingAtPoint:(id *)point surface:(id)surface locationInView:(CGPoint)view inputType:(int64_t)type;
- (CGAffineTransform)strokeTransform;
- (CGPoint)applyTransformToTouchLocation:(CGPoint)location;
- (CGPoint)applyTransformToTouchLocation:(CGPoint)location previousPoint:(CGPoint)point newSurface:(id *)surface;
- (PKPaintAreaView)initWithCoder:(id)coder;
- (PKPaintAreaView)initWithFrame:(CGRect)frame;
- (PKPaintAreaViewDelegate)delegate;
- (id)_rendererController;
- (id)hitSurface:(CGPoint)surface;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)shapeDrawingControllerRendererController:(id)controller;
- (void)_commonInit;
- (void)_drawingBegan:(id *)began locationInView:(CGPoint)view inputType:(int64_t)type;
- (void)_endAlternativeStrokeIfNecessaryAccepted:(BOOL)accepted;
- (void)checkAnimationsDidEndAtTime:(double)time;
- (void)drawingBegan:(id)began;
- (void)drawingCancelled;
- (void)drawingEnded;
- (void)drawingEstimatedPropertiesUpdated:(id)updated;
- (void)drawingMoved:(id)moved withEvent:(id)event;
- (void)drawingMovedToPoint:(id *)point locationInView:(CGPoint)view;
- (void)shapeDrawingControllerShapeDetectionCancelled:(id)cancelled;
- (void)shapeDrawingControllerShapeGestureDetected:(id)detected isFastGesture:(BOOL)gesture;
- (void)switchToNewPaintSurface:(id)surface;
- (void)vsync:(double)vsync;
@end

@implementation PKPaintAreaView

- (PKPaintAreaView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKPaintAreaView;
  v5 = [(PKPaintAreaView *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PKPaintAreaView *)v5 _commonInit];
  }

  return v6;
}

- (void)_commonInit
{
  array = [MEMORY[0x1E695DF70] array];
  liveSurfaces = self->_liveSurfaces;
  self->_liveSurfaces = array;

  greenColor = [MEMORY[0x1E69DC888] greenColor];
  v6 = [PKInk inkWithType:@"com.apple.ink.pen" color:greenColor weight:0.5 azimuth:0.0];
  v7 = [PKTool _toolWithInk:v6];
  tool = self->_tool;
  self->_tool = v7;

  v9 = objc_alloc_init(PKDrawingGestureRecognizer);
  drawingGestureRecognizer = self->_drawingGestureRecognizer;
  self->_drawingGestureRecognizer = v9;

  [(PKDrawingGestureRecognizer *)self->_drawingGestureRecognizer setDelegate:self];
  [(PKDrawingGestureRecognizer *)self->_drawingGestureRecognizer setDrawingTarget:self];
  [(PKPaintAreaView *)self addGestureRecognizer:self->_drawingGestureRecognizer];
  v11 = [[PKShapeDrawingController alloc] initWithDelegate:?];
  shapeDrawingController = self->_shapeDrawingController;
  self->_shapeDrawingController = v11;

  v13 = self->_shapeDrawingController;
  if (v13)
  {
    v13->_shapeRecognitionOn = 1;
  }
}

- (PKPaintAreaView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKPaintAreaView;
  v3 = [(PKPaintAreaView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKPaintAreaView *)v3 _commonInit];
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  drawingDisabled = [(PKPaintAreaView *)self drawingDisabled];
  if (eventCopy)
  {
    v9 = drawingDisabled;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_21;
  }

  if (![eventCopy _hidEvent])
  {
    goto LABEL_21;
  }

  pK_isEventFromPencil = [eventCopy PK_isEventFromPencil];
  if ((([(PKPaintAreaView *)self fingerDrawingEnabled]| pK_isEventFromPencil) & 1) == 0)
  {
    goto LABEL_21;
  }

  currentPaintSurfaceObject = self->_currentPaintSurfaceObject;
  if (currentPaintSurfaceObject && ([(PKPaintAreaViewSurface *)currentPaintSurfaceObject isDrawing]|| [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject isErasingObjects]))
  {
    selfCopy = self;
    goto LABEL_22;
  }

  if (![(PKPaintAreaView *)self canAddStroke])
  {
LABEL_21:
    selfCopy = 0;
    goto LABEL_22;
  }

  v20.receiver = self;
  v20.super_class = PKPaintAreaView;
  v13 = [(PKPaintAreaView *)&v20 hitTest:eventCopy withEvent:x, y];
  if (v13 != self || [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject isDrawing])
  {
    goto LABEL_29;
  }

  v14 = [(PKPaintAreaView *)self hitSurface:x, y];
  v15 = self->_currentPaintSurfaceObject;
  if (!v15 || ((v16 = [(PKPaintAreaViewSurface *)v15 waitingForStrokeToEnd], v14) ? (v17 = v16) : (v17 = 0), !v17))
  {
    if (!v14)
    {

      v13 = 0;
      goto LABEL_28;
    }

LABEL_26:
    [(PKPaintAreaView *)self switchToNewPaintSurface:v14];
LABEL_28:

LABEL_29:
    v13 = v13;
    selfCopy = v13;
    goto LABEL_30;
  }

  surface = [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject surface];

  if (v14 == surface)
  {
    goto LABEL_26;
  }

  selfCopy = 0;
LABEL_30:

LABEL_22:

  return selfCopy;
}

- (CGAffineTransform)strokeTransform
{
  result = self->_currentPaintSurfaceObject;
  if (result)
  {
    return [(CGAffineTransform *)result strokeTransform];
  }

  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  return result;
}

- (void)switchToNewPaintSurface:(id)surface
{
  surfaceCopy = surface;
  if ([(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject isDrawing])
  {
    [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject drawingEndedWithDetectedShape:0 completionBlock:0];
  }

  currentPaintSurfaceObject = self->_currentPaintSurfaceObject;
  if (currentPaintSurfaceObject)
  {
    drawingController = [(PKPaintAreaViewSurface *)currentPaintSurfaceObject drawingController];
    if (drawingController)
    {
      v6 = drawingController[48];

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

      [(NSMutableArray *)self->_liveSurfaces addObject:self->_currentPaintSurfaceObject];
      v7 = self->_currentPaintSurfaceObject;
      self->_currentPaintSurfaceObject = 0;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_8:
  delegate = [(PKPaintAreaView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(PKPaintAreaView *)self delegate];
    v11 = [delegate2 paintAreaView:self dispatchQueueForSurface:surfaceCopy];
  }

  else
  {
    v11 = 0;
  }

  v12 = [[PKPaintAreaViewSurface alloc] initWithPaintSurface:surfaceCopy dispatchQueue:v11 device:self->_device];
  v13 = self->_currentPaintSurfaceObject;
  self->_currentPaintSurfaceObject = v12;

  [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject setPaintAreaView:self];
}

- (id)hitSurface:(CGPoint)surface
{
  y = surface.y;
  x = surface.x;
  delegate = [(PKPaintAreaView *)self delegate];
  v7 = [delegate paintAreaView:self surfaceAtLocation:{x, y}];

  return v7;
}

- (CGPoint)applyTransformToTouchLocation:(CGPoint)location
{
  [(PKPaintAreaView *)self applyTransformToTouchLocation:0 previousPoint:location.x newSurface:location.y, NAN, NAN];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)applyTransformToTouchLocation:(CGPoint)location previousPoint:(CGPoint)point newSurface:(id *)surface
{
  y = location.y;
  x = location.x;
  if (self->_currentPaintSurfaceObject)
  {
    v8 = point.y;
    v9 = point.x;
    delegate = [(PKPaintAreaView *)self delegate];
    surface = [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject surface];
    [delegate paintAreaView:self transformLocation:surface surface:surface newSurface:{x, y}];
    x = v13;
    y = v14;

    if (surface && *surface)
    {
      v9 = NAN;
      v8 = NAN;
    }

    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&x & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v16 = v9 - x >= 0.0 ? v9 - x : -(v9 - x);
      [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject drawingSize];
      if (v16 > v17 * 0.5 || (v8 - y >= 0.0 ? (v18 = v8 - y) : (v18 = -(v8 - y)), [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject drawingSize], v18 > v19 * 0.5))
      {
        y = NAN;
        x = NAN;
      }
    }
  }

  v20 = x;
  v21 = y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)_endAlternativeStrokeIfNecessaryAccepted:(BOOL)accepted
{
  alternativeStrokesAnimation = self->_alternativeStrokesAnimation;
  if (alternativeStrokesAnimation)
  {
    if (alternativeStrokesAnimation->_crossFadeStartTime == 0.0)
    {
      alternativeStrokesAnimation->_crossFadeStartTime = CACurrentMediaTime();
      alternativeStrokesAnimation->_accepted = accepted;
    }
  }
}

- (id)_rendererController
{
  _drawingController = [(PKPaintAreaView *)self _drawingController];
  v3 = _drawingController;
  if (_drawingController)
  {
    v4 = *(_drawingController + 64);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)checkAnimationsDidEndAtTime:(double)time
{
  [(PKPaintAreaView *)self liveAnimationStartTime];
  if (v5 != 0.0)
  {
    alternativeStrokesAnimation = self->_alternativeStrokesAnimation;
    if (alternativeStrokesAnimation)
    {
      if (alternativeStrokesAnimation->_forceDone || (crossFadeStartTime = alternativeStrokesAnimation->_crossFadeStartTime, crossFadeStartTime > 0.0) && crossFadeStartTime + alternativeStrokesAnimation->_fadeDuration <= time)
      {
        self->_alternativeStrokesAnimation = 0;
      }
    }
  }
}

- (void)vsync:(double)vsync
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = CACurrentMediaTime();
  if ([(PKPaintAreaView *)self _isLiveAnimating])
  {
    [(PKPaintAreaView *)self liveAnimationStartTime];
    v7 = v6;
    _rendererController = [(PKPaintAreaView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController setLiveStrokeElapsedTime:?];
  }

  shapeDrawingController = [(PKPaintAreaView *)self shapeDrawingController];
  v10 = shapeDrawingController;
  if (shapeDrawingController)
  {
    [(PKShapeDrawingController *)shapeDrawingController _checkDetectedStroke];
  }

  if (self->_alternativeStrokesAnimation)
  {
    _rendererController2 = [(PKPaintAreaView *)self _rendererController];
    alternativeStrokesAnimation = self->_alternativeStrokesAnimation;
    if (alternativeStrokesAnimation)
    {
      alternativeStrokesAnimation = alternativeStrokesAnimation->_strokes;
    }

    v13 = alternativeStrokesAnimation;
    v14 = self->_alternativeStrokesAnimation;
    v15 = [(PKAlternativeStrokesAnimation *)v14 alphaAtTime:v5];
    v16 = [(PKAlternativeStrokesAnimation *)v14 originalStrokeAlphaAtTime:v5];
    [(PKMetalRendererController *)_rendererController2 setAlternativeStrokes:v13 alpha:v15 originalStrokeAlpha:v16];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = [(NSMutableArray *)self->_liveSurfaces copy];
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v24 + 1) + 8 * i);
        drawingController = [v21 drawingController];
        if (drawingController && (v23 = drawingController[48], drawingController, (v23 & 1) != 0))
        {
          [v21 vsync:vsync];
        }

        else
        {
          [(NSMutableArray *)self->_liveSurfaces removeObject:v21];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject vsync:vsync];
  [(PKPaintAreaView *)self checkAnimationsDidEndAtTime:v5];
}

- (void)_drawingBegan:(id *)began locationInView:(CGPoint)view inputType:(int64_t)type
{
  y = view.y;
  x = view.x;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    activeInputProperties = [(PKDrawingGestureRecognizer *)self->_drawingGestureRecognizer activeInputProperties];
    currentPaintSurfaceObject = self->_currentPaintSurfaceObject;
    if (currentPaintSurfaceObject)
    {
      [(PKPaintAreaViewSurface *)currentPaintSurfaceObject setPreviousPoint:NAN, NAN];
      [(PKPaintAreaView *)self applyTransformToTouchLocation:x, y];
      if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v12 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject setPreviousPoint:?];
        v14 = self->_currentPaintSurfaceObject;
        v15 = *&began->var13;
        v26[6] = *&began->var11;
        v26[7] = v15;
        var15 = began->var15;
        v16 = *&began->var5;
        v26[2] = *&began->var3;
        v26[3] = v16;
        v17 = *&began->var9;
        v26[4] = *&began->var7;
        v26[5] = v17;
        v18 = *&began->var1;
        v26[0] = began->var0;
        v26[1] = v18;
        [(PKPaintAreaViewSurface *)v14 drawingBegan:v26 activeInputProperties:activeInputProperties inputType:type];
        tool = [(PKPaintAreaView *)self tool];
        v20 = [tool ink];

        if (![v20 _isStrokeGeneratingInk] || (objc_msgSend(v20, "_isHandwritingInk") & 1) != 0)
        {
          goto LABEL_19;
        }

        shapeDrawingController = [(PKPaintAreaView *)self shapeDrawingController];
        if (shapeDrawingController)
        {
          if (shapeDrawingController[192] == 1)
          {
          }

          else
          {
            v24 = shapeDrawingController[193];

            if (v24 != 1)
            {
LABEL_19:

              return;
            }
          }

          shapeDrawingController2 = [(PKPaintAreaView *)self shapeDrawingController];
          [(PKShapeDrawingController *)shapeDrawingController2 beginStrokeAtPoint:y];
        }

        else
        {
          shapeDrawingController2 = 0;
        }

        goto LABEL_19;
      }

      drawingGestureRecognizer = self->_drawingGestureRecognizer;

      [(PKDrawingGestureRecognizer *)drawingGestureRecognizer end];
    }

    else
    {
      v22 = self->_drawingGestureRecognizer;

      [(PKDrawingGestureRecognizer *)v22 cancel];
    }
  }
}

- (BOOL)beginDrawingAtPoint:(id *)point surface:(id)surface locationInView:(CGPoint)view inputType:(int64_t)type
{
  y = view.y;
  x = view.x;
  surfaceCopy = surface;
  surface = [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject surface];

  if (surface != surfaceCopy)
  {
    [(PKPaintAreaView *)self switchToNewPaintSurface:surfaceCopy];
  }

  v13 = *&point->var13;
  v18[6] = *&point->var11;
  v18[7] = v13;
  var15 = point->var15;
  v14 = *&point->var5;
  v18[2] = *&point->var3;
  v18[3] = v14;
  v15 = *&point->var9;
  v18[4] = *&point->var7;
  v18[5] = v15;
  v16 = *&point->var1;
  v18[0] = point->var0;
  v18[1] = v16;
  [(PKPaintAreaView *)self _drawingBegan:v18 locationInView:type inputType:x, y];

  return 1;
}

- (void)drawingMovedToPoint:(id *)point locationInView:(CGPoint)view
{
  v6 = [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject isErasingObjects:view.x];
  currentPaintSurfaceObject = self->_currentPaintSurfaceObject;
  if (v6)
  {
    x = point->var0.var0.x;
    y = point->var0.var0.y;

    [(PKPaintAreaViewSurface *)currentPaintSurfaceObject eraserMovedToLocation:x, y];
  }

  else
  {
    drawingController = [(PKPaintAreaViewSurface *)currentPaintSurfaceObject drawingController];
    inputController = [(PKController *)drawingController inputController];
    v12 = *&point->var13;
    v16[6] = *&point->var11;
    v16[7] = v12;
    var15 = point->var15;
    v13 = *&point->var5;
    v16[2] = *&point->var3;
    v16[3] = v13;
    v14 = *&point->var9;
    v16[4] = *&point->var7;
    v16[5] = v14;
    v15 = *&point->var1;
    v16[0] = point->var0;
    v16[1] = v15;
    [inputController addPoint:v16];
  }
}

- (void)drawingEnded
{
  shapeDrawingController = [(PKPaintAreaView *)self shapeDrawingController];
  v4 = shapeDrawingController;
  if (shapeDrawingController)
  {
    v5 = *(shapeDrawingController + 208);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  shapeDrawingController2 = [(PKPaintAreaView *)self shapeDrawingController];
  [(PKShapeDrawingController *)shapeDrawingController2 resetStroke];

  [(PKPaintAreaView *)self _endAlternativeStrokeIfNecessaryAccepted:v6 != 0];
  currentPaintSurfaceObject = self->_currentPaintSurfaceObject;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__PKPaintAreaView_drawingEnded__block_invoke;
  v9[3] = &unk_1E82D6388;
  v9[4] = self;
  [(PKPaintAreaViewSurface *)currentPaintSurfaceObject drawingEndedWithDetectedShape:v6 completionBlock:v9];
}

void __31__PKPaintAreaView_drawingEnded__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 416);
  *(v1 + 416) = 0;
}

- (void)drawingBegan:(id)began
{
  beganCopy = began;
  [beganCopy preciseLocationInView:self];
  v6 = v5;
  v8 = v7;
  [(PKPaintAreaView *)self applyTransformToTouchLocation:?];
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  [(PKInputPointUtility *)self drawingInputPoint:beganCopy view:0 touch:[(PKDrawingGestureRecognizer *)self->_drawingGestureRecognizer activeInputProperties] predicted:&v14 activeInputProperties:v9, v10];
  v11 = [beganCopy type] == 2;
  v12[6] = v20;
  v12[7] = v21;
  v13 = v22;
  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v12[5] = v19;
  v12[0] = v14;
  v12[1] = v15;
  [(PKPaintAreaView *)self _drawingBegan:v12 locationInView:v11 inputType:v6, v8];
}

- (void)drawingMoved:(id)moved withEvent:(id)event
{
  v122 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  eventCopy = event;
  switchSurfacesDuringStrokes = [(PKPaintAreaView *)self switchSurfacesDuringStrokes];
  if ([(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject isErasingObjects])
  {
    [movedCopy preciseLocationInView:self];
    v8 = v7;
    v10 = v9;
    [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject previousPoint];
    if (switchSurfacesDuringStrokes)
    {
      v13 = &v119;
    }

    else
    {
      v13 = 0;
    }

    if (switchSurfacesDuringStrokes)
    {
      v119 = 0;
    }

    [(PKPaintAreaView *)self applyTransformToTouchLocation:v13 previousPoint:v8 newSurface:v10, v11, v12];
    v15 = v14;
    v17 = v16;
    if (switchSurfacesDuringStrokes && (v18 = v119) != 0)
    {
      v19 = v18;
      [(PKPaintAreaView *)self switchToNewPaintSurface:v18];
      v20 = v19;
    }

    else
    {
      [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject eraserMovedToLocation:v15, v17];
      v20 = 0;
    }

    goto LABEL_73;
  }

  v21 = [eventCopy coalescedTouchesForTouch:movedCopy];
  v22 = [v21 count];

  v23 = [eventCopy predictedTouchesForTouch:movedCopy];
  v24 = v23;
  if (v23)
  {
    if ([v23 count] >= 3)
    {
      v25 = [v24 subarrayWithRange:{0, 2}];

      v24 = v25;
    }

    v22 += [v24 count];
  }

  v75 = v24;
  v81 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v22];
  v117 = 0;
  v116 = 0;
  v118 = 0;
  std::vector<PKInputPoint>::reserve(&v116, v22);
  activeInputProperties = [(PKDrawingGestureRecognizer *)self->_drawingGestureRecognizer activeInputProperties];
  v114 = 0u;
  v115 = 0u;
  v78 = [movedCopy type] == 2;
  v112 = 0u;
  v113 = 0u;
  obj = [eventCopy coalescedTouchesForTouch:movedCopy];
  v27 = [obj countByEnumeratingWithState:&v112 objects:v121 count:16];
  if (v27)
  {
    v28 = &v111;
    if (!switchSurfacesDuringStrokes)
    {
      v28 = 0;
    }

    v79 = v28;
    v80 = *v113;
LABEL_18:
    v29 = v27;
    v30 = 0;
    while (1)
    {
      if (*v113 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v112 + 1) + 8 * v30);
      [v31 preciseLocationInView:self];
      v33 = v32;
      v35 = v34;
      [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject previousPoint];
      if (switchSurfacesDuringStrokes)
      {
        v111 = 0;
      }

      [(PKPaintAreaView *)self applyTransformToTouchLocation:v79 previousPoint:v33 newSurface:v35, v36, v37];
      v39 = v38;
      v41 = v40;
      if (switchSurfacesDuringStrokes)
      {
        v42 = v111;
        if (v42)
        {
          v43 = v42;
          if (v117 != v116)
          {
            drawingController = [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject drawingController];
            inputController = [(PKController *)drawingController inputController];
            __p = 0;
            v109 = 0;
            v110 = 0;
            std::vector<PKInputPoint>::__init_with_size[abi:ne200100]<PKInputPoint*,PKInputPoint*>(&__p, v116, v117, 0xF0F0F0F0F0F0F0F1 * ((v117 - v116) >> 3));
            [inputController addPoints:&__p];
            if (__p)
            {
              v109 = __p;
              operator delete(__p);
            }

            std::vector<PKInputPoint>::resize(&v116, 0);
          }

          [(PKPaintAreaView *)self switchToNewPaintSurface:v43];
          if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v41 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            v107 = 0;
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            [(PKInputPointUtility *)self drawingInputPoint:v31 view:0 touch:activeInputProperties predicted:&v99 activeInputProperties:v39, v41];
            v95 = v104;
            v96 = v105;
            v97 = v106;
            currentPaintSurfaceObject = self->_currentPaintSurfaceObject;
            v98 = v107;
            v93 = v102;
            v94 = v103;
            v91 = v100;
            v92 = v101;
            v90 = v99;
            [(PKPaintAreaViewSurface *)currentPaintSurfaceObject drawingBegan:&v90 activeInputProperties:activeInputProperties inputType:v78];
          }

          goto LABEL_45;
        }
      }

      v48 = self->_currentPaintSurfaceObject;
      if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v41 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        if ([(PKPaintAreaViewSurface *)v48 isDrawing])
        {
          [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject drawingEndedWithDetectedShape:0 completionBlock:0];
        }

        [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject setPreviousPoint:NAN, NAN];
        goto LABEL_66;
      }

      if (![(PKPaintAreaViewSurface *)v48 isDrawing])
      {
        v107 = 0;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        [(PKInputPointUtility *)self drawingInputPoint:v31 view:0 touch:activeInputProperties predicted:&v99 activeInputProperties:v39, v41];
        v95 = v104;
        v96 = v105;
        v97 = v106;
        v58 = self->_currentPaintSurfaceObject;
        v98 = v107;
        v93 = v102;
        v94 = v103;
        v91 = v100;
        v92 = v101;
        v90 = v99;
        [(PKPaintAreaViewSurface *)v58 drawingBegan:&v90 activeInputProperties:activeInputProperties inputType:v78];
        goto LABEL_44;
      }

      [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject setPreviousPoint:v39, v41];
      v107 = 0;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      [(PKInputPointUtility *)self drawingInputPoint:v31 view:0 touch:[(PKDrawingGestureRecognizer *)self->_drawingGestureRecognizer activeInputProperties] predicted:&v99 activeInputProperties:v39, v41];
      std::vector<PKInputPoint>::push_back[abi:ne200100](&v116, &v99);
      [v81 addObject:v31];
      shapeDrawingController = [(PKPaintAreaView *)self shapeDrawingController];
      if (!shapeDrawingController)
      {
        break;
      }

      v51 = shapeDrawingController[2] == shapeDrawingController[1];

      if (!v51)
      {
        window = [(PKPaintAreaView *)self window];
        [movedCopy locationInView:window];
        v54 = v53;
        v56 = v55;

        shapeDrawingController2 = [(PKPaintAreaView *)self shapeDrawingController];
        v95 = v104;
        v96 = v105;
        v97 = v106;
        v98 = v107;
        v93 = v102;
        v94 = v103;
        v91 = v100;
        v92 = v101;
        v90 = v99;
        [(PKShapeDrawingController *)shapeDrawingController2 addStrokePoint:v54 inputPoint:v56];
LABEL_42:
      }

LABEL_44:
      v43 = 0;
LABEL_45:

      if (v29 == ++v30)
      {
        v27 = [obj countByEnumeratingWithState:&v112 objects:v121 count:16];
        if (v27)
        {
          goto LABEL_18;
        }

        goto LABEL_49;
      }
    }

    shapeDrawingController2 = 0;
    goto LABEL_42;
  }

LABEL_49:

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v75;
  v59 = [obj countByEnumeratingWithState:&v86 objects:v120 count:16];
  if (v59)
  {
    v60 = *v87;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v87 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v62 = *(*(&v86 + 1) + 8 * i);
        [v62 preciseLocationInView:self];
        v64 = v63;
        v66 = v65;
        [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject previousPoint];
        [(PKPaintAreaView *)self applyTransformToTouchLocation:0 previousPoint:v64 newSurface:v66, v67, v68];
        if ((*&v69 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v70 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v107 = 0;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          [(PKInputPointUtility *)self drawingInputPoint:v62 view:1 touch:[(PKDrawingGestureRecognizer *)self->_drawingGestureRecognizer activeInputProperties] predicted:&v99 activeInputProperties:v69, v70];
          std::vector<PKInputPoint>::push_back[abi:ne200100](&v116, &v99);
          [v81 addObject:v62];
        }
      }

      v59 = [obj countByEnumeratingWithState:&v86 objects:v120 count:16];
    }

    while (v59);
  }

LABEL_66:

  v72 = v116;
  if (v117 != v116)
  {
    drawingController2 = [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject drawingController];
    inputController2 = [(PKController *)drawingController2 inputController];
    v83 = 0;
    v84 = 0;
    v85 = 0;
    std::vector<PKInputPoint>::__init_with_size[abi:ne200100]<PKInputPoint*,PKInputPoint*>(&v83, v116, v117, 0xF0F0F0F0F0F0F0F1 * ((v117 - v116) >> 3));
    [inputController2 addPoints:&v83];
    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    v72 = v116;
  }

  if (v72)
  {
    v117 = v72;
    operator delete(v72);
  }

  v20 = v75;
LABEL_73:
}

- (void)drawingCancelled
{
  shapeDrawingController = [(PKPaintAreaView *)self shapeDrawingController];
  [(PKShapeDrawingController *)shapeDrawingController resetStroke];

  [(PKPaintAreaView *)self _endAlternativeStrokeIfNecessaryAccepted:0];
  currentPaintSurfaceObject = self->_currentPaintSurfaceObject;
  self->_currentPaintSurfaceObject = 0;
  v5 = currentPaintSurfaceObject;

  [(PKPaintAreaViewSurface *)v5 drawingCancelled];
}

- (void)drawingEstimatedPropertiesUpdated:(id)updated
{
  v33 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  if ([(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject isDrawing]|| ([(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject drawingController], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4[48], v4, (v5 & 1) != 0))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = updatedCopy;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          [v10 preciseLocationInView:self];
          [(PKPaintAreaView *)self applyTransformToTouchLocation:?];
          if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            v27 = 0;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            [(PKInputPointUtility *)self drawingInputPoint:v10 view:0 touch:[(PKDrawingGestureRecognizer *)self->_drawingGestureRecognizer activeInputProperties] predicted:&v19 activeInputProperties:v11, v12];
            drawingController = [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject drawingController];
            inputController = [(PKController *)drawingController inputController];
            v17[6] = v25;
            v17[7] = v26;
            v18 = v27;
            v17[2] = v21;
            v17[3] = v22;
            v17[4] = v23;
            v17[5] = v24;
            v17[0] = v19;
            v17[1] = v20;
            [inputController drawingUpdatePoint:v17];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v7);
    }
  }
}

- (id)shapeDrawingControllerRendererController:(id)controller
{
  drawingController = [(PKPaintAreaViewSurface *)self->_currentPaintSurfaceObject drawingController];
  v4 = drawingController;
  if (drawingController)
  {
    v5 = *(drawingController + 64);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)shapeDrawingControllerShapeGestureDetected:(id)detected isFastGesture:(BOOL)gesture
{
  v5 = [(PKPaintAreaView *)self shapeDrawingController:detected];
  shapeDrawingController = [(PKPaintAreaView *)self shapeDrawingController];
  v7 = shapeDrawingController;
  if (shapeDrawingController)
  {
    [(PKAveragePointGenerator *)*(shapeDrawingController + 120) currentInputPoint];
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PKPaintAreaView_shapeDrawingControllerShapeGestureDetected_isFastGesture___block_invoke;
  v15[3] = &unk_1E82D7438;
  v15[4] = self;
  v8 = [(PKShapeDrawingController *)v5 detectedShapeWithInputScale:v16 averageInputPoint:0 allowedShapeTypes:v15 createCurrentStrokeBlock:2.0];

  if (v8)
  {
    v9 = CACurrentMediaTime();
    [(PKPaintAreaView *)self liveAnimationStartTime];
    if (v10 == 0.0)
    {
      [(PKPaintAreaView *)self setLiveAnimationStartTime:v9];
    }

    v11 = [PKAlternativeStrokesAnimation alloc];
    strokes = [v8 strokes];
    v13 = [(PKAlternativeStrokesAnimation *)&v11->super.isa initWithStrokes:strokes shape:v8 startTime:v9 fadeDuration:0.15];
    [(PKPaintAreaView *)self setAlternativeStrokesAnimation:v13];

    shapeDrawingController2 = [(PKPaintAreaView *)self shapeDrawingController];
    [(PKShapeDrawingController *)shapeDrawingController2 setDetectedShape:v8];
  }
}

id __76__PKPaintAreaView_shapeDrawingControllerShapeGestureDetected_isFastGesture___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _drawingController];
  v2 = [(PKController *)v1 inputController];
  v3 = [v2 newStrokeWithCurrentData];

  return v3;
}

- (void)shapeDrawingControllerShapeDetectionCancelled:(id)cancelled
{
  shapeDrawingController = [(PKPaintAreaView *)self shapeDrawingController];
  [(PKShapeDrawingController *)shapeDrawingController setDetectedShape:?];

  [(PKPaintAreaView *)self _endAlternativeStrokeIfNecessaryAccepted:0];
}

- (PKPaintAreaViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end