@interface PhotosTestingRPTHelper
+ (BOOL)_contentStartFromEndFromOptions:(id)a3;
+ (BOOL)isRPTAvailable;
+ (BOOL)shouldUseRPTScrollingForRPTOptions:(id)a3;
+ (double)_pagesFromOptions:(id)a3;
+ (id)_paramsArrayByParams:(id)a3 iterations:(int64_t)a4;
+ (id)_shareSheetScrollTestParamsWithScrollBounds:(CGRect)a3 pages:(double)a4 iterations:(int64_t)a5 completionHandler:(id)a6;
+ (id)gesturePerformerForTestWithName:(id)a3 options:(id)a4;
+ (int64_t)_RPTOppositeOfDirection:(int64_t)a3;
+ (int64_t)_RPTScrollDirectionForContentFromEnd:(BOOL)a3 scrollVertical:(BOOL)a4;
+ (int64_t)_iterationsFromOptions:(id)a3;
+ (int64_t)_speedFromTestName:(id)a3;
+ (int64_t)_swipeCountFromOptions:(id)a3;
+ (unint64_t)_axisFromOptions:(id)a3;
+ (void)_configSwipeParams:(id)a3 forSpeed:(int64_t)a4 returnTrip:(BOOL)a5;
+ (void)runTestWithName:(id)a3 RPTOptions:(id)a4 scrollBounds:(CGRect)a5 completionHandler:(id)a6;
+ (void)runTestWithName:(id)a3 RPTOptions:(id)a4 scrollView:(id)a5 completionHandler:(id)a6;
@end

@implementation PhotosTestingRPTHelper

+ (id)gesturePerformerForTestWithName:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if (([a1 isRPTAvailable] & 1) == 0)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PhotosTestingRPTHelper.m" lineNumber:397 description:{@"Invalid parameter not satisfying: %@", @"self.isRPTAvailable"}];
  }

  v9 = [[_PhotosTestingRPTGesturePerformer alloc] initWithTestName:v8 testOptions:v7];

  return v9;
}

+ (int64_t)_RPTScrollDirectionForContentFromEnd:(BOOL)a3 scrollVertical:(BOOL)a4
{
  if (a4)
  {
    return !a3;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v6 = +[UIScreen px_mainScreen];
  v7 = [v6 traitCollection];
  v8 = [v7 layoutDirection];

  if (v8 != 1)
  {
    return v4;
  }

  return [a1 _RPTOppositeOfDirection:v4];
}

+ (int64_t)_RPTOppositeOfDirection:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_100049258[a3];
  }
}

+ (int64_t)_iterationsFromOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"iterations"];
  v4 = [v3 integerValue];

  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

+ (double)_pagesFromOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"pages"];
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

+ (int64_t)_swipeCountFromOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"RPT_SwipeCount"];
  v4 = [v3 integerValue];

  return v4 & ~(v4 >> 63);
}

+ (BOOL)_contentStartFromEndFromOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"RPT_ContentStartPos"];
  v4 = [v3 isEqualToString:@"begin"];

  return v4 ^ 1;
}

+ (unint64_t)_axisFromOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"RPT_Axis"];
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

+ (int64_t)_speedFromTestName:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];
  v5 = [v4 containsString:@"slow"];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 lowercaseString];
    v8 = [v7 containsString:@"fast"];

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

+ (void)_configSwipeParams:(id)a3 forSpeed:(int64_t)a4 returnTrip:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  switch(a4)
  {
    case 2:
      v8 = !v5;
      v9 = 16;
      v10 = 12;
      goto LABEL_7;
    case 1:
      v8 = !v5;
      v9 = 10;
      v10 = 8;
      goto LABEL_7;
    case 0:
      v8 = !v5;
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

      v13 = v7;
      [v7 setSwipeCount:v11];
      v12 = [PXGesturePerformer swipeSpeedFactor:a4];
      [v13 setSwipeSpeedFactor:v12];

      v7 = v13;
      break;
  }
}

+ (id)_paramsArrayByParams:(id)a3 iterations:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  if (a4 >= 1)
  {
    do
    {
      [v6 addObjectsFromArray:v5];
      --a4;
    }

    while (a4);
  }

  return v6;
}

+ (id)_shareSheetScrollTestParamsWithScrollBounds:(CGRect)a3 pages:(double)a4 iterations:(int64_t)a5 completionHandler:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a6;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v13 = [[RPTScrollViewTestParameters alloc] initWithTestName:0 scrollBounds:0 scrollContentLength:0 direction:x completionHandler:{y, width, height, CGRectGetHeight(v23)}];
  [v13 setPreventSheetDismissal:1];
  [v13 setShouldFlick:0];
  v21 = v13;
  v14 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = [a1 _paramsArrayByParams:v14 iterations:a5];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100038BC4;
  v19[3] = &unk_10005C078;
  v20 = v12;
  v16 = v12;
  v17 = [RPTGroupScrollTestParameters newWithTestName:0 parameters:v15 completionHandler:v19];

  return v17;
}

+ (void)runTestWithName:(id)a3 RPTOptions:(id)a4 scrollBounds:(CGRect)a5 completionHandler:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v14 = a4;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10003942C;
  v30[3] = &unk_10005C078;
  v15 = a6;
  v31 = v15;
  v16 = objc_retainBlock(v30);
  if ([a1 isRPTAvailable])
  {
    v29 = v13;
    v17 = [a1 _speedFromTestName:v13];
    v18 = [a1 _axisFromOptions:v14];
    [a1 _pagesFromOptions:v14];
    v20 = v19;
    v21 = [a1 _iterationsFromOptions:v14];
    v22 = [a1 _contentStartFromEndFromOptions:v14];
    v23 = [a1 _swipeCountFromOptions:v14];
    v24 = [v14 objectForKeyedSubscript:@"RPT_Style"];
    if ([v24 isEqualToString:@"swipe"])
    {
      v25 = [a1 _swipeTestParamsWithScrollBounds:v22 contentFromEnd:v18 axis:v17 speed:v23 swipeCount:v21 iterations:v15 completionHandler:{x, y, width, height}];
    }

    else if ([v24 isEqualToString:@"oscillation"])
    {
      v25 = [a1 _oscillationScrollTestParamsWithScrollBounds:v22 contentFromEnd:v18 axis:v17 speed:v21 pages:v15 iterations:x completionHandler:{y, width, height, v20}];
    }

    else
    {
      if (![v24 isEqualToString:@"shareSheet"])
      {
        goto LABEL_13;
      }

      v25 = [a1 _shareSheetScrollTestParamsWithScrollBounds:v21 pages:v15 iterations:x completionHandler:{y, width, height, v20}];
    }

    v27 = v25;
    if (v25)
    {
      v13 = v29;
      [v25 setTestName:v29];
      [RPTTestRunner runTestWithParameters:v27];

LABEL_16:
      goto LABEL_17;
    }

LABEL_13:
    v28 = PLPPTGetLog();
    v13 = v29;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v29;
      v34 = 2112;
      v35 = v14;
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

+ (void)runTestWithName:(id)a3 RPTOptions:(id)a4 scrollView:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  RPTGetBoundsForView();
  [a1 runTestWithName:v11 RPTOptions:v10 scrollBounds:v9 completionHandler:?];
}

+ (BOOL)shouldUseRPTScrollingForRPTOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"RPT_Style"];
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