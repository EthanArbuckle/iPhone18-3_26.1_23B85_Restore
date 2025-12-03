@interface CRLiOSGestureDispatcherLogger
- (BOOL)logNextGesture;
- (void)endGestureLoggingSession;
- (void)logEndStateForGesture:(id)gesture;
- (void)logGesture:(id)gesture atUnscaledLocation:(CGPoint)location;
- (void)logStartStateForGesture:(id)gesture;
- (void)setLogNextGesture:(BOOL)gesture;
- (void)startGestureLoggingSession;
@end

@implementation CRLiOSGestureDispatcherLogger

- (void)setLogNextGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:gestureCopy forKey:@"TSDDebugDumpNextTextGesture"];
}

- (BOOL)logNextGesture
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"TSDDebugDumpNextTextGesture"];

  return v3;
}

- (void)startGestureLoggingSession
{
  if ([(CRLiOSGestureDispatcherLogger *)self logNextGesture])
  {
    v3 = objc_opt_new();
    [(CRLiOSGestureDispatcherLogger *)self setGestureLogDictionary:v3];

    [(CRLiOSGestureDispatcherLogger *)self setGestureSessionStarted:1];
  }
}

- (void)logStartStateForGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(CRLiOSGestureDispatcherLogger *)self logNextGesture])
  {
    if (![(CRLiOSGestureDispatcherLogger *)self gestureSessionStarted])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101348120();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101348134();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013481C4();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLiOSGestureDispatcherLogger logStartStateForGesture:]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSGestureDispatcherLogger.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:59 isFatal:0 description:"The gesture session should have been started before logging"];
    }

    gestureLogDictionary = [(CRLiOSGestureDispatcherLogger *)self gestureLogDictionary];
    gestureKind = [gestureCopy gestureKind];
    v10 = [gestureLogDictionary objectForKeyedSubscript:gestureKind];

    if (!v10)
    {
      v10 = objc_opt_new();
      gestureKind2 = [gestureCopy gestureKind];
      [v10 setObject:gestureKind2 forKeyedSubscript:@"gestureKind"];

      v12 = objc_opt_new();
      [v10 setObject:v12 forKeyedSubscript:@"allTouchesArray"];

      v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [gestureCopy inputType]);
      [v10 setObject:v13 forKeyedSubscript:@"inputType"];

      cachedGestureTarget = [gestureCopy cachedGestureTarget];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        cachedGestureTarget2 = [gestureCopy cachedGestureTarget];
        targetStateForGestureLog = [cachedGestureTarget2 targetStateForGestureLog];
        [v10 setObject:targetStateForGestureLog forKeyedSubscript:@"targetStartState"];
      }

      v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [gestureCopy tsdModifierFlags]);
      [v10 setObject:v18 forKeyedSubscript:@"modifierFlags"];

      gestureLogDictionary2 = [(CRLiOSGestureDispatcherLogger *)self gestureLogDictionary];
      gestureKind3 = [gestureCopy gestureKind];
      [gestureLogDictionary2 setObject:v10 forKeyedSubscript:gestureKind3];
    }
  }
}

- (void)logGesture:(id)gesture atUnscaledLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  gestureCopy = gesture;
  if ([(CRLiOSGestureDispatcherLogger *)self logNextGesture])
  {
    if (![(CRLiOSGestureDispatcherLogger *)self gestureSessionStarted])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013481EC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101348200();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101348290();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v9 = [NSString stringWithUTF8String:"[CRLiOSGestureDispatcherLogger logGesture:atUnscaledLocation:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSGestureDispatcherLogger.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:80 isFatal:0 description:"The gesture session should have been started before logging"];
    }

    gestureLogDictionary = [(CRLiOSGestureDispatcherLogger *)self gestureLogDictionary];
    gestureKind = [gestureCopy gestureKind];
    v13 = [gestureLogDictionary objectForKeyedSubscript:gestureKind];

    if (v13)
    {
      v14 = objc_opt_new();
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [gestureCopy gestureState]);
      [v14 setObject:v15 forKeyedSubscript:@"gestureState"];

      v16 = [NSNumber numberWithDouble:x];
      v21[0] = v16;
      v17 = [NSNumber numberWithDouble:y];
      v21[1] = v17;
      v18 = [NSArray arrayWithObjects:v21 count:2];
      [v14 setObject:v18 forKeyedSubscript:@"locationInView"];

      v19 = [v13 objectForKeyedSubscript:@"allTouchesArray"];
      [v19 addObject:v14];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013482B8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013482E0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134838C();
      }

      v20 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v20);
      }

      v14 = [NSString stringWithUTF8String:"[CRLiOSGestureDispatcherLogger logGesture:atUnscaledLocation:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSGestureDispatcherLogger.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v19 lineNumber:83 isFatal:0 description:"invalid nil value for '%{public}s'", "singleGestureStateDictionary"];
    }
  }
}

- (void)logEndStateForGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(CRLiOSGestureDispatcherLogger *)self logNextGesture])
  {
    if (![(CRLiOSGestureDispatcherLogger *)self gestureSessionStarted])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013483B4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013483C8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101348458();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLiOSGestureDispatcherLogger logEndStateForGesture:]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSGestureDispatcherLogger.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:96 isFatal:0 description:"The gesture session should have been started before logging"];
    }

    gestureLogDictionary = [(CRLiOSGestureDispatcherLogger *)self gestureLogDictionary];
    gestureKind = [gestureCopy gestureKind];
    v10 = [gestureLogDictionary objectForKeyedSubscript:gestureKind];

    if (v10)
    {
      cachedGestureTarget = [gestureCopy cachedGestureTarget];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        cachedGestureTarget2 = [gestureCopy cachedGestureTarget];
        targetStateForGestureLog = [cachedGestureTarget2 targetStateForGestureLog];
        [v10 setObject:targetStateForGestureLog forKeyedSubscript:@"targetEndState"];
      }

      gestureLogDictionary2 = [(CRLiOSGestureDispatcherLogger *)self gestureLogDictionary];
      gestureKind2 = [gestureCopy gestureKind];
      [gestureLogDictionary2 setObject:v10 forKeyedSubscript:gestureKind2];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101348480();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013484A8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101348554();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      gestureLogDictionary2 = [NSString stringWithUTF8String:"[CRLiOSGestureDispatcherLogger logEndStateForGesture:]"];
      gestureKind2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSGestureDispatcherLogger.m"];
      [CRLAssertionHandler handleFailureInFunction:gestureLogDictionary2 file:gestureKind2 lineNumber:98 isFatal:0 description:"invalid nil value for '%{public}s'", "singleGestureStateDictionary"];
    }
  }
}

- (void)endGestureLoggingSession
{
  if ([(CRLiOSGestureDispatcherLogger *)self logNextGesture])
  {
    gestureLogDictionary = [(CRLiOSGestureDispatcherLogger *)self gestureLogDictionary];
    v9 = 0;
    v4 = [NSJSONSerialization dataWithJSONObject:gestureLogDictionary options:1 error:&v9];

    v5 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 stringByAppendingPathComponent:@"CRLGestureDispatcherLog.json"];
    v8 = +[NSFileManager defaultManager];
    [v8 createFileAtPath:v7 contents:v4 attributes:0];

    [(CRLiOSGestureDispatcherLogger *)self setGestureLogDictionary:0];
    [(CRLiOSGestureDispatcherLogger *)self setLogNextGesture:0];
    [(CRLiOSGestureDispatcherLogger *)self setGestureSessionStarted:0];
  }
}

@end