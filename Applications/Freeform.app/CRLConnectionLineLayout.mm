@interface CRLConnectionLineLayout
- (BOOL)shouldApplyOffsetWhenComputingLayoutGeometry;
- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (id)createConnectedPathFrom:(id)a3 to:(id)a4 withControlPoints:(CGPoint)a5[3] clipPath:(BOOL)a6;
- (id)quadraticCurve:(CGPoint)a3[3];
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4;
@end

@implementation CRLConnectionLineLayout

- (id)quadraticCurve:(CGPoint)a3[3]
{
  x = a3->x;
  y = a3->y;
  v5 = a3[1].x;
  v6 = a3[1].y;
  v8 = a3[2].x;
  v7 = a3[2].y;
  v9 = +[CRLBezierPath bezierPath];
  if (sub_10011F010(x, y, v5, v6, v8, v7) && (v38.origin.x = sub_10011EC88(x, y, v8), v37.x = v5, v37.y = v6, CGRectContainsPoint(v38, v37)))
  {
    [v9 moveToPoint:{x, y}];
    [v9 lineToPoint:{v8, v7}];
  }

  else
  {
    v10 = sub_10011F340(x, y, 0.25);
    v11 = sub_10011F31C(v5, v6, v10);
    v13 = v12;
    v14 = sub_10011F340(v8, v7, 0.25);
    v15 = sub_10011F31C(v11, v13, v14);
    v17 = sub_10011F340(v15, v16, 2.0);
    v19 = v18;
    v20 = sub_10011F340(x, y, 0.333333333);
    v35 = y;
    v21 = v7;
    v23 = v22;
    v24 = sub_10011F340(v17, v19, 0.666666667);
    v26 = v25;
    v27 = sub_10011F334(v20, v23, v24);
    v29 = v28;
    v30 = sub_10011F340(v8, v21, 0.333333333);
    v31 = sub_10011F334(v24, v26, v30);
    v33 = v32;
    [v9 moveToPoint:{x, v35}];
    [v9 curveToPoint:v8 controlPoint1:v21 controlPoint2:{v27, v29, v31, v33}];
  }

  return v9;
}

- (id)createConnectedPathFrom:(id)a3 to:(id)a4 withControlPoints:(CGPoint)a5[3] clipPath:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = [(CRLConnectionLineLayout *)self quadraticCurve:a5];
  v29 = 1;
  [(CRLConnectionLineAbstractLayout *)self setTailClipT:0.0];
  [(CRLConnectionLineAbstractLayout *)self setHeadClipT:1.0];
  if (v10)
  {
    [(CRLConnectionLineAbstractLayout *)self outsetFrom];
    v13 = [(CRLConnectionLineAbstractLayout *)self clipPath:v12 onLayout:v10 outset:0 reversed:&v29 isValid:?];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 segment];
      [v14 t];
      [(CRLConnectionLineAbstractLayout *)self setTailClipT:?];
    }

    else
    {
      v15 = -1;
    }

    if (v11)
    {
      goto LABEL_8;
    }

LABEL_5:
    v16 = -1;
    goto LABEL_12;
  }

  v15 = -1;
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_8:
  [(CRLConnectionLineAbstractLayout *)self outsetTo];
  v17 = [(CRLConnectionLineAbstractLayout *)self clipPath:v12 onLayout:v11 outset:1 reversed:&v29 isValid:?];
  v18 = v17;
  if (v17)
  {
    v16 = [v17 segment];
    [v18 t];
    [(CRLConnectionLineAbstractLayout *)self setHeadClipT:?];
  }

  else
  {
    v16 = -1;
  }

