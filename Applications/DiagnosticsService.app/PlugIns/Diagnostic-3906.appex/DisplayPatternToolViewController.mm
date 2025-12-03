@interface DisplayPatternToolViewController
- (BOOL)isGestureEnded:(id)ended;
- (CGPoint)originPoint;
- (CGRect)frameForConfirmation;
- (CGRect)frameForPage:(int)page;
- (CGRect)rectangle;
- (id)labelForConfirmation;
- (int)maxNumPages;
- (void)_downloadTestImagesUsingResponder:(id)responder;
- (void)addPanGesture;
- (void)addTapGesture;
- (void)addedRectangleView;
- (void)animateToBrightness:(float)brightness;
- (void)cleanUp;
- (void)didUpdateCurrentImageView:(id)view;
- (void)disableAdaptationAndBlueLightReduction;
- (void)drawBrightnessIndicator;
- (void)endTestWithStatusCode:(id)code;
- (void)handleViewDidEndDecelerating:(id)decelerating;
- (void)handleViewDidScroll:(id)scroll;
- (void)hideBrightnessIndicator;
- (void)hideBrightnessIndicatorWithDelay;
- (void)panOccurred:(id)occurred;
- (void)parseResults;
- (void)removeResultWithTag:(int64_t)tag;
- (void)removeShape:(id)shape;
- (void)resetBrightness;
- (void)resetColorAdjustmentStates;
- (void)saveAndMaximizeBrightness;
- (void)saveColorAdjustmentStates;
- (void)setupView;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)shouldShowViewControllerInHostApp:(id)app;
- (void)shuffleImageOrder;
- (void)start;
- (void)tapOccurred:(id)occurred;
- (void)updateBrightnessIndicator:(float)indicator;
@end

@implementation DisplayPatternToolViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  responderCopy = responder;
  [(DisplayPatternToolViewController *)self setInputs:inputsCopy];
  inputs = [(DisplayPatternToolViewController *)self inputs];
  drawColor = [inputs drawColor];
  [(DisplayViewController *)self setDrawColor:drawColor];

  [(DisplayViewController *)self setDiagnosticResponder:responderCopy];
  objc_initWeak(&location, self);
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002D6C;
  block[3] = &unk_100010320;
  objc_copyWeak(&v21, &location);
  v11 = responderCopy;
  v20 = v11;
  dispatch_async(v10, block);

  [(DisplayPatternToolViewController *)self setCurrentTag:1];
  [(DisplayViewController *)self setPage:0];
  [(DisplayPatternToolViewController *)self setCurrentPanType:0];
  v12 = objc_alloc_init(NSMutableArray);
  [(DisplayPatternToolViewController *)self setAllResults:v12];

  inputs2 = [(DisplayPatternToolViewController *)self inputs];
  LODWORD(drawColor) = [inputs2 disableAmbientLightAdaptation];

  if (drawColor)
  {
    v14 = objc_alloc_init(CBClient);
    [(DisplayPatternToolViewController *)self setClient:v14];

    client = [(DisplayPatternToolViewController *)self client];
    blueLightClient = [client blueLightClient];
    [(DisplayPatternToolViewController *)self setBlueLightClient:blueLightClient];

    client2 = [(DisplayPatternToolViewController *)self client];
    adaptationClient = [client2 adaptationClient];
    [(DisplayPatternToolViewController *)self setAdaptationClient:adaptationClient];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_downloadTestImagesUsingResponder:(id)responder
{
  responderCopy = responder;
  v40 = dispatch_semaphore_create(0);
  v38 = +[NSMutableArray array];
  v4 = NSTemporaryDirectory();
  v41 = [NSURL fileURLWithPath:v4 isDirectory:1];

  inputs = [(DisplayPatternToolViewController *)self inputs];
  imageFileNames = [inputs imageFileNames];
  v7 = [imageFileNames count];

  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    *&v8 = 138412546;
    v37 = v8;
    while (1)
    {
      inputs2 = [(DisplayPatternToolViewController *)self inputs];
      imageFileNames2 = [inputs2 imageFileNames];
      v14 = [imageFileNames2 objectAtIndexedSubscript:v9];

      v15 = +[NSUUID UUID];
      uUIDString = [v15 UUIDString];
      v17 = [v41 URLByAppendingPathComponent:uUIDString];
      pathExtension = [v14 pathExtension];
      v19 = [v17 URLByAppendingPathExtension:pathExtension];

      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = sub_100003370;
      v51 = sub_100003380;
      v52 = 0;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100003388;
      v43[3] = &unk_100010398;
      v10 = v14;
      v44 = v10;
      v46 = &v47;
      v20 = v40;
      v45 = v20;
      [responderCopy getAsset:v10 completion:v43];
      v11 = v19;
      dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
      if (!v48[5])
      {
        break;
      }

      v21 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Saving image data to [%@]", buf, 0xCu);
      }

      v22 = v48[5];
      v42 = 0;
      v23 = [v22 writeToURL:v19 options:268435457 error:&v42];
      v24 = v42;
      if (v23)
      {
        v25 = objc_opt_new();
        [v25 setFile:v11];
        [v25 setAssetName:v10];
        [v38 setObject:v25 atIndexedSubscript:v9];
      }

      else
      {
        v26 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = v37;
          v54 = v11;
          v55 = 2112;
          v56 = v24;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to save asset [%@]: %@", buf, 0x16u);
        }

        [(DisplayPatternToolViewController *)self endTestWithStatusCode:&off_100010810];
      }

      _Block_object_dispose(&v47, 8);
      if ((v23 & 1) == 0)
      {
        goto LABEL_23;
      }

      inputs3 = [(DisplayPatternToolViewController *)self inputs];
      imageFileNames3 = [inputs3 imageFileNames];
      v29 = [imageFileNames3 count];

      if (v29 <= ++v9)
      {
        goto LABEL_15;
      }
    }

    v36 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1000066F0(v10, v36);
    }

    [(DisplayPatternToolViewController *)self endTestWithStatusCode:&off_100010828];
    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v11 = 0;
    v10 = 0;
