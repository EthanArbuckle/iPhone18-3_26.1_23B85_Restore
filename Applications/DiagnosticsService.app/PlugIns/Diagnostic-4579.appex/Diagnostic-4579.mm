id *sub_1000014D0(id *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    [a2 acceleration];
    v4 = v3;
    v6 = fabs(v5);
    v7 = [v2[4] xThreshold];
    [v7 doubleValue];
    if (v6 > fabs(v8))
    {
    }

    else
    {
      v9 = [v2[4] zThreshold];
      [v9 doubleValue];
      v11 = fabs(v10);

      if (fabs(v4) <= v11)
      {
        return [v2[4] stop];
      }
    }

    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [v2[4] xThreshold];
      [v14 doubleValue];
      v16 = fabs(v15);
      v17 = [v2[4] zThreshold];
      [v17 doubleValue];
      v19 = 134219010;
      v20 = v6;
      v21 = 2048;
      v22 = fabs(v4);
      v23 = 2048;
      v24 = v16;
      v25 = 2048;
      v26 = fabs(v18);
      v27 = 2112;
      v28 = @"IncorrectOrientationNotification";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Gyroscope values { x: %f z: %f } are out of the thresholds allowed { x: %f z: %f }. Posting %@", &v19, 0x34u);
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"IncorrectOrientationNotification" object:0];

    return [v2[4] stop];
  }

  return result;
}

void sub_100001A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Block_object_dispose((v29 - 96), 8);
  _Block_object_dispose((v29 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100001AC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 acceleration];
    v10 = *(*(a1 + 40) + 8);
    if (v7 > *(v10 + 24))
    {
      *(v10 + 24) = v7;
    }

    v11 = *(*(a1 + 48) + 8);
    if (v7 < *(v11 + 24))
    {
      *(v11 + 24) = v7;
    }

    v12 = *(*(a1 + 56) + 8);
    if (v8 > *(v12 + 24))
    {
      *(v12 + 24) = v8;
    }

    v13 = *(*(a1 + 64) + 8);
    if (v8 < *(v13 + 24))
    {
      *(v13 + 24) = v8;
    }

    v14 = *(*(a1 + 72) + 8);
    if (v9 > *(v14 + 24))
    {
      *(v14 + 24) = v9;
    }

    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 24);
    if (v9 < v16)
    {
      *(v15 + 24) = v9;
      v16 = *(*(*(a1 + 80) + 8) + 24);
    }

    v17 = *(*(*(a1 + 40) + 8) + 24);
    v18 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(*(*(a1 + 56) + 8) + 24);
    v20 = *(*(*(a1 + 64) + 8) + 24);
    v21 = *(*(*(a1 + 72) + 8) + 24);
    v22 = vabdd_f64(v17, v18);
    v23 = vabdd_f64(v19, v20);
    v24 = vabdd_f64(v21, v16);
    if (v23 < v24)
    {
      v23 = v24;
    }

    if (v22 >= v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    v26 = [*(a1 + 32) threshold];
    [v26 doubleValue];
    v28 = v27;

    if (v25 > v28)
    {
      v29 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = [*(a1 + 32) threshold];
        [v33 doubleValue];
        v34 = [NSNumber numberWithDouble:?];
        v35 = [NSNumber numberWithDouble:v17 - v18];
        v36 = [NSNumber numberWithDouble:v19 - v20];
        v37 = [NSNumber numberWithDouble:v21 - v16];
        v38 = 138413058;
        v39 = v34;
        v40 = 2112;
        v41 = v35;
        v42 = 2112;
        v43 = v36;
        v44 = 2112;
        v45 = v37;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Motion detection threshold value %@ exceeded. X: %@ Y: %@ Z: %@", &v38, 0x2Au);
      }

      *(*(*(a1 + 88) + 8) + 24) = 1;
      v30 = +[NSNotificationCenter defaultCenter];
      [v30 postNotificationName:@"MotionDetectedNotification" object:0];
    }

    v31 = *(*(a1 + 88) + 8);
    if (*(v31 + 24) == 1)
    {
      *(v31 + 24) = 0;
      *(*(*(a1 + 80) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
      *(*(*(a1 + 64) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
      *(*(*(a1 + 48) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
      *(*(*(a1 + 80) + 8) + 24) = 0x10000000000000;
      *(*(*(a1 + 64) + 8) + 24) = 0x10000000000000;
      *(*(*(a1 + 40) + 8) + 24) = 0x10000000000000;
    }
  }

  else
  {
    v32 = [*(a1 + 32) motionManager];
    [v32 stopAccelerometerUpdates];
  }
}

id numberOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

void forceTouchImageCallback(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100003C64;
  v18[3] = &unk_10000C3B0;
  v6 = a4;
  v19 = v6;
  v20 = a3;
  if (qword_1000118A0 != -1)
  {
    dispatch_once(&qword_1000118A0, v18);
  }

  v7 = [v6 deviceOrientation];
  if (v7 == 5)
  {
    v8 = [v6 upFrameNumber];
    v9 = [v6 faceUpPixelMaps];
  }

  else
  {
    v8 = [v6 downFrameNumber];
    v9 = [v6 faceDownPixelMaps];
  }

  v10 = v9[v8];
  v11 = [v6 inputs];
  v12 = [v11 numFramesToRecord];

  if (v8 >= v12)
  {
    if (v7 == 5)
    {
      if ([v6 isFinishedFaceUpPixelMaps])
      {
        goto LABEL_16;
      }

      [v6 setIsFinishedFaceUpPixelMaps:1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100003C70;
      block[3] = &unk_10000C388;
      v17 = v6;
      dispatch_async(&_dispatch_main_q, block);
      v13 = v17;
    }

    else
    {
      if ([v6 isFinishedFaceDownPixelMaps])
      {
        goto LABEL_16;
      }

      [v6 setIsFinishedFaceDownPixelMaps:1];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100003CC8;
      v14[3] = &unk_10000C388;
      v15 = v6;
      dispatch_async(&_dispatch_main_q, v14);
      v13 = v15;
    }

    goto LABEL_16;
  }

  memcpy(v10, a2, 2 * *(a3 + 16) * *(a3 + 18));
  if (v7 == 5)
  {
    [v6 setUpFrameNumber:{objc_msgSend(v6, "upFrameNumber") + 1}];
  }

  else
  {
    [v6 setDownFrameNumber:{objc_msgSend(v6, "downFrameNumber") + 1}];
  }

LABEL_16:
}

void sub_100003B08(uint64_t a1)
{
  v1 = [*(a1 + 32) flipInstructionImageView];
  [v1 setAlpha:1.0];
}

void sub_100003C70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 samplingTimer];
  [v1 samplingFinished:v2];
}

void sub_100003CC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 samplingTimer];
  [v1 samplingFinished:v2];
}

void sub_1000049E4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000050EC(void *a1, NSObject *a2)
{
  v3 = [a1 result];
  v4 = [v3 data];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v5, 0xCu);
}

void sub_10000519C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Ended Swollen Battery Test with status code: %@.", &v2, 0xCu);
}