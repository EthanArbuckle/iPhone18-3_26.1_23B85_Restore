@interface CGRenderer
- (CGColor)_colorForNodeColor:(int)a3;
- (CGRenderer)init;
- (CGSize)separation;
- (void)_drawCubicSpline:(id)a3;
- (void)_drawNodeBadge:(id)x2_0;
- (void)_drawNodeContent:(id)x2_0;
- (void)_drawPolyline:(id)a3;
- (void)dealloc;
- (void)drawEdge:(id)a3 withPath:(id)a4;
- (void)drawNode:(id)a3;
- (void)hyperlinkEdge:(id)a3 from:(CGPoint)a4 to:(CGPoint)a5;
@end

@implementation CGRenderer

- (CGRenderer)init
{
  v3.receiver = self;
  v3.super_class = CGRenderer;
  result = [(CGRenderer *)&v3 init];
  if (result)
  {
    result->direction = 1;
    result->separation = xmmword_19CF26930;
    result->drawEdgesFirst = 1;
  }

  return result;
}

- (void)dealloc
{
  context = self->context;
  if (context)
  {
    CGContextRelease(context);
  }

  v4.receiver = self;
  v4.super_class = CGRenderer;
  [(CGRenderer *)&v4 dealloc];
}

- (CGColor)_colorForNodeColor:(int)a3
{
  if ([CGRenderer _colorForNodeColor:]::onceToken != -1)
  {
    [CGRenderer _colorForNodeColor:];
  }

  if (a3 >= 0x10)
  {
    [CGRenderer _colorForNodeColor:];
  }

  return *off_1E75C2B60[a3];
}

CGColorRef __33__CGRenderer__colorForNodeColor___block_invoke()
{
  [CGRenderer _colorForNodeColor:]::gray = CGColorCreateWithHex(0xCCCCCCFFuLL);
  [CGRenderer _colorForNodeColor:]::dark = CGColorCreateWithHex(0x999999FFuLL);
  [CGRenderer _colorForNodeColor:]::light = CGColorCreateWithHex(0xD3D3D3FFuLL);
  [CGRenderer _colorForNodeColor:]::red = CGColorCreateWithHex(0xFFCCCCFFuLL);
  [CGRenderer _colorForNodeColor:]::redAlt = CGColorCreateWithHex(0xFFDDDDFFuLL);
  [CGRenderer _colorForNodeColor:]::green = CGColorCreateWithHex(0xCCFFCCFFuLL);
  [CGRenderer _colorForNodeColor:]::greenAlt = CGColorCreateWithHex(0xDDFFDDFFuLL);
  [CGRenderer _colorForNodeColor:]::yellow = CGColorCreateWithHex(0xFFFFAAFFuLL);
  [CGRenderer _colorForNodeColor:]::yellowAlt = CGColorCreateWithHex(0xFFFFDDFFuLL);
  [CGRenderer _colorForNodeColor:]::blue = CGColorCreateWithHex(0xCCCCFFFFuLL);
  [CGRenderer _colorForNodeColor:]::blueAlt = CGColorCreateWithHex(0xDDDDFFFFuLL);
  [CGRenderer _colorForNodeColor:]::magenta = CGColorCreateWithHex(0xFFAAFFFFuLL);
  [CGRenderer _colorForNodeColor:]::magentaAlt = CGColorCreateWithHex(0xFFDDFFFFuLL);
  [CGRenderer _colorForNodeColor:]::cyan = CGColorCreateWithHex(0xCCFFFFFFuLL);
  [CGRenderer _colorForNodeColor:]::cyanAlt = CGColorCreateWithHex(0xDDFFFFFFuLL);
  result = CGColorCreateWithHex(0xFF88CCFFuLL);
  [CGRenderer _colorForNodeColor:]::hotPink = result;
  return result;
}

