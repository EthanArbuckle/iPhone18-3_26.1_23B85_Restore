@interface AKAnnotationPointOfInterestHelper
+ (BOOL)_point:(CGPoint)a3 isInRectWithSize:(double)a4 atPoint:(CGPoint)a5;
+ (CGPoint)_concreteValidatePoint:(CGPoint)a3 ofDraggableArea:(unint64_t)a4 forAnnotation:(id)a5 onPageController:(id)a6;
+ (CGPoint)pointForDraggableArea:(unint64_t)a3 onAnnotation:(id)a4 pageControllerForPixelAlignment:(id)a5;
+ (CGPoint)validatePoint:(CGPoint)a3 ofDraggableArea:(unint64_t)a4 forAnnotation:(id)a5 onPageController:(id)a6;
+ (Class)_poiHelperClassForAnnotation:(id)a3;
+ (unint64_t)_concreteDraggableAreaForPoint:(CGPoint)a3 onAnnotation:(id)a4 withScale:(double)a5 pageControllerForPixelAlignment:(id)a6;
+ (unint64_t)draggableAreaForPoint:(CGPoint)a3 onAnnotation:(id)a4 withScale:(double)a5 pageControllerForPixelAlignment:(id)a6;
+ (void)pointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6;
@end

@implementation AKAnnotationPointOfInterestHelper

+ (void)pointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6
{
  v10 = a6;
  v11 = a5;
  [objc_msgSend(a1 _poiHelperClassForAnnotation:{v11), "_concretePointsOfInterest:withVisualStyle:ofAnnotation:pageControllerForPixelAlignment:", a3, a4, v11, v10}];
}

+ (CGPoint)pointForDraggableArea:(unint64_t)a3 onAnnotation:(id)a4 pageControllerForPixelAlignment:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v29 = 0;
  v30 = 0;
  [a1 pointsOfInterest:&v30 withVisualStyle:&v29 ofAnnotation:v8 pageControllerForPixelAlignment:v9];
  v10 = v30;
  v11 = v29;
  v13 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v25 + 1) + 8 * i) akPointValue];
        v20 = v19;
        v22 = v21;
        if ([a1 draggableAreaForPoint:v8 onAnnotation:v9 withScale:? pageControllerForPixelAlignment:?] == a3)
        {
          v12 = v22;
          v13 = v20;
          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v23 = v13;
  v24 = v12;
  result.y = v24;
  result.x = v23;
  return result;
}

+ (unint64_t)draggableAreaForPoint:(CGPoint)a3 onAnnotation:(id)a4 withScale:(double)a5 pageControllerForPixelAlignment:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a6;
  v12 = a4;
  v13 = [objc_msgSend(a1 _poiHelperClassForAnnotation:{v12), "_concreteDraggableAreaForPoint:onAnnotation:withScale:pageControllerForPixelAlignment:", v12, v11, x, y, a5}];

  return v13;
}

+ (unint64_t)_concreteDraggableAreaForPoint:(CGPoint)a3 onAnnotation:(id)a4 withScale:(double)a5 pageControllerForPixelAlignment:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a4;
  v12 = a6;
  [a1 draggableAreaScaleFactorForScaleFactor:a5];
  v14 = v13;
  v36 = 0;
  v35 = 0;
  [a1 pointsOfInterest:&v36 withVisualStyle:&v35 ofAnnotation:v11 pageControllerForPixelAlignment:v12];
  v15 = v36;
  v16 = v35;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0x7FFFFFFFFFFFFFFFLL;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_23F4AD2A8;
  v24 = &unk_278C7C418;
  v17 = v16;
  v26 = &v31;
  v27 = a1;
  v28 = x;
  v29 = y;
  v30 = v14;
  v25 = v17;
  [v15 enumerateObjectsUsingBlock:&v21];
  if (v32[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 0;
  }

  else
  {
    v19 = [a1 _poiHelperClassForAnnotation:{v11, v21, v22, v23, v24}];
    v18 = [v19 _concreteDraggableAreaForPointOfInterestWithIndex:v32[3] ofAnnotation:v11 onPageController:v12];
  }

  _Block_object_dispose(&v31, 8);
  return v18;
}

+ (CGPoint)validatePoint:(CGPoint)a3 ofDraggableArea:(unint64_t)a4 forAnnotation:(id)a5 onPageController:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a6;
  v12 = a5;
  [objc_msgSend(a1 _poiHelperClassForAnnotation:{v12), "_concreteValidatePoint:ofDraggableArea:forAnnotation:onPageController:", a4, v12, v11, x, y}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

+ (CGPoint)_concreteValidatePoint:(CGPoint)a3 ofDraggableArea:(unint64_t)a4 forAnnotation:(id)a5 onPageController:(id)a6
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s must be overriden by a subclass", a6, a3.x, a3.y, "+[AKAnnotationPointOfInterestHelper _concreteValidatePoint:ofDraggableArea:forAnnotation:onPageController:]"}];
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.y = v7;
  result.x = v6;
  return result;
}

+ (BOOL)_point:(CGPoint)a3 isInRectWithSize:(double)a4 atPoint:(CGPoint)a5
{
  v10.y = a3.y;
  x = a3.x;
  v6 = a5.x - a4 * 0.5;
  v7 = a5.y - a4 * 0.5;
  v10.x = x;
  return CGRectContainsPoint(*(&a4 - 2), v10);
}

+ (Class)_poiHelperClassForAnnotation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end