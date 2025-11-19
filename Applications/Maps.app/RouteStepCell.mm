@interface RouteStepCell
+ (id)cellWithRoute:(id)a3 stepIndex:(unint64_t)a4 mapType:(unint64_t)a5;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_intersectLineWithPoint1:(id)a3 point2:(id)a4 withRect:(id)a5;
- (BOOL)_lineSegmentsIntersectLineAPoint1:(id)a3 lineAPoint2:(id)a4 lineBPoint1:(id)a5 lineBPoint2:(id)a6 outIntersectionPoint:(id *)a7;
- (CGPoint)_cgPointApplyAffineTransform:(CGPoint)a3 :(CGAffineTransform *)a4 :(CGAffineTransform *)a5 :(CGAffineTransform *)a6;
- (CGRect)frame;
- (GEOComposedRouteStep)routeStep;
- (RouteStepCell)initWithRoute:(id)a3 stepIndex:(unint64_t)a4 mapType:(unint64_t)a5;
- (double)_textLayoutHeightForLines:(id)a3;
- (id)instructionStringsArray;
- (id)snapshotBlock;
- (unint64_t)numberOfSteps;
- (void)dealloc;
- (void)drawInRect:(CGRect)a3;
- (void)drawPinInRect:(CGRect)a3 zoomLevel:(double)a4;
- (void)drawRouteLineInRect:(CGRect)a3 zoomLevel:(double)a4;
- (void)releaseSnapshotCreator;
@end

@implementation RouteStepCell

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)dealloc
{
  [(RouteStepCell *)self releaseSnapshotCreator];
  v3.receiver = self;
  v3.super_class = RouteStepCell;
  [(RouteStepCell *)&v3 dealloc];
}

- (void)releaseSnapshotCreator
{
  snapshotter = self->_snapshotter;
  self->_snapshotter = 0;
}

- (id)snapshotBlock
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100765FC4;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (void)drawInRect:(CGRect)a3
{
  MinX = CGRectGetMinX(self->_frame);
  v5 = CGRectGetMinX(self->_frame);
  stepIndex = self->_stepIndex;
  if (!stepIndex)
  {
    v20 = 4;
LABEL_10:
    [PDFUtilities renderDocumentForType:v20 inRect:MinX + 4.0, CGRectGetMinY(self->_frame), 14.0, 31.0];
    goto LABEL_11;
  }

  if (stepIndex >= [(RouteStepCell *)self numberOfSteps]- 1)
  {
    if (self->_stepIndex)
    {
      v20 = 5;
    }

    else
    {
      v20 = 4;
    }

    goto LABEL_10;
  }

  [(UIColor *)self->_blueTextColor set];
  v7 = [NSString stringWithFormat:@"%lu", self->_stepIndex];
  v8 = [UIFont systemFontOfSize:37.0];
  [v7 _maps_sizeWithFont:v8];
  v10 = MinX + 10.0 + v9 * -0.5;
  v11 = v10 + v9;
  v12 = v5 + 30.0 - v11;
  v13 = v11 <= v5 + 30.0;
  v14 = 0.0;
  if (!v13)
  {
    v14 = v12;
  }

  v15 = v14 + v10;
  MinY = CGRectGetMinY(self->_frame);
  [v8 ascender];
  v18 = v17;
  [v8 capHeight];
  [v7 _maps_drawAtPoint:v8 withFont:{v15, MinY - v18 + v19}];

LABEL_11:
  v21 = [(RouteStepCell *)self instructionStringsArray];
  v22 = CGRectGetMinY(self->_frame);
  v23 = +[UIColor darkGrayColor];
  [v23 set];

  v24 = [UIFont systemFontOfSize:13.5];
  v25 = CGRectGetHeight(self->_frame) + 5.0;
  Width = CGRectGetWidth(self->_frame);
  [(RouteStepCell *)self _textLayoutHeightForLines:v21];
  if (v27 > v25)
  {
    v28 = [UIFont systemFontOfSize:11.0];

    v24 = v28;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v29 = v21;
  v30 = [v29 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = Width + -135.0;
    v33 = *v56;
    do
    {
      v34 = 0;
      do
      {
        if (*v56 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v55 + 1) + 8 * v34);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v35 set];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v22 == CGRectGetMinY(self->_frame))
            {
              [v24 ascender];
              v37 = v36;
              [v24 capHeight];
              v22 = v22 - v37 + v38;
            }

            [v35 _maps_sizeWithFont:v24 constrainedToSize:1 options:{v32, v25}];
            v40 = v39;
            [v35 _maps_drawInRect:v24 withFont:{CGRectGetMinX(self->_frame) + 135.0, v22, v32, v25}];
            v22 = v40 + v22;
          }
        }

        v34 = v34 + 1;
      }

      while (v31 != v34);
      v31 = [v29 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v31);
  }

  v41 = [(RouteStepCell *)self snapshotImage];

  if (v41)
  {
    v42 = v5 + 35.0;
    v43 = [(RouteStepCell *)self snapshotImage];
    [v43 size];
    v45 = v44;
    v47 = v46;

    v48 = CGRectGetMinY(self->_frame);
    v49 = v45 * 0.5;
    v50 = v47 * 0.5;
    v51 = [(RouteStepCell *)self snapshotImage];
    [v51 drawInRect:{v42, v48, v49, v50}];

    v52 = self->_stepIndex;
    if (v52 && v52 < [(RouteStepCell *)self numberOfSteps]- 1)
    {
      [(RouteStepCell *)self drawRouteLineInRect:v42 zoomLevel:v48, v49, v50, 16.0];
    }

    else
    {
      [(RouteStepCell *)self drawPinInRect:v42 zoomLevel:v48, v49, v50, 16.0];
    }

    v53 = +[UIColor lightGrayColor];
    [v53 set];

    v54 = [UIBezierPath bezierPathWithRect:v42, v48, v49, v50];
    [v54 stroke];
  }
}

