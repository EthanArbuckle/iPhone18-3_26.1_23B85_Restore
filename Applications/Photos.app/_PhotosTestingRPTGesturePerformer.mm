@interface _PhotosTestingRPTGesturePerformer
- (_PhotosTestingRPTGesturePerformer)initWithTestName:(id)name testOptions:(id)options;
- (void)swipeTowardsEdge:(unint64_t)edge touchArea:(CGRect)area inCoordinateSpace:(id)space completionHandler:(id)handler;
- (void)testRunner:(id)runner didFailRunningParameters:(id)parameters withError:(id)error;
@end

@implementation _PhotosTestingRPTGesturePerformer

- (void)testRunner:(id)runner didFailRunningParameters:(id)parameters withError:(id)error
{
  errorCopy = error;
  v6 = PLPPTGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "RPTTest failed: %@", &v7, 0xCu);
  }
}

- (void)swipeTowardsEdge:(unint64_t)edge touchArea:(CGRect)area inCoordinateSpace:(id)space completionHandler:(id)handler
{
  spaceCopy = space;
  handlerCopy = handler;
  v12 = +[UIScreen px_mainScreen];
  coordinateSpace = [v12 coordinateSpace];

  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v18 = edge - 1;
  if (edge - 1 >= 8 || ((0x8Bu >> v18) & 1) == 0)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PhotosTestingRPTHelper.m" lineNumber:444 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = qword_100049278[v18];
  v24 = [RPTDirectionalSwipeTestParameters alloc];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100038458;
  v29[3] = &unk_10005C078;
  v30 = handlerCopy;
  v25 = handlerCopy;
  v26 = [v24 initWithTestName:0 scrollingBounds:1 swipeCount:v23 direction:v29 completionHandler:{v19, v20, v21, v22}];
  v27 = [PXGesturePerformer swipeSpeedFactor:1];
  [v26 setSwipeSpeedFactor:v27];

  [v26 setShouldFlick:1];
  [v26 setSwipeCount:1];
  [RPTTestRunner runTestWithParameters:v26 delegate:self];
}

- (_PhotosTestingRPTGesturePerformer)initWithTestName:(id)name testOptions:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = _PhotosTestingRPTGesturePerformer;
  v8 = [(_PhotosTestingRPTGesturePerformer *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    testName = v8->_testName;
    v8->_testName = v9;

    v11 = [optionsCopy copy];
    testOptions = v8->_testOptions;
    v8->_testOptions = v11;
  }

  return v8;
}

@end