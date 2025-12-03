@interface PKInputPointUtility
+ (double)correctedTimestampFromOldTimestampIfNecessary:(double)necessary;
+ (double)timestampFromTouchTimestamp:(double)timestamp;
+ (void)drawingInputPoint:(char)point@<W3> view:(char)view@<W4> touch:(uint64_t)touch@<X8> predicted:(double)predicted@<D0> activeInputProperties:(double)properties@<D1>;
@end

@implementation PKInputPointUtility

+ (double)timestampFromTouchTimestamp:(double)timestamp
{
  objc_opt_self();
  if (qword_1ED6A55C8 != -1)
  {
    dispatch_once(&qword_1ED6A55C8, &__block_literal_global_98);
  }

  return *&_MergedGlobals_176 + timestamp;
}

+ (double)correctedTimestampFromOldTimestampIfNecessary:(double)necessary
{
  objc_opt_self();
  v2 = necessary - CACurrentMediaTime();
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  if (v2 >= 5.0)
  {
    return necessary;
  }

  return [PKInputPointUtility timestampFromTouchTimestamp:necessary];
}

+ (void)drawingInputPoint:(char)point@<W3> view:(char)view@<W4> touch:(uint64_t)touch@<X8> predicted:(double)predicted@<D0> activeInputProperties:(double)properties@<D1>
{
  selfCopy = self;
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
    if (view)
    {
      [v14 azimuthAngleInView:selfCopy];
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
    if ((view & 2) != 0)
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

    estimationUpdateIndex = [v14 estimationUpdateIndex];

    if (estimationUpdateIndex)
    {
      estimationUpdateIndex2 = [v14 estimationUpdateIndex];
      integerValue = [estimationUpdateIndex2 integerValue];
    }

    else
    {
      integerValue = -1;
    }
  }

  else
  {
    v26 = 0.0;
    integerValue = -1;
    v23 = 0.0;
  }

  *(touch + 104) = 0;
  *(touch + 88) = 0u;
  *(touch + 72) = 0u;
  *touch = predicted;
  *(touch + 8) = properties;
  *(touch + 16) = v17;
  *(touch + 24) = v23;
  *(touch + 32) = v26;
  *(touch + 48) = 0;
  *(touch + 56) = 0;
  *(touch + 40) = 0;
  [v14 timestamp];
  *(touch + 64) = [PKInputPointUtility timestampFromTouchTimestamp:v32];
  *(touch + 72) = point;
  *(touch + 88) = 0;
  *(touch + 96) = 0;
  *(touch + 80) = integerValue;
  if (([v14 estimatedProperties] & 2) != 0)
  {
    LOBYTE(v33) = 1;
  }

  else
  {
    v33 = ([v14 estimatedProperties] >> 2) & 1;
  }

  *(touch + 104) = v33;
  *(touch + 112) = v16;
  estimatedProperties = [v14 estimatedProperties];
  objc_opt_self();
  estimatedPropertiesExpectingUpdates = [v14 estimatedPropertiesExpectingUpdates];
  objc_opt_self();
  v36.i64[0] = estimatedProperties;
  v36.i64[1] = estimatedPropertiesExpectingUpdates;
  v37 = vshrq_n_u64(v36, 1uLL);
  *(touch + 120) = vorrq_s8(vorrq_s8(vandq_s8(v37, vdupq_n_s64(1uLL)), vandq_s8(v36, vdupq_n_s64(0x10uLL))), vorrq_s8(vandq_s8(vshlq_n_s64(v36, 2uLL), vdupq_n_s64(4uLL)), vandq_s8(v37, vdupq_n_s64(2uLL))));
}

@end