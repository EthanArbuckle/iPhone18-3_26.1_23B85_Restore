@interface DisplayPatternToolViewController
- (BOOL)isGestureEnded:(id)a3;
- (CGPoint)originPoint;
- (CGRect)frameForConfirmation;
- (CGRect)frameForPage:(int)a3;
- (CGRect)rectangle;
- (id)labelForConfirmation;
- (int)maxNumPages;
- (void)_downloadTestImagesUsingResponder:(id)a3;
- (void)addPanGesture;
- (void)addTapGesture;
- (void)addedRectangleView;
- (void)animateToBrightness:(float)a3;
- (void)cleanUp;
- (void)didUpdateCurrentImageView:(id)a3;
- (void)disableAdaptationAndBlueLightReduction;
- (void)drawBrightnessIndicator;
- (void)endTestWithStatusCode:(id)a3;
- (void)handleViewDidEndDecelerating:(id)a3;
- (void)handleViewDidScroll:(id)a3;
- (void)hideBrightnessIndicator;
- (void)hideBrightnessIndicatorWithDelay;
- (void)panOccurred:(id)a3;
- (void)parseResults;
- (void)removeResultWithTag:(int64_t)a3;
- (void)removeShape:(id)a3;
- (void)resetBrightness;
- (void)resetColorAdjustmentStates;
- (void)saveAndMaximizeBrightness;
- (void)saveColorAdjustmentStates;
- (void)setupView;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)shouldShowViewControllerInHostApp:(id)a3;
- (void)shuffleImageOrder;
- (void)start;
- (void)tapOccurred:(id)a3;
- (void)updateBrightnessIndicator:(float)a3;
@end

@implementation DisplayPatternToolViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(DisplayPatternToolViewController *)self setInputs:v6];
  v8 = [(DisplayPatternToolViewController *)self inputs];
  v9 = [v8 drawColor];
  [(DisplayViewController *)self setDrawColor:v9];

  [(DisplayViewController *)self setDiagnosticResponder:v7];
  objc_initWeak(&location, self);
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002D6C;
  block[3] = &unk_100010320;
  objc_copyWeak(&v21, &location);
  v11 = v7;
  v20 = v11;
  dispatch_async(v10, block);

  [(DisplayPatternToolViewController *)self setCurrentTag:1];
  [(DisplayViewController *)self setPage:0];
  [(DisplayPatternToolViewController *)self setCurrentPanType:0];
  v12 = objc_alloc_init(NSMutableArray);
  [(DisplayPatternToolViewController *)self setAllResults:v12];

  v13 = [(DisplayPatternToolViewController *)self inputs];
  LODWORD(v9) = [v13 disableAmbientLightAdaptation];

  if (v9)
  {
    v14 = objc_alloc_init(CBClient);
    [(DisplayPatternToolViewController *)self setClient:v14];

    v15 = [(DisplayPatternToolViewController *)self client];
    v16 = [v15 blueLightClient];
    [(DisplayPatternToolViewController *)self setBlueLightClient:v16];

    v17 = [(DisplayPatternToolViewController *)self client];
    v18 = [v17 adaptationClient];
    [(DisplayPatternToolViewController *)self setAdaptationClient:v18];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_downloadTestImagesUsingResponder:(id)a3
{
  v39 = a3;
  v40 = dispatch_semaphore_create(0);
  v38 = +[NSMutableArray array];
  v4 = NSTemporaryDirectory();
  v41 = [NSURL fileURLWithPath:v4 isDirectory:1];

  v5 = [(DisplayPatternToolViewController *)self inputs];
  v6 = [v5 imageFileNames];
  v7 = [v6 count];

  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    *&v8 = 138412546;
    v37 = v8;
    while (1)
    {
      v12 = [(DisplayPatternToolViewController *)self inputs];
      v13 = [v12 imageFileNames];
      v14 = [v13 objectAtIndexedSubscript:v9];

      v15 = +[NSUUID UUID];
      v16 = [v15 UUIDString];
      v17 = [v41 URLByAppendingPathComponent:v16];
      v18 = [v14 pathExtension];
      v19 = [v17 URLByAppendingPathExtension:v18];

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
      [v39 getAsset:v10 completion:v43];
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

      v27 = [(DisplayPatternToolViewController *)self inputs];
      v28 = [v27 imageFileNames];
      v29 = [v28 count];

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
    v30 = self;
    objc_sync_enter(v30);
    v31 = [v38 copy];
    [(DisplayPatternToolViewController *)v30 setTestImages:v31];

    v32 = [(DisplayPatternToolViewController *)v30 inputs];
    v33 = [v32 randomizeImageOrder];

    if (v33)
    {
      [(DisplayPatternToolViewController *)v30 shuffleImageOrder];
    }

    v34 = [(DisplayPatternToolViewController *)v30 testImagesDownloadCompletion];

    if (v34)
    {
      v35 = [(DisplayPatternToolViewController *)v30 testImagesDownloadCompletion];
      v35[2]();

      [(DisplayPatternToolViewController *)v30 setTestImagesDownloadCompletion:0];
    }

    objc_sync_exit(v30);
  }

LABEL_23:
}

- (void)shouldShowViewControllerInHostApp:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DisplayPatternToolViewController *)v5 testImages];

  if (v6)
  {
    v4[2](v4, 1);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003564;
    v7[3] = &unk_1000103C0;
    v8 = v4;
    [(DisplayPatternToolViewController *)v5 setTestImagesDownloadCompletion:v7];
  }

  objc_sync_exit(v5);
}

