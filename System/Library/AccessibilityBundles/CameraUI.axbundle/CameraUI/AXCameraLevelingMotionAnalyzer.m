@interface AXCameraLevelingMotionAnalyzer
+ (double)_offsetFromLevelForOrientation:(int64_t)a3 rotation:(double)a4 shift:(double)a5;
+ (int64_t)_deviceOrientationForRotation:(double)a3 shift:(double)a4;
+ (int64_t)_levelZoneForDeviceMotion:(id)a3 previousZone:(int64_t)a4;
- (int64_t)updateWithDeviceMotion:(id)a3 previousZone:(int64_t)a4;
- (void)_updateCameraStableForMotion:(id)a3 previousMotion:(id)a4;
- (void)reset;
@end

@implementation AXCameraLevelingMotionAnalyzer

- (void)reset
{
  [(AXCameraLevelingMotionAnalyzer *)self set_lastDeviceMotion:0];
  [(AXCameraLevelingMotionAnalyzer *)self set_cameraStableForLeveling:0];

  [(AXCameraLevelingMotionAnalyzer *)self set_lastUnstableMotionTimestamp:0.0];
}

- (int64_t)updateWithDeviceMotion:(id)a3 previousZone:(int64_t)a4
{
  v6 = a3;
  v7 = [(AXCameraLevelingMotionAnalyzer *)self _lastDeviceMotion];
  [(AXCameraLevelingMotionAnalyzer *)self _updateCameraStableForMotion:v6 previousMotion:v7];
  if ([(AXCameraLevelingMotionAnalyzer *)self _cameraStableForLeveling])
  {
    v8 = [objc_opt_class() _levelZoneForDeviceMotion:v6 previousZone:a4];
  }

  else
  {
    v8 = 0;
  }

  [(AXCameraLevelingMotionAnalyzer *)self set_lastDeviceMotion:v6];

  return v8;
}

- (void)_updateCameraStableForMotion:(id)a3 previousMotion:(id)a4
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [v6 timestamp];
    v9 = v8;
    [v7 timestamp];
    if (v9 == v10)
    {
      v11 = AXMediaLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [v6 timestamp];
        v31 = 134217984;
        v32 = v12;
        _os_log_impl(&dword_29BC67000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring device motion for previously handled timestamp %f", &v31, 0xCu);
      }
    }

    else
    {
      v13 = [v6 attitude];
      v14 = [v13 copy];

      v15 = [v7 attitude];
      [v14 multiplyByInverseOfAttitude:v15];

      [v6 timestamp];
      v17 = v16;
      [v7 timestamp];
      v19 = v17 - v18;
      [v14 pitch];
      v21 = fabs(v20 * 57.2957795) / v19;
      [v14 roll];
      v23 = v22;
      [v14 yaw];
      v25 = fabs(v24 * 57.2957795) / v19;
      v26 = v21 < 30.0 || v21 < v25;
      if (!v26 || (fmax(v25, 30.0) > fabs(v23 * 57.2957795) / v19 ? (v27 = v25 > 100.0) : (v27 = 1), v27))
      {
        [v6 timestamp];
        [(AXCameraLevelingMotionAnalyzer *)self set_lastUnstableMotionTimestamp:?];
      }

      [v6 timestamp];
      v29 = v28;
      [(AXCameraLevelingMotionAnalyzer *)self _lastUnstableMotionTimestamp];
      [(AXCameraLevelingMotionAnalyzer *)self set_cameraStableForLeveling:v29 - v30 >= 0.6];
    }
  }

  else
  {
    [(AXCameraLevelingMotionAnalyzer *)self set_cameraStableForLeveling:0];
    [v6 timestamp];
    [(AXCameraLevelingMotionAnalyzer *)self set_lastUnstableMotionTimestamp:?];
  }
}

