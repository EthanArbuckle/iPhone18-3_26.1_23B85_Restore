@interface AKThoughtBubblePointOfInterestHelper
+ (CGPoint)_concreteValidatePoint:(CGPoint)a3 ofDraggableArea:(unint64_t)a4 forAnnotation:(id)a5 onPageController:(id)a6;
+ (CGPoint)_constrainPointyPointToOutset:(CGPoint)a3 forAnnotation:(id)a4 outsetIsMin:(BOOL)a5;
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5;
+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6;
@end

@implementation AKThoughtBubblePointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6
{
  v39 = 0;
  v40 = 0;
  v38.receiver = a1;
  v38.super_class = &OBJC_METACLASS___AKThoughtBubblePointOfInterestHelper;
  v9 = a6;
  v10 = a5;
  objc_msgSendSuper2(&v38, sel__concretePointsOfInterest_withVisualStyle_ofAnnotation_pageControllerForPixelAlignment_, &v40, &v39, v10, v9);
  v11 = v40;
  v12 = v39;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count") + 1}];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count") + 1}];
  [v10 pointyBitPoint];
  v36 = v16;
  v37 = v15;
  [v10 rectangle];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v10 rotationAngle];
  v26 = v25;

  [AKGeometryHelper rotationTransformForRect:v18 withAngle:v20, v22, v24, v26];
  v27 = [v9 geometryHelper];

  [v27 screenPixelAlignedPointForPoint:{vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v36), 0, v37))}];
  v29 = v28;
  v31 = v30;

  v32 = [MEMORY[0x277CCAE60] akValueWithPoint:{v29, v31}];
  [v13 addObject:v32];

  v33 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  [v14 addObject:v33];

  [v13 addObjectsFromArray:v11];
  [v14 addObjectsFromArray:v12];
  v34 = v13;
  *a3 = v13;
  v35 = v14;
  *a4 = v14;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5
{
  if (!a3)
  {
    return 14;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKThoughtBubblePointOfInterestHelper;
  return objc_msgSendSuper2(&v6, sel__concreteDraggableAreaForPointOfInterestWithIndex_ofAnnotation_onPageController_, a3 - 1, a4, a5);
}

+ (CGPoint)_constrainPointyPointToOutset:(CGPoint)a3 forAnnotation:(id)a4 outsetIsMin:(BOOL)a5
{
  v5 = a5;
  x = a3.x;
  y = a3.y;
  v7 = a4;
  if (v5)
  {
    [a1 minOutset];
  }

  else
  {
    [a1 maxOutset];
  }

  v9 = v8;
  v10.f64[0] = x;
  v10.f64[1] = y;
  v29 = v10;
  if (v9 < 1.79769313e308)
  {
    [v7 originalModelBaseScaleFactor];
    v12 = v11;
    [v7 rectangle];
    v41 = CGRectInset(v40, -(v9 * v12), -(v9 * v12));
    v13 = v41.origin.x;
    v14 = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    MidX = CGRectGetMidX(v41);
    v42.origin.x = v13;
    v42.origin.y = v14;
    v42.size.width = width;
    v42.size.height = height;
    MidY = CGRectGetMidY(v42);
    v43.origin.x = v13;
    v43.origin.y = v14;
    v43.size.width = width;
    v43.size.height = height;
    v19 = CGRectGetHeight(v43) * 0.5;
    memset(&v38, 0, sizeof(v38));
    v28 = MidY;
    CGAffineTransformMakeTranslation(&v38, -MidX, -MidY);
    v44.origin.x = v13;
    v44.origin.y = v14;
    v44.size.width = width;
    v44.size.height = height;
    v20 = CGRectGetWidth(v44);
    CGAffineTransformMakeScale(&t2, (v19 + v19) / v20, 1.0);
    t1 = v38;
    CGAffineTransformConcat(&v37, &t1, &t2);
    v38 = v37;
    v21 = v37.tx + y * v37.c + v37.a * x;
    v22 = v37.ty + y * v37.d + v37.b * x;
    v23 = hypot(v21, v22);
    v24 = v23 <= v19;
    if (!v5)
    {
      v24 = v23 >= v19;
    }

    if (v24)
    {
      v33 = v19 * (v21 / v23);
      v31 = v19 * (v22 / v23);
      memset(&v37, 0, sizeof(v37));
      v45.origin.x = v13;
      v45.origin.y = v14;
      v45.size.width = width;
      v45.size.height = height;
      v25 = CGRectGetWidth(v45);
      CGAffineTransformMakeScale(&v37, v25 / (v19 + v19), 1.0);
      CGAffineTransformMakeTranslation(&t1, MidX, v28);
      v34 = v37;
      CGAffineTransformConcat(&t2, &v34, &t1);
      v37 = t2;
      v29 = vaddq_f64(*&t2.tx, vmlaq_n_f64(vmulq_n_f64(*&t2.c, v31), *&t2.a, v33));
    }
  }

  v27 = v29.f64[1];
  v26 = v29.f64[0];
  result.y = v27;
  result.x = v26;
  return result;
}

+ (CGPoint)_concreteValidatePoint:(CGPoint)a3 ofDraggableArea:(unint64_t)a4 forAnnotation:(id)a5 onPageController:(id)a6
{
  y = a3.y;
  x = a3.x;
  if (a4 == 14)
  {
    v10 = a5;
    [a1 _constrainPointyPointToOutset:v10 forAnnotation:0 outsetIsMin:{x, y}];
    [a1 _constrainPointyPointToOutset:v10 forAnnotation:1 outsetIsMin:?];
  }

  else
  {
    v17.receiver = a1;
    v17.super_class = &OBJC_METACLASS___AKThoughtBubblePointOfInterestHelper;
    objc_msgSendSuper2(&v17, sel__concreteValidatePoint_ofDraggableArea_forAnnotation_onPageController_, a4, a5, a6, a3.x, a3.y);
  }

  v13 = v11;
  v14 = v12;

  v15 = v13;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

@end