- (void)_drawNodeContent:(id)x2_0
{
  v120 = *MEMORY[0x1E69E9840];
  v5 = [x2_0 shape];
  v6 = [x2_0 color];
  [x2_0 contentCornerSize];
  v8 = v7;
  v10 = v9;
  CGContextSetFillColorWithColor(self->context, [(CGRenderer *)self _colorForNodeColor:v6]);
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        [x2_0 contentFrame];
        v35 = v31;
        if (v33 * 0.5 >= v8)
        {
          v37 = v32;
          v38 = v33;
          v39 = v34;
          MinX = CGRectGetMinX(*&v31);
          v127.origin.x = v35;
          v127.origin.y = v37;
          v127.size.width = v38;
          v127.size.height = v39;
          MaxX = CGRectGetMaxX(v127);
          v128.origin.x = v35;
          v128.origin.y = v37;
          v128.size.width = v38;
          v128.size.height = v39;
          MinY = CGRectGetMinY(v128);
          v129.origin.x = v35;
          v129.origin.y = v37;
          v129.size.width = v38;
          v129.size.height = v39;
          MidY = CGRectGetMidY(v129);
          v130.origin.x = v35;
          v130.origin.y = v37;
          v130.size.width = v38;
          v130.size.height = v39;
          MaxY = CGRectGetMaxY(v130);
          v44 = v8 + MinX;
          v45 = MaxX - v8;
          Mutable = CGPathCreateMutable();
          CGPathMoveToPoint(Mutable, 0, MinX, MidY);
          CGPathAddLineToPoint(Mutable, 0, v44, MaxY);
          CGPathAddLineToPoint(Mutable, 0, v45, MaxY);
          CGPathAddLineToPoint(Mutable, 0, MaxX, MidY);
          CGPathAddLineToPoint(Mutable, 0, v45, MinY);
          v28 = Mutable;
          v29 = v44;
          v30 = MinY;
          goto LABEL_17;
        }

        goto LABEL_12;
      }

LABEL_47:
      [CGRenderer _drawNodeContent:];
    }

    [x2_0 contentFrame];
    v36 = CGPathCreateWithRoundedRect(v126, v8, v10, 0);
LABEL_15:
    Mutable = v36;
    goto LABEL_18;
  }

  if (!v5)
  {
    [x2_0 contentFrame];
    v36 = CGPathCreateWithRect(v125, 0);
    goto LABEL_15;
  }

  if (v5 != 1)
  {
    goto LABEL_47;
  }

  [x2_0 contentFrame];
  v15 = v11;
  v16 = v12;
  if (v13 * 0.5 >= v8 && v14 * 0.5 >= v10)
  {
    v18 = v13;
    v19 = v14;
    v100 = CGRectGetMinX(*&v11);
    v122.origin.x = v15;
    v122.origin.y = v16;
    v122.size.width = v18;
    v122.size.height = v19;
    v20 = CGRectGetMaxX(v122);
    v123.origin.x = v15;
    v123.origin.y = v16;
    v123.size.width = v18;
    v123.size.height = v19;
    v21 = CGRectGetMinY(v123);
    v124.origin.x = v15;
    v124.origin.y = v16;
    v124.size.width = v18;
    v124.size.height = v19;
    v22 = CGRectGetMaxY(v124);
    v23 = v8 + v100;
    v24 = v20 - v8;
    v25 = v10 + v21;
    v26 = v22 - v10;
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, v100, v26);
    CGPathAddLineToPoint(Mutable, 0, v23, v22);
    CGPathAddLineToPoint(Mutable, 0, v24, v22);
    CGPathAddLineToPoint(Mutable, 0, v20, v26);
    CGPathAddLineToPoint(Mutable, 0, v20, v25);
    CGPathAddLineToPoint(Mutable, 0, v24, v21);
    CGPathAddLineToPoint(Mutable, 0, v23, v21);
    v28 = Mutable;
    v29 = v100;
    v30 = v25;
LABEL_17:
    CGPathAddLineToPoint(v28, 0, v29, v30);
    CGPathCloseSubpath(Mutable);
    goto LABEL_18;
  }

LABEL_12:
  Mutable = 0;
