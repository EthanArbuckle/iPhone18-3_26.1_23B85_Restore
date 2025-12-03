@interface CRLWPSelectionHighlightLayer
- (void)renderInContext:(CGContext *)context;
@end

@implementation CRLWPSelectionHighlightLayer

- (void)renderInContext:(CGContext *)context
{
  if (([(CRLWPSelectionHighlightLayer *)self isHidden]& 1) != 0)
  {
    return;
  }

  CGContextSaveGState(context);
  fillColor = [(CRLWPSelectionHighlightLayer *)self fillColor];
  if (fillColor)
  {
    CGContextSetFillColorWithColor(context, fillColor);
  }

  strokeColor = [(CRLWPSelectionHighlightLayer *)self strokeColor];
  if (strokeColor)
  {
    CGContextSetStrokeColorWithColor(context, strokeColor);
  }

  [(CRLWPSelectionHighlightLayer *)self lineWidth];
  CGContextSetLineWidth(context, v7);
  [(CRLWPSelectionHighlightLayer *)self miterLimit];
  CGContextSetMiterLimit(context, v8);
  lineCap = [(CRLWPSelectionHighlightLayer *)self lineCap];
  if ([lineCap isEqualToString:kCALineCapButt])
  {
    v9 = kCGLineCapButt;
  }

  else if ([lineCap isEqualToString:kCALineCapRound])
  {
    v9 = kCGLineCapRound;
  }

  else
  {
    if (![lineCap isEqualToString:kCALineCapSquare])
    {
      goto LABEL_13;
    }

    v9 = kCGLineCapSquare;
  }

  CGContextSetLineCap(context, v9);
LABEL_13:
  lineJoin = [(CRLWPSelectionHighlightLayer *)self lineJoin];
  if ([lineJoin isEqualToString:kCALineJoinMiter])
  {
    v11 = kCGLineJoinMiter;
  }

  else if ([lineJoin isEqualToString:kCALineJoinRound])
  {
    v11 = kCGLineJoinRound;
  }

  else
  {
    if (![lineJoin isEqualToString:kCALineJoinBevel])
    {
      goto LABEL_20;
    }

    v11 = kCGLineJoinBevel;
  }

  CGContextSetLineJoin(context, v11);
LABEL_20:
  lineDashPattern = [(CRLWPSelectionHighlightLayer *)self lineDashPattern];
  v13 = [lineDashPattern count];
  v14 = malloc_type_calloc(v13, 8uLL, 0x100004000313F17uLL);
  if (v13)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      v16 = [lineDashPattern objectAtIndexedSubscript:i];
      [v16 doubleValue];
      v14[i] = v17;
    }
  }

  [(CRLWPSelectionHighlightLayer *)self lineDashPhase];
  CGContextSetLineDash(context, v18, v14, v13);
  free(v14);
  CGContextAddPath(context, [(CRLWPSelectionHighlightLayer *)self path]);
  if (!fillColor)
  {
    if (strokeColor)
    {
      CGContextDrawPath(context, kCGPathStroke);
    }

    goto LABEL_37;
  }

  fillRule = [(CRLWPSelectionHighlightLayer *)self fillRule];
  v20 = [fillRule isEqualToString:kCAFillRuleNonZero];
  if (strokeColor)
  {
    if (v20)
    {
      v21 = kCGPathFillStroke;
LABEL_35:
      CGContextDrawPath(context, v21);
      goto LABEL_36;
    }

    if ([fillRule isEqualToString:kCAFillRuleEvenOdd])
    {
      v21 = kCGPathEOFillStroke;
      goto LABEL_35;
    }
  }

  else
  {
    if (v20)
    {
      v21 = kCGPathFill;
      goto LABEL_35;
    }

    if ([fillRule isEqualToString:kCAFillRuleEvenOdd])
    {
      v21 = kCGPathEOFill;
      goto LABEL_35;
    }
  }

LABEL_36:

LABEL_37:
  CGContextRestoreGState(context);
}

@end