- (BOOL)isGestureEnded:(id)a3
{
  v3 = a3;
  v4 = [v3 state] == 3 || objc_msgSend(v3, "state") == 4 || objc_msgSend(v3, "state") == 5;

  return v4;
}

- (void)start
{
  v3 = +[UIColor blackColor];
  v4 = [(DisplayPatternToolViewController *)self view];
  [v4 setBackgroundColor:v3];

  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v5 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-3906.animatedScrollingQueue", v7);
  [(DisplayViewController *)self setAnimatedScrollingQueue:v5];

  v6 = [(DisplayPatternToolViewController *)self inputs];
  LODWORD(v4) = [v6 disableAmbientLightAdaptation];

  if (v4)
  {
    [(DisplayPatternToolViewController *)self saveColorAdjustmentStates];
    [(DisplayPatternToolViewController *)self disableAdaptationAndBlueLightReduction];
  }

  [(DisplayPatternToolViewController *)self addPanGesture];
  [(DisplayPatternToolViewController *)self addTapGesture];
}

- (void)shuffleImageOrder
{
  v3 = [(DisplayPatternToolViewController *)self testImages];
  v4 = [v3 count];

  v5 = [(DisplayPatternToolViewController *)self testImages];
  v8 = [v5 mutableCopy];

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
  v3 = [(DisplayPatternToolViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 screen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [DADrawableView alloc];
  v16 = +[UIColor clearColor];
  v17 = [(DisplayViewController *)self drawColor];
  v18 = [(DADrawableView *)v15 initWithFrame:v16 rectangleFillColor:v17 rectangleEdgeColor:v8, v10, v12, v14];
  [(DisplayPatternToolViewController *)self setDrawableView:v18];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v19 = [(DisplayPatternToolViewController *)self testImages];
  v20 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
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
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v48 + 1) + 8 * v22);
        v24 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
        [v23 setDrawingOverlay:v24];

        v25 = [v23 drawingOverlay];
        [v25 setUserInteractionEnabled:1];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v20);
  }

  v47.receiver = self;
  v47.super_class = DisplayPatternToolViewController;
  [(DisplayViewController *)&v47 setupView];
  v26 = [(DisplayViewController *)self scrollView];
  v27 = [v26 panGestureRecognizer];
  [v27 setMinimumNumberOfTouches:2];

  v28 = [(DisplayPatternToolViewController *)self view];
  [v28 frame];
  v30 = v29;
  v31 = [(DisplayPatternToolViewController *)self testImages];
  v32 = [v31 count];
  v33 = [(DisplayPatternToolViewController *)self view];
  [v33 frame];
  v35 = v34;
  v36 = [(DisplayViewController *)self scrollView];
  [v36 setContentSize:{v30 * (v32 + 1), v35}];

  v37 = +[NSBundle mainBundle];
  v38 = [v37 localizedStringForKey:@"SWIPE_RIGHT_TO_PREVIOUS_SCREEN" value:&stru_1000106B0 table:0];
  v39 = [(DisplayViewController *)self confirmPageView];
  [v39 setMessage:v38];

  v40 = +[NSBundle mainBundle];
  v41 = [v40 localizedStringForKey:@"DONE" value:&stru_1000106B0 table:0];
  v42 = [(DisplayViewController *)self confirmPageView];
  [v42 setButtonTitle:v41];

  objc_initWeak(&location, self);
  v43 = [(DisplayViewController *)self confirmPageView];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100003D6C;
  v44[3] = &unk_100010348;
  objc_copyWeak(&v45, &location);
  [v43 setButtonAction:v44];

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);
}