LABEL_18:
  CGContextAddPath(self->context, Mutable);
  CGContextDrawPath(self->context, kCGPathFillStroke);
  CGPathRelease(Mutable);
  v46 = CFAttributedStringCreate(0, [x2_0 label], +[CIGVNode textAttributesForLabel](CIGVNode, "textAttributesForLabel"));
  context = self->context;
  [x2_0 labelFrame];
  CGContextDrawAttributedString(context, v46, v131);
  CFRelease(v46);
  if ([x2_0 images])
  {
    if (CFArrayGetCount([x2_0 images]))
    {
      v48 = [x2_0 images];
      [x2_0 imagesFrame];
      v50 = v49;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      obj = v48;
      v51 = [v48 countByEnumeratingWithState:&v112 objects:v119 count:16];
      if (v51)
      {
        v52 = v51;
        v102 = *v113;
        v99 = xmmword_1F1031190;
        v53 = qword_1F10311A0;
        v54 = MEMORY[0x1E695EFD0];
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v113 != v102)
            {
              objc_enumerationMutation(obj);
            }

            v56 = *(*(&v112 + 1) + 8 * i);
            v57 = 0.5 * CGImageGetWidth(v56);
            v58 = 0.5 * CGImageGetHeight(v56);
            [x2_0 imagesFrame];
            v60 = (v59 - v58) * 0.5;
            [x2_0 imagesFrame];
            v62 = v61 + v60;
            *&callbacks.version = v99;
            callbacks.releaseInfo = v53;
            v63 = v54[1];
            *&matrix.a = *v54;
            *&matrix.c = v63;
            *&matrix.tx = v54[2];
            v64 = 0;
            *&v63 = 0;
            v65 = 16.0;
            v66 = 16.0;
            v67 = CGPatternCreate(0, *(&v63 - 8), &matrix, 16.0, 16.0, kCGPatternTilingNoDistortion, 1, &callbacks);
            Pattern = CGColorSpaceCreatePattern(0);
            matrix.a = 1.0;
            v69 = CGColorCreateWithPattern(Pattern, v67, &matrix.a);
            CGColorSpaceRelease(Pattern);
            CGPatternRelease(v67);
            v121.width = v50;
            v121.height = v62;
            CGContextSetPatternPhase(self->context, v121);
            CGContextSetFillColorWithColor(self->context, v69);
            CGColorRelease(v69);
            v132.origin.x = v50;
            v132.origin.y = v62;
            v132.size.width = v57;
            v132.size.height = v58;
            CGContextFillRect(self->context, v132);
            v133.origin.x = v50;
            v133.origin.y = v62;
            v133.size.width = v57;
            v133.size.height = v58;
            CGContextDrawImage(self->context, v133, v56);
            v50 = v50 + v57 + 5.0;
          }

          v52 = [obj countByEnumeratingWithState:&v112 objects:v119 count:16];
        }

        while (v52);
      }
    }
  }

  if ([x2_0 rois] && CFArrayGetCount(objc_msgSend(x2_0, "rois")))
  {
    [x2_0 roisFrame];
    v71 = v70;
    v73 = v72;
    v74 = [x2_0 rois];
    [x2_0 extent];
    x = v75;
    y = v77;
    width = v79;
    height = v81;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v83 = [v74 countByEnumeratingWithState:&v107 objects:v117 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v108;
      do
      {
        for (j = 0; j != v84; ++j)
        {
          if (*v108 != v85)
          {
            objc_enumerationMutation(v74);
          }

          v142.origin.x = rectFromValue(*(*(&v107 + 1) + 8 * j));
          v142.origin.y = v87;
          v142.size.width = v88;
          v142.size.height = v89;
          v134.origin.x = x;
          v134.origin.y = y;
          v134.size.width = width;
          v134.size.height = height;
          v135 = CGRectUnion(v134, v142);
          x = v135.origin.x;
          y = v135.origin.y;
          width = v135.size.width;
          height = v135.size.height;
        }

        v84 = [v74 countByEnumeratingWithState:&v107 objects:v117 count:16];
      }

      while (v84);
    }

    v90 = v71 - x;
    v91 = v73 - y;
    CGContextSetStrokeColor(self->context, [CGRenderer _drawNodeContent:]::black);
    [x2_0 extent];
    if (!CGRectIsNull(v136))
    {
      [x2_0 extent];
      if (!CGRectIsInfinite(v137))
      {
        *&matrix.a = xmmword_19CF26950;
        CGContextSetLineDash(self->context, 0.0, &matrix.a, 2uLL);
        v92 = self->context;
        [x2_0 extent];
        v139 = CGRectOffset(v138, v90, v91);
        CGContextStrokeRect(v92, v139);
        CGContextSetLineDash(self->context, 0.0, 0, 0);
      }
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v93 = [v74 countByEnumeratingWithState:&v103 objects:v116 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v104;
      do
      {
        for (k = 0; k != v94; ++k)
        {
          if (*v104 != v95)
          {
            objc_enumerationMutation(v74);
          }

          v140.origin.x = rectFromValue(*(*(&v103 + 1) + 8 * k));
          v97 = self->context;
          v141 = CGRectOffset(v140, v90, v91);
          CGContextStrokeRect(v97, v141);
        }

        v94 = [v74 countByEnumeratingWithState:&v103 objects:v116 count:16];
      }

      while (v94);
    }
  }
}

