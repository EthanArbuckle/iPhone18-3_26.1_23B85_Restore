@interface RAPReportComposerViewController
- (RAPReportComposerViewController)initWithReport:(id)a3 categoryQuestion:(id)a4 completion:(id)a5;
- (RAPReportComposerViewController)initWithReport:(id)a3 commentQuestion:(id)a4 completion:(id)a5;
- (RAPReportComposerViewController)initWithReport:(id)a3 curatedCollectionQuestion:(id)a4 completion:(id)a5;
- (RAPReportComposerViewController)initWithReport:(id)a3 lookAroundQuestion:(id)a4 completion:(id)a5;
- (RAPReportComposerViewController)initWithReport:(id)a3 placecardQuestion:(id)a4 completion:(id)a5;
- (id)_cancelButtonWithSelector:(SEL)a3;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)_cancelWithAnalyticsTarget:(int)a3;
- (void)_capturePrivacyBackActionIfNeeded;
- (void)_exitCommentCorrections;
- (void)_exitCuratedCollections;
- (void)_exitLookAround;
- (void)_exitPlaceCorrections;
- (void)_handlePrivacyCancelledNotification:(id)a3;
- (void)_invokeCompletionWithOutcome:(int64_t)a3;
- (void)_registerForPrivacyNotification;
- (void)_sendWithFinalOutcome:(int64_t)a3 acknowledgementOptions:(id)a4;
- (void)returnFromViewController:(id)a3;
- (void)segueToViewController:(id)a3 afterReturningFromViewController:(id)a4;
@end

@implementation RAPReportComposerViewController

- (void)returnFromViewController:(id)a3
{
  v14 = a3;
  v4 = [(RAPReportComposerViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 indexOfObject:v14];

  if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v14;
    if ([v7 conformsToProtocol:&OBJC_PROTOCOL___RAPInstrumentableTarget])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if ([v9 analyticTarget])
    {
      v10 = +[MKMapService sharedService];
      [v10 captureUserAction:10111 onTarget:objc_msgSend(v9 eventValue:{"analyticTarget"), 0}];
    }

    v11 = [(RAPReportComposerViewController *)self navigationController];
    v12 = [v11 viewControllers];
    v13 = [v12 mutableCopy];

    [v13 trimToLength:v6];
    [(RAPReportComposerViewController *)self setViewControllers:v13 animated:1];
  }
}

- (void)segueToViewController:(id)a3 afterReturningFromViewController:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 navigationController];
  v8 = [v7 viewControllers];
  v9 = [v8 mutableCopy];

  if (v6)
  {
    [v9 removeObject:v6];
  }

  [v9 addObject:v10];
  [(RAPReportComposerViewController *)self setViewControllers:v9 animated:1];
}

- (void)_cancelWithAnalyticsTarget:(int)a3
{
  [GEOAPPortal captureUserAction:10109 target:*&a3 value:0];

  [(RAPReportComposerViewController *)self _invokeCompletionWithOutcome:0];
}

- (void)_sendWithFinalOutcome:(int64_t)a3 acknowledgementOptions:(id)a4
{
  v6 = a4;
  v7 = [(RAPReportComposerViewController *)self topViewController];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___RAPInstrumentableTarget])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ([v9 analyticTarget])
  {
    v10 = [(RAPReport *)self->_report initialQuestion];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [(RAPReport *)self->_report initialQuestion];
      v13 = [v12 selectedMenuItem];
      if ([v13 conformsToProtocol:&OBJC_PROTOCOL___RAPInstrumentableTarget])
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (objc_opt_respondsToSelector())
      {
        v16 = +[MKMapService sharedService];
        v17 = [v9 analyticTarget];
        v18 = [v15 eventValue];
        [v16 captureUserAction:2152 onTarget:v17 eventValue:v18];
      }

      else
      {
        [RAPAnalyticsManager captureRAPSendActionFromReport:self->_report forMuid:0];
      }
    }

    else
    {
      [RAPAnalyticsManager captureRAPSendActionFromReport:self->_report forMuid:0];
    }
  }

  objc_initWeak(location, self);
  v19 = [UGCCommunityAcknowledgementViewController alloc];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100D85508;
  v41[3] = &unk_10165FBC0;
  objc_copyWeak(v42, location);
  v42[1] = a3;
  v20 = [(UGCCommunityAcknowledgementViewController *)v19 initWithOptions:v6 completion:v41];
  v21 = [(UGCCommunityAcknowledgementViewController *)v20 navigationItem];
  [v21 setHidesBackButton:1];

  v22 = [(RAPReportComposerViewController *)self topViewController];
  v23 = [v22 navigationItem];
  v24 = objc_alloc_init(RAPNavigationItemValues);
  [(RAPNavigationItemValues *)v24 takeValuesFromNavigationItem:v23];
  v25 = [v22 view];
  report = self->_report;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100D8557C;
  v40[3] = &unk_101658540;
  v40[4] = self;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100D857FC;
  v36[3] = &unk_1016538D0;
  v37 = v20;
  v38 = self;
  v39 = a3;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100D85900;
  v31[3] = &unk_1016538F8;
  v31[4] = self;
  v27 = v37;
  v32 = v27;
  v28 = v23;
  v33 = v28;
  v29 = v24;
  v34 = v29;
  v30 = v25;
  v35 = v30;
  [(RAPReport *)report submitWithPrivacyRequestHandler:v40 willStartSubmitting:v36 didFinishSubmitting:v31];

  objc_destroyWeak(v42);
  objc_destroyWeak(location);
}