- (CGRect)frameForPage:(int)a3
{
  v4 = a3;
  v5 = [(DisplayPatternToolViewController *)self view];
  [v5 frame];
  v7 = v6 * v4;
  v8 = [(DisplayPatternToolViewController *)self view];
  [v8 frame];
  v10 = v9;
  v11 = [(DisplayPatternToolViewController *)self view];
  [v11 frame];
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

- (void)handleViewDidScroll:(id)a3
{
  v4 = [(DisplayPatternToolViewController *)self inputs];
  v5 = [v4 resetBrightnessOnChange];

  if (v5)
  {
    LODWORD(v6) = 1.0;

    [(DisplayPatternToolViewController *)self animateToBrightness:v6];
  }
}

- (void)handleViewDidEndDecelerating:(id)a3
{
  v4 = [(DisplayViewController *)self page];
  v5 = v4 < [(DisplayPatternToolViewController *)self maxNumPages];
  v6 = [(DisplayPatternToolViewController *)self panGesture];
  [v6 setEnabled:v5];

  v7 = [(DisplayPatternToolViewController *)self tapGesture];
  [v7 setEnabled:v5];
}

- (CGRect)frameForConfirmation
{
  v3 = [(DisplayPatternToolViewController *)self testImages];
  -[DisplayPatternToolViewController frameForPage:](self, "frameForPage:", [v3 count]);
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
  v2 = [(DisplayPatternToolViewController *)self testImages];
  v3 = [v2 count];

  return v3;
}

- (void)didUpdateCurrentImageView:(id)a3
{
  v5 = a3;
  v4 = [(DisplayPatternToolViewController *)self drawableView];
  if (v5)
  {
    [v5 insertSubview:v4 atIndex:0];
  }

  else
  {
    [v4 removeFromSuperview];
  }
}

- (void)addPanGesture
{
  v3 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"panOccurred:"];
  [(DisplayPatternToolViewController *)self setPanGesture:v3];

  v4 = [(DisplayPatternToolViewController *)self inputs];
  v5 = [v4 brightnessAdjustable];

  v6 = [(DisplayPatternToolViewController *)self panGesture];
  v7 = v6;
  if (v5)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v6 setMaximumNumberOfTouches:v8];

  v9 = [(DisplayPatternToolViewController *)self panGesture];
  [v9 setMinimumNumberOfTouches:1];

  v10 = [(DisplayPatternToolViewController *)self panGesture];
  [v10 setDelegate:self];

  v12 = [(DisplayPatternToolViewController *)self view];
  v11 = [(DisplayPatternToolViewController *)self panGesture];
  [v12 addGestureRecognizer:v11];
}

- (void)addTapGesture
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapOccurred:"];
  [(DisplayPatternToolViewController *)self setTapGesture:v3];

  v4 = [(DisplayPatternToolViewController *)self tapGesture];
  [v4 setDelegate:self];

  v6 = [(DisplayPatternToolViewController *)self view];
  v5 = [(DisplayPatternToolViewController *)self tapGesture];
  [v6 addGestureRecognizer:v5];
}