- (id)instructionStringsArray
{
  route = self->_route;
  v3 = [(RouteStepCell *)self routeStep];
  v4 = [RouteMiddleStepLabelListView stringsForRoute:route step:v3 tableMode:0 isPrinting:1];

  return v4;
}

- (unint64_t)numberOfSteps
{
  v2 = [(GEOComposedRoute *)self->_route steps];
  v3 = [v2 count];

  return v3;
}

- (double)_textLayoutHeightForLines:(id)a3
{
  v4 = a3;
  MinX = CGRectGetMinX(self->_frame);
  MaxX = CGRectGetMaxX(self->_frame);
  Height = CGRectGetHeight(self->_frame);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = -135.0 - MinX + MaxX;
    v12 = *v21;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [UIFont systemFontOfSize:13.5, v20];
          [v15 _maps_sizeWithFont:v16 constrainedToSize:1 options:{v11, Height}];
          v18 = v17;

          v13 = v18 + v13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (void)drawRouteLineInRect:(CGRect)a3 zoomLevel:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v113 = 0;
  v114 = 0;
  [(GEOComposedRoute *)self->_route _maps_getMapPoints:&v114 count:&v113];
  if (v113)
  {
    goto LABEL_2;
  }

  v81 = sub_10006D178();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v115.a) = 136315906;
    *(&v115.a + 4) = "[RouteStepCell drawRouteLineInRect:zoomLevel:]";
    WORD2(v115.b) = 2080;
    *(&v115.b + 6) = "RouteStepCell.m";
    HIWORD(v115.c) = 1024;
    LODWORD(v115.d) = 239;
    WORD2(v115.d) = 2080;
    *(&v115.d + 6) = "count > 0";
    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v115, 0x26u);
  }

  if (sub_100E03634())
  {
    v82 = sub_10006D178();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = +[NSThread callStackSymbols];
      LODWORD(v115.a) = 138412290;
      *(&v115.a + 4) = v83;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%@", &v115, 0xCu);
    }
  }

  if (v113)
  {
LABEL_2:
    MKZoomScaleForZoomLevelF();
    sx = v9;
    v93 = 10.0 / v9;
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextSetLineCap(CurrentContext, kCGLineCapRound);
    CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
    v119.origin.x = x;
    v119.origin.y = y;
    v119.size.width = width;
    v119.size.height = height;
    CGContextClipToRect(CurrentContext, v119);
    Mutable = CGPathCreateMutable();
    v12 = [(RouteStepCell *)self routeStep];
    [v12 startCoordinate];
    MKTilePointForCoordinate();
    v106 = height;
    v14 = v13;
    v103 = width;
    v16 = v15;
    v17 = [(RouteStepCell *)self snapshotImage];
    [v17 size];
    v89 = x;
    v91 = y;
    v19 = v18;
    v21 = v20;

    v87 = v16 - v21 * 0.5;
    [v12 startCoordinate];
    v22 = MKMapPointForCoordinate(v116);
    MKCoordinateForTilePoint();
    v23 = MKMapPointForCoordinate(v117);
    MKZoomScaleForZoomLevelF();
    v25 = 10.0 / v24;
    v120.origin.x = v23.x;
    v120.origin.y = v23.y;
    v120.size.width = v22.x - v23.x + v22.x - v23.x;
    v120.size.height = v22.y - v120.origin.y + v22.y - v120.origin.y;
    v121 = MKMapRectInset(v120, v25, v25);
    v98 = v121.origin.y;
    v99 = v121.origin.x;
    v96 = v121.size.height;
    v97 = v121.size.width;
    b = CGAffineTransformIdentity.b;
    c = CGAffineTransformIdentity.c;
    d = CGAffineTransformIdentity.d;
    v29 = CGAffineTransformIdentity.tx;
    ty = CGAffineTransformIdentity.ty;
    v121.origin.x = v89;
    v121.origin.y = v91;
    v121.size.width = v103;
    v121.size.height = v106;
    tx = CGRectGetMinX(v121) - (v14 - v19 * 0.5);
    v122.origin.x = v89;
    v122.origin.y = v91;
    v122.size.width = v103;
    v122.size.height = v106;
    v30 = CGRectGetMinY(v122) - v87;
    v112.a = CGAffineTransformIdentity.a;
    v112.b = b;
    v88 = c;
    v90 = b;
    v112.c = c;
    v112.d = d;
    v84 = v29;
    v85 = d;
    v112.tx = v29;
    v112.ty = ty;
    CGAffineTransformTranslate(&v115, &v112, tx, v30);
    v112 = v115;
    CGAffineTransformScale(&v115, &v112, sx, sx);
    a = v115.a;
    v31 = v115.b;
    v33 = v115.c;
    v34 = v115.d;
    v36 = v115.tx;
    v35 = v115.ty;
    v37 = v115.tx + v115.a * v23.x;
    v38 = v37 + v115.c * v23.y;
    v39 = v115.ty + v115.b * v23.x + v115.d * v23.y;
    v104 = *&CGAffineTransformIdentity.c;
    v107 = *&CGAffineTransformIdentity.a;
    *&v115.a = v107;
    *&v115.c = v104;
    v100 = *&CGAffineTransformIdentity.tx;
    *&v115.tx = v100;
    *&v112.a = v107;
    *&v112.c = v104;
    *&v112.tx = v100;
    CGAffineTransformTranslate(&v115, &v112, -(v37 + v33 * v23.y), -v39);
    *&v112.a = v107;
    *&v112.c = v104;
    *&v112.tx = v100;
    *&v111.a = v107;
    *&v111.c = v104;
    *&v111.tx = v100;
    CGAffineTransformTranslate(&v112, &v111, v38, v39);
    v110 = v112;
    CGAffineTransformScale(&v111, &v110, 0.5, 0.5);
    v112 = v111;
    v40 = [v12 startPointIndex];
    v41 = &v114[16 * v40];
    v43 = *v41;
    v42 = v41[1];
    v44 = v40;
    v108 = a;
    v111.a = a;
    v111.b = v31;
    v102 = v36;
    v105 = v31;
    v92 = v33;
    v111.c = v33;
    v111.d = v34;
    v111.tx = v36;
    v111.ty = v35;
    v101 = v35;
    v110 = v115;
    v109 = v112;
    [(RouteStepCell *)self _cgPointApplyAffineTransform:&v111];
    v45 = 0.0;
    CGPathAddArc(Mutable, 0, v46, v47, 1.0, 0.0, 6.28318548, 1);
    if (v44 + 1 >= v113)
    {
      v53 = v42;
      v52 = v43;
      v50 = v33;
    }

    else
    {
      v48 = 0;
      v49 = 16 * v44;
      v50 = v33;
      while (1)
      {
        v51 = v44 + 1;
        v52 = *&v114[v49 + 16];
        v53 = *&v114[v49 + 24];
        v123.origin.y = v98;
        v123.origin.x = v99;
        v123.size.height = v96;
        v123.size.width = v97;
        v118.x = v52;
        v118.y = v53;
        v54 = MKMapRectContainsPoint(v123, v118);
        if (!v54 && (v48 & 1) != 0)
        {
          break;
        }

        v111.a = v108;
        v111.b = v105;
        v111.c = v92;
        v111.d = v34;
        v111.tx = v102;
        v111.ty = v101;
        v55 = sqrt((v52 - v43) * (v52 - v43) + (v53 - v42) * (v53 - v42));
        v110 = v115;
        v109 = v112;
        [(RouteStepCell *)self _cgPointApplyAffineTransform:&v111];
        CGPathAddLineToPoint(Mutable, 0, v56, v57);
        if (v51 < v113 - 1)
        {
          v43 = v52;
          v42 = v53;
        }

        v48 |= v54;
        v45 = v55 + v45;
        v58 = v44 + 2;
        v49 += 16;
        ++v44;
        if (v58 >= v113)
        {
          goto LABEL_16;
        }
      }

      [(RouteStepCell *)self _intersectLineWithPoint1:v43 point2:v42 withRect:v52, v53, v99, v98, v97, v96];
      v61 = v59;
      v62 = v60;
      v63 = sqrt((v60 - v42) * (v60 - v42) + (v59 - v43) * (v59 - v43));
      if (v51 < 3 || v63 >= v93)
      {
        v111.a = v108;
        v111.b = v105;
        v111.c = v92;
        v111.d = v34;
        v111.tx = v102;
        v111.ty = v101;
        v110 = v115;
        v109 = v112;
        [(RouteStepCell *)self _cgPointApplyAffineTransform:&v111];
        CGPathAddLineToPoint(Mutable, 0, v67, v68);
        v65 = v43;
        v66 = v42;
        v42 = v62;
        v43 = v61;
      }

      else
      {
        v64 = &v114[16 * v44];
        v65 = *(v64 - 2);
        v66 = *(v64 - 1);
      }

      v52 = v43;
      v53 = v42;
      v45 = v63 + v45;
      v43 = v65;
      v42 = v66;
    }

LABEL_16:
    free(v114);
    if (v45 > v93)
    {
      v111.a = v108;
      v111.b = v105;
      v111.c = v50;
      v111.d = v34;
      v111.tx = v102;
      v111.ty = v101;
      v110 = v115;
      v109 = v112;
      [(RouteStepCell *)self _cgPointApplyAffineTransform:&v111];
      v70 = v69;
      v72 = v71;
      v73 = atan2(v53 - v42, v52 - v43);
      v110.a = CGAffineTransformIdentity.a;
      v110.b = v90;
      v110.c = v88;
      v110.d = v85;
      v110.tx = v84;
      v110.ty = ty;
      CGAffineTransformRotate(&v111, &v110, v73);
      v74 = v111.c;
      v75 = v111.d;
      v76 = v111.tx;
      v77 = v111.ty;
      v78 = v70 + v111.a * -5.0;
      v79 = v72 + v111.b * -5.0;
      CGPathAddLineToPoint(Mutable, 0, v78 + v111.c * -3.0 + v111.tx, v79 + v111.d * -3.0 + v111.ty);
      CGPathMoveToPoint(Mutable, 0, v70, v72);
      CGPathAddLineToPoint(Mutable, 0, v78 + v74 * 3.0 + v76, v79 + v75 * 3.0 + v77);
    }

    v80 = sx * MKRoadWidthAtZoomScale(sx) * 0.25;
    CGContextSaveGState(CurrentContext);
    CGContextBeginPath(CurrentContext);
    CGContextAddPath(CurrentContext, Mutable);
    CGContextSetLineWidth(CurrentContext, v80);
    CGContextSetStrokeColorWithColor(CurrentContext, [(UIColor *)self->_routeOutlinePrintColor CGColor]);
    CGContextStrokePath(CurrentContext);
    CGContextRestoreGState(CurrentContext);
    CGContextSaveGState(CurrentContext);
    CGContextBeginPath(CurrentContext);
    CGContextAddPath(CurrentContext, Mutable);
    CGContextSetLineWidth(CurrentContext, v80 + -1.0);
    CGContextSetStrokeColorWithColor(CurrentContext, [(UIColor *)self->_routeCenterPrintColor CGColor]);
    CGContextSetCompositeOperation();
    CGContextStrokePath(CurrentContext);
    CGContextRestoreGState(CurrentContext);
    CGContextRestoreGState(CurrentContext);
    CGPathRelease(Mutable);
  }
}