LABEL_15:
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v31 = [v38 copy];
    [(DisplayPatternToolViewController *)selfCopy setTestImages:v31];

    inputs4 = [(DisplayPatternToolViewController *)selfCopy inputs];
    randomizeImageOrder = [inputs4 randomizeImageOrder];

    if (randomizeImageOrder)
    {
      [(DisplayPatternToolViewController *)selfCopy shuffleImageOrder];
    }

    testImagesDownloadCompletion = [(DisplayPatternToolViewController *)selfCopy testImagesDownloadCompletion];

    if (testImagesDownloadCompletion)
    {
      testImagesDownloadCompletion2 = [(DisplayPatternToolViewController *)selfCopy testImagesDownloadCompletion];
      testImagesDownloadCompletion2[2]();

      [(DisplayPatternToolViewController *)selfCopy setTestImagesDownloadCompletion:0];
    }

    objc_sync_exit(selfCopy);
  }

LABEL_23:
}

- (void)shouldShowViewControllerInHostApp:(id)app
{
  appCopy = app;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  testImages = [(DisplayPatternToolViewController *)selfCopy testImages];

  if (testImages)
  {
    appCopy[2](appCopy, 1);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003564;
    v7[3] = &unk_1000103C0;
    v8 = appCopy;
    [(DisplayPatternToolViewController *)selfCopy setTestImagesDownloadCompletion:v7];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isGestureEnded:(id)ended
{
  endedCopy = ended;
  v4 = [endedCopy state] == 3 || objc_msgSend(endedCopy, "state") == 4 || objc_msgSend(endedCopy, "state") == 5;

  return v4;
}

- (void)start
{
  v3 = +[UIColor blackColor];
  view = [(DisplayPatternToolViewController *)self view];
  [view setBackgroundColor:v3];

  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v5 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-3906.animatedScrollingQueue", v7);
  [(DisplayViewController *)self setAnimatedScrollingQueue:v5];

  inputs = [(DisplayPatternToolViewController *)self inputs];
  LODWORD(view) = [inputs disableAmbientLightAdaptation];

  if (view)
  {
    [(DisplayPatternToolViewController *)self saveColorAdjustmentStates];
    [(DisplayPatternToolViewController *)self disableAdaptationAndBlueLightReduction];
  }

  [(DisplayPatternToolViewController *)self addPanGesture];
  [(DisplayPatternToolViewController *)self addTapGesture];
}

- (void)shuffleImageOrder
{
  testImages = [(DisplayPatternToolViewController *)self testImages];
  v4 = [testImages count];

  testImages2 = [(DisplayPatternToolViewController *)self testImages];
  v8 = [testImages2 mutableCopy];

  if (v4)
  {
    v6 = 0;
    do
    {
      [v8 exchangeObjectAtIndex:v6 withObjectAtIndex:v6 + arc4random_uniform(v4)];
      ++v6;
      --v4;
    }

    while (v4);
  }

  v7 = [v8 copy];
  [(DisplayPatternToolViewController *)self setTestImages:v7];
}

- (void)setupView
{
  view = [(DisplayPatternToolViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [DADrawableView alloc];
  v16 = +[UIColor clearColor];
  drawColor = [(DisplayViewController *)self drawColor];
  v18 = [(DADrawableView *)v15 initWithFrame:v16 rectangleFillColor:drawColor rectangleEdgeColor:v8, v10, v12, v14];
  [(DisplayPatternToolViewController *)self setDrawableView:v18];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  testImages = [(DisplayPatternToolViewController *)self testImages];
  v20 = [testImages countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v20)
  {
    v21 = *v49;
    do
    {
      v22 = 0;
      do
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(testImages);
        }

        v23 = *(*(&v48 + 1) + 8 * v22);
        v24 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
        [v23 setDrawingOverlay:v24];

        drawingOverlay = [v23 drawingOverlay];
        [drawingOverlay setUserInteractionEnabled:1];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [testImages countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v20);
  }

  v47.receiver = self;
  v47.super_class = DisplayPatternToolViewController;
  [(DisplayViewController *)&v47 setupView];
  scrollView = [(DisplayViewController *)self scrollView];
  panGestureRecognizer = [scrollView panGestureRecognizer];
  [panGestureRecognizer setMinimumNumberOfTouches:2];

  view2 = [(DisplayPatternToolViewController *)self view];
  [view2 frame];
  v30 = v29;
  testImages2 = [(DisplayPatternToolViewController *)self testImages];
  v32 = [testImages2 count];
  view3 = [(DisplayPatternToolViewController *)self view];
  [view3 frame];
  v35 = v34;
  scrollView2 = [(DisplayViewController *)self scrollView];
  [scrollView2 setContentSize:{v30 * (v32 + 1), v35}];

  v37 = +[NSBundle mainBundle];
  v38 = [v37 localizedStringForKey:@"SWIPE_RIGHT_TO_PREVIOUS_SCREEN" value:&stru_1000106B0 table:0];
  confirmPageView = [(DisplayViewController *)self confirmPageView];
  [confirmPageView setMessage:v38];

  v40 = +[NSBundle mainBundle];
  v41 = [v40 localizedStringForKey:@"DONE" value:&stru_1000106B0 table:0];
  confirmPageView2 = [(DisplayViewController *)self confirmPageView];
  [confirmPageView2 setButtonTitle:v41];

  objc_initWeak(&location, self);
  confirmPageView3 = [(DisplayViewController *)self confirmPageView];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100003D6C;
  v44[3] = &unk_100010348;
  objc_copyWeak(&v45, &location);
  [confirmPageView3 setButtonAction:v44];

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);
}

- (CGRect)frameForPage:(int)page
{
  pageCopy = page;
  view = [(DisplayPatternToolViewController *)self view];
  [view frame];
  v7 = v6 * pageCopy;
  view2 = [(DisplayPatternToolViewController *)self view];
  [view2 frame];
  v10 = v9;
  view3 = [(DisplayPatternToolViewController *)self view];
  [view3 frame];
  v13 = v12;

  v14 = 0.0;
  v15 = v7;
  v16 = v10;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (void)handleViewDidScroll:(id)scroll
{
  inputs = [(DisplayPatternToolViewController *)self inputs];
  resetBrightnessOnChange = [inputs resetBrightnessOnChange];

  if (resetBrightnessOnChange)
  {
    LODWORD(v6) = 1.0;

    [(DisplayPatternToolViewController *)self animateToBrightness:v6];
  }
}

- (void)handleViewDidEndDecelerating:(id)decelerating
{
  page = [(DisplayViewController *)self page];
  v5 = page < [(DisplayPatternToolViewController *)self maxNumPages];
  panGesture = [(DisplayPatternToolViewController *)self panGesture];
  [panGesture setEnabled:v5];

  tapGesture = [(DisplayPatternToolViewController *)self tapGesture];
  [tapGesture setEnabled:v5];
}

- (CGRect)frameForConfirmation
{
  testImages = [(DisplayPatternToolViewController *)self testImages];
  -[DisplayPatternToolViewController frameForPage:](self, "frameForPage:", [testImages count]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)labelForConfirmation
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DISPLAY_TOOL_COMPLETED" value:&stru_1000106B0 table:0];

  return v3;
}

- (int)maxNumPages
{
  testImages = [(DisplayPatternToolViewController *)self testImages];
  v3 = [testImages count];

  return v3;
}

- (void)didUpdateCurrentImageView:(id)view
{
  viewCopy = view;
  drawableView = [(DisplayPatternToolViewController *)self drawableView];
  if (viewCopy)
  {
    [viewCopy insertSubview:drawableView atIndex:0];
  }

  else
  {
    [drawableView removeFromSuperview];
  }
}

- (void)addPanGesture
{
  v3 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"panOccurred:"];
  [(DisplayPatternToolViewController *)self setPanGesture:v3];

  inputs = [(DisplayPatternToolViewController *)self inputs];
  brightnessAdjustable = [inputs brightnessAdjustable];

  panGesture = [(DisplayPatternToolViewController *)self panGesture];
  v7 = panGesture;
  if (brightnessAdjustable)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [panGesture setMaximumNumberOfTouches:v8];

  panGesture2 = [(DisplayPatternToolViewController *)self panGesture];
  [panGesture2 setMinimumNumberOfTouches:1];

  panGesture3 = [(DisplayPatternToolViewController *)self panGesture];
  [panGesture3 setDelegate:self];

  view = [(DisplayPatternToolViewController *)self view];
  panGesture4 = [(DisplayPatternToolViewController *)self panGesture];
  [view addGestureRecognizer:panGesture4];
}

- (void)addTapGesture
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapOccurred:"];
  [(DisplayPatternToolViewController *)self setTapGesture:v3];

  tapGesture = [(DisplayPatternToolViewController *)self tapGesture];
  [tapGesture setDelegate:self];

  view = [(DisplayPatternToolViewController *)self view];
  tapGesture2 = [(DisplayPatternToolViewController *)self tapGesture];
  [view addGestureRecognizer:tapGesture2];
}

- (void)panOccurred:(id)occurred
{
  occurredCopy = occurred;
  if (![(DisplayViewController *)self isAnimatedScrolling])
  {
    if ([occurredCopy state] == 1)
    {
      view = [(DisplayPatternToolViewController *)self view];
      [occurredCopy locationInView:view];
      [(DisplayPatternToolViewController *)self setOriginPoint:?];

      scrollView = [(DisplayViewController *)self scrollView];
      [scrollView setScrollEnabled:0];

      if ([occurredCopy numberOfTouches] == 1)
      {
        [(DisplayPatternToolViewController *)self setCurrentPanType:1];
      }

      else if ([occurredCopy numberOfTouches] == 2)
      {
        [(DisplayPatternToolViewController *)self setCurrentPanType:2];
        brightnessIndicator = [(DisplayPatternToolViewController *)self brightnessIndicator];

        if (brightnessIndicator)
        {
          [(DisplayPatternToolViewController *)self cancelTimerForHideBrightnessIndicator];
        }

        else
        {
          [(DisplayPatternToolViewController *)self drawBrightnessIndicator];
        }
      }
    }

    if ([(DisplayPatternToolViewController *)self isGestureEnded:occurredCopy])
    {
      [(DisplayPatternToolViewController *)self hideBrightnessIndicatorWithDelay];
    }

    diagnosticResponder = [(DisplayViewController *)self diagnosticResponder];
    if ([diagnosticResponder conformsToProtocol:&OBJC_PROTOCOL___DKBrightnessResponder])
    {
      currentPanType = [(DisplayPatternToolViewController *)self currentPanType];

      if (currentPanType == 2)
      {
        diagnosticResponder2 = [(DisplayViewController *)self diagnosticResponder];
        if ([occurredCopy numberOfTouches] != 2)
        {
          if ([(DisplayPatternToolViewController *)self isGestureEnded:occurredCopy])
          {
            [(DisplayPatternToolViewController *)self setCurrentPanType:0];
            scrollView2 = [(DisplayViewController *)self scrollView];
            [scrollView2 setScrollEnabled:1];
          }

          goto LABEL_48;
        }

        view2 = [(DisplayPatternToolViewController *)self view];
        [occurredCopy locationInView:view2];
        v14 = v13;
        v16 = v15;

        [(DisplayPatternToolViewController *)self originPoint];
        v18 = (v17 - v16) / 500.0;
        BKSDisplayBrightnessGetCurrent();
        v20 = v19;
        v21 = v19;
        v22 = v18 + v19;
        *&v23 = v22;
        [diagnosticResponder2 setScreenToBrightness:0 animate:v23];
        *&v24 = v20;
        [(DisplayPatternToolViewController *)self updateBrightnessIndicator:v24];
        v25 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v72 = 134218496;
          v73 = v21;
          v74 = 2048;
          v75 = v18;
          v76 = 2048;
          v77 = v22;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Setting brightness to (%f + %f) = %f", &v72, 0x20u);
        }

        [(DisplayPatternToolViewController *)self setOriginPoint:v14, v16];
        if ([(DisplayPatternToolViewController *)self isGestureEnded:occurredCopy])
        {
          [(DisplayPatternToolViewController *)self setCurrentPanType:0];
          scrollView3 = [(DisplayViewController *)self scrollView];
          [scrollView3 setScrollEnabled:1];

          view3 = [(DisplayPatternToolViewController *)self view];
          [occurredCopy velocityInView:view3];
          v29 = v28;

          if (v29 > 1350.0)
          {
            v30 = 0.0;
LABEL_52:
            [(DisplayPatternToolViewController *)self animateToBrightness:v30];
            goto LABEL_48;
          }

          HIDWORD(v30) = -1063970816;
          if (v29 < -1350.0)
          {
            LODWORD(v30) = 1.0;
            goto LABEL_52;
          }
        }

LABEL_48:

        goto LABEL_49;
      }
    }

    else
    {
    }

    if (![(DisplayPatternToolViewController *)self isGestureEnded:occurredCopy])
    {
      view4 = [(DisplayPatternToolViewController *)self view];
      [occurredCopy locationInView:view4];
      v35 = v34;
      v37 = v36;

      [(DisplayPatternToolViewController *)self originPoint];
      v39 = vabdd_f64(v38, v35);
      inputs = [(DisplayPatternToolViewController *)self inputs];
      [inputs minimumSquareLength];
      v42 = v41;
      [(DisplayPatternToolViewController *)self originPoint];
      v44 = v43;
      if (v39 >= v42)
      {
        v48 = 0;
        if (v43 >= v35)
        {
          v46 = v35;
        }

        else
        {
          v46 = v43;
        }
      }

      else
      {
        [(DisplayPatternToolViewController *)self originPoint];
        v46 = v45;
        if (v35 >= v44)
        {
          v48 = 0;
        }

        else
        {
          currentPanType = [(DisplayPatternToolViewController *)self inputs];
          [currentPanType minimumSquareLength];
          v46 = v46 - v47;
          v48 = 1;
        }
      }

      [(DisplayPatternToolViewController *)self originPoint];
      v51 = vabdd_f64(v50, v37);
      inputs2 = [(DisplayPatternToolViewController *)self inputs];
      [inputs2 minimumSquareLength];
      v54 = v53;
      [(DisplayPatternToolViewController *)self originPoint];
      v56 = v55;
      if (v51 >= v54)
      {
        v60 = 0;
        if (v55 >= v37)
        {
          v58 = v37;
        }

        else
        {
          v58 = v55;
        }
      }

      else
      {
        [(DisplayPatternToolViewController *)self originPoint];
        v58 = v57;
        if (v37 >= v56)
        {
          v60 = 0;
        }

        else
        {
          inputs3 = [(DisplayPatternToolViewController *)self inputs];
          [inputs3 minimumSquareLength];
          v58 = v58 - v59;
          v60 = 1;
        }
      }

      [(DisplayPatternToolViewController *)self originPoint];
      v62 = vabdd_f64(v61, v35);
      inputs4 = [(DisplayPatternToolViewController *)self inputs];
      [inputs4 minimumSquareLength];
      v65 = v64;

      if (v62 >= v65)
      {
        v65 = v62;
      }

      [(DisplayPatternToolViewController *)self originPoint];
      v67 = vabdd_f64(v66, v37);
      inputs5 = [(DisplayPatternToolViewController *)self inputs];
      [inputs5 minimumSquareLength];
      v70 = v69;

      if (v67 >= v70)
      {
        v71 = v67;
      }

      else
      {
        v71 = v70;
      }

      [(DisplayPatternToolViewController *)self setRectangle:v46, v58, v65, v71];
      if (v60)
      {
      }

      if (v48)
      {
      }

      diagnosticResponder2 = [(DisplayPatternToolViewController *)self drawableView];
      [(DisplayPatternToolViewController *)self rectangle];
      [diagnosticResponder2 updateDrawing:?];
      goto LABEL_48;
    }

    [(DisplayPatternToolViewController *)self setCurrentPanType:0];
    scrollView4 = [(DisplayViewController *)self scrollView];
    [scrollView4 setScrollEnabled:1];

    drawableView = [(DisplayPatternToolViewController *)self drawableView];
    [drawableView endDrawing];

    [(DisplayPatternToolViewController *)self addedRectangleView];
  }

LABEL_49:
}

- (void)tapOccurred:(id)occurred
{
  occurredCopy = occurred;
  if (![(DisplayViewController *)self isAnimatedScrolling])
  {
    view = [(DisplayPatternToolViewController *)self view];
    [occurredCopy locationInView:view];
    [(DisplayPatternToolViewController *)self setOriginPoint:?];

    [(DisplayPatternToolViewController *)self originPoint];
    v6 = v5;
    inputs = [(DisplayPatternToolViewController *)self inputs];
    [inputs minimumSquareLength];
    v9 = v6 - v8 * 0.5;
    [(DisplayPatternToolViewController *)self originPoint];
    v11 = v10;
    inputs2 = [(DisplayPatternToolViewController *)self inputs];
    [inputs2 minimumSquareLength];
    v14 = v11 - v13 * 0.5;
    inputs3 = [(DisplayPatternToolViewController *)self inputs];
    [inputs3 minimumSquareLength];
    v17 = v16;
    inputs4 = [(DisplayPatternToolViewController *)self inputs];
    [inputs4 minimumSquareLength];
    [(DisplayPatternToolViewController *)self setRectangle:v9, v14, v17, v19];

    [(DisplayPatternToolViewController *)self addedRectangleView];
  }
}

- (void)removeShape:(id)shape
{
  view = [shape view];
  inputs = [(DisplayPatternToolViewController *)self inputs];
  drawColor = [inputs drawColor];
  [view setBackgroundColor:drawColor];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"REMOVE_ITEM" value:&stru_1000106B0 table:0];
  v9 = [UIAlertController alertControllerWithTitle:v8 message:0 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"REMOVE" value:&stru_1000106B0 table:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100004DB8;
  v20[3] = &unk_1000103E8;
  v12 = view;
  v21 = v12;
  selfCopy = self;
  v13 = [UIAlertAction actionWithTitle:v11 style:2 handler:v20];
  [v9 addAction:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1000106B0 table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004E00;
  v18[3] = &unk_100010410;
  v19 = v12;
  v16 = v12;
  v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:v18];
  [v9 addAction:v17];

  [(DisplayPatternToolViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)drawBrightnessIndicator
{
  v3 = [[UIProgressView alloc] initWithProgressViewStyle:0];
  [(DisplayPatternToolViewController *)self setBrightnessIndicator:v3];

  drawableView = [(DisplayPatternToolViewController *)self drawableView];
  [drawableView bounds];
  v6 = v5 * 0.100000001;

  drawableView2 = [(DisplayPatternToolViewController *)self drawableView];
  [drawableView2 bounds];
  v9 = v8 * 0.5;

  brightnessIndicator = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [brightnessIndicator setCenter:{v6, v9}];

  memset(&v48, 0, sizeof(v48));
  brightnessIndicator2 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  v12 = brightnessIndicator2;
  if (brightnessIndicator2)
  {
    [brightnessIndicator2 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  CGAffineTransformMakeRotation(&t2, -1.57079633);
  CGAffineTransformConcat(&v48, &t1, &t2);

  CGAffineTransformMakeScale(&t1, 1.0, 1.5);
  t2 = v48;
  CGAffineTransformConcat(&v45, &t2, &t1);
  brightnessIndicator3 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  t1 = v45;
  [brightnessIndicator3 setTransform:&t1];

  v14 = +[UIColor blackColor];
  brightnessIndicator4 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [brightnessIndicator4 setProgressTintColor:v14];

  v16 = +[UIColor whiteColor];
  brightnessIndicator5 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [brightnessIndicator5 setTrackTintColor:v16];

  drawableView3 = [(DisplayPatternToolViewController *)self drawableView];
  brightnessIndicator6 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [drawableView3 addSubview:brightnessIndicator6];

  BKSDisplayBrightnessGetCurrent();
  [(DisplayPatternToolViewController *)self updateBrightnessIndicator:?];
  brightnessIndicator7 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  layer = [brightnessIndicator7 layer];
  [layer setBorderWidth:1.0];

  v22 = +[UIColor whiteColor];
  cGColor = [v22 CGColor];
  brightnessIndicator8 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  layer2 = [brightnessIndicator8 layer];
  [layer2 setBorderColor:cGColor];

  brightnessIndicator9 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [brightnessIndicator9 frame];
  v28 = v6 - v27 * 0.5 + -2.0;

  brightnessIndicator10 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [brightnessIndicator10 frame];
  v31 = v9 - v30 * 0.5 + -2.0;

  brightnessIndicator11 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [brightnessIndicator11 frame];
  v34 = v33 + 4.0;

  brightnessIndicator12 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [brightnessIndicator12 frame];
  v37 = v36 + 4.0;

  v38 = +[UIColor blackColor];
  v39 = +[UIColor clearColor];
  v40 = [DSShapeView rectangleWithFrame:v38 borderColor:v39 fillColor:1 borderWidth:v28, v31, v34, v37];
  [(DisplayPatternToolViewController *)self setBorderViewBlack:v40];

  drawableView4 = [(DisplayPatternToolViewController *)self drawableView];
  borderViewBlack = [(DisplayPatternToolViewController *)self borderViewBlack];
  [drawableView4 addSubview:borderViewBlack];

  drawableView5 = [(DisplayPatternToolViewController *)self drawableView];
  borderViewWhite = [(DisplayPatternToolViewController *)self borderViewWhite];
  [drawableView5 addSubview:borderViewWhite];
}

- (void)updateBrightnessIndicator:(float)indicator
{
  brightnessIndicator = [(DisplayPatternToolViewController *)self brightnessIndicator];
  *&v4 = indicator;
  [brightnessIndicator setProgress:v4];
}

- (void)hideBrightnessIndicatorWithDelay
{
  [(DisplayPatternToolViewController *)self cancelTimerForHideBrightnessIndicator];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000534C;
  block[3] = &unk_100010370;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)hideBrightnessIndicator
{
  borderViewBlack = [(DisplayPatternToolViewController *)self borderViewBlack];
  [borderViewBlack removeFromSuperview];

  borderViewWhite = [(DisplayPatternToolViewController *)self borderViewWhite];
  [borderViewWhite removeFromSuperview];

  brightnessIndicator = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [brightnessIndicator removeFromSuperview];

  [(DisplayPatternToolViewController *)self setBorderViewBlack:0];
  [(DisplayPatternToolViewController *)self setBorderViewWhite:0];

  [(DisplayPatternToolViewController *)self setBrightnessIndicator:0];
}

- (void)addedRectangleView
{
  [(DisplayPatternToolViewController *)self rectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  inputs = [(DisplayPatternToolViewController *)self inputs];
  drawColor = [inputs drawColor];
  v13 = +[UIColor clearColor];
  v14 = [DSShapeView rectangleWithFrame:drawColor borderColor:v13 fillColor:v4, v6, v8, v10];

  [v14 setTag:{-[DisplayPatternToolViewController currentTag](self, "currentTag")}];
  [(DisplayPatternToolViewController *)self setCurrentTag:[(DisplayPatternToolViewController *)self currentTag]+ 1];
  v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"removeShape:"];
  [v14 addGestureRecognizer:v15];

  testImages = [(DisplayPatternToolViewController *)self testImages];
  v17 = [testImages objectAtIndexedSubscript:{-[DisplayViewController page](self, "page")}];
  drawingOverlay = [v17 drawingOverlay];
  [drawingOverlay addSubview:v14];

  v33[0] = @"xPos";
  [v14 frame];
  v32 = [NSNumber numberWithDouble:?];
  v34[0] = v32;
  v33[1] = @"yPos";
  [v14 frame];
  v31 = [NSNumber numberWithDouble:v19];
  v34[1] = v31;
  v33[2] = @"width";
  [v14 frame];
  v21 = [NSNumber numberWithDouble:v20];
  v34[2] = v21;
  v33[3] = @"height";
  [v14 frame];
  v23 = [NSNumber numberWithDouble:v22];
  v34[3] = v23;
  v33[4] = @"image";
  testImages2 = [(DisplayPatternToolViewController *)self testImages];
  v25 = [testImages2 objectAtIndexedSubscript:{-[DisplayViewController page](self, "page")}];
  assetName = [v25 assetName];
  v34[4] = assetName;
  v33[5] = @"tag";
  v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 tag]);
  v34[5] = v27;
  v33[6] = @"brightness";
  BKSDisplayBrightnessGetCurrent();
  v28 = [NSNumber numberWithFloat:?];
  v34[6] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:7];

  allResults = [(DisplayPatternToolViewController *)self allResults];
  [allResults addObject:v29];
}

- (void)removeResultWithTag:(int64_t)tag
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allResults = [(DisplayPatternToolViewController *)self allResults];
  v6 = [allResults countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allResults);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"tag"];
        integerValue = [v11 integerValue];

        if (integerValue == tag)
        {
          allResults2 = [(DisplayPatternToolViewController *)self allResults];
          [allResults2 removeObject:v10];

          goto LABEL_11;
        }
      }

      v7 = [allResults countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)saveColorAdjustmentStates
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  blueLightClient = [(DisplayPatternToolViewController *)self blueLightClient];
  [blueLightClient getBlueLightStatus:v5];

  [(DisplayPatternToolViewController *)self setBlueLightStatusActive:LOBYTE(v5[0])];
  adaptationClient = [(DisplayPatternToolViewController *)self adaptationClient];
  -[DisplayPatternToolViewController setColorAdaptationStatus:](self, "setColorAdaptationStatus:", [adaptationClient getEnabled]);
}