- (void)panOccurred:(id)a3
{
  v6 = a3;
  if (![(DisplayViewController *)self isAnimatedScrolling])
  {
    if ([v6 state] == 1)
    {
      v7 = [(DisplayPatternToolViewController *)self view];
      [v6 locationInView:v7];
      [(DisplayPatternToolViewController *)self setOriginPoint:?];

      v8 = [(DisplayViewController *)self scrollView];
      [v8 setScrollEnabled:0];

      if ([v6 numberOfTouches] == 1)
      {
        [(DisplayPatternToolViewController *)self setCurrentPanType:1];
      }

      else if ([v6 numberOfTouches] == 2)
      {
        [(DisplayPatternToolViewController *)self setCurrentPanType:2];
        v9 = [(DisplayPatternToolViewController *)self brightnessIndicator];

        if (v9)
        {
          [(DisplayPatternToolViewController *)self cancelTimerForHideBrightnessIndicator];
        }

        else
        {
          [(DisplayPatternToolViewController *)self drawBrightnessIndicator];
        }
      }
    }

    if ([(DisplayPatternToolViewController *)self isGestureEnded:v6])
    {
      [(DisplayPatternToolViewController *)self hideBrightnessIndicatorWithDelay];
    }

    v10 = [(DisplayViewController *)self diagnosticResponder];
    if ([v10 conformsToProtocol:&OBJC_PROTOCOL___DKBrightnessResponder])
    {
      v3 = [(DisplayPatternToolViewController *)self currentPanType];

      if (v3 == 2)
      {
        v11 = [(DisplayViewController *)self diagnosticResponder];
        if ([v6 numberOfTouches] != 2)
        {
          if ([(DisplayPatternToolViewController *)self isGestureEnded:v6])
          {
            [(DisplayPatternToolViewController *)self setCurrentPanType:0];
            v49 = [(DisplayViewController *)self scrollView];
            [v49 setScrollEnabled:1];
          }

          goto LABEL_48;
        }

        v12 = [(DisplayPatternToolViewController *)self view];
        [v6 locationInView:v12];
        v14 = v13;
        v16 = v15;

        [(DisplayPatternToolViewController *)self originPoint];
        v18 = (v17 - v16) / 500.0;
        BKSDisplayBrightnessGetCurrent();
        v20 = v19;
        v21 = v19;
        v22 = v18 + v19;
        *&v23 = v22;
        [v11 setScreenToBrightness:0 animate:v23];
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
        if ([(DisplayPatternToolViewController *)self isGestureEnded:v6])
        {
          [(DisplayPatternToolViewController *)self setCurrentPanType:0];
          v26 = [(DisplayViewController *)self scrollView];
          [v26 setScrollEnabled:1];

          v27 = [(DisplayPatternToolViewController *)self view];
          [v6 velocityInView:v27];
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

    if (![(DisplayPatternToolViewController *)self isGestureEnded:v6])
    {
      v33 = [(DisplayPatternToolViewController *)self view];
      [v6 locationInView:v33];
      v35 = v34;
      v37 = v36;

      [(DisplayPatternToolViewController *)self originPoint];
      v39 = vabdd_f64(v38, v35);
      v40 = [(DisplayPatternToolViewController *)self inputs];
      [v40 minimumSquareLength];
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
          v3 = [(DisplayPatternToolViewController *)self inputs];
          [v3 minimumSquareLength];
          v46 = v46 - v47;
          v48 = 1;
        }
      }

      [(DisplayPatternToolViewController *)self originPoint];
      v51 = vabdd_f64(v50, v37);
      v52 = [(DisplayPatternToolViewController *)self inputs];
      [v52 minimumSquareLength];
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
          v4 = [(DisplayPatternToolViewController *)self inputs];
          [v4 minimumSquareLength];
          v58 = v58 - v59;
          v60 = 1;
        }
      }

      [(DisplayPatternToolViewController *)self originPoint];
      v62 = vabdd_f64(v61, v35);
      v63 = [(DisplayPatternToolViewController *)self inputs];
      [v63 minimumSquareLength];
      v65 = v64;

      if (v62 >= v65)
      {
        v65 = v62;
      }

      [(DisplayPatternToolViewController *)self originPoint];
      v67 = vabdd_f64(v66, v37);
      v68 = [(DisplayPatternToolViewController *)self inputs];
      [v68 minimumSquareLength];
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

      v11 = [(DisplayPatternToolViewController *)self drawableView];
      [(DisplayPatternToolViewController *)self rectangle];
      [v11 updateDrawing:?];
      goto LABEL_48;
    }

    [(DisplayPatternToolViewController *)self setCurrentPanType:0];
    v31 = [(DisplayViewController *)self scrollView];
    [v31 setScrollEnabled:1];

    v32 = [(DisplayPatternToolViewController *)self drawableView];
    [v32 endDrawing];

    [(DisplayPatternToolViewController *)self addedRectangleView];
  }

