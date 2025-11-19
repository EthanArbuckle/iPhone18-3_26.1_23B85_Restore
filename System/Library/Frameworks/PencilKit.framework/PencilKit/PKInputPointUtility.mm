@interface PKInputPointUtility
+ (double)correctedTimestampFromOldTimestampIfNecessary:(double)a1;
+ (double)timestampFromTouchTimestamp:(double)a1;
+ (void)drawingInputPoint:(char)a3@<W3> view:(char)a4@<W4> touch:(uint64_t)a5@<X8> predicted:(double)a6@<D0> activeInputProperties:(double)a7@<D1>;
@end

@implementation PKInputPointUtility

+ (double)timestampFromTouchTimestamp:(double)a1
{
  objc_opt_self();
  if (qword_1ED6A55C8 != -1)
  {
    dispatch_once(&qword_1ED6A55C8, &__block_literal_global_98);
  }

  return *&_MergedGlobals_176 + a1;
}

+ (double)correctedTimestampFromOldTimestampIfNecessary:(double)a1
{
  objc_opt_self();
  v2 = a1 - CACurrentMediaTime();
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  if (v2 >= 5.0)
  {
    return a1;
  }

  return [PKInputPointUtility timestampFromTouchTimestamp:a1];
}

+ (void)drawingInputPoint:(char)a3@<W3> view:(char)a4@<W4> touch:(uint64_t)a5@<X8> predicted:(double)a6@<D0> activeInputProperties:(double)a7@<D1>
{
  v13 = a1;
  v14 = a2;
  objc_opt_self();
  [v14 PK_rollAngle];
  v16 = v15;
  [v14 maximumPossibleForce];
  v17 = -1.0;
  if (v18 > 0.0)
  {
    [v14 force];
    if ((v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      [v14 force];
      v17 = v22;
    }

    else
    {
      v20 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_ERROR, "Got non-finite force from UITouch", buf, 2u);
      }

      [v14 maximumPossibleForce];
      v17 = v21 * 0.5;
    }
  }

  if ([v14 type] == 2)
  {
    v23 = 0.0;
    if (a4)
    {
      [v14 azimuthAngleInView:v13];
      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v23 = v24 + -3.14159265;
      }

      else
      {
        v25 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v39 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_ERROR, "Got non-finite azimuthAngle from UITouch", v39, 2u);
        }
      }
    }

    v26 = 0.785398163;
    if ((a4 & 2) != 0)
    {
      [v14 altitudeAngle];
      if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v26 = 1.57079633 - v28;
      }

      else
      {
        v29 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *v38 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_ERROR, "Got non-finite altitudeAngle from UITouch", v38, 2u);
        }
      }
    }

    v30 = [v14 estimationUpdateIndex];

    if (v30)
    {
      v31 = [v14 estimationUpdateIndex];
      v27 = [v31 integerValue];
    }

    else
    {
      v27 = -1;
    }
  }

  else
  {
    v26 = 0.0;
    v27 = -1;
    v23 = 0.0;
  }

  *(a5 + 104) = 0;
  *(a5 + 88) = 0u;
  *(a5 + 72) = 0u;
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = v17;
  *(a5 + 24) = v23;
  *(a5 + 32) = v26;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 40) = 0;
  [v14 timestamp];
  *(a5 + 64) = [PKInputPointUtility timestampFromTouchTimestamp:v32];
  *(a5 + 72) = a3;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 80) = v27;
  if (([v14 estimatedProperties] & 2) != 0)
  {
    LOBYTE(v33) = 1;
  }

  else
  {
    v33 = ([v14 estimatedProperties] >> 2) & 1;
  }

  *(a5 + 104) = v33;
  *(a5 + 112) = v16;
  v34 = [v14 estimatedProperties];
  objc_opt_self();
  v35 = [v14 estimatedPropertiesExpectingUpdates];
  objc_opt_self();
  v36.i64[0] = v34;
  v36.i64[1] = v35;
  v37 = vshrq_n_u64(v36, 1uLL);
  *(a5 + 120) = vorrq_s8(vorrq_s8(vandq_s8(v37, vdupq_n_s64(1uLL)), vandq_s8(v36, vdupq_n_s64(0x10uLL))), vorrq_s8(vandq_s8(vshlq_n_s64(v36, 2uLL), vdupq_n_s64(4uLL)), vandq_s8(v37, vdupq_n_s64(2uLL))));
}

@end