- (void)resetColorAdjustmentStates
{
  blueLightClient = [(DisplayPatternToolViewController *)self blueLightClient];
  [blueLightClient setActive:{-[DisplayPatternToolViewController blueLightStatusActive](self, "blueLightStatusActive")}];

  adaptationClient = [(DisplayPatternToolViewController *)self adaptationClient];
  [adaptationClient setEnabled:{-[DisplayPatternToolViewController colorAdaptationStatus](self, "colorAdaptationStatus")}];
}

- (void)disableAdaptationAndBlueLightReduction
{
  blueLightClient = [(DisplayPatternToolViewController *)self blueLightClient];
  [blueLightClient setActive:0];

  adaptationClient = [(DisplayPatternToolViewController *)self adaptationClient];
  [adaptationClient setEnabled:0];
}

- (void)saveAndMaximizeBrightness
{
  diagnosticResponder = [(DisplayViewController *)self diagnosticResponder];
  v4 = [diagnosticResponder conformsToProtocol:&OBJC_PROTOCOL___DKBrightnessResponder];

  if (v4)
  {
    diagnosticResponder2 = [(DisplayViewController *)self diagnosticResponder];
    BKSDisplayBrightnessGetCurrent();
    [(DisplayPatternToolViewController *)self setOriginalScreenBrightness:?];
    LODWORD(v5) = 1.0;
    [diagnosticResponder2 setScreenToBrightness:0 animate:v5];
  }
}