LABEL_49:
}

- (void)tapOccurred:(id)a3
{
  v20 = a3;
  if (![(DisplayViewController *)self isAnimatedScrolling])
  {
    v4 = [(DisplayPatternToolViewController *)self view];
    [v20 locationInView:v4];
    [(DisplayPatternToolViewController *)self setOriginPoint:?];

    [(DisplayPatternToolViewController *)self originPoint];
    v6 = v5;
    v7 = [(DisplayPatternToolViewController *)self inputs];
    [v7 minimumSquareLength];
    v9 = v6 - v8 * 0.5;
    [(DisplayPatternToolViewController *)self originPoint];
    v11 = v10;
    v12 = [(DisplayPatternToolViewController *)self inputs];
    [v12 minimumSquareLength];
    v14 = v11 - v13 * 0.5;
    v15 = [(DisplayPatternToolViewController *)self inputs];
    [v15 minimumSquareLength];
    v17 = v16;
    v18 = [(DisplayPatternToolViewController *)self inputs];
    [v18 minimumSquareLength];
    [(DisplayPatternToolViewController *)self setRectangle:v9, v14, v17, v19];

    [(DisplayPatternToolViewController *)self addedRectangleView];
  }
}

- (void)removeShape:(id)a3
{
  v4 = [a3 view];
  v5 = [(DisplayPatternToolViewController *)self inputs];
  v6 = [v5 drawColor];
  [v4 setBackgroundColor:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"REMOVE_ITEM" value:&stru_1000106B0 table:0];
  v9 = [UIAlertController alertControllerWithTitle:v8 message:0 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"REMOVE" value:&stru_1000106B0 table:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100004DB8;
  v20[3] = &unk_1000103E8;
  v12 = v4;
  v21 = v12;
  v22 = self;
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

  v4 = [(DisplayPatternToolViewController *)self drawableView];
  [v4 bounds];
  v6 = v5 * 0.100000001;

  v7 = [(DisplayPatternToolViewController *)self drawableView];
  [v7 bounds];
  v9 = v8 * 0.5;

  v10 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [v10 setCenter:{v6, v9}];

  memset(&v48, 0, sizeof(v48));
  v11 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  v12 = v11;
  if (v11)
  {
    [v11 transform];
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
  v13 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  t1 = v45;
  [v13 setTransform:&t1];

  v14 = +[UIColor blackColor];
  v15 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [v15 setProgressTintColor:v14];

  v16 = +[UIColor whiteColor];
  v17 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [v17 setTrackTintColor:v16];

  v18 = [(DisplayPatternToolViewController *)self drawableView];
  v19 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [v18 addSubview:v19];

  BKSDisplayBrightnessGetCurrent();
  [(DisplayPatternToolViewController *)self updateBrightnessIndicator:?];
  v20 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  v21 = [v20 layer];
  [v21 setBorderWidth:1.0];

  v22 = +[UIColor whiteColor];
  v23 = [v22 CGColor];
  v24 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  v25 = [v24 layer];
  [v25 setBorderColor:v23];

  v26 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [v26 frame];
  v28 = v6 - v27 * 0.5 + -2.0;

  v29 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [v29 frame];
  v31 = v9 - v30 * 0.5 + -2.0;

  v32 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [v32 frame];
  v34 = v33 + 4.0;

  v35 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [v35 frame];
  v37 = v36 + 4.0;

  v38 = +[UIColor blackColor];
  v39 = +[UIColor clearColor];
  v40 = [DSShapeView rectangleWithFrame:v38 borderColor:v39 fillColor:1 borderWidth:v28, v31, v34, v37];
  [(DisplayPatternToolViewController *)self setBorderViewBlack:v40];

  v41 = [(DisplayPatternToolViewController *)self drawableView];
  v42 = [(DisplayPatternToolViewController *)self borderViewBlack];
  [v41 addSubview:v42];

  v43 = [(DisplayPatternToolViewController *)self drawableView];
  v44 = [(DisplayPatternToolViewController *)self borderViewWhite];
  [v43 addSubview:v44];
}

- (void)updateBrightnessIndicator:(float)a3
{
  v5 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  *&v4 = a3;
  [v5 setProgress:v4];
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
  v3 = [(DisplayPatternToolViewController *)self borderViewBlack];
  [v3 removeFromSuperview];

  v4 = [(DisplayPatternToolViewController *)self borderViewWhite];
  [v4 removeFromSuperview];

  v5 = [(DisplayPatternToolViewController *)self brightnessIndicator];
  [v5 removeFromSuperview];

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
  v11 = [(DisplayPatternToolViewController *)self inputs];
  v12 = [v11 drawColor];
  v13 = +[UIColor clearColor];
  v14 = [DSShapeView rectangleWithFrame:v12 borderColor:v13 fillColor:v4, v6, v8, v10];

  [v14 setTag:{-[DisplayPatternToolViewController currentTag](self, "currentTag")}];
  [(DisplayPatternToolViewController *)self setCurrentTag:[(DisplayPatternToolViewController *)self currentTag]+ 1];
  v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"removeShape:"];
  [v14 addGestureRecognizer:v15];

  v16 = [(DisplayPatternToolViewController *)self testImages];
  v17 = [v16 objectAtIndexedSubscript:{-[DisplayViewController page](self, "page")}];
  v18 = [v17 drawingOverlay];
  [v18 addSubview:v14];

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
  v24 = [(DisplayPatternToolViewController *)self testImages];
  v25 = [v24 objectAtIndexedSubscript:{-[DisplayViewController page](self, "page")}];
  v26 = [v25 assetName];
  v34[4] = v26;
  v33[5] = @"tag";
  v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 tag]);
  v34[5] = v27;
  v33[6] = @"brightness";
  BKSDisplayBrightnessGetCurrent();
  v28 = [NSNumber numberWithFloat:?];
  v34[6] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:7];

  v30 = [(DisplayPatternToolViewController *)self allResults];
  [v30 addObject:v29];
}

