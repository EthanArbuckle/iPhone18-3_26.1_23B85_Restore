@interface PBFPPTOperation
+ (id)operationToAddPosterWithProvider:(id)a3 descriptorIdentifier:(id)a4 completion:(id)a5;
+ (id)operationToDeletePosters:(id)a3;
+ (id)operationToExitPosterSwitcher;
+ (id)operationToFetchDynamicDescriptorsForProvider:(id)a3;
+ (id)operationToFinishTest:(id)a3;
+ (id)operationToPushInToPosterSwitcher;
+ (id)operationToResetSwitcher;
+ (id)operationToScrollToFirstPoster:(BOOL)a3;
+ (id)operationToStartTest:(id)a3;
+ (id)operationToSynthesizeEventsForEventActions:(id)a3;
+ (id)operationToWaitForNotificationName:(id)a3 object:(id)a4 timeout:(double)a5;
+ (id)operationToWaitForTimeInterval:(double)a3;
+ (void)enqueueOperations:(id)a3;
- (PBFPPTOperation)init;
- (id)markFinishedSubTest:(id)a3 forTestName:(id)a4;
- (id)markFinishedTest:(id)a3;
- (id)markStartSubTest:(id)a3 forTestName:(id)a4;
- (id)markStartedTest:(id)a3;
- (void)operationDidFinish;
- (void)operationWillStart;
@end

@implementation PBFPPTOperation

+ (id)operationToStartTest:(id)a3
{
  v4 = a3;
  v5 = [PBFPPTBlockOperation operationWithBlock:&stru_100010768];
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"%@%@", v6, v4];
  [v5 setOperationName:v7];

  v8 = [v5 markStartedTest:v4];

  return v5;
}

+ (id)operationToFinishTest:(id)a3
{
  v4 = a3;
  v5 = [PBFPPTBlockOperation operationWithBlock:&stru_100010788];
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"%@%@", v6, v4];
  [v5 setOperationName:v7];

  v8 = [v5 markFinishedTest:v4];

  return v5;
}

+ (id)operationToWaitForTimeInterval:(double)a3
{
  v4 = NSStringFromSelector(a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004D5C;
  v7[3] = &unk_1000107A8;
  *&v7[4] = a3;
  v5 = [PBFPPTBlockOperation operationWithName:v4 block:v7];

  return v5;
}

+ (id)operationToWaitForNotificationName:(id)a3 object:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = NSStringFromSelector(a2);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004F38;
  v15[3] = &unk_1000107F8;
  v16 = v8;
  v17 = v9;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  v13 = [PBFPPTBlockOperation operationWithName:v10 block:v15];

  return v13;
}

+ (id)operationToSynthesizeEventsForEventActions:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005184;
  v9[3] = &unk_100010820;
  v10 = v4;
  v6 = v4;
  v7 = [PBFPPTBlockOperation operationWithName:v5 block:v9];

  return v7;
}

+ (id)operationToResetSwitcher
{
  v3 = +[PosterBoardTestingUtilities posterRackViewController];
  v4 = NSStringFromSelector(a2);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000530C;
  v8[3] = &unk_100010538;
  v9 = v3;
  v5 = v3;
  v6 = [PBFPPTBlockOperation operationWithName:v4 block:v8];

  return v6;
}

+ (id)operationToScrollToFirstPoster:(BOOL)a3
{
  v5 = +[PosterBoardTestingUtilities posterRackViewController];
  v6 = NSStringFromSelector(a2);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000549C;
  v10[3] = &unk_100010848;
  v11 = v5;
  v12 = a3;
  v7 = v5;
  v8 = [PBFPPTBlockOperation operationWithName:v6 block:v10];

  return v8;
}

+ (id)operationToExitPosterSwitcher
{
  v3 = [a1 operationToSynthesizeEventsForEventActions:&stru_1000106D8];
  v4 = NSStringFromSelector(a2);
  [v3 setOperationName:v4];

  return v3;
}

+ (id)operationToPushInToPosterSwitcher
{
  v3 = +[PosterBoardTestingUtilities posterRackViewController];
  v4 = NSStringFromSelector(a2);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000569C;
  v8[3] = &unk_100010538;
  v9 = v3;
  v5 = v3;
  v6 = [PBFPPTBlockOperation operationWithName:v4 block:v8];

  return v6;
}

