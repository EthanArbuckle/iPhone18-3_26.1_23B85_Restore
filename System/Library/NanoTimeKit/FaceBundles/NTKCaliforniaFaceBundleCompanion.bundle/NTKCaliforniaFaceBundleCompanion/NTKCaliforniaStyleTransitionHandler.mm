@interface NTKCaliforniaStyleTransitionHandler
- (CGAffineTransform)transformForMarkerAtIndex:(SEL)a3 markerType:(unint64_t)a4;
- (CGPoint)centerPoint;
- (CGPoint)positionForMarkerAtIndex:(unint64_t)a3 markerType:(unint64_t)a4;
- (NTKCaliforniaStyleTransitionHandler)initWithDevice:(id)a3;
- (double)animationDurationForHourMarkerAtIndex:(unint64_t)a3 markerType:(unint64_t)a4;
- (double)animationProgressForHourMarkerAtIndex:(unint64_t)a3 markerType:(unint64_t)a4;
- (double)animationStartTimeForMarkerAtIndex:(unint64_t)a3 markerType:(unint64_t)a4;
- (double)opacityForMarkerAtIndex:(unint64_t)a3 markerType:(unint64_t)a4;
@end

@implementation NTKCaliforniaStyleTransitionHandler

- (NTKCaliforniaStyleTransitionHandler)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKCaliforniaStyleTransitionHandler;
  v6 = [(NTKCaliforniaStyleTransitionHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (double)opacityForMarkerAtIndex:(unint64_t)a3 markerType:(unint64_t)a4
{
  [(NTKCaliforniaStyleTransitionHandler *)self animationProgressForHourMarkerAtIndex:a3 markerType:a4];
  CLKCompressFraction();

  CLKInterpolateBetweenFloatsClipped();
  return result;
}

- (CGPoint)positionForMarkerAtIndex:(unint64_t)a3 markerType:(unint64_t)a4
{
  [NTKCaliforniaStyleTransitionHandler animationProgressForHourMarkerAtIndex:"animationProgressForHourMarkerAtIndex:markerType:" markerType:?];
  if (a4)
  {
    v7 = [(NTKCaliforniaStyleTransitionHandler *)self fadeInHourMarkersCenterPoints];
  }

  else
  {
    v7 = [(NTKCaliforniaStyleTransitionHandler *)self fadeOutHourMarkersCenterPoints];
  }

  v8 = &v7[a3];
  v9 = *v8;
  v10 = v8[1];
  [(NTKCaliforniaStyleTransitionHandler *)self centerPoint];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  [(NTKCaliforniaStyleTransitionHandler *)self centerPoint];
  CLKInterpolateBetweenFloatsClipped();
  v14 = v13;
  v15 = v12;
  result.y = v14;
  result.x = v15;
  return result;
}

- (CGAffineTransform)transformForMarkerAtIndex:(SEL)a3 markerType:(unint64_t)a4
{
  [(NTKCaliforniaStyleTransitionHandler *)self animationProgressForHourMarkerAtIndex:a4 markerType:a5];
  CLKInterpolateBetweenFloatsClipped();

  return CGAffineTransformMakeScale(retstr, v6, v6);
}

- (double)animationProgressForHourMarkerAtIndex:(unint64_t)a3 markerType:(unint64_t)a4
{
  [NTKCaliforniaStyleTransitionHandler animationStartTimeForMarkerAtIndex:"animationStartTimeForMarkerAtIndex:markerType:" markerType:?];
  v8 = v7;
  [(NTKCaliforniaStyleTransitionHandler *)self animationDurationForHourMarkerAtIndex:a3 markerType:a4];
  v10 = v8 + v9;
  if (v10 <= 1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  [(NTKCaliforniaStyleTransitionHandler *)self fraction];
  v13 = 0.0;
  if (v12 >= v8)
  {
    v13 = 1.0;
    if (v12 <= v11)
    {
      CLKMapFractionIntoRange();
      v13 = v14;
    }
  }

  result = 1.0 - v13;
  if (a4)
  {
    return v13;
  }

  return result;
}

- (double)animationStartTimeForMarkerAtIndex:(unint64_t)a3 markerType:(unint64_t)a4
{
  if (a4)
  {
    v4 = a3 - 2;
    if (a3 <= 0xB)
    {
      v4 = a3;
    }

    v5 = (v4 + 79);
    if (a3 <= 2)
    {
      v5 = (a3 + 50);
    }
  }

  else
  {
    v5 = 100.0 / (4 * [(NTKCaliforniaStyleTransitionHandler *)self hourMarkersCount]) * a3;
  }

  return v5 / 100.0;
}

- (double)animationDurationForHourMarkerAtIndex:(unint64_t)a3 markerType:(unint64_t)a4
{
  v4 = (&unk_17560 + 8 * (a3 < 3));
  if (!a4)
  {
    v4 = (&unk_17550 + 8 * (a3 > 8));
  }

  return *v4 / 100.0;
}

- (CGPoint)centerPoint
{
  x = self->_centerPoint.x;
  y = self->_centerPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end