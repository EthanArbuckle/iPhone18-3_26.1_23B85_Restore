@interface PhotosTestingRPTHelper
+ (BOOL)_contentStartFromEndFromOptions:(id)options;
+ (BOOL)isRPTAvailable;
+ (BOOL)shouldUseRPTScrollingForRPTOptions:(id)options;
+ (double)_pagesFromOptions:(id)options;
+ (id)_paramsArrayByParams:(id)params iterations:(int64_t)iterations;
+ (id)_shareSheetScrollTestParamsWithScrollBounds:(CGRect)bounds pages:(double)pages iterations:(int64_t)iterations completionHandler:(id)handler;
+ (id)gesturePerformerForTestWithName:(id)name options:(id)options;
+ (int64_t)_RPTOppositeOfDirection:(int64_t)direction;
+ (int64_t)_RPTScrollDirectionForContentFromEnd:(BOOL)end scrollVertical:(BOOL)vertical;
+ (int64_t)_iterationsFromOptions:(id)options;
+ (int64_t)_speedFromTestName:(id)name;
+ (int64_t)_swipeCountFromOptions:(id)options;
+ (unint64_t)_axisFromOptions:(id)options;
+ (void)_configSwipeParams:(id)params forSpeed:(int64_t)speed returnTrip:(BOOL)trip;
+ (void)runTestWithName:(id)name RPTOptions:(id)options scrollBounds:(CGRect)bounds completionHandler:(id)handler;
+ (void)runTestWithName:(id)name RPTOptions:(id)options scrollView:(id)view completionHandler:(id)handler;
@end

@implementation PhotosTestingRPTHelper

+ (id)gesturePerformerForTestWithName:(id)name options:(id)options
{
  optionsCopy = options;
  nameCopy = name;
  if (([self isRPTAvailable] & 1) == 0)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PhotosTestingRPTHelper.m" lineNumber:397 description:{@"Invalid parameter not satisfying: %@", @"self.isRPTAvailable"}];
  }

  v9 = [[_PhotosTestingRPTGesturePerformer alloc] initWithTestName:nameCopy testOptions:optionsCopy];

  return v9;
}

+ (int64_t)_RPTScrollDirectionForContentFromEnd:(BOOL)end scrollVertical:(BOOL)vertical
{
  if (vertical)
  {
    return !end;
  }

  if (end)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v6 = +[UIScreen px_mainScreen];
  traitCollection = [v6 traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection != 1)
  {
    return v4;
  }

  return [self _RPTOppositeOfDirection:v4];
}

+ (int64_t)_RPTOppositeOfDirection:(int64_t)direction
{
  if (direction > 3)
  {
    return 0;
  }

  else
  {
    return qword_100049258[direction];
  }
}

+ (int64_t)_iterationsFromOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:@"iterations"];
  integerValue = [v3 integerValue];

  if (integerValue <= 1)
  {
    return 1;
  }

  else
  {
    return integerValue;
  }
}

+ (double)_pagesFromOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:@"pages"];
  [v3 floatValue];
  v5 = v4;
  v6 = v4;

  result = 1.0;
  if (v5 > 0.0)
  {
    return v6;
  }

  return result;
}

+ (int64_t)_swipeCountFromOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:@"RPT_SwipeCount"];
  integerValue = [v3 integerValue];

  return integerValue & ~(integerValue >> 63);
}

+ (BOOL)_contentStartFromEndFromOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:@"RPT_ContentStartPos"];
  v4 = [v3 isEqualToString:@"begin"];

  return v4 ^ 1;
}

