@interface AKAnnotationPointOfInterestHelper
+ (BOOL)_point:(CGPoint)_point isInRectWithSize:(double)size atPoint:(CGPoint)point;
+ (CGPoint)_concreteValidatePoint:(CGPoint)point ofDraggableArea:(unint64_t)area forAnnotation:(id)annotation onPageController:(id)controller;
+ (CGPoint)pointForDraggableArea:(unint64_t)area onAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
+ (CGPoint)validatePoint:(CGPoint)point ofDraggableArea:(unint64_t)area forAnnotation:(id)annotation onPageController:(id)controller;
+ (Class)_poiHelperClassForAnnotation:(id)annotation;
+ (unint64_t)_concreteDraggableAreaForPoint:(CGPoint)point onAnnotation:(id)annotation withScale:(double)scale pageControllerForPixelAlignment:(id)alignment;
+ (unint64_t)draggableAreaForPoint:(CGPoint)point onAnnotation:(id)annotation withScale:(double)scale pageControllerForPixelAlignment:(id)alignment;
+ (void)pointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKAnnotationPointOfInterestHelper

+ (void)pointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  alignmentCopy = alignment;
  annotationCopy = annotation;
  [objc_msgSend(self _poiHelperClassForAnnotation:{annotationCopy), "_concretePointsOfInterest:withVisualStyle:ofAnnotation:pageControllerForPixelAlignment:", interest, style, annotationCopy, alignmentCopy}];
}

+ (CGPoint)pointForDraggableArea:(unint64_t)area onAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  v32 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  alignmentCopy = alignment;
  v29 = 0;
  v30 = 0;
  [self pointsOfInterest:&v30 withVisualStyle:&v29 ofAnnotation:annotationCopy pageControllerForPixelAlignment:alignmentCopy];
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
        if ([self draggableAreaForPoint:annotationCopy onAnnotation:alignmentCopy withScale:? pageControllerForPixelAlignment:?] == area)
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

+ (unint64_t)draggableAreaForPoint:(CGPoint)point onAnnotation:(id)annotation withScale:(double)scale pageControllerForPixelAlignment:(id)alignment
{
  y = point.y;
  x = point.x;
  alignmentCopy = alignment;
  annotationCopy = annotation;
  v13 = [objc_msgSend(self _poiHelperClassForAnnotation:{annotationCopy), "_concreteDraggableAreaForPoint:onAnnotation:withScale:pageControllerForPixelAlignment:", annotationCopy, alignmentCopy, x, y, scale}];

  return v13;
}

+ (unint64_t)_concreteDraggableAreaForPoint:(CGPoint)point onAnnotation:(id)annotation withScale:(double)scale pageControllerForPixelAlignment:(id)alignment
{
  y = point.y;
  x = point.x;
  annotationCopy = annotation;
  alignmentCopy = alignment;
  [self draggableAreaScaleFactorForScaleFactor:scale];
  v14 = v13;
  v36 = 0;
  v35 = 0;
  [self pointsOfInterest:&v36 withVisualStyle:&v35 ofAnnotation:annotationCopy pageControllerForPixelAlignment:alignmentCopy];
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
  selfCopy = self;
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
    v19 = [self _poiHelperClassForAnnotation:{annotationCopy, v21, v22, v23, v24}];
    v18 = [v19 _concreteDraggableAreaForPointOfInterestWithIndex:v32[3] ofAnnotation:annotationCopy onPageController:alignmentCopy];
  }

  _Block_object_dispose(&v31, 8);
  return v18;
}

+ (CGPoint)validatePoint:(CGPoint)point ofDraggableArea:(unint64_t)area forAnnotation:(id)annotation onPageController:(id)controller
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  annotationCopy = annotation;
  [objc_msgSend(self _poiHelperClassForAnnotation:{annotationCopy), "_concreteValidatePoint:ofDraggableArea:forAnnotation:onPageController:", area, annotationCopy, controllerCopy, x, y}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

+ (CGPoint)_concreteValidatePoint:(CGPoint)point ofDraggableArea:(unint64_t)area forAnnotation:(id)annotation onPageController:(id)controller
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s must be overriden by a subclass", controller, point.x, point.y, "+[AKAnnotationPointOfInterestHelper _concreteValidatePoint:ofDraggableArea:forAnnotation:onPageController:]"}];
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.y = v7;
  result.x = v6;
  return result;
}

+ (BOOL)_point:(CGPoint)_point isInRectWithSize:(double)size atPoint:(CGPoint)point
{
  v10.y = _point.y;
  x = _point.x;
  v6 = point.x - size * 0.5;
  v7 = point.y - size * 0.5;
  v10.x = x;
  return CGRectContainsPoint(*(&size - 2), v10);
}

+ (Class)_poiHelperClassForAnnotation:(id)annotation
{
  annotationCopy = annotation;
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