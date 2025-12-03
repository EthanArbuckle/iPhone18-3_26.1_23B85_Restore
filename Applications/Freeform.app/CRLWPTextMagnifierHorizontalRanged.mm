@interface CRLWPTextMagnifierHorizontalRanged
- (BOOL)shouldHideCanvasLayer;
- (CRLWPTextMagnifierHorizontalRanged)init;
- (double)currentOffset;
- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated;
- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context;
- (void)stopMagnifying:(BOOL)magnifying;
- (void)updateFrame;
- (void)zoomDownAnimation;
- (void)zoomUpAnimation;
@end

@implementation CRLWPTextMagnifierHorizontalRanged

- (CRLWPTextMagnifierHorizontalRanged)init
{
  v3.receiver = self;
  v3.super_class = CRLWPTextMagnifierHorizontalRanged;
  return [(CRLWPTextMagnifierRanged *)&v3 initWithFrame:0.0, 0.0, 145.0, 59.0];
}

- (void)zoomUpAnimation
{
  memset(&v7, 0, sizeof(v7));
  [(CRLWPTextMagnifierHorizontalRanged *)self bounds];
  MaxY = CGRectGetMaxY(v8);
  CGAffineTransformMakeTranslation(&v7, 0.0, MaxY * 0.5);
  v5 = v7;
  CGAffineTransformScale(&v6, &v5, 0.25, 0.25);
  v7 = v6;
  [(CRLWPTextMagnifierHorizontalRanged *)self setTransform:&v6];
  [(CRLWPTextMagnifierHorizontalRanged *)self setAlpha:0.0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100162540;
  v4[3] = &unk_10183F960;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:0.1];
}