LABEL_12:
  [(CRLConnectionLineAbstractLayout *)self i_setVisibleLine:1];
  if (v15 < 0 && v16 < 0)
  {
    v19 = v12;
    goto LABEL_37;
  }

  v20 = 0;
  if (v15 < 0 || v16 < 0 || v15 < v16)
  {
LABEL_20:
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (v15 == v16)
  {
    [(CRLConnectionLineAbstractLayout *)self tailClipT];
    v22 = v21;
    [(CRLConnectionLineAbstractLayout *)self headClipT];
    v20 = v22 >= v23;
    goto LABEL_20;
  }

  v20 = 1;
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (v11)
  {
    if (v20 || (v29 & 1) == 0)
    {
      v19 = v12;
      [(CRLConnectionLineAbstractLayout *)self i_setVisibleLine:0];
      goto LABEL_37;
    }

    if ((v29 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

LABEL_25:
  if (v10 | v11 && (v29 & 1) == 0)
  {
LABEL_36:
    v19 = v12;
    [(CRLConnectionLineAbstractLayout *)self setTailClipT:0.0];
    [(CRLConnectionLineAbstractLayout *)self setHeadClipT:1.0];
    goto LABEL_37;
  }

LABEL_27:
  if (![(CRLConnectionLineAbstractLayout *)self clipTail])
  {
    [(CRLConnectionLineAbstractLayout *)self setTailClipT:0.0];
  }

  if (![(CRLConnectionLineAbstractLayout *)self clipHead])
  {
    [(CRLConnectionLineAbstractLayout *)self setHeadClipT:1.0];
  }

  if (v6)
  {
    [(CRLConnectionLineAbstractLayout *)self tailClipT];
    v25 = v24;
    [(CRLConnectionLineAbstractLayout *)self headClipT];
    v27 = v26;
  }

  else
  {
    v27 = 1.0;
    v25 = 0.0;
  }

  v19 = +[CRLBezierPath bezierPath];
  [v19 appendBezierPath:v12 fromSegment:v15 t:v16 toSegment:0 t:v25 withoutMove:v27];
LABEL_37:

  return v19;
}

- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v10 = a4.y;
  v11 = a4.x;
  v12 = a3.y;
  v13 = a3.x;
  v15 = objc_opt_class();
  v16 = v15;
  v17 = *(&self->super.super.mCachedEditableBezierPathSource + 3);
  if (v17)
  {
    v18 = sub_100014370(v15, v17);
  }

  else
  {
    v19 = [(CRLShapeLayout *)self shapeInfo];
    v20 = [v19 pathSource];
    v18 = sub_100014370(v16, v20);
  }

  v21 = *(&self->super.super.mCachedPathSource + 3);
  if (v21)
  {
    v22 = v21;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
LABEL_7:
    [v22 transform];

    goto LABEL_8;
  }

  v23 = [(CRLCanvasLayout *)self info];
  v22 = [v23 geometry];

  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  if (v22)
  {
    goto LABEL_7;
  }

LABEL_8:
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  sub_100139F80(1, &v29, v9, v8, x, y, v13, v12, v11, v10);
  [v18 getControlKnobPosition:12];
  v28 = vaddq_f64(v31, vmlaq_n_f64(vmulq_n_f64(v30, *(&v34 + 1) + v24 * *(&v33 + 1) + *(&v32 + 1) * v25), v29, *&v34 + v24 * *&v33 + *&v32 * v25));

  v27 = v28.f64[1];
  v26 = v28.f64[0];
  result.y = v27;
  result.x = v26;
  return result;
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v4 = [(CRLConnectionLineAbstractLayout *)self connectedPathSource];
  [v4 getControlKnobPosition:10];
  v6 = v5;
  v8 = v7;
  v38.f64[0] = v5;
  v38.f64[1] = v7;
  [v4 getControlKnobPosition:12];
  v10 = v9;
  v12 = v11;
  [v4 getControlKnobPosition:11];
  v14 = v13;
  v16 = v15;
  v41 = v13;
  v42 = v15;
  v17 = sub_10011F340(v6, v8, 0.25);
  v18 = sub_10011F31C(v10, v12, v17);
  v20 = v19;
  v21 = sub_10011F340(v14, v16, 0.25);
  v22 = sub_10011F31C(v18, v20, v21);
  v39 = sub_10011F340(v22, v23, 2.0);
  v40 = v24;
  if ([(CRLConnectionLineAbstractLayout *)self hasControlKnobsInStraightLine])
  {
    [(CRLConnectionLineAbstractLayout *)self tailClipT];
    v26 = v25;
    [(CRLConnectionLineAbstractLayout *)self headClipT];
    v28 = (v26 + v27) * 0.5;
  }

  else
  {
    v29 = [(CRLConnectionLineAbstractLayout *)self i_visibleLine];
    v28 = 0.5;
    if (v29)
    {
      [(CRLConnectionLineAbstractLayout *)self tailClipT];
      v31 = v30;
      [(CRLConnectionLineAbstractLayout *)self headClipT];
      v28 = fmax(v31, fmin(v32, 0.5));
    }
  }

  v33 = sub_100404920(&v38, v28);
  v35 = v34;

  v36 = v33;
  v37 = v35;
  result.y = v37;
  result.x = v36;
  return result;
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4
{
  y = a3.y;
  x = a3.x;
  v5 = a4;
  v6 = [v5 knob];
  v7 = [v6 tag];

  if (v7 == 12)
  {
    v8 = [(CRLCanvasLayout *)self originalGeometry];
    v9 = v8;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    if (v8)
    {
      [v8 transform];
      v11 = *&v48.a;
      v12 = *&v48.c;
      v10 = *&v48.tx;
    }

    v37 = v10;
    v41 = vmlaq_n_f64(vmulq_n_f64(v12, y), v11, x);

    v46 = CGPointZero;
    v47 = v46;
    v13 = [(CRLConnectionLineAbstractLayout *)self i_originalPathSource];
    v14 = [v13 bezierPath];
    [v14 getStartPoint:&v47 andEndPoint:&v46];

    v15 = [(CRLCanvasLayout *)self originalPureGeometry];
    v16 = v15;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    if (v15)
    {
      [v15 transform];
      v17 = *&v48.a;
      v18 = *&v48.c;
      v19 = *&v48.tx;
    }

    v42 = vaddq_f64(v37, v41);
    v47 = vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v18, v47.f64[1]), v17, v47.f64[0]));

    v20 = [(CRLCanvasLayout *)self originalPureGeometry];
    v21 = v20;
    if (v20)
    {
      [v20 transform];
      v22 = *&v48.a;
      v23 = *&v48.c;
      v24 = *&v48.tx;
    }

    else
    {
      v24 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
    }

    v46 = vaddq_f64(v24, vmlaq_n_f64(vmulq_n_f64(v23, v46.y), v22, v46.x));

    v49 = v47;
    v50 = v46;
    v39 = v42.f64[1];
    v26 = sub_100404B24(v49.f64, v42.f64[0], v42.f64[1]);
    v27 = sub_100120ABC(v49.f64[0], v49.f64[1], v50.x, v50.y, v26);
    v29 = sub_100120090(v27, v28, v42.f64[0], v42.f64[1]);
    v30 = [v5 icc];
    [v30 viewScale];
    v32 = 7 / v31;

    if (v29 < v32)
    {
      v33 = sub_100120ABC(v49.f64[0], v49.f64[1], v50.x, v50.y, 0.5);
      v39 = v34;
      v42.f64[0] = v33;
    }

    v35 = [(CRLCanvasLayout *)self originalGeometry];
    v36 = v35;
    if (v35)
    {
      [v35 transform];
    }

    else
    {
      memset(&v45, 0, sizeof(v45));
    }

    CGAffineTransformInvert(&v48, &v45);
    v43 = vaddq_f64(*&v48.tx, vmlaq_n_f64(vmulq_n_f64(*&v48.c, v39), *&v48.a, v42.f64[0]));

    v25 = v43;
  }

  else
  {
    v25.f64[0] = x;
    v25.f64[1] = y;
  }

  v44.receiver = self;
  v44.super_class = CRLConnectionLineLayout;
  [(CRLConnectionLineAbstractLayout *)&v44 dynamicallyMovedSmartShapeKnobTo:v5 withTracker:*&v25];
}

- (BOOL)shouldApplyOffsetWhenComputingLayoutGeometry
{
  v3 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
    v4 = v5 == 0;
  }

  return v4;
}

@end