- (void)removeResultWithTag:(int64_t)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(DisplayPatternToolViewController *)self allResults];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"tag"];
        v12 = [v11 integerValue];

        if (v12 == a3)
        {
          v13 = [(DisplayPatternToolViewController *)self allResults];
          [v13 removeObject:v10];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(DisplayPatternToolViewController *)self blueLightClient];
  [v3 getBlueLightStatus:v5];

  [(DisplayPatternToolViewController *)self setBlueLightStatusActive:LOBYTE(v5[0])];
  v4 = [(DisplayPatternToolViewController *)self adaptationClient];
  -[DisplayPatternToolViewController setColorAdaptationStatus:](self, "setColorAdaptationStatus:", [v4 getEnabled]);
}

- (void)resetColorAdjustmentStates
{
  v3 = [(DisplayPatternToolViewController *)self blueLightClient];
  [v3 setActive:{-[DisplayPatternToolViewController blueLightStatusActive](self, "blueLightStatusActive")}];

  v4 = [(DisplayPatternToolViewController *)self adaptationClient];
  [v4 setEnabled:{-[DisplayPatternToolViewController colorAdaptationStatus](self, "colorAdaptationStatus")}];
}

- (void)disableAdaptationAndBlueLightReduction
{
  v3 = [(DisplayPatternToolViewController *)self blueLightClient];
  [v3 setActive:0];

  v4 = [(DisplayPatternToolViewController *)self adaptationClient];
  [v4 setEnabled:0];
}

