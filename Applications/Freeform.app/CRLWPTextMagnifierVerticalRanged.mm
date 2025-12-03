@interface CRLWPTextMagnifierVerticalRanged
- (BOOL)shouldHideCanvasLayer;
- (CRLWPTextMagnifierVerticalRanged)init;
- (double)currentOffset;
- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated;
- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context;
- (void)stopMagnifying:(BOOL)magnifying;
- (void)updateFrame;
- (void)zoomLeftAnimation;
- (void)zoomRightAnimation;
@end

@implementation CRLWPTextMagnifierVerticalRanged

- (CRLWPTextMagnifierVerticalRanged)init
{
  v3.receiver = self;
  v3.super_class = CRLWPTextMagnifierVerticalRanged;
  return [(CRLWPTextMagnifierRanged *)&v3 initWithFrame:0.0, 0.0, 65.0, 150.0];
}

- (void)zoomLeftAnimation
{
  memset(&v7, 0, sizeof(v7));
  [(CRLWPTextMagnifierVerticalRanged *)self bounds];
  MaxX = CGRectGetMaxX(v8);
  CGAffineTransformMakeTranslation(&v7, MaxX * 0.5, 0.0);
  v5 = v7;
  CGAffineTransformScale(&v6, &v5, 0.25, 0.25);
  v7 = v6;
  [(CRLWPTextMagnifierVerticalRanged *)self setTransform:&v6];
  [(CRLWPTextMagnifierVerticalRanged *)self setAlpha:0.0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013E3F4;
  v4[3] = &unk_10183F960;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:0.1];
}

- (void)zoomRightAnimation
{
  [(CRLWPTextMagnifierRanged *)self animationPoint];
  self->super._magnificationPoint.x = v3 + -8.0;
  self->super._magnificationPoint.y = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10013E53C;
  v6[3] = &unk_10183F960;
  v6[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013E5F4;
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
  superview = [(CRLWPTextMagnifierVerticalRanged *)self superview];
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

  [(CRLWPTextMagnifierVerticalRanged *)self bounds];
  v17 = v16 * 0.5;
  self->super._inPlace = v13 + v16 * 0.5 + -41.0 < 45.0;
  [(CRLWPTextMagnifierVerticalRanged *)self currentOffset];
  v19 = v13 - v18;
  if (v19 < v17)
  {
    v19 = v17;
  }

  v20 = round(v19) + -0.5;
  v21 = round(v15) + 0.5;

  [(CRLWPTextMagnifierVerticalRanged *)self setCenter:v20, v21];
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
  v14.super_class = CRLWPTextMagnifierVerticalRanged;
  [(CRLWPTextMagnifierRanged *)&v14 beginMagnifyingTarget:targetCopy magnificationPoint:animatedCopy offset:v10 animated:v9, x, y];
  v13 = 0.0;
  if (x >= 0.0)
  {
    v13 = x;
  }

  [(CRLWPTextMagnifierRanged *)self setOffset:round(v13), round(y)];
  [(CRLWPTextMagnifierRanged *)self setMagnificationPoint:v10, v9];
  if (animatedCopy)
  {
    [(CRLWPTextMagnifierVerticalRanged *)self zoomLeftAnimation];
  }
}

- (void)stopMagnifying:(BOOL)magnifying
{
  if (magnifying)
  {
    [(CRLWPTextMagnifierVerticalRanged *)self zoomRightAnimation];
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
  }

  return 1;
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

      layerHost = [interactiveCanvasController layerHost];
      canvasView = [layerHost canvasView];

      [(CRLWPTextMagnifierVerticalRanged *)self frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      superview = [(CRLWPTextMagnifierVerticalRanged *)self superview];
      [canvasView convertRect:superview fromView:{v12 + -3.0, v14, v16 + -3.0 + -18.0, v18}];
      v68 = v21;
      v69 = v20;
      v23 = v22;
      v25 = v24;

      CGContextSaveGState(context);
      [(CRLWPTextMagnifierVerticalRanged *)self frame];
      v27 = v26;
      [(CRLWPTextMagnifierVerticalRanged *)self frame];
      v29 = v28;
      maskImageName = [(CRLWPTextMagnifierVerticalRanged *)self maskImageName];
      v31 = [UIImage imageNamed:maskImageName];

      v67 = v31;
      cGImage = [v31 CGImage];
      v82.origin.x = 0.0;
      v82.origin.y = -5.0;
      v82.size.width = v27;
      v82.size.height = v29;
      CGContextClipToMask(context, v82, cGImage);
      CGContextScaleCTM(context, 1.2, 1.2);
      [(CRLWPTextMagnifierVerticalRanged *)self currentOffset];
      v34 = v33;
      v35 = objc_opt_class();
      target3 = [(CRLWPTextMagnifierRanged *)self target];
      v37 = sub_100014370(v35, target3);
      v38 = v23 + v34;

      if (v37)
      {
        v39 = objc_opt_class();
        editorController = [interactiveCanvasController editorController];
        textInputEditor = [editorController textInputEditor];
        v42 = sub_100014370(v39, textInputEditor);

        v65 = v42;
        selection = [v42 selection];
        v66 = interactiveCanvasController;
        currentKnobTracker = [v37 currentKnobTracker];
        knob = [currentKnobTracker knob];
        v46 = [knob tag];

        if (v46 == 11)
        {
          start = [selection start];
        }

        else
        {
          start = [selection end];
        }

        v48 = start;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        columns = [v37 columns];
        v50 = [columns countByEnumeratingWithState:&v77 objects:v81 count:16];
        if (v50)
        {
          v51 = *v78;
          v64 = v37;
          while (2)
          {
            for (i = 0; i != v50; i = i + 1)
            {
              if (*v78 != v51)
              {
                objc_enumerationMutation(columns);
              }

              v53 = *(*(&v77 + 1) + 8 * i);
              v54 = [v53 lineFragmentForCharIndex:v48 knobTag:v46 selectionType:{objc_msgSend(selection, "type")}];
              if (v54)
              {
                if (v53)
                {
                  interactiveCanvasController = v66;
                  v37 = v64;
                  [v53 transformFromWP];
                  v55 = v71;
                  v56 = v72;
                  v57 = v73;
                  v58 = v74;
                  v60 = v75;
                  v59 = v76;
                }

                else
                {
                  v59 = 0.0;
                  v60 = 0.0;
                  v58 = 0.0;
                  v57 = 0.0;
                  v56 = 0.0;
                  v55 = 0.0;
                  interactiveCanvasController = v66;
                  v37 = v64;
                }

                [v37 convertNaturalPointToUnscaledCanvas:{v60 + v57 * v54[4] + v55 * 0.0, v59 + v58 * v54[4] + v56 * 0.0}];
                [interactiveCanvasController convertUnscaledToBoundsPoint:?];
                v62 = v61;
                v83.origin.x = v23;
                v83.origin.y = v25;
                v83.size.height = v68;
                v83.size.width = v69;
                v38 = CGRectGetWidth(v83) - v62 + -5.0;
                goto LABEL_20;
              }
            }

            v50 = [columns countByEnumeratingWithState:&v77 objects:v81 count:16];
            v37 = v64;
            if (v50)
            {
              continue;
            }

            break;
          }
        }

        interactiveCanvasController = v66;
LABEL_20:
      }

      CGContextTranslateCTM(context, v38, -v25);
      CGContextTranslateCTM(context, v68 * -0.100000001, v69 * -0.100000001);
      canvasLayer = [canvasView canvasLayer];
      [canvasLayer renderInContext:context];

      CGContextRestoreGState(context);
    }
  }
}

@end