@interface AKSpeechBubbleAnnotationEventHandler
- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer;
- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options;
@end

@implementation AKSpeechBubbleAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  v25 = *MEMORY[0x277CBF348];
  v26 = v25;
  v24 = v25;
  annotation = [(AKAnnotationEventHandler *)self annotation];
  initiallyDraggedArea = [(AKAnnotationEventHandler *)self initiallyDraggedArea];
  if (initiallyDraggedArea - 1 < 8 || initiallyDraggedArea == 14)
  {
    v21.receiver = self;
    v21.super_class = AKSpeechBubbleAnnotationEventHandler;
    [(AKThoughtBubbleAnnotationEventHandler *)&v21 getInitialDraggedPoint:&v26 otherPoint:&v25 center:&v24 forEvent:eventCopy orRecognizer:recognizerCopy];
  }

  else if (initiallyDraggedArea == 15)
  {
    pageController = [(AKAnnotationEventHandler *)self pageController];
    v23[0] = 0;
    v23[1] = 0;
    v22[0] = 0;
    v22[1] = 0;
    [AKSpeechBubbleAnnotationRenderer basePointsOfPointyBit:annotation withUpdatedProperties:0 firstPoint:v23 secondPoint:v22];
    if (+[AKGeometryHelper exifOrientationHasFlip:](AKGeometryHelper, "exifOrientationHasFlip:", [pageController currentModelToScreenExifOrientation]))
    {
      v18 = v22;
    }

    else
    {
      v18 = v23;
    }

    v26 = *v18;
    [annotation rectangle];
    MidX = CGRectGetMidX(v27);
    [annotation rectangle];
    MidY = CGRectGetMidY(v28);
    v24.x = MidX;
    v24.y = MidY;
    v25 = v24;
  }

  v16 = v25;
  *point = v26;
  *otherPoint = v16;
  *center = v24;
}

- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options
{
  y = point.y;
  x = point.x;
  annotation = [(AKAnnotationEventHandler *)self annotation];
  memset(&v19[1], 0, 48);
  [annotation rectangle];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [annotation rotationAngle];
  [AKGeometryHelper rotationTransformForRect:v10 withAngle:v12, v14, v16, -v17];
  pageController = [(AKAnnotationEventHandler *)self pageController];
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 15)
  {
    [AKAnnotationPointOfInterestHelper validatePoint:[(AKAnnotationEventHandler *)self initiallyDraggedArea] ofDraggableArea:annotation forAnnotation:pageController onPageController:y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0];
    [AKSpeechBubbleAnnotationRenderer pointyBitPointWidthAngleGivenControlBasePoint:annotation forAnnotation:?];
    [annotation setPointyBitBaseWidthAngle:?];
  }

  else
  {
    v19[0].receiver = self;
    v19[0].super_class = AKSpeechBubbleAnnotationEventHandler;
    [(objc_super *)v19 updateModelWithCurrentPoint:options options:x, y];
  }
}

@end