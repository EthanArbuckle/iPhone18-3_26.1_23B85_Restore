@interface NTKCaliforniaStyleTransitionHandler
- (CGAffineTransform)transformForMarkerAtIndex:(SEL)index markerType:(unint64_t)type;
- (CGPoint)centerPoint;
- (CGPoint)positionForMarkerAtIndex:(unint64_t)index markerType:(unint64_t)type;
- (NTKCaliforniaStyleTransitionHandler)initWithDevice:(id)device;
- (double)animationDurationForHourMarkerAtIndex:(unint64_t)index markerType:(unint64_t)type;
- (double)animationProgressForHourMarkerAtIndex:(unint64_t)index markerType:(unint64_t)type;
- (double)animationStartTimeForMarkerAtIndex:(unint64_t)index markerType:(unint64_t)type;
- (double)opacityForMarkerAtIndex:(unint64_t)index markerType:(unint64_t)type;
@end

@implementation NTKCaliforniaStyleTransitionHandler

- (NTKCaliforniaStyleTransitionHandler)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NTKCaliforniaStyleTransitionHandler;
  v6 = [(NTKCaliforniaStyleTransitionHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (double)opacityForMarkerAtIndex:(unint64_t)index markerType:(unint64_t)type
{
  [(NTKCaliforniaStyleTransitionHandler *)self animationProgressForHourMarkerAtIndex:index markerType:type];
  CLKCompressFraction();

  CLKInterpolateBetweenFloatsClipped();
  return result;
}

- (CGPoint)positionForMarkerAtIndex:(unint64_t)index markerType:(unint64_t)type
{
  [NTKCaliforniaStyleTransitionHandler animationProgressForHourMarkerAtIndex:"animationProgressForHourMarkerAtIndex:markerType:" markerType:?];
  if (type)
  {
    fadeInHourMarkersCenterPoints = [(NTKCaliforniaStyleTransitionHandler *)self fadeInHourMarkersCenterPoints];
  }

  else
  {
    fadeInHourMarkersCenterPoints = [(NTKCaliforniaStyleTransitionHandler *)self fadeOutHourMarkersCenterPoints];
  }

  v8 = &fadeInHourMarkersCenterPoints[index];
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

- (CGAffineTransform)transformForMarkerAtIndex:(SEL)index markerType:(unint64_t)type
{
  [(NTKCaliforniaStyleTransitionHandler *)self animationProgressForHourMarkerAtIndex:type markerType:a5];
  CLKInterpolateBetweenFloatsClipped();

  return CGAffineTransformMakeScale(retstr, v6, v6);
}

- (double)animationProgressForHourMarkerAtIndex:(unint64_t)index markerType:(unint64_t)type
{
  [NTKCaliforniaStyleTransitionHandler animationStartTimeForMarkerAtIndex:"animationStartTimeForMarkerAtIndex:markerType:" markerType:?];
  v8 = v7;
  [(NTKCaliforniaStyleTransitionHandler *)self animationDurationForHourMarkerAtIndex:index markerType:type];
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
  if (type)
  {
    return v13;
  }

  return result;
}

- (double)animationStartTimeForMarkerAtIndex:(unint64_t)index markerType:(unint64_t)type
{
  if (type)
  {
    indexCopy = index - 2;
    if (index <= 0xB)
    {
      indexCopy = index;
    }

    v5 = (indexCopy + 79);
    if (index <= 2)
    {
      v5 = (index + 50);
    }
  }

  else
  {
    v5 = 100.0 / (4 * [(NTKCaliforniaStyleTransitionHandler *)self hourMarkersCount]) * index;
  }

  return v5 / 100.0;
}

- (double)animationDurationForHourMarkerAtIndex:(unint64_t)index markerType:(unint64_t)type
{
  v4 = (&unk_17560 + 8 * (index < 3));
  if (!type)
  {
    v4 = (&unk_17550 + 8 * (index > 8));
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