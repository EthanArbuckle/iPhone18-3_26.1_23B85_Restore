@interface AKThoughtBubbleAnnotationEventHandler
- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer;
- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options;
@end

@implementation AKThoughtBubbleAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  v22 = *MEMORY[0x277CBF348];
  v23 = v22;
  v21 = v22;
  annotation = [(AKAnnotationEventHandler *)self annotation];
  initiallyDraggedArea = [(AKAnnotationEventHandler *)self initiallyDraggedArea];
  if (initiallyDraggedArea - 1 >= 8)
  {
    if (initiallyDraggedArea == 14)
    {
      [annotation pointyBitPoint];
      v23.x = v17;
      v23.y = v18;
      [annotation rectangle];
      MidX = CGRectGetMidX(v24);
      [annotation rectangle];
      v21.x = MidX;
      v21.y = CGRectGetMidY(v25);
      v22 = v21;
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = AKThoughtBubbleAnnotationEventHandler;
    [(AKRectangularAnnotationEventHandler *)&v20 getInitialDraggedPoint:&v23 otherPoint:&v22 center:&v21 forEvent:eventCopy orRecognizer:recognizerCopy];
  }

  v16 = v22;
  *point = v23;
  *otherPoint = v16;
  *center = v21;
}

- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options
{
  y = point.y;
  x = point.x;
  annotation = [(AKAnnotationEventHandler *)self annotation];
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  [annotation rectangle];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [annotation rotationAngle];
  [AKGeometryHelper rotationTransformForRect:v10 withAngle:v12, v14, v16, -v17];
  v18 = y * 0.0 + 0.0 * x + 0.0;
  v19 = v18;
  pageController = [(AKAnnotationEventHandler *)self pageController];
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]!= 14)
  {
    [annotation rectangle];
    v43 = v42;
    v80 = v45;
    v81 = v44;
    v79 = v46;
    v86.receiver = self;
    v86.super_class = AKThoughtBubbleAnnotationEventHandler;
    [(AKRectangularAnnotationEventHandler *)&v86 updateModelWithCurrentPoint:options options:x, y];
    if (options)
    {
      [(AKAnnotationEventHandler *)self initialCenter];
    }

    else
    {
      [(AKAnnotationEventHandler *)self initialOtherPoint];
    }

    v49 = v47;
    v50 = v48;
    [(AKAnnotationEventHandler *)self lastPositionInModel];
    v52 = v51 - v49;
    [(AKAnnotationEventHandler *)self lastPositionInModel];
    [AKGeometryHelper compareVectorDirectionsFirstVector:v52 secondVector:v53 - v50, v18 - v49, v18 - v50];
    v55 = v54;
    v57 = v56;
    if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 8 || [(AKAnnotationEventHandler *)self initiallyDraggedArea]== 4)
    {
      v75 = 1.0;
      sx = v55;
    }

    else
    {
      v75 = v57;
      if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 6 || [(AKAnnotationEventHandler *)self initiallyDraggedArea]== 2)
      {
        sx = 1.0;
      }

      else
      {
        sx = v55;
      }
    }

    [annotation rectangle];
    v59 = v58;
    v61 = v60;
    v73 = v62;
    v64 = v63;
    memset(&v85, 0, sizeof(v85));
    v90.origin.x = v43;
    v90.origin.y = v81;
    v90.size.width = v80;
    v90.size.height = v79;
    v65 = -CGRectGetMidX(v90);
    v91.origin.x = v43;
    v91.origin.y = v81;
    v91.size.width = v80;
    v91.size.height = v79;
    MidY = CGRectGetMidY(v91);
    CGAffineTransformMakeTranslation(&v85, v65, -MidY);
    v92.origin.x = v59;
    v92.origin.y = v61;
    v92.size.width = v73;
    v74 = v64;
    v92.size.height = v64;
    sxa = sx * CGRectGetWidth(v92);
    v93.origin.x = v43;
    v93.origin.y = v81;
    v93.size.width = v80;
    v93.size.height = v79;
    sxb = sxa / CGRectGetWidth(v93);
    v94.origin.x = v59;
    v94.origin.y = v61;
    v94.size.width = v73;
    v94.size.height = v64;
    v67 = v75 * CGRectGetHeight(v94);
    v95.origin.x = v43;
    v95.origin.y = v81;
    v95.size.width = v80;
    v95.size.height = v79;
    Height = CGRectGetHeight(v95);
    CGAffineTransformMakeScale(&t2, sxb, v67 / Height);
    t1 = v85;
    CGAffineTransformConcat(&v84, &t1, &t2);
    v85 = v84;
    v96.origin.x = v59;
    v96.origin.y = v61;
    v96.size.width = v73;
    v96.size.height = v74;
    MidX = CGRectGetMidX(v96);
    v97.origin.x = v59;
    v97.origin.y = v61;
    v97.size.width = v73;
    v97.size.height = v74;
    v70 = CGRectGetMidY(v97);
    CGAffineTransformMakeTranslation(&t2, MidX, v70);
    t1 = v85;
    CGAffineTransformConcat(&v84, &t1, &t2);
    v85 = v84;
    [annotation pointyBitPoint];
    v40 = vaddq_f64(*&v85.tx, vmlaq_n_f64(vmulq_n_f64(*&v85.c, v71), *&v85.a, v72));
    v41 = v40.f64[1];
    v39 = annotation;
    goto LABEL_16;
  }

  [(AKAnnotationEventHandler *)self initialOtherPoint];
  if ((options & 2) != 0)
  {
    v23 = v21;
    v24 = v22;
    [AKGeometryHelper snapVectorTo45Degrees:v18 - v21, v18 - v22];
    v18 = v23 + v25;
    v19 = v24 + v26;
  }

  [AKAnnotationPointOfInterestHelper validatePoint:14 ofDraggableArea:annotation forAnnotation:pageController onPageController:v18, v19];
  v28 = v27;
  v30 = v29;
  geometryHelper = [pageController geometryHelper];
  [geometryHelper contentAlignedPointForPoint:{v28, v30}];
  v33 = v32;
  v35 = v34;

  [annotation pointyBitPoint];
  if (v37 != v33 || v36 != v35)
  {
    v39 = annotation;
    v40.f64[0] = v33;
    v41 = v35;
LABEL_16:
    [v39 setPointyBitPoint:{v40.f64[0], v41}];
  }
}

@end