- (void)zoomDownAnimation
{
  [(CRLWPTextMagnifierRanged *)self animationPoint];
  self->super._magnificationPoint.x = v4;
  self->super._magnificationPoint.y = v3 + 8.0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100162688;
  v6[3] = &unk_10183F960;
  v6[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100162740;
  v5[3] = &unk_10183F988;
  v5[4] = self;
  [UIView animateWithDuration:v6 animations:v5 completion:0.2];
}

- (double)currentOffset
{
  result = 19.0;
  if (!self->super._inPlace)
  {
    [(CRLWPTextMagnifierRanged *)self offset];
    return v3 + 41.0 + 7.0;
  }

  return result;
}

- (void)updateFrame
{
  superview = [(CRLWPTextMagnifierHorizontalRanged *)self superview];
  [(CRLWPTextMagnifierRanged *)self magnificationPoint];
  v5 = v4;
  v7 = v6;
  target = [(CRLWPTextMagnifierRanged *)self target];
  interactiveCanvasController = [target interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  canvasView = [layerHost canvasView];
  [superview convertPoint:canvasView fromView:{v5, v7}];
  v13 = v12;
  v15 = v14;

  [(CRLWPTextMagnifierHorizontalRanged *)self bounds];
  v17 = v16 * 0.5;
  self->super._inPlace = v15 + v16 * 0.5 + -41.0 < 45.0;
  [(CRLWPTextMagnifierHorizontalRanged *)self currentOffset];
  v19 = v15 - v18;
  if (v19 >= v17)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  v21 = round(v13) + 0.5;
  v22 = round(v20) + 0.5;

  [(CRLWPTextMagnifierHorizontalRanged *)self setCenter:v21, v22];
}

- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  v9 = point.y;
  v10 = point.x;
  targetCopy = target;
  v14.receiver = self;
  v14.super_class = CRLWPTextMagnifierHorizontalRanged;
  [(CRLWPTextMagnifierRanged *)&v14 beginMagnifyingTarget:targetCopy magnificationPoint:animatedCopy offset:v10 animated:v9, x, y];
  if (y >= 0.0)
  {
    v13 = y;
  }

  else
  {
    v13 = 0.0;
  }

  [(CRLWPTextMagnifierRanged *)self setOffset:round(x), round(v13)];
  [(CRLWPTextMagnifierRanged *)self setMagnificationPoint:v10, v9];
  if (animatedCopy)
  {
    [(CRLWPTextMagnifierHorizontalRanged *)self zoomUpAnimation];
  }
}

- (void)stopMagnifying:(BOOL)magnifying
{
  if (magnifying)
  {
    [(CRLWPTextMagnifierHorizontalRanged *)self zoomDownAnimation];
  }

  else
  {
    [(CRLWPTextMagnifierRanged *)self remove];
    [(CRLWPTextMagnifierRanged *)self setTarget:0];
  }

  self->super._magnificationPoint = xmmword_1014629E0;
  y = CGPointZero.y;

  [(CRLWPTextMagnifierRanged *)self setOffset:CGPointZero.x, y];
}

- (BOOL)shouldHideCanvasLayer
{
  target = [(CRLWPTextMagnifierRanged *)self target];
  interactiveCanvasController = [target interactiveCanvasController];

  v4 = objc_opt_class();
  v5 = sub_100014370(v4, interactiveCanvasController);
  if (v5)
  {
    v6 = objc_opt_class();
    layerHost = [v5 layerHost];
    v8 = sub_100014370(v6, layerHost);

    if (v8)
    {
      shouldHideCanvasLayerInMagnifier = [v8 shouldHideCanvasLayerInMagnifier];
    }

    else
    {
      shouldHideCanvasLayerInMagnifier = 1;
    }
  }

  else
  {
    shouldHideCanvasLayerInMagnifier = 1;
  }

  return shouldHideCanvasLayerInMagnifier;
}

- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context
{
  target = [(CRLWPTextMagnifierRanged *)self target];
  if (target)
  {
    isMagnifierStopping = [(CRLWPTextMagnifierRanged *)self isMagnifierStopping];

    if ((isMagnifierStopping & 1) == 0)
    {
      target2 = [(CRLWPTextMagnifierRanged *)self target];
      interactiveCanvasController = [target2 interactiveCanvasController];

      v10 = objc_opt_class();
      layerHost = [interactiveCanvasController layerHost];
      v12 = sub_100014370(v10, layerHost);

      layerHost2 = [interactiveCanvasController layerHost];
      canvasView = [layerHost2 canvasView];

      [(CRLWPTextMagnifierHorizontalRanged *)self frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      superview = [(CRLWPTextMagnifierHorizontalRanged *)self superview];
      [canvasView convertRect:superview fromView:{v15, v17 + 3.0, v19, v21 + -3.0 + -18.0}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      CGContextSaveGState(context);
      [(CRLWPTextMagnifierHorizontalRanged *)self frame];
      v32 = v31;
      [(CRLWPTextMagnifierHorizontalRanged *)self frame];
      v34 = v33;
      maskImageName = [(CRLWPTextMagnifierHorizontalRanged *)self maskImageName];
      v36 = [UIImage imageNamed:maskImageName];

      v68 = v36;
      cGImage = [v36 CGImage];
      v75.origin.x = 0.0;
      v75.origin.y = 0.0;
      v75.size.width = v32;
      v75.size.height = v34;
      CGContextClipToMask(context, v75, cGImage);
      if (interactiveCanvasController)
      {
        backgroundColorForMagnifier = [v12 backgroundColorForMagnifier];
        v39 = backgroundColorForMagnifier;
        if (backgroundColorForMagnifier)
        {
          CGContextSetFillColorWithColor(context, [backgroundColorForMagnifier CGColor]);
          v76.origin.x = 0.0;
          v76.origin.y = 0.0;
          v76.size.width = v32;
          v76.size.height = v34;
          CGContextFillRect(context, v76);
        }
      }

      CGContextScaleCTM(context, 1.2, 1.2);
      [(CRLWPTextMagnifierHorizontalRanged *)self currentOffset];
      v41 = v40;
      v42 = objc_opt_class();
      target3 = [(CRLWPTextMagnifierRanged *)self target];
      v44 = sub_100014370(v42, target3);
      v45 = -v26 - v41;

      if (v44)
      {
        v46 = objc_opt_class();
        editorController = [interactiveCanvasController editorController];
        textInputEditor = [editorController textInputEditor];
        v49 = sub_100014370(v46, textInputEditor);

        v65 = v49;
        selection = [v49 selection];
        v66 = v12;
        v67 = interactiveCanvasController;
        currentKnobTracker = [v44 currentKnobTracker];
        knob = [currentKnobTracker knob];
        v53 = [knob tag];

        if ([selection isVisual])
        {
          if (v53 == 11)
          {
            headCharIndex = [selection headCharIndex];
          }

          else
          {
            headCharIndex = [selection tailCharIndex];
          }
        }

        else if (v53 == 11)
        {
          headCharIndex = [selection start];
        }

        else
        {
          headCharIndex = [selection end];
        }

        v55 = headCharIndex;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        columns = [v44 columns];
        v57 = [columns countByEnumeratingWithState:&v70 objects:v74 count:16];
        if (v57)
        {
          v58 = *v71;
          while (2)
          {
            for (i = 0; i != v57; i = i + 1)
            {
              if (*v71 != v58)
              {
                objc_enumerationMutation(columns);
              }

              v60 = [*(*(&v70 + 1) + 8 * i) lineFragmentForCharIndex:v55 knobTag:v53 selectionType:{objc_msgSend(selection, "type")}];
              if (v60)
              {

                v12 = v66;
                interactiveCanvasController = v67;
                [v44 convertNaturalPointToUnscaledCanvas:{0.0, v60[4]}];
                [v67 convertUnscaledToBoundsPoint:?];
                v62 = v61;
                v77.origin.x = v24;
                v77.origin.y = v26;
                v77.size.width = v28;
                v77.size.height = v30;
                v45 = CGRectGetHeight(v77) - v62 + -7.0;
                goto LABEL_25;
              }
            }

            v57 = [columns countByEnumeratingWithState:&v70 objects:v74 count:16];
            if (v57)
            {
              continue;
            }

            break;
          }
        }

        v12 = v66;
        interactiveCanvasController = v67;
LABEL_25:
      }

      CGContextTranslateCTM(context, -v24, v45);
      CGContextTranslateCTM(context, v28 * -0.100000001, v30 * -0.100000001);
      layerHost3 = [interactiveCanvasController layerHost];
      canvasLayer = [layerHost3 canvasLayer];
      [canvasLayer renderInContext:context];

      CGContextRestoreGState(context);
    }
  }
}

@end