- (void)saveAndMaximizeBrightness
{
  v3 = [(DisplayViewController *)self diagnosticResponder];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___DKBrightnessResponder];

  if (v4)
  {
    v6 = [(DisplayViewController *)self diagnosticResponder];
    BKSDisplayBrightnessGetCurrent();
    [(DisplayPatternToolViewController *)self setOriginalScreenBrightness:?];
    LODWORD(v5) = 1.0;
    [v6 setScreenToBrightness:0 animate:v5];
  }
}

- (void)resetBrightness
{
  v3 = [(DisplayViewController *)self diagnosticResponder];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___DKBrightnessResponder];

  if (v4)
  {
    v5 = [(DisplayViewController *)self diagnosticResponder];
    [(DisplayPatternToolViewController *)self originalScreenBrightness];
    [v5 setScreenToBrightness:0 animate:?];
  }
}

- (void)animateToBrightness:(float)a3
{
  v5 = [(DisplayViewController *)self diagnosticResponder];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___DKBrightnessResponder];

  if (v6)
  {
    v8 = [(DisplayViewController *)self diagnosticResponder];
    *&v7 = a3;
    [v8 setScreenToBrightness:1 animate:v7];
  }
}

- (void)cleanUp
{
  [(DisplayPatternToolViewController *)self resetBrightness];
  v3 = [(DisplayPatternToolViewController *)self inputs];
  v4 = [v3 disableAmbientLightAdaptation];

  if (v4)
  {

    [(DisplayPatternToolViewController *)self resetColorAdjustmentStates];
  }
}

- (void)endTestWithStatusCode:(id)a3
{
  v4 = a3;
  [(DisplayPatternToolViewController *)self cleanUp];
  v5 = [(DisplayPatternToolViewController *)self result];
  [v5 setStatusCode:v4];

  [(DisplayPatternToolViewController *)self parseResults];

  [(DisplayPatternToolViewController *)self setFinished:1];
}

- (void)parseResults
{
  v3 = [(DisplayPatternToolViewController *)self result];
  v4 = [v3 statusCode];
  if ([v4 isEqualToNumber:&off_100010870])
  {

LABEL_4:
    v31 = [(DisplayPatternToolViewController *)self result];
    [v31 setData:&__NSDictionary0__struct];

    return;
  }

  v5 = [(DisplayPatternToolViewController *)self result];
  v6 = [v5 statusCode];
  v7 = [v6 isEqualToNumber:&off_100010828];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [NSMutableArray alloc];
  v9 = [(DisplayPatternToolViewController *)self allResults];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [(DisplayPatternToolViewController *)self allResults];
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v32 + 1) + 8 * i) mutableCopy];
        [v16 removeObjectForKey:@"tag"];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v13);
  }

  v17 = [v10 copy];
  [(DisplayPatternToolViewController *)self setAllResults:v17];

  v18 = [(DisplayPatternToolViewController *)self view];
  v19 = [v18 window];
  v20 = [v19 windowScene];
  v21 = [v20 screen];
  [v21 bounds];
  v23 = v22;
  v25 = v24;

  v36[0] = @"displayResX";
  v26 = [NSNumber numberWithDouble:v23];
  v37[0] = v26;
  v36[1] = @"displayResY";
  v27 = [NSNumber numberWithDouble:v25];
  v37[1] = v27;
  v36[2] = @"anomaliesDetected";
  v28 = [(DisplayPatternToolViewController *)self allResults];
  v37[2] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
  v30 = [(DisplayPatternToolViewController *)self result];
  [v30 setData:v29];
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