- (void)_drawNodeBadge:(id)x2_0
{
  v5 = [x2_0 color];
  [x2_0 badgeFrame];
  v9 = v8;
  v11 = v10;
  v12 = v6;
  v13 = v7;
  if (v6 >= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v6;
  }

  v15 = v14 * 0.5;
  CGContextSetFillColorWithColor(self->context, [(CGRenderer *)self _colorForNodeColor:v5]);
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v12;
  v20.size.height = v13;
  v16 = CGPathCreateWithRoundedRect(v20, v15, v15, 0);
  CGContextAddPath(self->context, v16);
  CGContextDrawPath(self->context, kCGPathFillStroke);
  CGPathRelease(v16);
  v17 = CFAttributedStringCreate(0, [x2_0 title], +[CIGVNode textAttributesForTitle](CIGVNode, "textAttributesForTitle"));
  context = self->context;
  [x2_0 titleFrame];
  CGContextDrawAttributedString(context, v17, v21);

  CFRelease(v17);
}

- (void)drawNode:(id)a3
{
  [(CGRenderer *)self _drawNodeContent:?];
  if ([a3 title])
  {

    [(CGRenderer *)self _drawNodeBadge:a3];
  }
}

- (void)_drawPolyline:(id)a3
{
  v5 = [a3 count];
  v6 = pointFromValue([a3 objectAtIndexedSubscript:0]);
  v8 = v7;
  CGContextMoveToPoint(self->context, v6, v7);
  if (([a3 count] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = 1;
    do
    {
      v6 = pointFromValue([a3 objectAtIndexedSubscript:v9]);
      v8 = v10;
      CGContextAddLineToPoint(self->context, v6, v10);
      ++v9;
    }

    while (v9 < [a3 count] - 1);
  }

  v11 = pointFromValue([a3 objectAtIndexedSubscript:v5 - 1]);
  v12 = v6 - v11;
  v13 = v11;
  v33 = v14;
  v34 = v11;
  v15 = v8 - v14;
  v16 = v14;
  v17 = hypot(v6 - v11, v8 - v14);
  v18 = v13 + v12 / v17 * 8.0;
  v19 = v16 + v15 / v17 * 8.0;
  CGContextAddLineToPoint(self->context, v18, v19);
  CGContextStrokePath(self->context);
  v20 = v18 - v6;
  v21 = v19 - v8;
  v22 = -(v19 - v8 - (v18 - v6) * 6.123234e-17);
  v23 = (v19 - v8) * 6.123234e-17;
  v24 = hypot(v22, v20 + v23);
  v25 = v18 + v22 / v24 + v22 / v24;
  v26 = v19 + (v20 + v23) / v24 + (v20 + v23) / v24;
  v27 = v21 + v20 * 6.123234e-17;
  v28 = v23 - v20;
  v29 = hypot(v27, v28);
  v30 = v18 + v27 / v29 + v27 / v29;
  v31 = v19 + v28 / v29 + v28 / v29;
  CGContextMoveToPoint(self->context, v34, v33);
  CGContextAddLineToPoint(self->context, v25, v26);
  CGContextAddLineToPoint(self->context, v30, v31);
  context = self->context;

  CGContextFillPath(context);
}

- (void)_drawCubicSpline:(id)a3
{
  v5 = [a3 count];
  v6 = pointFromValue([a3 objectAtIndexedSubscript:0]);
  CGContextMoveToPoint(self->context, v6, v7);
  v8 = pointFromValue([a3 objectAtIndexedSubscript:0]);
  v10 = v9;
  v11 = pointFromValue([a3 objectAtIndexedSubscript:1]);
  v13 = v12;
  if (v5 == 2)
  {
    v14 = hypot(0.0, 1.0);
    v15 = -1.0;
    if (v10 <= v13)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = -1.0;
    }

    v17 = 0.0 / v14;
    v18 = 1.0 / v14;
    v19 = v11 + v17 * v16;
    v20 = v13 + v18 * v16;
    if (v10 > v13)
    {
      v15 = 1.0;
    }

    v21 = v17 * v15;
    v22 = v18 * v15;
    v62.x = v8 + v21;
    v62.y = v10 + v22;
    v66.x = v8;
    v66.y = v10;
    v70.x = v11;
    v70.y = v13;
    CGCubicSplineGetControlPoints(v62, v66, v70, *&v19, &v60, &v59);
    context = self->context;
    x = v60.x;
    y = v60.y;
    v26 = v59.x;
    v27 = v59.y;

    CGContextAddCurveToPoint(context, x, y, v26, v27, v11, v13);
  }

  else
  {
    v57 = pointFromValue([a3 objectAtIndexedSubscript:2]);
    v29 = v28;
    if (v10 <= v13)
    {
      v30 = -1.0;
    }

    else
    {
      v30 = 1.0;
    }

    v31 = hypot(0.0, 1.0);
    v32 = 1.0 / v31;
    v58 = 0.0 / v31;
    v63.x = v8 + v30 * (0.0 / v31);
    v63.y = v10 + v30 * v32;
    v67.x = v8;
    v67.y = v10;
    v71.x = v11;
    v71.y = v13;
    v74.x = v57;
    v74.y = v29;
    CGCubicSplineGetControlPoints(v63, v67, v71, v74, &v60, &v59);
    CGContextAddCurveToPoint(self->context, v60.x, v60.y, v59.x, v59.y, v11, v13);
    if ((v5 - 1) >= 3)
    {
      v33 = 3;
      v34 = 2;
      do
      {
        v35 = pointFromValue([a3 objectAtIndexedSubscript:{v33 - 3, *&v57}]);
        v37 = v36;
        v38 = pointFromValue([a3 objectAtIndexedSubscript:v33 - 2]);
        v40 = v39;
        v41 = pointFromValue([a3 objectAtIndexedSubscript:v34]);
        v43 = v42;
        v34 = v33;
        v75.x = pointFromValue([a3 objectAtIndexedSubscript:v33]);
        v75.y = v44;
        v64.x = v35;
        v64.y = v37;
        v68.x = v38;
        v68.y = v40;
        v72.x = v41;
        v72.y = v43;
        CGCubicSplineGetControlPoints(v64, v68, v72, v75, &v60, &v59);
        CGContextAddCurveToPoint(self->context, v60.x, v60.y, v59.x, v59.y, v41, v43);
      }

      while (v5 - 1 > v33++);
    }

    v46 = pointFromValue([a3 objectAtIndexedSubscript:{v5 - 3, *&v57}]);
    v48 = v47;
    v49 = pointFromValue([a3 objectAtIndexedSubscript:v5 - 2]);
    v51 = v50;
    v53 = pointFromValue([a3 objectAtIndexedSubscript:v5 - 1]);
    v54 = v52;
    v55 = -1.0;
    if (v51 <= v52)
    {
      v55 = 1.0;
    }

    v76.x = v53 + v58 * v55;
    v76.y = v52 + v32 * v55;
    v65.x = v46;
    v65.y = v48;
    v69.x = v49;
    v69.y = v51;
    v73.x = v53;
    v73.y = v54;
    CGCubicSplineGetControlPoints(v65, v69, v73, v76, &v60, &v59);
    CGContextAddCurveToPoint(self->context, v60.x, v60.y, v59.x, v59.y, v53, v54);
    v56 = self->context;

    CGContextStrokePath(v56);
  }
}

