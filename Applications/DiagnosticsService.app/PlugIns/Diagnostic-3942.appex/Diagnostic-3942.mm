BOOL sub_100001364(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 compare:&off_10000CA88];
  v4 = [v2 compare:&off_10000CA98];

  return v4 < 2 && v3 + 1 < 2;
}

void sub_100002DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_destroyWeak((v43 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002E08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002E20(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v36 = 0;
    v9 = [WeakRetained inputs];
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 gridRows] - 1);
    v11 = [v6 dk_numberFromRequiredKey:@"y" lowerBound:&off_10000C968 upperBound:v10 failed:&v36];
    v12 = [v11 intValue];

    v13 = [v8 inputs];
    v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 gridColumns] - 1);
    v15 = [v6 dk_numberFromRequiredKey:@"x" lowerBound:&off_10000C968 upperBound:v14 failed:&v36];
    v16 = [v15 intValue];

    v17 = [v6 dk_stringFromRequiredKey:@"startingColor" maxLength:7 failed:&v36];
    v18 = [UIColor colorWithHexValue:v17 error:0];

    v19 = [v6 dk_stringFromRequiredKey:@"successColor" maxLength:7 failed:&v36];
    v20 = [UIColor colorWithHexValue:v19 error:0];

    v21 = [v6 dk_stringFromRequiredKey:@"failedColor" maxLength:7 failed:&v36];
    v22 = [UIColor colorWithHexValue:v21 error:0];

    if ((v36 & 1) == 0 && v18 && v20 && v22)
    {
      v35 = a4;
      v23 = [v8 inputs];
      *(*(*(a1 + 32) + 8) + 24) = v16 + [v23 gridColumns] * v12;

      v24 = *(*(*(a1 + 32) + 8) + 24);
      v25 = [v8 inputs];
      v26 = [v25 gridRows];
      v27 = [v8 inputs];
      v28 = [v27 gridColumns] * v26;

      if (v24 >= v28)
      {
        v29 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1000065D8(v29);
        }

        [v8 endTestWithStatusCode:&off_10000C980];
        *(*(*(a1 + 40) + 8) + 24) = 0;
        *v35 = 0;
      }

      v30 = v8[12];
      v31 = *(*(*(a1 + 32) + 8) + 24);
      v32 = [ColorOptions colorOptionsWithStarting:v18 success:v20 failed:v22];
      [v30 replaceObjectAtIndex:v31 withObject:v32];

      v33 = *(*(*(a1 + 48) + 8) + 40);
      v34 = [NSNumber numberWithInt:*(*(*(a1 + 32) + 8) + 24)];
      [v33 addObject:v34];
    }

    else
    {
      [v8 endTestWithStatusCode:&off_10000C998];
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 0;
    }
  }
}

void forceTouchPathCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  objc_initWeak(location, v6);
  v7 = [v6 presentedViewController];
  if (v7)
  {

    goto LABEL_32;
  }

  if ([v6 shouldIgnoreForceEvents])
  {
    goto LABEL_32;
  }

  [v6 setTouchEventRecognized:(*(a4 + 20) - 1) < 4];
  if ([v6 timeoutTimerFireDelayed])
  {
    [v6 setTimeoutTimerFireDelayed:0];
    [v6 partialInputTimedOut];
    goto LABEL_32;
  }

  v8 = *(a4 + 32);
  v9 = *(a4 + 36);
  memset(&v64, 0, sizeof(v64));
  CGAffineTransformMakeScale(&v64, 1.0, -1.0);
  v62 = v64;
  CGAffineTransformTranslate(&v63, &v62, 0.0, -1.0);
  v64 = v63;
  v10 = *&v63.a;
  v11 = *&v63.c;
  v12 = *&v63.tx;
  v13 = [v6 inputs];
  v14 = [v13 gridRows];

  v15 = [v6 inputs];
  v56 = [v15 gridColumns];

  v16 = [v6 inputs];
  v17 = [v16 gridColumns];

  v18 = [v6 gridIndexes];
  v19 = [v18 objectAtIndexedSubscript:{objc_msgSend(v6, "testCoordinatesIndex")}];
  v57 = [v19 intValue];

  v20 = [v6 gridStatus];
  v21 = [v20 objectAtIndexedSubscript:?];
  if ([v21 isEqualToNumber:&off_10000C9F8])
  {
    goto LABEL_9;
  }

  v22 = [v6 gridStatus];
  v23 = [v22 objectAtIndexedSubscript:v57];
  if ([v23 isEqualToNumber:&off_10000CA10])
  {

LABEL_9:
    goto LABEL_10;
  }

  v35 = [v6 gridStatus];
  v36 = [v35 objectAtIndexedSubscript:v57];
  v37 = [v36 isEqualToNumber:&off_10000CA28];
  if (vcvtmd_u64_f64((*&v12 + *&v11 * v9 + *&v10 * v8) * v56) + v17 * vcvtmd_u64_f64((*(&v12 + 1) + *(&v11 + 1) * v9 + *(&v10 + 1) * v8) * v14) == v57)
  {
    v38 = 1;
  }

  else
  {
    v38 = v37;
  }

  if ((v38 & 1) == 0)
  {
    v39 = [v6 gridStatus];
    [v39 setObject:&off_10000C9B0 atIndexedSubscript:v57];

    [v6 setPressureRatio:0.0];
    [v6 presentRingWithTestCoordinateGridIndex:v57];
    goto LABEL_32;
  }

