@interface AKSpeechBubbleAnnotationEventHandler
- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7;
- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4;
@end

@implementation AKSpeechBubbleAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7
{
  v12 = a6;
  v13 = a7;
  v25 = *MEMORY[0x277CBF348];
  v26 = v25;
  v24 = v25;
  v14 = [(AKAnnotationEventHandler *)self annotation];
  v15 = [(AKAnnotationEventHandler *)self initiallyDraggedArea];
  if (v15 - 1 < 8 || v15 == 14)
  {
    v21.receiver = self;
    v21.super_class = AKSpeechBubbleAnnotationEventHandler;
    [(AKThoughtBubbleAnnotationEventHandler *)&v21 getInitialDraggedPoint:&v26 otherPoint:&v25 center:&v24 forEvent:v12 orRecognizer:v13];
  }

  else if (v15 == 15)
  {
    v17 = [(AKAnnotationEventHandler *)self pageController];
    v23[0] = 0;
    v23[1] = 0;
    v22[0] = 0;
    v22[1] = 0;
    [AKSpeechBubbleAnnotationRenderer basePointsOfPointyBit:v14 withUpdatedProperties:0 firstPoint:v23 secondPoint:v22];
    if (+[AKGeometryHelper exifOrientationHasFlip:](AKGeometryHelper, "exifOrientationHasFlip:", [v17 currentModelToScreenExifOrientation]))
    {
      v18 = v22;
    }

    else
    {
      v18 = v23;
    }

    v26 = *v18;
    [v14 rectangle];
    MidX = CGRectGetMidX(v27);
    [v14 rectangle];
    MidY = CGRectGetMidY(v28);
    v24.x = MidX;
    v24.y = MidY;
    v25 = v24;
  }

  v16 = v25;
  *a3 = v26;
  *a4 = v16;
  *a5 = v24;
}

- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(AKAnnotationEventHandler *)self annotation];
  memset(&v19[1], 0, 48);
  [v8 rectangle];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 rotationAngle];
  [AKGeometryHelper rotationTransformForRect:v10 withAngle:v12, v14, v16, -v17];
  v18 = [(AKAnnotationEventHandler *)self pageController];
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 15)
  {
    [AKAnnotationPointOfInterestHelper validatePoint:[(AKAnnotationEventHandler *)self initiallyDraggedArea] ofDraggableArea:v8 forAnnotation:v18 onPageController:y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0];
    [AKSpeechBubbleAnnotationRenderer pointyBitPointWidthAngleGivenControlBasePoint:v8 forAnnotation:?];
    [v8 setPointyBitBaseWidthAngle:?];
  }

  else
  {
    v19[0].receiver = self;
    v19[0].super_class = AKSpeechBubbleAnnotationEventHandler;
    [(objc_super *)v19 updateModelWithCurrentPoint:a4 options:x, y];
  }
}

@end