+ (unint64_t)_axisFromOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:@"RPT_Axis"];
  if ([v3 isEqualToString:@"horizontal"])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (int64_t)_speedFromTestName:(id)name
{
  nameCopy = name;
  lowercaseString = [nameCopy lowercaseString];
  v5 = [lowercaseString containsString:@"slow"];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    lowercaseString2 = [nameCopy lowercaseString];
    v8 = [lowercaseString2 containsString:@"fast"];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

+ (void)_configSwipeParams:(id)params forSpeed:(int64_t)speed returnTrip:(BOOL)trip
{
  tripCopy = trip;
  paramsCopy = params;
  switch(speed)
  {
    case 2:
      v8 = !tripCopy;
      v9 = 16;
      v10 = 12;
      goto LABEL_7;
    case 1:
      v8 = !tripCopy;
      v9 = 10;
      v10 = 8;
      goto LABEL_7;
    case 0:
      v8 = !tripCopy;
      v9 = 8;
      v10 = 6;
LABEL_7:
      if (v8)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      v13 = paramsCopy;
      [paramsCopy setSwipeCount:v11];
      v12 = [PXGesturePerformer swipeSpeedFactor:speed];
      [v13 setSwipeSpeedFactor:v12];

      paramsCopy = v13;
      break;
  }
}

+ (id)_paramsArrayByParams:(id)params iterations:(int64_t)iterations
{
  paramsCopy = params;
  v6 = objc_alloc_init(NSMutableArray);
  if (iterations >= 1)
  {
    do
    {
      [v6 addObjectsFromArray:paramsCopy];
      --iterations;
    }

    while (iterations);
  }

  return v6;
}

+ (id)_shareSheetScrollTestParamsWithScrollBounds:(CGRect)bounds pages:(double)pages iterations:(int64_t)iterations completionHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  handlerCopy = handler;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v13 = [[RPTScrollViewTestParameters alloc] initWithTestName:0 scrollBounds:0 scrollContentLength:0 direction:x completionHandler:{y, width, height, CGRectGetHeight(v23)}];
  [v13 setPreventSheetDismissal:1];
  [v13 setShouldFlick:0];
  v21 = v13;
  v14 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = [self _paramsArrayByParams:v14 iterations:iterations];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100038BC4;
  v19[3] = &unk_10005C078;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = [RPTGroupScrollTestParameters newWithTestName:0 parameters:v15 completionHandler:v19];

  return v17;
}

+ (void)runTestWithName:(id)name RPTOptions:(id)options scrollBounds:(CGRect)bounds completionHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  nameCopy = name;
  optionsCopy = options;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10003942C;
  v30[3] = &unk_10005C078;
  handlerCopy = handler;
  v31 = handlerCopy;
  v16 = objc_retainBlock(v30);
  if ([self isRPTAvailable])
  {
    v29 = nameCopy;
    v17 = [self _speedFromTestName:nameCopy];
    v18 = [self _axisFromOptions:optionsCopy];
    [self _pagesFromOptions:optionsCopy];
    v20 = v19;
    v21 = [self _iterationsFromOptions:optionsCopy];
    v22 = [self _contentStartFromEndFromOptions:optionsCopy];
    v23 = [self _swipeCountFromOptions:optionsCopy];
    v24 = [optionsCopy objectForKeyedSubscript:@"RPT_Style"];
    if ([v24 isEqualToString:@"swipe"])
    {
      v25 = [self _swipeTestParamsWithScrollBounds:v22 contentFromEnd:v18 axis:v17 speed:v23 swipeCount:v21 iterations:handlerCopy completionHandler:{x, y, width, height}];
    }

    else if ([v24 isEqualToString:@"oscillation"])
    {
      v25 = [self _oscillationScrollTestParamsWithScrollBounds:v22 contentFromEnd:v18 axis:v17 speed:v21 pages:handlerCopy iterations:x completionHandler:{y, width, height, v20}];
    }

    else
    {
      if (![v24 isEqualToString:@"shareSheet"])
      {
        goto LABEL_13;
      }

      v25 = [self _shareSheetScrollTestParamsWithScrollBounds:v21 pages:handlerCopy iterations:x completionHandler:{y, width, height, v20}];
    }

    v27 = v25;
    if (v25)
    {
      nameCopy = v29;
      [v25 setTestName:v29];
      [RPTTestRunner runTestWithParameters:v27];

LABEL_16:
      goto LABEL_17;
    }

LABEL_13:
    v28 = PLPPTGetLog();
    nameCopy = v29;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v29;
      v34 = 2112;
      v35 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to generate RPT scroll test (%@) for test params, options is: %@", buf, 0x16u);
    }

    (v16[2])(v16);
    goto LABEL_16;
  }

  v26 = PLPPTGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed: RecapPerformanceTesting framework is not available.", buf, 2u);
  }

  (v16[2])(v16);
LABEL_17:
}

+ (void)runTestWithName:(id)name RPTOptions:(id)options scrollView:(id)view completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  nameCopy = name;
  RPTGetBoundsForView();
  [self runTestWithName:nameCopy RPTOptions:optionsCopy scrollBounds:handlerCopy completionHandler:?];
}

+ (BOOL)shouldUseRPTScrollingForRPTOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:@"RPT_Style"];
  v4 = ([v3 isEqualToString:@"swipe"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"oscillation") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"shareSheet");

  return v4;
}

+ (BOOL)isRPTAvailable
{
  if (qword_100066670 != -1)
  {
    dispatch_once(&qword_100066670, &stru_10005C050);
  }

  return byte_100066668;
}

@end