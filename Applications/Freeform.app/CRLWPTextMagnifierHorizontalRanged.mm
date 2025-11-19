@interface CRLWPTextMagnifierHorizontalRanged
- (BOOL)shouldHideCanvasLayer;
- (CRLWPTextMagnifierHorizontalRanged)init;
- (double)currentOffset;
- (void)beginMagnifyingTarget:(id)a3 magnificationPoint:(CGPoint)a4 offset:(CGPoint)a5 animated:(BOOL)a6;
- (void)drawMagnifierClippedCanvasLayer:(id)a3 inContext:(CGContext *)a4;
- (void)stopMagnifying:(BOOL)a3;
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
  v3 = [(CRLWPTextMagnifierHorizontalRanged *)self superview];
  [(CRLWPTextMagnifierRanged *)self magnificationPoint];
  v5 = v4;
  v7 = v6;
  v8 = [(CRLWPTextMagnifierRanged *)self target];
  v9 = [v8 interactiveCanvasController];
  v10 = [v9 layerHost];
  v11 = [v10 canvasView];
  [v3 convertPoint:v11 fromView:{v5, v7}];
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

- (void)beginMagnifyingTarget:(id)a3 magnificationPoint:(CGPoint)a4 offset:(CGPoint)a5 animated:(BOOL)a6
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v12 = a3;
  v14.receiver = self;
  v14.super_class = CRLWPTextMagnifierHorizontalRanged;
  [(CRLWPTextMagnifierRanged *)&v14 beginMagnifyingTarget:v12 magnificationPoint:v6 offset:v10 animated:v9, x, y];
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
  if (v6)
  {
    [(CRLWPTextMagnifierHorizontalRanged *)self zoomUpAnimation];
  }
}

- (void)stopMagnifying:(BOOL)a3
{
  if (a3)
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
  v2 = [(CRLWPTextMagnifierRanged *)self target];
  v3 = [v2 interactiveCanvasController];

  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v5 layerHost];
    v8 = sub_100014370(v6, v7);

    if (v8)
    {
      v9 = [v8 shouldHideCanvasLayerInMagnifier];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)drawMagnifierClippedCanvasLayer:(id)a3 inContext:(CGContext *)a4
{
  v6 = [(CRLWPTextMagnifierRanged *)self target];
  if (v6)
  {
    v7 = [(CRLWPTextMagnifierRanged *)self isMagnifierStopping];

    if ((v7 & 1) == 0)
    {
      v8 = [(CRLWPTextMagnifierRanged *)self target];
      v9 = [v8 interactiveCanvasController];

      v10 = objc_opt_class();
      v11 = [v9 layerHost];
      v12 = sub_100014370(v10, v11);

      v13 = [v9 layerHost];
      v69 = [v13 canvasView];

      [(CRLWPTextMagnifierHorizontalRanged *)self frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [(CRLWPTextMagnifierHorizontalRanged *)self superview];
      [v69 convertRect:v22 fromView:{v15, v17 + 3.0, v19, v21 + -3.0 + -18.0}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      CGContextSaveGState(a4);
      [(CRLWPTextMagnifierHorizontalRanged *)self frame];
      v32 = v31;
      [(CRLWPTextMagnifierHorizontalRanged *)self frame];
      v34 = v33;
      v35 = [(CRLWPTextMagnifierHorizontalRanged *)self maskImageName];
      v36 = [UIImage imageNamed:v35];

      v68 = v36;
      v37 = [v36 CGImage];
      v75.origin.x = 0.0;
      v75.origin.y = 0.0;
      v75.size.width = v32;
      v75.size.height = v34;
      CGContextClipToMask(a4, v75, v37);
      if (v9)
      {
        v38 = [v12 backgroundColorForMagnifier];
        v39 = v38;
        if (v38)
        {
          CGContextSetFillColorWithColor(a4, [v38 CGColor]);
          v76.origin.x = 0.0;
          v76.origin.y = 0.0;
          v76.size.width = v32;
          v76.size.height = v34;
          CGContextFillRect(a4, v76);
        }
      }

      CGContextScaleCTM(a4, 1.2, 1.2);
      [(CRLWPTextMagnifierHorizontalRanged *)self currentOffset];
      v41 = v40;
      v42 = objc_opt_class();
      v43 = [(CRLWPTextMagnifierRanged *)self target];
      v44 = sub_100014370(v42, v43);
      v45 = -v26 - v41;

      if (v44)
      {
        v46 = objc_opt_class();
        v47 = [v9 editorController];
        v48 = [v47 textInputEditor];
        v49 = sub_100014370(v46, v48);

        v65 = v49;
        v50 = [v49 selection];
        v66 = v12;
        v67 = v9;
        v51 = [v44 currentKnobTracker];
        v52 = [v51 knob];
        v53 = [v52 tag];

        if ([v50 isVisual])
        {
          if (v53 == 11)
          {
            v54 = [v50 headCharIndex];
          }

          else
          {
            v54 = [v50 tailCharIndex];
          }
        }

        else if (v53 == 11)
        {
          v54 = [v50 start];
        }

        else
        {
          v54 = [v50 end];
        }

        v55 = v54;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v56 = [v44 columns];
        v57 = [v56 countByEnumeratingWithState:&v70 objects:v74 count:16];
        if (v57)
        {
          v58 = *v71;
          while (2)
          {
            for (i = 0; i != v57; i = i + 1)
            {
              if (*v71 != v58)
              {
                objc_enumerationMutation(v56);
              }

              v60 = [*(*(&v70 + 1) + 8 * i) lineFragmentForCharIndex:v55 knobTag:v53 selectionType:{objc_msgSend(v50, "type")}];
              if (v60)
              {

                v12 = v66;
                v9 = v67;
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

            v57 = [v56 countByEnumeratingWithState:&v70 objects:v74 count:16];
            if (v57)
            {
              continue;
            }

            break;
          }
        }

        v12 = v66;
        v9 = v67;
LABEL_25:
      }

      CGContextTranslateCTM(a4, -v24, v45);
      CGContextTranslateCTM(a4, v28 * -0.100000001, v30 * -0.100000001);
      v63 = [v9 layerHost];
      v64 = [v63 canvasLayer];
      [v64 renderInContext:a4];

      CGContextRestoreGState(a4);
    }
  }
}

@end