- (void)resetBrightness
{
  diagnosticResponder = [(DisplayViewController *)self diagnosticResponder];
  v4 = [diagnosticResponder conformsToProtocol:&OBJC_PROTOCOL___DKBrightnessResponder];

  if (v4)
  {
    diagnosticResponder2 = [(DisplayViewController *)self diagnosticResponder];
    [(DisplayPatternToolViewController *)self originalScreenBrightness];
    [diagnosticResponder2 setScreenToBrightness:0 animate:?];
  }
}

- (void)animateToBrightness:(float)brightness
{
  diagnosticResponder = [(DisplayViewController *)self diagnosticResponder];
  v6 = [diagnosticResponder conformsToProtocol:&OBJC_PROTOCOL___DKBrightnessResponder];

  if (v6)
  {
    diagnosticResponder2 = [(DisplayViewController *)self diagnosticResponder];
    *&v7 = brightness;
    [diagnosticResponder2 setScreenToBrightness:1 animate:v7];
  }
}

- (void)cleanUp
{
  [(DisplayPatternToolViewController *)self resetBrightness];
  inputs = [(DisplayPatternToolViewController *)self inputs];
  disableAmbientLightAdaptation = [inputs disableAmbientLightAdaptation];

  if (disableAmbientLightAdaptation)
  {

    [(DisplayPatternToolViewController *)self resetColorAdjustmentStates];
  }
}