- (void)_invokeCompletionWithOutcome:(int64_t)a3
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, self, a3);
    v5 = self->_completion;
    self->_completion = 0;
  }
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(RAPReportComposerViewController *)self topViewController];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___RAPInstrumentableTarget])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 backAction];
  }

  else
  {
    v8 = 10111;
  }

  if ([v7 analyticTarget])
  {
    v9 = +[MKMapService sharedService];
    [v9 captureUserAction:v8 onTarget:objc_msgSend(v7 eventValue:{"analyticTarget"), 0}];
  }

  [(RAPReportComposerViewController *)self _capturePrivacyBackActionIfNeeded];
  v12.receiver = self;
  v12.super_class = RAPReportComposerViewController;
  v10 = [(RAPReportComposerViewController *)&v12 popViewControllerAnimated:v3];

  return v10;
}

- (void)_exitCommentCorrections
{
  [(RAPReportComposerViewController *)self _capturePrivacyBackActionIfNeeded];

  [(RAPReportComposerViewController *)self _cancelWithAnalyticsTarget:0];
}

- (void)_exitCuratedCollections
{
  [(RAPReportComposerViewController *)self _capturePrivacyBackActionIfNeeded];

  [(RAPReportComposerViewController *)self _cancelWithAnalyticsTarget:0];
}

- (void)_exitPlaceCorrections
{
  [(RAPReportComposerViewController *)self _capturePrivacyBackActionIfNeeded];

  [(RAPReportComposerViewController *)self _cancelWithAnalyticsTarget:1155];
}

- (void)_exitLookAround
{
  [(RAPReportComposerViewController *)self _capturePrivacyBackActionIfNeeded];

  [(RAPReportComposerViewController *)self _cancelWithAnalyticsTarget:1151];
}

- (void)_capturePrivacyBackActionIfNeeded
{
  if (self->_shouldInstrumentPrivacyCancelOnNextBackAction)
  {
    v3 = [(RAPReportComposerViewController *)self topViewController];
    v4 = [(RAPReportComposerViewController *)self rootViewController];

    if (v3 == v4)
    {
      v5 = 10109;
    }

    else
    {
      v5 = 10111;
    }

    [GEOAPPortal captureUserAction:v5 target:1136 value:0];
    self->_shouldInstrumentPrivacyCancelOnNextBackAction = 0;
  }
}

- (void)_handlePrivacyCancelledNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(RAPReportComposerViewController *)self _maps_uiScene];

  if (v4 == v5)
  {
    self->_shouldInstrumentPrivacyCancelOnNextBackAction = 1;
  }
}

- (void)_registerForPrivacyNotification
{
  self->_shouldInstrumentPrivacyCancelOnNextBackAction = 0;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handlePrivacyCancelledNotification:" name:@"RAPUserDidCancelPrivacyAgreementNotification" object:0];
}

- (id)_cancelButtonWithSelector:(SEL)a3
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:a3];

  return v3;
}

