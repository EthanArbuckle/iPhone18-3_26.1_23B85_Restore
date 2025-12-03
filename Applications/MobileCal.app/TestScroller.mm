@interface TestScroller
- (TestScroller)initWithOptions:(id)options testName:(id)name application:(id)application;
- (unint64_t)_scrollTypeFromOptions:(id)options;
- (void)_callCompletionIfExists;
- (void)runRecapTestIfNeeded:(id)needed;
- (void)scrollView:(id)view completionBlock:(id)block;
@end

@implementation TestScroller

- (TestScroller)initWithOptions:(id)options testName:(id)name application:(id)application
{
  optionsCopy = options;
  nameCopy = name;
  applicationCopy = application;
  v25.receiver = self;
  v25.super_class = TestScroller;
  v11 = [(TestScroller *)&v25 init];
  if (v11)
  {
    v12 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v27 = nameCopy;
      v28 = 2114;
      v29 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Initializing TestScroller. TestName: %{public}@, Options: %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&v11->_testName, name);
    objc_storeStrong(&v11->_application, application);
    validTestScrollTypeStrings = v11->_validTestScrollTypeStrings;
    v11->_validTestScrollTypeStrings = &off_10021A098;

    v11->_currentIter = 0;
    v14 = [optionsCopy objectForKey:@"totalScrollDistance"];
    v15 = v14;
    if (v14)
    {
      v11->_totalScrollDistance = [v14 intValue];
    }

    else
    {
      v16 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error: totalScrollDistance given is nil", buf, 2u);
      }

      v11->_inputInvalid = 1;
    }

    v17 = [optionsCopy objectForKey:@"scrollDistanceInterval"];
    v18 = v17;
    if (v17)
    {
      v11->_scrollDistanceInterval = [v17 intValue];
    }

    else
    {
      v19 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error: scrollDistanceInterval given is nil", buf, 2u);
      }

      v11->_inputInvalid = 1;
    }

    v20 = [optionsCopy objectForKey:@"iterations"];
    v21 = v20;
    if (v20)
    {
      v11->_iterations = [v20 intValue];
    }

    else
    {
      v22 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error: iterations given is nil", buf, 2u);
      }

      v11->_inputInvalid = 1;
    }

    v23 = [optionsCopy objectForKey:@"axis"];
    if ([v23 isEqualToString:@"Horizontal"])
    {
      v11->_horizontal = 1;
    }

    v11->_scrollType = [(TestScroller *)v11 _scrollTypeFromOptions:optionsCopy];
  }

  return v11;
}

- (void)runRecapTestIfNeeded:(id)needed
{
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentIter = selfCopy->_currentIter;
  selfCopy->_currentIter = currentIter + 1;
  iterations = selfCopy->_iterations;
  v8 = kCalUILogHandle;
  v9 = os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG);
  if (currentIter >= iterations)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Recap Test Finished", buf, 2u);
    }

    [(Application *)selfCopy->_application finishedTest:selfCopy->_testName];
    [(TestScroller *)selfCopy _callCompletionIfExists];
  }

  else
  {
    if (v9)
    {
      v10 = selfCopy->_currentIter;
      *buf = 67109120;
      v41 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Running Recap Test, iteration: %d", buf, 8u);
    }

    v11 = [RPTScrollViewTestParameters alloc];
    testName = selfCopy->_testName;
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_1000E0B70;
    v37 = &unk_10020EC68;
    v38 = selfCopy;
    v13 = neededCopy;
    v39 = v13;
    v14 = [v11 initWithTestName:testName scrollView:v13 completionHandler:&v34];
    RPTViewFrameInScreenSpace();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [v13 adjustedContentInset];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    totalScrollDistance = selfCopy->_totalScrollDistance;
    v32 = totalScrollDistance;
    if (totalScrollDistance == -1)
    {
      v32 = 3.40282347e38;
    }

    if (v32 != 0.0)
    {
      [v14 setScrollingContentLength:?];
    }

    [v14 setIterationDurationFactor:0.5];
    [v14 setScrollingBounds:{v16 + v26, v18 + v24, v20 - (v26 + v30), v22 - (v24 + v28)}];
    if (selfCopy->_horizontal)
    {
      v33 = 5;
    }

    else
    {
      v33 = 4;
    }

    [v14 setDirection:v33];
    [RPTTestRunner runTestWithParameters:v14];
  }

  objc_sync_exit(selfCopy);
}

- (void)scrollView:(id)view completionBlock:(id)block
{
  viewCopy = view;
  v7 = [block copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v7;

  if (viewCopy)
  {
    scrollType = self->_scrollType;
    switch(scrollType)
    {
      case 2uLL:
        [(Application *)self->_application startedTest:self->_testName];
        totalScrollDistance = self->_totalScrollDistance;
        v16 = (totalScrollDistance / self->_scrollDistanceInterval);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000E0D0C;
        v17[3] = &unk_10020EB98;
        v17[4] = self;
        [viewCopy _simulateScrollWithTranslation:0 duration:v17 willBeginDragging:0 didEndDragging:0 willBeginDecelerating:totalScrollDistance didEndDecelerating:{0.0, v16}];
        break;
      case 1uLL:
        testName = self->_testName;
        scrollDistanceInterval = self->_scrollDistanceInterval;
        iterations = self->_iterations;
        v13 = self->_totalScrollDistance;
        if (self->_horizontal)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000E0D04;
        v18[3] = &unk_1002113B8;
        v18[4] = self;
        [viewCopy _performScrollTest:testName iterations:iterations delta:scrollDistanceInterval length:v13 scrollAxis:v14 extraResultsBlock:0 completionBlock:v18];
        break;
      case 0uLL:
        [(TestScroller *)self runRecapTestIfNeeded:viewCopy];
        break;
    }
  }

  else
  {
    [(Application *)self->_application failedTest:self->_testName withFailure:@"There was no scroll view"];
  }
}

- (unint64_t)_scrollTypeFromOptions:(id)options
{
  v4 = [options objectForKey:@"scrollType"];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = [(NSArray *)self->_validTestScrollTypeStrings indexOfObject:v4];
  if (!v5)
  {
    if ((+[RPTTestRunner isRecapAvailable]& 1) != 0)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v12 = kCalUILogHandle;
    if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v13) = 0;
    v8 = "Error: Input invalid because Recap is not available";
    v9 = v12;
    v10 = 2;
    goto LABEL_6;
  }

  v6 = v5;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    v7 = kCalUILogHandle;
    if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v6 = 0;
      self->_inputInvalid = 1;
      goto LABEL_8;
    }

    v13 = 138412290;
    v14 = v4;
    v8 = "Error: Input invalid due to wrong scrollType string: %@";
    v9 = v7;
    v10 = 12;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v13, v10);
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

- (void)_callCompletionIfExists
{
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2]();
  }
}

@end