- (void)endTestWithStatusCode:(id)code
{
  codeCopy = code;
  [(DisplayPatternToolViewController *)self cleanUp];
  result = [(DisplayPatternToolViewController *)self result];
  [result setStatusCode:codeCopy];

  [(DisplayPatternToolViewController *)self parseResults];

  [(DisplayPatternToolViewController *)self setFinished:1];
}

- (void)parseResults
{
  result = [(DisplayPatternToolViewController *)self result];
  statusCode = [result statusCode];
  if ([statusCode isEqualToNumber:&off_100010870])
  {

LABEL_4:
    result2 = [(DisplayPatternToolViewController *)self result];
    [result2 setData:&__NSDictionary0__struct];

    return;
  }

  result3 = [(DisplayPatternToolViewController *)self result];
  statusCode2 = [result3 statusCode];
  v7 = [statusCode2 isEqualToNumber:&off_100010828];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [NSMutableArray alloc];
  allResults = [(DisplayPatternToolViewController *)self allResults];
  v10 = [v8 initWithCapacity:{objc_msgSend(allResults, "count")}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  allResults2 = [(DisplayPatternToolViewController *)self allResults];
  v12 = [allResults2 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(allResults2);
        }

        v16 = [*(*(&v32 + 1) + 8 * i) mutableCopy];
        [v16 removeObjectForKey:@"tag"];
        [v10 addObject:v16];
      }

      v13 = [allResults2 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v13);
  }

  v17 = [v10 copy];
  [(DisplayPatternToolViewController *)self setAllResults:v17];

  view = [(DisplayPatternToolViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen bounds];
  v23 = v22;
  v25 = v24;

  v36[0] = @"displayResX";
  v26 = [NSNumber numberWithDouble:v23];
  v37[0] = v26;
  v36[1] = @"displayResY";
  v27 = [NSNumber numberWithDouble:v25];
  v37[1] = v27;
  v36[2] = @"anomaliesDetected";
  allResults3 = [(DisplayPatternToolViewController *)self allResults];
  v37[2] = allResults3;
  v29 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
  result4 = [(DisplayPatternToolViewController *)self result];
  [result4 setData:v29];
}

- (CGRect)rectangle
{
  x = self->_rectangle.origin.x;
  y = self->_rectangle.origin.y;
  width = self->_rectangle.size.width;
  height = self->_rectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)originPoint
{
  x = self->_originPoint.x;
  y = self->_originPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end