- (RAPReportComposerViewController)initWithReport:(id)a3 commentQuestion:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = RAPReportComposerViewController;
  v12 = [(RAPReportComposerViewController *)&v28 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, a3);
    v14 = objc_retainBlock(v11);
    completion = v13->_completion;
    v13->_completion = v14;

    objc_initWeak(&location, v13);
    v16 = [RAPReportComposerCommentViewController alloc];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_100D86364;
    v25 = &unk_101653858;
    objc_copyWeak(&v26, &location);
    v17 = [(RAPReportComposerCommentViewController *)v16 initWithReport:v9 question:v10 completion:&v22];
    v18 = [(RAPReportComposerViewController *)v13 _cancelButtonWithSelector:"_exitCuratedCollections", v22, v23, v24, v25];
    v19 = [(RAPReportComposerCommentViewController *)v17 navigationItem];
    [v19 setLeftBarButtonItem:v18];

    v29 = v17;
    v20 = [NSArray arrayWithObjects:&v29 count:1];
    [(RAPReportComposerViewController *)v13 setViewControllers:v20];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (RAPReportComposerViewController)initWithReport:(id)a3 curatedCollectionQuestion:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = RAPReportComposerViewController;
  v12 = [(RAPReportComposerViewController *)&v33 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, a3);
    v14 = objc_retainBlock(v11);
    completion = v13->_completion;
    v13->_completion = v14;

    objc_initWeak(&location, v13);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100D8672C;
    v29[3] = &unk_101653880;
    objc_copyWeak(&v31, &location);
    v16 = v10;
    v30 = v16;
    v17 = objc_retainBlock(v29);
    if ([v16 selectedQuestionType] == 3)
    {
      v18 = [RAPCuratedCollectionPOISelectionViewController alloc];
      v19 = v28;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100D867CC;
      v28[3] = &unk_1016538A8;
      v28[4] = v17;
      v20 = [(RAPCuratedCollectionPOISelectionViewController *)v18 initWithReport:v9 parentQuestion:v16 completion:v28];
    }

    else
    {
      v21 = [RAPCuratedCollectionCategoriesViewController alloc];
      v19 = v27;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100D867DC;
      v27[3] = &unk_1016538A8;
      v27[4] = v17;
      v20 = [(RAPCuratedCollectionCategoriesViewController *)v21 initWithReport:v9 question:v16 completion:v27];
    }

    v22 = v20;

    v23 = [(RAPReportComposerViewController *)v13 _cancelButtonWithSelector:"_exitCommentCorrections"];
    v24 = [(RAPCuratedCollectionPOISelectionViewController *)v22 navigationItem];
    [v24 setLeftBarButtonItem:v23];

    v34 = v22;
    v25 = [NSArray arrayWithObjects:&v34 count:1];
    [(RAPReportComposerViewController *)v13 setViewControllers:v25];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (RAPReportComposerViewController)initWithReport:(id)a3 lookAroundQuestion:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29.receiver = self;
  v29.super_class = RAPReportComposerViewController;
  v12 = [(RAPReportComposerViewController *)&v29 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, a3);
    v14 = [v11 copy];
    completion = v13->_completion;
    v13->_completion = v14;

    objc_initWeak(&location, v13);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100D86A30;
    v26 = &unk_101653858;
    objc_copyWeak(&v27, &location);
    v16 = objc_retainBlock(&v23);
    v17 = [RAPLookAroundInitialCategoriesViewController alloc];
    v18 = [(RAPLookAroundInitialCategoriesViewController *)v17 initWithReport:v9 question:v10 completion:v16, v23, v24, v25, v26];
    v19 = [(RAPReportComposerViewController *)v13 _cancelButtonWithSelector:"_exitLookAround"];
    v20 = [(RAPLookAroundInitialCategoriesViewController *)v18 navigationItem];
    [v20 setLeftBarButtonItem:v19];

    [(RAPReportComposerViewController *)v13 _registerForPrivacyNotification];
    [(RAPReportComposerViewController *)v13 setOverrideUserInterfaceStyle:2];
    v30 = v18;
    v21 = [NSArray arrayWithObjects:&v30 count:1];
    [(RAPReportComposerViewController *)v13 setViewControllers:v21];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (RAPReportComposerViewController)initWithReport:(id)a3 placecardQuestion:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = RAPReportComposerViewController;
  v10 = [(RAPReportComposerViewController *)&v15 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_report, a3);
    v12 = [v9 copy];
    completion = v11->_completion;
    v11->_completion = v12;

    [(RAPReportComposerViewController *)v11 _registerForPrivacyNotification];
  }

  return v11;
}

- (RAPReportComposerViewController)initWithReport:(id)a3 categoryQuestion:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = RAPReportComposerViewController;
  v12 = [(RAPReportComposerViewController *)&v26 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, a3);
    v14 = [v11 copy];
    completion = v13->_completion;
    v13->_completion = v14;

    objc_initWeak(&location, v13);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100D86D88;
    v23 = &unk_101653858;
    objc_copyWeak(&v24, &location);
    v16 = objc_retainBlock(&v20);
    [(RAPReportComposerViewController *)v13 _registerForPrivacyNotification:v20];
    v17 = [[RAPReportComposerCategoryViewController alloc] initWithReport:v13->_report question:v10 completion:v16];
    v27 = v17;
    v18 = [NSArray arrayWithObjects:&v27 count:1];
    [(RAPReportComposerViewController *)v13 setViewControllers:v18];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v13;
}

@end