+ (id)operationToFetchDynamicDescriptorsForProvider:(id)a3
{
  v4 = a3;
  v5 = +[PosterBoardTestingUtilities posterRackViewController];
  v6 = [v5 posterExtensionDataStore];

  v7 = NSStringFromSelector(a2);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005938;
  v12[3] = &unk_100010898;
  v13 = v6;
  v14 = v4;
  v8 = v4;
  v9 = v6;
  v10 = [PBFPPTBlockOperation operationWithName:v7 block:v12];

  return v10;
}

+ (id)operationToAddPosterWithProvider:(id)a3 descriptorIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[PosterBoardTestingUtilities posterRackViewController];
  v12 = [v11 posterExtensionDataStore];
  v13 = NSStringFromSelector(a2);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005BC8;
  v20[3] = &unk_1000108E8;
  v21 = v12;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v12;
  v18 = [PBFPPTBlockOperation operationWithName:v13 block:v20];

  return v18;
}

+ (id)operationToDeletePosters:(id)a3
{
  v4 = a3;
  v5 = +[PosterBoardTestingUtilities posterRackViewController];
  v6 = [v5 posterExtensionDataStore];
  v7 = NSStringFromSelector(a2);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005E84;
  v12[3] = &unk_100010910;
  v13 = v6;
  v14 = v4;
  v8 = v6;
  v9 = v4;
  v10 = [PBFPPTBlockOperation operationWithName:v7 block:v12];

  return v10;
}

- (PBFPPTOperation)init
{
  v8.receiver = self;
  v8.super_class = PBFPPTOperation;
  v2 = [(PBFPPTOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [NSString stringWithFormat:@"<%@: %p>", v4, v2];
    operationName = v2->_operationName;
    v2->_operationName = v5;
  }

  return v2;
}

- (id)markStartedTest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100006160;
  v9[3] = &unk_100010938;
  objc_copyWeak(&v11, &location);
  v10 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v9);
  startTestBlock = self->_startTestBlock;
  self->_startTestBlock = v6;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return self;
}

- (id)markFinishedTest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100006344;
  v9[3] = &unk_100010938;
  objc_copyWeak(&v11, &location);
  v10 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v9);
  finishTestBlock = self->_finishTestBlock;
  self->_finishTestBlock = v6;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return self;
}

- (id)markStartSubTest:(id)a3 forTestName:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006548;
  v13[3] = &unk_100010960;
  objc_copyWeak(&v16, &location);
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  v10 = objc_retainBlock(v13);
  startSubTestBlock = self->_startSubTestBlock;
  self->_startSubTestBlock = v10;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  return self;
}

- (id)markFinishedSubTest:(id)a3 forTestName:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006754;
  v13[3] = &unk_100010960;
  objc_copyWeak(&v16, &location);
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  v10 = objc_retainBlock(v13);
  finishSubTestBlock = self->_finishSubTestBlock;
  self->_finishSubTestBlock = v10;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  return self;
}

- (void)operationWillStart
{
  self->_operationStartTime = CFAbsoluteTimeGetCurrent();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    operationName = self->_operationName;
    if (!operationName)
    {
      operationName = self;
    }

    v8 = 138412290;
    v9 = operationName;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' starting", &v8, 0xCu);
  }

  startTestBlock = self->_startTestBlock;
  if (startTestBlock)
  {
    startTestBlock[2]();
    v5 = self->_startTestBlock;
    self->_startTestBlock = 0;
  }

  startSubTestBlock = self->_startSubTestBlock;
  if (startSubTestBlock)
  {
    startSubTestBlock[2]();
    v7 = self->_startSubTestBlock;
    self->_startSubTestBlock = 0;
  }
}

- (void)operationDidFinish
{
  self->_operationEndTime = CFAbsoluteTimeGetCurrent();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    operationName = self->_operationName;
    if (!operationName)
    {
      operationName = self;
    }

    v4 = self->_operationEndTime - self->_operationStartTime;
    v9 = 138412546;
    v10 = operationName;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' executed in %f seconds", &v9, 0x16u);
  }

  finishSubTestBlock = self->_finishSubTestBlock;
  if (finishSubTestBlock)
  {
    finishSubTestBlock[2]();
    v6 = self->_finishSubTestBlock;
    self->_finishSubTestBlock = 0;
  }

  finishTestBlock = self->_finishTestBlock;
  if (finishTestBlock)
  {
    finishTestBlock[2]();
    v8 = self->_finishTestBlock;
    self->_finishTestBlock = 0;
  }
}

+ (void)enqueueOperations:(id)a3
{
  v3 = a3;
  v4 = +[NSOperationQueue mainQueue];
  [v4 addOperations:v3 waitUntilFinished:0];
}

@end