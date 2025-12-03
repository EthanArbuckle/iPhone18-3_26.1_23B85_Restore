@interface AKArrowAnnotationEventHandler
- (CGPoint)_updatedMidPointForAnnotation:(id)annotation withNewStartPt:(CGPoint)pt andNewEndPt:(CGPoint)endPt;
- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer;
- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options;
@end

@implementation AKArrowAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer
{
  v37 = [(AKAnnotationEventHandler *)self annotation:point];
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
  point->x = v12;
  point->y = v14;
  otherPoint->x = v16;
  otherPoint->y = v18;
  center->x = v31;
  center->y = v33 + (v35 - v36) * 0.5;
}

- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options
{
  optionsCopy = options;
  y = point.y;
  x = point.x;
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 9 || [(AKAnnotationEventHandler *)self initiallyDraggedArea]== 10)
  {
    if (optionsCopy)
    {
      [(AKAnnotationEventHandler *)self initialCenter];
      v15 = v14;
      v17 = v16;
      v18 = x - v14;
      v19 = y - v16;
      if ((optionsCopy & 2) != 0)
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
      if ((optionsCopy & 2) != 0)
      {
        [AKGeometryHelper snapVectorTo45Degrees:x - v8, y - v9];
        x = v10 + v12;
        y = v11 + v13;
      }
    }

    pageController = [(AKAnnotationEventHandler *)self pageController];
    geometryHelper = [pageController geometryHelper];
    [geometryHelper contentAlignedPointForPoint:{x, y}];
    v22 = v21;
    v24 = v23;

    geometryHelper2 = [pageController geometryHelper];
    [geometryHelper2 contentAlignedPointForPoint:{v10, v11}];
    v27 = v26;
    v29 = v28;

    if (v22 == v27 && v24 == v29)
    {
      goto LABEL_31;
    }

    annotation = [(AKAnnotationEventHandler *)self annotation];
    if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 9)
    {
      [(AKArrowAnnotationEventHandler *)self _updatedMidPointForAnnotation:annotation withNewStartPt:v22 andNewEndPt:v24, v27, v29];
      [annotation setMidPoint:?];
      [annotation startPoint];
      if (v32 != v22 || v31 != v24)
      {
        [annotation setStartPoint:{v22, v24}];
      }

      [annotation endPoint];
      if (v34 == v27 && v33 == v29)
      {
        goto LABEL_30;
      }
    }

    else
    {
      [(AKArrowAnnotationEventHandler *)self _updatedMidPointForAnnotation:annotation withNewStartPt:v27 andNewEndPt:v29, v22, v24];
      [annotation setMidPoint:?];
      [annotation startPoint];
      if (v36 != v27 || v35 != v29)
      {
        [annotation setStartPoint:{v27, v29}];
      }

      [annotation endPoint];
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

    [annotation setEndPoint:{v27, v29}];
    goto LABEL_30;
  }

  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]!= 11)
  {
    return;
  }

  pageController = [(AKAnnotationEventHandler *)self annotation];
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 11)
  {
    [pageController setMidPoint:{x, y}];
  }

LABEL_31:
}

- (CGPoint)_updatedMidPointForAnnotation:(id)annotation withNewStartPt:(CGPoint)pt andNewEndPt:(CGPoint)endPt
{
  y = endPt.y;
  x = endPt.x;
  v7 = pt.y;
  v8 = pt.x;
  annotationCopy = annotation;
  [annotationCopy startPoint];
  v11 = v10;
  v13 = v12;
  [annotationCopy endPoint];
  v15 = v14 - v13;
  v17 = v16 - v11;
  v27 = atan2(v14 - v13, v16 - v11);
  v18 = hypot(v17, v15);
  v19 = x - v8;
  v20 = y - v7;
  v21 = hypot(v19, v20) / v18;
  [annotationCopy midPoint];
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