@interface TransitSteppingCameraFramer
- (void)_rectForTransitOrWalkingSegment:(id)segment currentStepIndex:(unint64_t)index handler:(id)handler;
- (void)rectForStep:(id)step currentStepIndex:(unint64_t)index handler:(id)handler;
@end

@implementation TransitSteppingCameraFramer

- (void)_rectForTransitOrWalkingSegment:(id)segment currentStepIndex:(unint64_t)index handler:(id)handler
{
  segmentCopy = segment;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (handlerCopy)
  {
    if (segmentCopy)
    {
      v10 = [segmentCopy startStepIndex] <= index && objc_msgSend(segmentCopy, "endStepIndex") >= index;
      steps = [segmentCopy steps];
      firstObject = [steps firstObject];

      steps2 = [segmentCopy steps];
      lastObject = [steps2 lastObject];

      if (v10)
      {
        if ([lastObject stepIndex] - 1 <= index)
        {
          index = [lastObject stepIndex] - 1;
        }

        composedRoute = [segmentCopy composedRoute];
        v16 = [composedRoute stepAtIndex:index];

        firstObject = v16;
      }

      if (firstObject == lastObject)
      {
        sub_100AF1CAC(firstObject, v9);
      }

      else
      {
        v45 = 0;
        v46 = &v45;
        v47 = 0x4010000000;
        v48 = &unk_1014C0133;
        size = MKMapRectNull.size;
        origin = MKMapRectNull.origin;
        v50 = size;
        if ([segmentCopy type] == 2)
        {
          previousAlightingStep = [firstObject previousAlightingStep];
          v19 = previousAlightingStep;
          if (previousAlightingStep)
          {
            v20 = previousAlightingStep;
          }

          else
          {
            v20 = firstObject;
          }

          v21 = v20;

          nextBoardingStep = [lastObject nextBoardingStep];
          v23 = nextBoardingStep;
          if (nextBoardingStep)
          {
            v24 = nextBoardingStep;
          }

          else
          {
            v24 = lastObject;
          }

          v25 = v24;

          lastObject = v25;
          firstObject = v21;
        }

        for (i = [firstObject stepIndex]; i < objc_msgSend(lastObject, "stepIndex"); ++i)
        {
          composedRoute2 = [segmentCopy composedRoute];
          v28 = [composedRoute2 stepAtIndex:i];

          v29 = v46;
          v52.origin.x = sub_100AF171C(v28);
          v52.origin.y = v30;
          v52.size.width = v31;
          v52.size.height = v32;
          v51 = MKMapRectUnion(v29[1], v52);
          v46[1] = v51;
        }

        v33 = dispatch_group_create();
        dispatch_group_enter(v33);
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_1008680CC;
        v42[3] = &unk_10162C188;
        v44 = &v45;
        v34 = v33;
        v43 = v34;
        sub_100AF1CAC(firstObject, v42);
        dispatch_group_enter(v34);
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_100868134;
        v39[3] = &unk_10162C188;
        v41 = &v45;
        v35 = v34;
        v40 = v35;
        sub_100AF1CAC(lastObject, v39);
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10086819C;
        v36[3] = &unk_10165F5A0;
        v37 = v9;
        v38 = &v45;
        dispatch_group_notify(v35, &_dispatch_main_q, v36);

        _Block_object_dispose(&v45, 8);
      }
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height);
    }
  }
}

- (void)rectForStep:(id)step currentStepIndex:(unint64_t)index handler:(id)handler
{
  stepCopy = step;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (stepCopy)
    {
      v9 = stepCopy;
      composedRoute = [v9 composedRoute];
      v11 = [composedRoute segmentForStepIndex:{objc_msgSend(v9, "stepIndex")}];

      if ([v9 routeSegmentType] == 5)
      {
        v12.n128_f64[0] = sub_100AF171C(v9);
LABEL_5:
        handlerCopy[2](handlerCopy, v12);
LABEL_6:

        goto LABEL_8;
      }

      if ([v9 routeSegmentType] == 6)
      {
        if ([v9 maneuver] == 3)
        {
          sub_100AF1CAC(v9, handlerCopy);
          goto LABEL_6;
        }

        if ([v9 maneuver] == 9)
        {
          composedRoute2 = [v9 composedRoute];
          getPreviousStep = [v9 getPreviousStep];
          v15 = [composedRoute2 segmentForStepIndex:{objc_msgSend(getPreviousStep, "stepIndex")}];

          [(TransitSteppingCameraFramer *)self _rectForTransitOrWalkingSegment:v15 currentStepIndex:index handler:handlerCopy];
          goto LABEL_6;
        }

        if ([v9 maneuver] == 5 || objc_msgSend(v9, "maneuver") == 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if ([v9 isArrivalStep])
        {
          [v9 endGeoCoordinate];
          CLLocationCoordinate2DFromGEOLocationCoordinate2D();
          MKMapRectMakeWithRadialDistance();
          goto LABEL_5;
        }

        if ([v9 routeSegmentType] == 2)
        {
LABEL_22:
          [(TransitSteppingCameraFramer *)self _rectForTransitOrWalkingSegment:v11 currentStepIndex:index handler:handlerCopy];
          goto LABEL_6;
        }
      }

      v16.n128_u64[0] = *&MKMapRectNull.origin.x;
      handlerCopy[2](handlerCopy, v16);
      goto LABEL_6;
    }

    (handlerCopy[2])(handlerCopy, MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height);
  }

LABEL_8:
}

@end