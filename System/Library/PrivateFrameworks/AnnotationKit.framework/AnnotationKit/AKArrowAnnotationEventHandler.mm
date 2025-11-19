@interface AKArrowAnnotationEventHandler
- (CGPoint)_updatedMidPointForAnnotation:(id)a3 withNewStartPt:(CGPoint)a4 andNewEndPt:(CGPoint)a5;
- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7;
- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4;
@end

@implementation AKArrowAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7
{
  v37 = [(AKAnnotationEventHandler *)self annotation:a3];
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 9)
  {
    [v37 startPoint];
    v12 = v11;
    v14 = v13;
    [v37 endPoint];
    v16 = v15;
    v18 = v17;
LABEL_3:
    v19 = v37;
    goto LABEL_9;
  }

  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 10)
  {
    [v37 endPoint];
    v12 = v20;
    v14 = v21;
    [v37 startPoint];
  }

  else
  {
    if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]!= 11)
    {
      v16 = *MEMORY[0x277CBF348];
      v18 = *(MEMORY[0x277CBF348] + 8);
      v14 = v18;
      v12 = *MEMORY[0x277CBF348];
      goto LABEL_3;
    }

    [v37 midPoint];
    v12 = v24;
    v14 = v25;
    [v37 midPoint];
  }

  v19 = v37;
  v16 = v22;
  v18 = v23;
LABEL_9:
  [v19 startPoint];
  v27 = v26;
  [v37 endPoint];
  v29 = v28;
  [v37 startPoint];
  v31 = v27 + (v29 - v30) * 0.5;
  [v37 startPoint];
  v33 = v32;
  [v37 endPoint];
  v35 = v34;
  [v37 startPoint];
  a3->x = v12;
  a3->y = v14;
  a4->x = v16;
  a4->y = v18;
  a5->x = v31;
  a5->y = v33 + (v35 - v36) * 0.5;
}

- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 9 || [(AKAnnotationEventHandler *)self initiallyDraggedArea]== 10)
  {
    if (v4)
    {
      [(AKAnnotationEventHandler *)self initialCenter];
      v15 = v14;
      v17 = v16;
      v18 = x - v14;
      v19 = y - v16;
      if ((v4 & 2) != 0)
      {
        [AKGeometryHelper snapVectorTo45Degrees:v18, v19];
        x = v15 + v18;
        y = v17 + v19;
      }

      v10 = v15 - v18;
      v11 = v17 - v19;
    }

    else
    {
      [(AKAnnotationEventHandler *)self initialOtherPoint];
      v10 = v8;
      v11 = v9;
      if ((v4 & 2) != 0)
      {
        [AKGeometryHelper snapVectorTo45Degrees:x - v8, y - v9];
        x = v10 + v12;
        y = v11 + v13;
      }
    }

    v39 = [(AKAnnotationEventHandler *)self pageController];
    v20 = [v39 geometryHelper];
    [v20 contentAlignedPointForPoint:{x, y}];
    v22 = v21;
    v24 = v23;

    v25 = [v39 geometryHelper];
    [v25 contentAlignedPointForPoint:{v10, v11}];
    v27 = v26;
    v29 = v28;

    if (v22 == v27 && v24 == v29)
    {
      goto LABEL_31;
    }

    v30 = [(AKAnnotationEventHandler *)self annotation];
    if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 9)
    {
      [(AKArrowAnnotationEventHandler *)self _updatedMidPointForAnnotation:v30 withNewStartPt:v22 andNewEndPt:v24, v27, v29];
      [v30 setMidPoint:?];
      [v30 startPoint];
      if (v32 != v22 || v31 != v24)
      {
        [v30 setStartPoint:{v22, v24}];
      }

      [v30 endPoint];
      if (v34 == v27 && v33 == v29)
      {
        goto LABEL_30;
      }
    }

    else
    {
      [(AKArrowAnnotationEventHandler *)self _updatedMidPointForAnnotation:v30 withNewStartPt:v27 andNewEndPt:v29, v22, v24];
      [v30 setMidPoint:?];
      [v30 startPoint];
      if (v36 != v27 || v35 != v29)
      {
        [v30 setStartPoint:{v27, v29}];
      }

      [v30 endPoint];
      if (v38 == v22)
      {
        v27 = v22;
        v29 = v24;
        if (v37 == v24)
        {
LABEL_30:

          goto LABEL_31;
        }
      }

      else
      {
        v27 = v22;
        v29 = v24;
      }
    }

    [v30 setEndPoint:{v27, v29}];
    goto LABEL_30;
  }

  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]!= 11)
  {
    return;
  }

  v39 = [(AKAnnotationEventHandler *)self annotation];
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 11)
  {
    [v39 setMidPoint:{x, y}];
  }

LABEL_31:
}

- (CGPoint)_updatedMidPointForAnnotation:(id)a3 withNewStartPt:(CGPoint)a4 andNewEndPt:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v9 = a3;
  [v9 startPoint];
  v11 = v10;
  v13 = v12;
  [v9 endPoint];
  v15 = v14 - v13;
  v17 = v16 - v11;
  v27 = atan2(v14 - v13, v16 - v11);
  v18 = hypot(v17, v15);
  v19 = x - v8;
  v20 = y - v7;
  v21 = hypot(v19, v20) / v18;
  [v9 midPoint];
  v28 = v23;
  v29 = v22;

  memset(&v33, 0, sizeof(v33));
  CGAffineTransformMakeTranslation(&v33, -v11, -v13);
  CGAffineTransformMakeRotation(&t2, -v27);
  t1 = v33;
  CGAffineTransformConcat(&v32, &t1, &t2);
  v33 = v32;
  CGAffineTransformMakeScale(&t2, v21, v21);
  t1 = v33;
  CGAffineTransformConcat(&v32, &t1, &t2);
  v33 = v32;
  v24 = atan2(v20, v19);
  CGAffineTransformMakeRotation(&t2, v24);
  t1 = v33;
  CGAffineTransformConcat(&v32, &t1, &t2);
  v33 = v32;
  CGAffineTransformMakeTranslation(&t2, v8, v7);
  t1 = v33;
  CGAffineTransformConcat(&v32, &t1, &t2);
  v25 = vaddq_f64(*&v32.tx, vmlaq_n_f64(vmulq_n_f64(*&v32.c, v28), *&v32.a, v29));
  v26 = v25.f64[1];
  result.x = v25.f64[0];
  result.y = v26;
  return result;
}

@end