+ (int64_t)_levelZoneForDeviceMotion:(id)a3 previousZone:(int64_t)a4
{
  [a3 gravity];
  v6 = v5;
  v9 = atan2(v8, -v7);
  v10 = acos(v6) + -1.57079633;
  v11 = [objc_opt_class() _deviceOrientationForRotation:v9 * 57.2957795 shift:(v10 * 57.2957795)];
  [objc_opt_class() _offsetFromLevelForOrientation:v11 rotation:v9 shift:v10];
  v13 = fabs(v12);
  if ((v11 - 5) < 0xFFFFFFFFFFFFFFFCLL || v13 > 25.0)
  {
    return 0;
  }

  v16 = 2.0;
  if (a4 == 1)
  {
    v16 = 4.5;
  }

  v17 = 2;
  if (v12 > 0.0)
  {
    v17 = 3;
  }

  if (v13 < v16)
  {
    return 1;
  }

  else
  {
    return v17;
  }
}

+ (int64_t)_deviceOrientationForRotation:(double)a3 shift:(double)a4
{
  if (fabs(a4) <= 45.0)
  {
    v5 = fabs(a3);
    if (v5 >= 45.0)
    {
      if (v5 <= 135.0)
      {
        if (a3 <= 45.0 || a3 >= 135.0)
        {
          if (a3 > -135.0 && a3 < -45.0)
          {
            return 4;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else if (a4 <= 0.0)
  {
    return 6;
  }

  else
  {
    return 5;
  }
}

+ (double)_offsetFromLevelForOrientation:(int64_t)a3 rotation:(double)a4 shift:(double)a5
{
  v5 = 0.0;
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
        v6 = -1.57079633;
      }

      else
      {
        if (a3 != 6)
        {
          return v5;
        }

        v6 = 1.57079633;
      }

      a4 = a5 + v6;
      return a4 * 57.2957795;
    }

    if (a4 <= 3.14159265)
    {
      if (a4 < -3.14159265)
      {
        a4 = a4 + 6.28318531;
      }
    }

    else
    {
      a4 = -(6.28318531 - a4);
    }

    v7 = a4 + 2.35619449;
    if (a4 + 2.35619449 <= 3.14159265)
    {
      if (v7 >= -3.14159265)
      {
LABEL_25:
        v9 = a4 * 57.2957795;
        v10 = 90.0;
        return v9 + v10;
      }

      v8 = 6.28318531;
    }

    else
    {
      v8 = -6.28318531;
    }

    a4 = v7 + v8 + -2.35619449;
    goto LABEL_25;
  }

  switch(a3)
  {
    case 1:
      return a4 * 57.2957795;
    case 2:
      if (a4 <= 3.14159265)
      {
        if (a4 < -3.14159265)
        {
          a4 = a4 + 6.28318531;
        }
      }

      else
      {
        a4 = -(6.28318531 - a4);
      }

      v13 = a4 + -3.14159265;
      if (a4 + -3.14159265 <= 3.14159265)
      {
        if (v13 >= -3.14159265)
        {
LABEL_41:
          v9 = a4 * 57.2957795;
          v10 = -180.0;
          return v9 + v10;
        }

        v14 = 6.28318531;
      }

      else
      {
        v14 = -6.28318531;
      }

      a4 = v13 + v14 + 3.14159265;
      goto LABEL_41;
    case 3:
      if (a4 <= 3.14159265)
      {
        if (a4 < -3.14159265)
        {
          a4 = a4 + 6.28318531;
        }
      }

      else
      {
        a4 = -(6.28318531 - a4);
      }

      v11 = a4 + -1.57079633;
      if (a4 + -1.57079633 <= 3.14159265)
      {
        if (v11 >= -3.14159265)
        {
LABEL_33:
          v9 = a4 * 57.2957795;
          v10 = -90.0;
          return v9 + v10;
        }

        v12 = 6.28318531;
      }

      else
      {
        v12 = -6.28318531;
      }

      a4 = v11 + v12 + 1.57079633;
      goto LABEL_33;
  }

  return v5;
}

@end