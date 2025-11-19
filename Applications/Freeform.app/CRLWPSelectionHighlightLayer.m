@interface CRLWPSelectionHighlightLayer
- (void)renderInContext:(CGContext *)a3;
@end

@implementation CRLWPSelectionHighlightLayer

- (void)renderInContext:(CGContext *)a3
{
  if (([(CRLWPSelectionHighlightLayer *)self isHidden]& 1) != 0)
  {
    return;
  }

  CGContextSaveGState(a3);
  v5 = [(CRLWPSelectionHighlightLayer *)self fillColor];
  if (v5)
  {
    CGContextSetFillColorWithColor(a3, v5);
  }

  v6 = [(CRLWPSelectionHighlightLayer *)self strokeColor];
  if (v6)
  {
    CGContextSetStrokeColorWithColor(a3, v6);
  }

  [(CRLWPSelectionHighlightLayer *)self lineWidth];
  CGContextSetLineWidth(a3, v7);
  [(CRLWPSelectionHighlightLayer *)self miterLimit];
  CGContextSetMiterLimit(a3, v8);
  v22 = [(CRLWPSelectionHighlightLayer *)self lineCap];
  if ([v22 isEqualToString:kCALineCapButt])
  {
    v9 = kCGLineCapButt;
  }

  else if ([v22 isEqualToString:kCALineCapRound])
  {
    v9 = kCGLineCapRound;
  }

  else
  {
    if (![v22 isEqualToString:kCALineCapSquare])
    {
      goto LABEL_13;
    }

    v9 = kCGLineCapSquare;
  }

  CGContextSetLineCap(a3, v9);
LABEL_13:
  v10 = [(CRLWPSelectionHighlightLayer *)self lineJoin];
  if ([v10 isEqualToString:kCALineJoinMiter])
  {
    v11 = kCGLineJoinMiter;
  }

  else if ([v10 isEqualToString:kCALineJoinRound])
  {
    v11 = kCGLineJoinRound;
  }

  else
  {
    if (![v10 isEqualToString:kCALineJoinBevel])
    {
      goto LABEL_20;
    }

    v11 = kCGLineJoinBevel;
  }

  CGContextSetLineJoin(a3, v11);
LABEL_20:
  v12 = [(CRLWPSelectionHighlightLayer *)self lineDashPattern];
  v13 = [v12 count];
  v14 = malloc_type_calloc(v13, 8uLL, 0x100004000313F17uLL);
  if (v13)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      v16 = [v12 objectAtIndexedSubscript:i];
      [v16 doubleValue];
      v14[i] = v17;
    }
  }

  [(CRLWPSelectionHighlightLayer *)self lineDashPhase];
  CGContextSetLineDash(a3, v18, v14, v13);
  free(v14);
  CGContextAddPath(a3, [(CRLWPSelectionHighlightLayer *)self path]);
  if (!v5)
  {
    if (v6)
    {
      CGContextDrawPath(a3, kCGPathStroke);
    }

    goto LABEL_37;
  }

  v19 = [(CRLWPSelectionHighlightLayer *)self fillRule];
  v20 = [v19 isEqualToString:kCAFillRuleNonZero];
  if (v6)
  {
    if (v20)
    {
      v21 = kCGPathFillStroke;
LABEL_35:
      CGContextDrawPath(a3, v21);
      goto LABEL_36;
    }

    if ([v19 isEqualToString:kCAFillRuleEvenOdd])
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

    if ([v19 isEqualToString:kCAFillRuleEvenOdd])
    {
      v21 = kCGPathEOFill;
      goto LABEL_35;
    }
  }

LABEL_36:

LABEL_37:
  CGContextRestoreGState(a3);
}

@end