LABEL_10:
  v24 = *(a4 + 52);
  [v6 maximumPressure];
  if (v24 >= *&v25)
  {
    *&v25 = v24;
  }

  [v6 setMaximumPressure:v25];
  v26 = [v6 inputs];
  v27 = [v26 pressurePoints];
  v28 = [v27 objectAtIndexedSubscript:{objc_msgSend(v6, "pressureIndex")}];
  [v28 doubleValue];
  [v6 setPressureRatio:v24 / v29];

  v30 = [v6 gridStatus];
  v31 = [v30 objectAtIndexedSubscript:v57];
  v32 = [v31 intValue];

  if (!v32)
  {
    v44 = [v6 statusLabel];
    [v44 setText:&stru_10000C828];

    v45 = +[NSDate date];
    [v45 timeIntervalSince1970];
    v47 = [NSNumber numberWithUnsignedLongLong:(v46 * 1000.0)];
    [v6 setForceTouchStarted:v47];

    [v6 presentRingWithTestCoordinateGridIndex:v57];
    if (([v6 timerInvalidated] & 1) == 0)
    {
      [v6 setTimerInvalidated:1];
      v48 = [v6 timeoutTimer];

      if (v48)
      {
        v49 = [v6 timeoutTimer];
        [v49 invalidate];

        [v6 setTimeoutTimer:0];
        v50 = [v6 inputs];
        [v50 partialInputTimeout];
        v51 = [NSTimer scheduledTimerWithTimeInterval:v6 target:"partialInputTimedOut" selector:0 userInfo:0 repeats:?];
        [v6 setTimeoutTimer:v51];
      }
    }

    v43 = [v6 gridStatus];
    [v43 setObject:&off_10000CA40 atIndexedSubscript:v57];
    goto LABEL_31;
  }

  if (v32 == 1)
  {
    [v6 presentRingWithTestCoordinateGridIndex:v57];
    [v6 pressureRatio];
    if (v40 < 1.0)
    {
      goto LABEL_32;
    }

    v41 = [v6 timeoutTimer];

    if (v41)
    {
      v42 = [v6 timeoutTimer];
      [v42 invalidate];

      [v6 setTimeoutTimer:0];
    }

    if ([v6 timeoutTimerFireDelayed])
    {
      [v6 setPressureReachedAfterTimeout:1];
      v43 = [v6 gridStatus];
      [v43 setObject:&off_10000CA10 atIndexedSubscript:v57];
    }

    else
    {
      v52 = [v6 detectedPressurePoints];
      v53 = [v6 inputs];
      v54 = [v53 pressurePoints];
      v55 = [v54 objectAtIndexedSubscript:{objc_msgSend(v6, "pressureIndex")}];
      [v52 addObject:v55];

      v43 = [v6 gridStatus];
      [v43 setObject:&off_10000C9F8 atIndexedSubscript:v57];
    }

LABEL_31:

    goto LABEL_32;
  }

  if (v32 == 2 && ([v6 touchEventRecognized] & 1) == 0)
  {
    [v6 setShouldIgnoreForceEvents:1];
    v33 = [v6 gridStatus];
    [v33 setObject:&off_10000CA28 atIndexedSubscript:v57];

    v34 = [v6 forceTouchRingView];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100005608;
    v58[3] = &unk_10000C3E8;
    objc_copyWeak(&v60, location);
    v61 = v57;
    v59 = v6;
    [v34 playCircleAnimationWithCompletion:v58];

    objc_destroyWeak(&v60);
  }

LABEL_32:
  objc_destroyWeak(location);
}

void sub_1000053D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

id sub_100005608(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 testCoordinates];
  v4 = [v3 objectAtIndexedSubscript:*(a1 + 48)];
  [v4 CGPointValue];
  [v2 playCheckAnimationAtPoint:?];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained inputs];
  LODWORD(v4) = [v6 hapticFeedback];

  if (v4)
  {
    AudioServicesPlaySystemSound(0x5B1u);
  }

  v7 = *(a1 + 32);

  return [v7 setShouldIgnoreForceEvents:0];
}