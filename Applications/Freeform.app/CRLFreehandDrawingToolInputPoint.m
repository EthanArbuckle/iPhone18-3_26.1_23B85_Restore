@interface CRLFreehandDrawingToolInputPoint
- ($F8C478D75979E1913FC0AA0A435BEEED)PKInputPoint;
- (CGPoint)unscaledPoint;
- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)a3 time:(double)a4 inputType:(int64_t)a5 isPredicted:(BOOL)a6 activeInputProperties:(unint64_t)a7 altitudeAngleInRadians:(double)a8 azimuthAngleInRadians:(double)a9 rollAngleInRadians:(double)a10 force:(double)a11 estimationUpdateIndex:(int64_t)a12 hasEstimatedAltitudeAndAzimuth:(BOOL)a13 wasAddedByTouchesEnded:(BOOL)a14;
- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)a3 touch:(id)a4 activeInputProperties:(unint64_t)a5 isPredicted:(BOOL)a6 wasAddedByTouchesEnded:(BOOL)a7;
- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)a3 touch:(id)a4 event:(id)a5 isPredicted:(BOOL)a6 wasAddedByTouchesEnded:(BOOL)a7;
@end

@implementation CRLFreehandDrawingToolInputPoint

- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)a3 time:(double)a4 inputType:(int64_t)a5 isPredicted:(BOOL)a6 activeInputProperties:(unint64_t)a7 altitudeAngleInRadians:(double)a8 azimuthAngleInRadians:(double)a9 rollAngleInRadians:(double)a10 force:(double)a11 estimationUpdateIndex:(int64_t)a12 hasEstimatedAltitudeAndAzimuth:(BOOL)a13 wasAddedByTouchesEnded:(BOOL)a14
{
  y = a3.y;
  x = a3.x;
  v28.receiver = self;
  v28.super_class = CRLFreehandDrawingToolInputPoint;
  result = [(CRLFreehandDrawingToolInputPoint *)&v28 init];
  if (result)
  {
    result->_unscaledPoint.x = x;
    result->_unscaledPoint.y = y;
    result->_time = a4;
    result->_isPredicted = a6;
    result->_inputType = a5;
    result->_activeInputProperties = a7;
    result->_altitudeAngleInRadians = a8;
    result->_azimuthAngleInRadians = a9;
    result->_rollAngleInRadians = a10;
    result->_force = a11;
    result->_estimationUpdateIndex = a12;
    result->_hasEstimatedAltitudeAndAzimuth = a13;
    result->_wasAddedByTouchesEnded = a14;
  }

  return result;
}

- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)a3 touch:(id)a4 activeInputProperties:(unint64_t)a5 isPredicted:(BOOL)a6 wasAddedByTouchesEnded:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  y = a3.y;
  x = a3.x;
  v13 = a4;
  if ([v13 type] == 2)
  {
    [v13 altitudeAngle];
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

    [v13 azimuthAngleInView:0];
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

    [v13 _rollAngle];
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v28;
    }

    [v13 maximumPossibleForce];
    v21 = -1.0;
    if (v29 > 0.0)
    {
      [v13 force];
      if ((v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        [v13 force];
        v21 = v36;
      }

      else
      {
        [v13 maximumPossibleForce];
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

    v37 = [v13 estimationUpdateIndex];
    v38 = v37;
    if (v37)
    {
      v22 = [v37 integerValue];
    }

    else
    {
      v22 = -1;
    }

    v19 = ([v13 estimatedProperties] & 6) != 0;
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
    v21 = -1.0;
    v22 = -1;
    v18 = 0.785398163;
    v23 = 0.0;
  }

  [v13 timestamp];
  v40 = -[CRLFreehandDrawingToolInputPoint initWithUnscaledPoint:time:inputType:isPredicted:activeInputProperties:altitudeAngleInRadians:azimuthAngleInRadians:rollAngleInRadians:force:estimationUpdateIndex:hasEstimatedAltitudeAndAzimuth:wasAddedByTouchesEnded:](self, "initWithUnscaledPoint:time:inputType:isPredicted:activeInputProperties:altitudeAngleInRadians:azimuthAngleInRadians:rollAngleInRadians:force:estimationUpdateIndex:hasEstimatedAltitudeAndAzimuth:wasAddedByTouchesEnded:", sub_10042B6C0([v13 type]), v8, a5, v22, v19, v7, x, y, v39, v18, v23, v20, v21);

  return v40;
}

- (CRLFreehandDrawingToolInputPoint)initWithUnscaledPoint:(CGPoint)a3 touch:(id)a4 event:(id)a5 isPredicted:(BOOL)a6 wasAddedByTouchesEnded:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  y = a3.y;
  x = a3.x;
  v13 = a4;
  v14 = [(CRLFreehandDrawingToolInputPoint *)self initWithUnscaledPoint:v13 touch:[PKDrawingGestureRecognizer activeInputPropertiesForTouch:? event:?], v8, v7, x, y];

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