- (void)hyperlinkEdge:(id)a3 from:(CGPoint)a4 to:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v11 = [a3 from];
  v12 = [a3 to];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p to %p", v11, v12];
  v21.x = x;
  v21.y = y;
  CGPDFContextAddDestinationAtPoint(self->context, v13, v21);
  v23.origin.x = v8 + -10.0;
  v23.origin.y = v7 + -10.0;
  v23.size.width = 20.0;
  v23.size.height = 20.0;
  CGPDFContextSetDestinationForRect(self->context, v13, v23);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p to %p", v12, v11];
  v22.x = v8;
  v22.y = v7;
  CGPDFContextAddDestinationAtPoint(self->context, v14, v22);
  context = self->context;
  v18 = 20.0;
  v19 = 20.0;

  v16 = x + -10.0;
  v17 = y + -10.0;
  CGPDFContextSetDestinationForRect(context, v14, *(&v18 - 2));
}

- (void)drawEdge:(id)a3 withPath:(id)a4
{
  v32 = [a4 mutableCopy];
  v6 = pointFromValue([v32 objectAtIndexedSubscript:1]);
  v30 = v7;
  [objc_msgSend(a3 "from")];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  MidX = CGRectGetMidX(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MidY = CGRectGetMidY(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v14 = CGRectGetWidth(v36) * 0.5;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v15 = fmin(fmin(v14 / vabdd_f64(v6, MidX), 1.0), CGRectGetHeight(v37) * 0.5 / vabdd_f64(v30, MidY));
  v29 = MidY + (v30 - MidY) * v15;
  v31 = MidX + (v6 - MidX) * v15;
  v27 = pointFromValue([v32 objectAtIndexedSubscript:{objc_msgSend(v32, "count") - 2}]);
  v28 = v16;
  [objc_msgSend(a3 "to")];
  v17 = v38.origin.x;
  v18 = v38.origin.y;
  v19 = v38.size.width;
  v20 = v38.size.height;
  v21 = CGRectGetMidX(v38);
  v39.origin.x = v17;
  v39.origin.y = v18;
  v39.size.width = v19;
  v39.size.height = v20;
  v22 = CGRectGetMidY(v39);
  v40.origin.x = v17;
  v40.origin.y = v18;
  v40.size.width = v19;
  v40.size.height = v20;
  v23 = CGRectGetWidth(v40) * 0.5;
  v41.origin.x = v17;
  v41.origin.y = v18;
  v41.size.width = v19;
  v41.size.height = v20;
  v24 = fmin(fmin(v23 / vabdd_f64(v27, v21), 1.0), CGRectGetHeight(v41) * 0.5 / vabdd_f64(v28, v22));
  v25 = v21 + (v27 - v21) * v24;
  v26 = v22 + (v28 - v22) * v24;
  [v32 setObject:valueWithPoint(v25 atIndexedSubscript:{v26), objc_msgSend(v32, "count") - 1}];
  [(CGRenderer *)self hyperlinkEdge:a3 from:v31 to:v29, v25, v26];
  {
    [CGRenderer drawEdge:withPath:]::deviceGray = CGColorSpaceCreateDeviceGray();
  }

  CGContextSetStrokeColorSpace(self->context, [CGRenderer drawEdge:withPath:]::deviceGray);
  CGContextSetStrokeColor(self->context, [CGRenderer drawEdge:withPath:]::black);
  CGContextSetFillColorSpace(self->context, [CGRenderer drawEdge:withPath:]::deviceGray);
  CGContextSetFillColor(self->context, [CGRenderer drawEdge:withPath:]::black);
  CGContextSetLineWidth(self->context, 1.0);
  if (self->drawWithSplines)
  {
    [(CGRenderer *)self _drawCubicSpline:v32];
  }

  else
  {
    [(CGRenderer *)self _drawPolyline:v32];
  }
}

- (CGSize)separation
{
  objc_copyStruct(v4, &self->separation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end