- (CGPoint)_cgPointApplyAffineTransform:(CGPoint)a3 :(CGAffineTransform *)a4 :(CGAffineTransform *)a5 :(CGAffineTransform *)a6
{
  v6 = a4->tx + a4->a * a3.x + a4->c * a3.y;
  v7 = a4->ty + a4->b * a3.x + a4->d * a3.y;
  v8 = vmlaq_n_f64(vmlaq_n_f64(*&a6->tx, *&a6->a, a5->tx + a5->a * v6 + a5->c * v7), *&a6->c, a5->ty + a5->b * v6 + a5->d * v7);
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_intersectLineWithPoint1:(id)a3 point2:(id)a4 withRect:(id)a5
{
  var1 = a5.var1.var1;
  v6 = a5.var0.var1;
  var0 = a5.var0.var0;
  v8 = a4.var1;
  v9 = a4.var0;
  v10 = a3.var1;
  v11 = a3.var0;
  v13 = a5.var0.var0 + a5.var1.var0;
  v17 = 0.0;
  v18 = 0.0;
  if (![RouteStepCell _lineSegmentsIntersectLineAPoint1:"_lineSegmentsIntersectLineAPoint1:lineAPoint2:lineBPoint1:lineBPoint2:outIntersectionPoint:" lineAPoint2:&v17 lineBPoint1:? lineBPoint2:? outIntersectionPoint:?])
  {
    v14 = v6 + var1;
    if (![(RouteStepCell *)self _lineSegmentsIntersectLineAPoint1:&v17 lineAPoint2:v11 lineBPoint1:v10 lineBPoint2:v9 outIntersectionPoint:v8, v13, v6, v13, v14]&& ![(RouteStepCell *)self _lineSegmentsIntersectLineAPoint1:&v17 lineAPoint2:v11 lineBPoint1:v10 lineBPoint2:v9 outIntersectionPoint:v8, var0, v14, v13, v14])
    {
      [(RouteStepCell *)self _lineSegmentsIntersectLineAPoint1:&v17 lineAPoint2:v11 lineBPoint1:v10 lineBPoint2:v9 outIntersectionPoint:v8, var0, v6, var0, v14];
    }
  }

  v15 = v17;
  v16 = v18;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (BOOL)_lineSegmentsIntersectLineAPoint1:(id)a3 lineAPoint2:(id)a4 lineBPoint1:(id)a5 lineBPoint2:(id)a6 outIntersectionPoint:(id *)a7
{
  v7 = a6.var0 - a5.var0;
  v8 = a6.var1 - a5.var1;
  v9 = a4.var0 - a3.var0;
  v10 = a4.var1 - a3.var1;
  v11 = -(v7 * (a4.var1 - a3.var1) - v8 * v9);
  result = 0;
  if (v11 != 0.0)
  {
    v13 = a3.var1 - a5.var1;
    v14 = a3.var0 - a5.var0;
    v15 = -(v8 * (a3.var0 - a5.var0) - v7 * v13) / v11;
    if (v15 >= 0.0 && v15 <= 1.0)
    {
      v17 = -(v14 * v10 - v13 * v9) / v11;
      if (v17 >= 0.0 && v17 <= 1.0)
      {
        a7->var0 = a3.var0 + v15 * v9;
        a7->var1 = a3.var1 + v15 * v10;
        return 1;
      }
    }
  }

  return result;
}

- (void)drawPinInRect:(CGRect)a3 zoomLevel:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MKZoomScaleForZoomLevelF();
  sx = v9;
  v10 = [(RouteStepCell *)self routeStep];
  [v10 startCoordinate];
  MKTilePointForCoordinate();
  v12 = v11;
  v33 = v13;
  v14 = [(RouteStepCell *)self snapshotImage];
  [v14 size];
  v16 = v15;
  v18 = v17;

  ty = CGAffineTransformIdentity.ty;
  tx = CGAffineTransformIdentity.tx;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v19 = CGRectGetMinX(v37) - (v12 - v16 * 0.25);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MinY = CGRectGetMinY(v38);
  v21 = *&CGAffineTransformIdentity.c;
  *&v35.a = *&CGAffineTransformIdentity.a;
  *&v35.c = v21;
  v35.tx = tx;
  v35.ty = ty;
  CGAffineTransformTranslate(&v36, &v35, v19, MinY - (v33 - v18 * 0.25));
  v35 = v36;
  CGAffineTransformScale(&v36, &v35, sx, sx);
  a = v36.a;
  b = v36.b;
  c = v36.c;
  d = v36.d;
  v27 = v36.tx;
  v26 = v36.ty;
  v36.a = 0.0;
  v35.a = 0.0;
  [(GEOComposedRoute *)self->_route _maps_getMapPoints:&v36 count:&v35 forStep:v10];
  if (*&v35.a)
  {
    if (self->_stepIndex)
    {
      v28 = 5;
    }

    else
    {
      v28 = 4;
    }

    v29 = **&v36.a;
    v30 = *(*&v36.a + 8);
    free(*&v36.a);
    [PDFUtilities renderDocumentForType:v28 inRect:v27 + -6.0 + v29 * a + v30 * c, v26 + -28.0 + v29 * b + v30 * d, 12.0, 28.0];
  }
}

- (GEOComposedRouteStep)routeStep
{
  v3 = [(GEOComposedRoute *)self->_route steps];
  v4 = [v3 objectAtIndexedSubscript:self->_stepIndex];

  return v4;
}

- (RouteStepCell)initWithRoute:(id)a3 stepIndex:(unint64_t)a4 mapType:(unint64_t)a5
{
  v8 = a3;
  v18.receiver = self;
  v18.super_class = RouteStepCell;
  v9 = [(RouteStepCell *)&v18 init];
  v10 = v9;
  if (v9)
  {
    [(RouteStepCell *)v9 setRoute:v8];
    [(RouteStepCell *)v10 setStepIndex:a4];
    v11 = [[UIColor alloc] initWithRed:0.254901961 green:0.447058824 blue:0.811764706 alpha:0.800000012];
    routeCenterPrintColor = v10->_routeCenterPrintColor;
    v10->_routeCenterPrintColor = v11;

    v13 = [[UIColor alloc] initWithRed:0.223529412 green:0.380392157 blue:0.694117647 alpha:1.0];
    routeOutlinePrintColor = v10->_routeOutlinePrintColor;
    v10->_routeOutlinePrintColor = v13;

    v15 = [[UIColor alloc] initWithRed:0.254901961 green:0.435294118 blue:0.658823529 alpha:1.0];
    blueTextColor = v10->_blueTextColor;
    v10->_blueTextColor = v15;

    v10->_mapType = a5;
  }

  return v10;
}

+ (id)cellWithRoute:(id)a3 stepIndex:(unint64_t)a4 mapType:(unint64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithRoute:v8 stepIndex:a4 mapType:a5];

  return v9;
}

@end