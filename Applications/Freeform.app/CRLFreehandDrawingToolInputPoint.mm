@interface CRLFreehandDrawingToolInputPoint
- ($F8C478D75979E1913FC0AA0A435BEEED)PKInputPoint;
- (CGPoint)unscaledPoint;
- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)point time:(double)time inputType:(int64_t)type isPredicted:(BOOL)predicted activeInputProperties:(unint64_t)properties altitudeAngleInRadians:(double)radians azimuthAngleInRadians:(double)inRadians rollAngleInRadians:(double)self0 force:(double)self1 estimationUpdateIndex:(int64_t)self2 hasEstimatedAltitudeAndAzimuth:(BOOL)self3 wasAddedByTouchesEnded:(BOOL)self4;
- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)point touch:(id)touch activeInputProperties:(unint64_t)properties isPredicted:(BOOL)predicted wasAddedByTouchesEnded:(BOOL)ended;
- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)point touch:(id)touch event:(id)event isPredicted:(BOOL)predicted wasAddedByTouchesEnded:(BOOL)ended;
@end

@implementation CRLFreehandDrawingToolInputPoint

- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)point time:(double)time inputType:(int64_t)type isPredicted:(BOOL)predicted activeInputProperties:(unint64_t)properties altitudeAngleInRadians:(double)radians azimuthAngleInRadians:(double)inRadians rollAngleInRadians:(double)self0 force:(double)self1 estimationUpdateIndex:(int64_t)self2 hasEstimatedAltitudeAndAzimuth:(BOOL)self3 wasAddedByTouchesEnded:(BOOL)self4
{
  y = point.y;
  x = point.x;
  v28.receiver = self;
  v28.super_class = CRLFreehandDrawingToolInputPoint;
  result = [(CRLFreehandDrawingToolInputPoint *)&v28 init];
  if (result)
  {
    result->_unscaledPoint.x = x;
    result->_unscaledPoint.y = y;
    result->_time = time;
    result->_isPredicted = predicted;
    result->_inputType = type;
    result->_activeInputProperties = properties;
    result->_altitudeAngleInRadians = radians;
    result->_azimuthAngleInRadians = inRadians;
    result->_rollAngleInRadians = angleInRadians;
    result->_force = force;
    result->_estimationUpdateIndex = index;
    result->_hasEstimatedAltitudeAndAzimuth = azimuth;
    result->_wasAddedByTouchesEnded = ended;
  }

  return result;
}

- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)point touch:(id)touch activeInputProperties:(unint64_t)properties isPredicted:(BOOL)predicted wasAddedByTouchesEnded:(BOOL)ended
{
  endedCopy = ended;
  predictedCopy = predicted;
  y = point.y;
  x = point.x;
  touchCopy = touch;
  if ([touchCopy type] == 2)
  {
    [touchCopy altitudeAngle];
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v18 = 1.57079633 - v14;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101361484();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101361498();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101361520();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolInputPoint initWithUnscaledPoint:touch:activeInputProperties:isPredicted:wasAddedByTouchesEnded:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolInputPoint.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:107 isFatal:0 description:"UITouch altitudeAngle is invalid; using a default in its place."];

      v18 = 0.785398163;
    }

    [touchCopy azimuthAngleInView:0];
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v23 = v24 + -3.14159265;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101361548();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101361570();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013615F8();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v25);
      }

      v26 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolInputPoint initWithUnscaledPoint:touch:activeInputProperties:isPredicted:wasAddedByTouchesEnded:]"];
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolInputPoint.m"];
      [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:114 isFatal:0 description:"UITouch azimuth is invalid; using a default in its place."];

      v23 = 0.0;
    }

    [touchCopy _rollAngle];
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v28;
    }

    [touchCopy maximumPossibleForce];
    v21 = -1.0;
    if (v29 > 0.0)
    {
      [touchCopy force];
      if ((v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        [touchCopy force];
        v21 = v36;
      }

      else
      {
        [touchCopy maximumPossibleForce];
        v32 = v31;
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101361620();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101361648();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013616D0();
        }

        v33 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v33);
        }

        v21 = v32 * 0.5;
        v34 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolInputPoint initWithUnscaledPoint:touch:activeInputProperties:isPredicted:wasAddedByTouchesEnded:]"];
        v35 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolInputPoint.m"];
        [CRLAssertionHandler handleFailureInFunction:v34 file:v35 lineNumber:131 isFatal:0 description:"UITouch force is invalid; using a default in its place."];
      }
    }

    estimationUpdateIndex = [touchCopy estimationUpdateIndex];
    v38 = estimationUpdateIndex;
    if (estimationUpdateIndex)
    {
      integerValue = [estimationUpdateIndex integerValue];
    }

    else
    {
      integerValue = -1;
    }

    v19 = ([touchCopy estimatedProperties] & 6) != 0;
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
    v21 = -1.0;
    integerValue = -1;
    v18 = 0.785398163;
    v23 = 0.0;
  }

  [touchCopy timestamp];
  v40 = -[CRLFreehandDrawingToolInputPoint initWithUnscaledPoint:time:inputType:isPredicted:activeInputProperties:altitudeAngleInRadians:azimuthAngleInRadians:rollAngleInRadians:force:estimationUpdateIndex:hasEstimatedAltitudeAndAzimuth:wasAddedByTouchesEnded:](self, "initWithUnscaledPoint:time:inputType:isPredicted:activeInputProperties:altitudeAngleInRadians:azimuthAngleInRadians:rollAngleInRadians:force:estimationUpdateIndex:hasEstimatedAltitudeAndAzimuth:wasAddedByTouchesEnded:", sub_10042B6C0([touchCopy type]), predictedCopy, properties, integerValue, v19, endedCopy, x, y, v39, v18, v23, v20, v21);

  return v40;
}

- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)point touch:(id)touch event:(id)event isPredicted:(BOOL)predicted wasAddedByTouchesEnded:(BOOL)ended
{
  endedCopy = ended;
  predictedCopy = predicted;
  y = point.y;
  x = point.x;
  touchCopy = touch;
  v14 = [(CRLFreehandDrawingToolInputPoint *)self initWithUnscaledPoint:touchCopy touch:[PKDrawingGestureRecognizer activeInputPropertiesForTouch:? event:?], predictedCopy, endedCopy, x, y];

  return v14;
}

- ($F8C478D75979E1913FC0AA0A435BEEED)PKInputPoint
{
  v3 = *(&PKInputPointZero + 7);
  *&retstr->var11 = *(&PKInputPointZero + 6);
  *&retstr->var13 = v3;
  v4 = *(&PKInputPointZero + 3);
  *&retstr->var3 = *(&PKInputPointZero + 2);
  *&retstr->var5 = v4;
  v5 = *(&PKInputPointZero + 5);
  *&retstr->var7 = *(&PKInputPointZero + 4);
  *&retstr->var9 = v5;
  v6 = *(&PKInputPointZero + 1);
  retstr->var0 = *&PKInputPointZero;
  *&retstr->var1 = v6;
  retstr->var0 = *&self->var9;
  retstr->var7 = self->var1;
  *&retstr->var2 = vextq_s8(*&self->var4, *&self->var4, 8uLL);
  *&v4 = self->var7;
  retstr->var13 = self->var6;
  retstr->var15 = *(&PKInputPointZero + 16);
  retstr->var8 = LOBYTE(self->var0.var1.y);
  *&retstr->var1 = v4;
  retstr->var9 = *&self->var8;
  retstr->var12 = BYTE1(self->var0.var1.y);
  return self;
}

- (CGPoint)unscaledPoint
{
  x = self->_unscaledPoint.x;
  y = self->_unscaledPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end