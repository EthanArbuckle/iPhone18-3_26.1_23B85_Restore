@interface TransitSteppingCameraFramer
- (void)_rectForTransitOrWalkingSegment:(id)a3 currentStepIndex:(unint64_t)a4 handler:(id)a5;
- (void)rectForStep:(id)a3 currentStepIndex:(unint64_t)a4 handler:(id)a5;
@end

@implementation TransitSteppingCameraFramer

- (void)_rectForTransitOrWalkingSegment:(id)a3 currentStepIndex:(unint64_t)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      v10 = [v7 startStepIndex] <= a4 && objc_msgSend(v7, "endStepIndex") >= a4;
      v11 = [v7 steps];
      v12 = [v11 firstObject];

      v13 = [v7 steps];
      v14 = [v13 lastObject];

      if (v10)
      {
        if ([v14 stepIndex] - 1 <= a4)
        {
          a4 = [v14 stepIndex] - 1;
        }

        v15 = [v7 composedRoute];
        v16 = [v15 stepAtIndex:a4];

        v12 = v16;
      }

      if (v12 == v14)
      {
        sub_100AF1CAC(v12, v9);
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
        if ([v7 type] == 2)
        {
          v18 = [v12 previousAlightingStep];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = v12;
          }

          v21 = v20;

          v22 = [v14 nextBoardingStep];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = v14;
          }

          v25 = v24;

          v14 = v25;
          v12 = v21;
        }

        for (i = [v12 stepIndex]; i < objc_msgSend(v14, "stepIndex"); ++i)
        {
          v27 = [v7 composedRoute];
          v28 = [v27 stepAtIndex:i];

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
        sub_100AF1CAC(v12, v42);
        dispatch_group_enter(v34);
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_100868134;
        v39[3] = &unk_10162C188;
        v41 = &v45;
        v35 = v34;
        v40 = v35;
        sub_100AF1CAC(v14, v39);
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
      (*(v8 + 2))(v8, MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height);
    }
  }
}

- (void)rectForStep:(id)a3 currentStepIndex:(unint64_t)a4 handler:(id)a5
{
  v17 = a3;
  v8 = a5;
  if (v8)
  {
    if (v17)
    {
      v9 = v17;
      v10 = [v9 composedRoute];
      v11 = [v10 segmentForStepIndex:{objc_msgSend(v9, "stepIndex")}];

      if ([v9 routeSegmentType] == 5)
      {
        v12.n128_f64[0] = sub_100AF171C(v9);
LABEL_5:
        v8[2](v8, v12);
LABEL_6:

        goto LABEL_8;
      }

      if ([v9 routeSegmentType] == 6)
      {
        if ([v9 maneuver] == 3)
        {
          sub_100AF1CAC(v9, v8);
          goto LABEL_6;
        }

        if ([v9 maneuver] == 9)
        {
          v13 = [v9 composedRoute];
          v14 = [v9 getPreviousStep];
          v15 = [v13 segmentForStepIndex:{objc_msgSend(v14, "stepIndex")}];

          [(TransitSteppingCameraFramer *)self _rectForTransitOrWalkingSegment:v15 currentStepIndex:a4 handler:v8];
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
          [(TransitSteppingCameraFramer *)self _rectForTransitOrWalkingSegment:v11 currentStepIndex:a4 handler:v8];
          goto LABEL_6;
        }
      }

      v16.n128_u64[0] = *&MKMapRectNull.origin.x;
      v8[2](v8, v16);
      goto LABEL_6;
    }

    (v8[2])(v8, MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height);
  }

LABEL_8:
}

@end