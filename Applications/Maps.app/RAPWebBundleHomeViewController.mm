@interface RAPWebBundleHomeViewController
- (RAPWebBundleHomeViewController)initWithReport:(id)report completion:(id)completion;
- (id)_headerTitle;
- (void)_contextFromQuestionWithLocales:(id)locales withReplyHandler:(id)handler;
- (void)_dismiss;
- (void)_presentAddressUI;
- (void)_presentAutocompleteViewController:(id)controller forItemKind:(int64_t)kind;
- (void)_presentContainmentUIIsParentContainment:(BOOL)containment currentlySelectedMUIDs:(id)ds;
- (void)_reportSentWithDismissalGesture:(BOOL)gesture;
- (void)_submit;
- (void)_uploadForm:(id)form;
- (void)categoryChooserViewController:(id)controller categoriesDidNotChange:(id)change;
- (void)categoryChooserViewController:(id)controller didReceiveSelectedCategories:(id)categories;
- (void)didDismissByGesture;
- (void)didReceiveMessageFromUserContentController:(id)controller message:(id)message replyHandler:(id)handler;
- (void)rapSearchAutocompleteViewController:(id)controller finishedPickingAutocompleteResult:(id)result isAutocompleteResult:(BOOL)autocompleteResult;
- (void)setupViews;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation RAPWebBundleHomeViewController

- (void)categoryChooserViewController:(id)controller categoriesDidNotChange:(id)change
{
  replyHandler = self->_replyHandler;
  if (replyHandler)
  {
    v9 = @"categories";
    changeCopy = change;
    changeCopy2 = change;
    v7 = [NSDictionary dictionaryWithObjects:&changeCopy forKeys:&v9 count:1];
    replyHandler[2](replyHandler, v7, 0);

    v8 = self->_replyHandler;
    self->_replyHandler = 0;
  }
}

- (void)categoryChooserViewController:(id)controller didReceiveSelectedCategories:(id)categories
{
  replyHandler = self->_replyHandler;
  if (replyHandler)
  {
    v9 = @"categories";
    categoriesCopy = categories;
    categoriesCopy2 = categories;
    v7 = [NSDictionary dictionaryWithObjects:&categoriesCopy forKeys:&v9 count:1];
    replyHandler[2](replyHandler, v7, 0);

    v8 = self->_replyHandler;
    self->_replyHandler = 0;
  }
}

- (void)rapSearchAutocompleteViewController:(id)controller finishedPickingAutocompleteResult:(id)result isAutocompleteResult:(BOOL)autocompleteResult
{
  autocompleteResultCopy = autocompleteResult;
  controllerCopy = controller;
  resultCopy = result;
  v10 = resultCopy;
  currentAutocompleteSelectionKind = self->_currentAutocompleteSelectionKind;
  if (currentAutocompleteSelectionKind)
  {
    if (currentAutocompleteSelectionKind == 1)
    {
      v46 = controllerCopy;
      selectedMapItem = [resultCopy selectedMapItem];
      v13 = objc_alloc_init(RAPWebBundleImageContext);
      _styleAttributes = [selectedMapItem _styleAttributes];
      v15 = +[UIScreen mainScreen];
      [v15 scale];
      v16 = [MKIconManager imageForStyle:_styleAttributes size:3 forScale:0 format:?];

      v17 = UIImagePNGRepresentation(v16);
      [(RAPWebBundleImageContext *)v13 setImage:v17];

      v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [selectedMapItem _muid]);
      [(RAPWebBundleImageContext *)v13 setIdentifier:v18];
      identifier = [(RAPWebBundleImageContext *)v13 identifier];
      v45 = v16;
      [(RAPWebBundleBaseViewController *)self saveImage:v16 withIdentifier:identifier];

      v20 = objc_alloc_init(RAPWebBundlePlaceSummaryContext);
      [(RAPWebBundlePlaceSummaryContext *)v20 setIdentifier:v18];
      name = [selectedMapItem name];
      [(RAPWebBundlePlaceSummaryContext *)v20 setTitle:name];

      _addressFormattedAsShortenedAddress = [selectedMapItem _addressFormattedAsShortenedAddress];
      [(RAPWebBundlePlaceSummaryContext *)v20 setSubtitle:_addressFormattedAsShortenedAddress];

      v23 = [[RAPPlaceCorrectableAddress alloc] _initWithMapItem:selectedMapItem];
      freeformAddress = [v23 freeformAddress];
      value = [freeformAddress value];
      [(RAPWebBundlePlaceSummaryContext *)v20 setAddress:value];

      [(RAPWebBundlePlaceSummaryContext *)v20 setImageContext:v13];
      replyHandler = self->_replyHandler;
      if (replyHandler)
      {
        context = [(RAPWebBundlePlaceSummaryContext *)v20 context];
        replyHandler[2](replyHandler, context, 0);

        v28 = self->_replyHandler;
        self->_replyHandler = 0;
      }

      controllerCopy = v46;
    }
  }

  else
  {
    searchBarText = [resultCopy searchBarText];
    v30 = searchBarText;
    v31 = &stru_1016631F0;
    if (searchBarText)
    {
      v31 = searchBarText;
    }

    v32 = v31;

    if (autocompleteResultCopy)
    {
      v33 = [RAPPlaceCorrectableAddress alloc];
      selectedMapItem2 = [v10 selectedMapItem];
      v35 = [(RAPPlaceCorrectableAddress *)v33 _initWithMapItem:selectedMapItem2];

      freeformAddress2 = [v35 freeformAddress];
      value2 = [freeformAddress2 value];
      v38 = [value2 length];

      if (v38)
      {
        freeformAddress3 = [v35 freeformAddress];
        value3 = [freeformAddress3 value];

        v32 = value3;
      }
    }

    v41 = self->_replyHandler;
    if (v41)
    {
      v47 = v32;
      v48 = @"formattedAddress";
      v42 = [NSArray arrayWithObjects:&v47 count:1];
      v49 = v42;
      v43 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v41[2](v41, v43, 0);

      v44 = self->_replyHandler;
      self->_replyHandler = 0;
    }
  }
}

- (void)_presentAutocompleteViewController:(id)controller forItemKind:(int64_t)kind
{
  self->_currentAutocompleteSelectionKind = kind;
  controllerCopy = controller;
  [controllerCopy setDelegate:self];
  [(RAPWebBundleBaseViewController *)self presentAccessoryViewController:controllerCopy];
}

- (void)_presentContainmentUIIsParentContainment:(BOOL)containment currentlySelectedMUIDs:(id)ds
{
  dsCopy = ds;
  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  report = [webBundleQuestion report];
  _context = [report _context];
  mapCamera = [_context mapCamera];
  [mapCamera centerCoordinate];

  GEOCoordinateRegionMakeWithDistance();
  v17 = [[GEOMapRegion alloc] initWithCoordinateRegion:{v10, v11, v12, v13}];
  v14 = [RAPSearchAutocompleteViewController poiAutocompleteViewControllerWithBoundedMapRegion:v17 excludedMUIDs:dsCopy];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Choose a Place [RAP]" value:@"localized string not found" table:0];
  [v14 setTitleText:v16];

  [(RAPWebBundleHomeViewController *)self _presentAutocompleteViewController:v14 forItemKind:1];
}

- (void)_contextFromQuestionWithLocales:(id)locales withReplyHandler:(id)handler
{
  localesCopy = locales;
  handlerCopy = handler;
  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1009473A0;
  v10[3] = &unk_10162F548;
  objc_copyWeak(&v12, &location);
  v10[4] = self;
  v9 = handlerCopy;
  v11 = v9;
  [webBundleQuestion retrieveContextwithLocales:localesCopy contextCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_presentAddressUI
{
  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  v3 = [RAPPlaceCorrectableAddress alloc];
  reportedPlace = [webBundleQuestion reportedPlace];
  mapItem = [reportedPlace mapItem];
  v6 = [(RAPPlaceCorrectableAddress *)v3 _initWithMapItem:mapItem];

  freeformAddress = [v6 freeformAddress];
  value = [freeformAddress value];
  v9 = [RAPSearchAutocompleteViewController addressAutocompleteViewControllerWithInitialSearchString:value];

  webBundleQuestion2 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  questionType = [webBundleQuestion2 questionType];

  v12 = @"Change Address [RAP]";
  if (questionType == 28)
  {
    v12 = @"Add Address [RAP]";
  }

  if ((questionType - 2) >= 5)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"Add Address [RAP]";
  }

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:v13 value:@"localized string not found" table:0];
  [v9 setTitleText:v15];

  [(RAPWebBundleHomeViewController *)self _presentAutocompleteViewController:v9 forItemKind:0];
}

- (void)didReceiveMessageFromUserContentController:(id)controller message:(id)message replyHandler:(id)handler
{
  controllerCopy = controller;
  messageCopy = message;
  handlerCopy = handler;
  v53.receiver = self;
  v53.super_class = RAPWebBundleHomeViewController;
  [(RAPWebBundleBaseMapViewController *)&v53 didReceiveMessageFromUserContentController:controllerCopy message:messageCopy replyHandler:handlerCopy];
  v11 = [messageCopy objectForKeyedSubscript:@"name"];
  v12 = [v11 isEqualToString:@"context"];

  if (v12)
  {
    v13 = [messageCopy objectForKeyedSubscript:@"supportedLocales"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = +[NSArray array];

      v13 = v14;
    }

    [(RAPWebBundleHomeViewController *)self _contextFromQuestionWithLocales:v13 withReplyHandler:handlerCopy];
  }

  else
  {
    v15 = [messageCopy objectForKeyedSubscript:@"name"];
    v16 = [v15 isEqualToString:@"setValid"];

    if (v16)
    {
      delegate = [(RAPWebBundleBaseViewController *)self delegate];
      [delegate enableDismissByGesture:0];
    }

    else
    {
      v18 = [messageCopy objectForKeyedSubscript:@"name"];
      v19 = [v18 isEqualToString:@"getAddress"];

      if (v19)
      {
        v20 = objc_retainBlock(handlerCopy);
        replyHandler = self->_replyHandler;
        self->_replyHandler = v20;

        [(RAPWebBundleHomeViewController *)self _presentAddressUI];
      }

      else
      {
        v22 = [messageCopy objectForKeyedSubscript:@"name"];
        v23 = [v22 isEqualToString:@"getCategories"];

        if (v23)
        {
          v24 = objc_retainBlock(handlerCopy);
          v25 = self->_replyHandler;
          self->_replyHandler = v24;

          v26 = [messageCopy objectForKeyedSubscript:@"categories"];
          v27 = [[ReportAProblemCategoryChooserViewController alloc] initWithPresentationStyle:1 selectedCategoryNames:v26];
          [(ReportAProblemCategoryChooserViewController *)v27 setChooserDelegate:self];
          [(RAPWebBundleBaseViewController *)self presentAccessoryViewController:v27];
        }

        else
        {
          v28 = [messageCopy objectForKeyedSubscript:@"name"];
          v29 = [v28 isEqualToString:@"showPoi"];

          if (v29)
          {
            v30 = [messageCopy objectForKeyedSubscript:@"id"];
            v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v30 unsignedLongLongValue]);

            v32 = +[GEOMapService sharedService];
            v54 = v31;
            v33 = [NSArray arrayWithObjects:&v54 count:1];
            v34 = +[GEOMapService sharedService];
            defaultTraits = [v34 defaultTraits];
            v36 = [v32 ticketForMUIDs:v33 traits:defaultTraits];

            objc_initWeak(&location, self);
            v49[0] = _NSConcreteStackBlock;
            v49[1] = 3221225472;
            v49[2] = sub_100947BF4;
            v49[3] = &unk_10165DCC8;
            objc_copyWeak(&v51, &location);
            v37 = v31;
            v50 = v37;
            v38 = &_dispatch_main_q;
            [v36 submitWithHandler:v49 networkActivity:0 queue:&_dispatch_main_q];

            objc_destroyWeak(&v51);
            objc_destroyWeak(&location);
          }

          else
          {
            v39 = [messageCopy objectForKeyedSubscript:@"name"];
            v40 = [v39 isEqualToString:@"getPoi"];

            if (v40)
            {
              v41 = objc_retainBlock(handlerCopy);
              v42 = self->_replyHandler;
              self->_replyHandler = v41;

              [(RAPWebBundleHomeViewController *)self _presentContainmentUIIsParentContainment:0 currentlySelectedMUIDs:&__NSArray0__struct];
            }

            else
            {
              v43 = [messageCopy objectForKeyedSubscript:@"name"];
              v44 = [v43 hasPrefix:@"showModal"];

              if (v44)
              {
                v45 = [messageCopy objectForKeyedSubscript:@"url"];
                v46 = [messageCopy objectForKeyedSubscript:@"title"];
                v47 = [messageCopy objectForKeyedSubscript:@"modalData"];
                v48 = [[RAPWebBundleDataDrivenViewController alloc] initWithEntryPoint:v45 report:self->_report title:v46 data:v47 replyHandler:handlerCopy];
                [(RAPWebBundleBaseViewController *)self presentAccessoryViewController:v48];
              }
            }
          }
        }
      }
    }
  }
}

- (void)didDismissByGesture
{
  navigationController = [(RAPWebBundleHomeViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(RAPWebBundleHomeViewController *)self _reportSentWithDismissalGesture:1];
  }
}

- (void)_uploadForm:(id)form
{
  formCopy = form;
  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  [webBundleQuestion setDynamicForm:formCopy];
  v6 = sub_100BD9980();
  objc_initWeak(&location, self);
  report = self->_report;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100947F7C;
  v14[3] = &unk_10162F4D0;
  objc_copyWeak(&v16, &location);
  v8 = v6;
  v15 = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10094804C;
  v10[3] = &unk_10162F4F8;
  objc_copyWeak(&v13, &location);
  v9 = v8;
  v11 = v9;
  selfCopy = self;
  [(RAPReport *)report submitWithPrivacyRequestHandler:&stru_10162F4A8 willStartSubmitting:v14 didFinishSubmitting:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)_headerTitle
{
  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  questionType = [webBundleQuestion questionType];

  if (questionType <= 12)
  {
    if ((questionType - 2) < 7)
    {
LABEL_3:
      BOOL = GEOConfigGetBOOL();
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      if (BOOL)
      {
        v7 = @"[RAP Web UI] Report Something Missing";
      }

      else
      {
        v7 = @"[RAP Web UI] Add to Maps";
      }

      goto LABEL_17;
    }

LABEL_16:
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"[RAP Web UI] Report an Issue";
    goto LABEL_17;
  }

  if (questionType > 14)
  {
    switch(questionType)
    {
      case 15:
        v5 = +[NSBundle mainBundle];
        v6 = v5;
        v7 = @"[RAP Web UI] Add Phone Number";
        goto LABEL_17;
      case 16:
        v5 = +[NSBundle mainBundle];
        v6 = v5;
        v7 = @"[RAP Web UI] Add Website";
        goto LABEL_17;
      case 28:
        goto LABEL_3;
    }

    goto LABEL_16;
  }

  v5 = +[NSBundle mainBundle];
  if (questionType == 13)
  {
    v6 = v5;
    v7 = @"[RAP Web UI] Add Address";
  }

  else
  {
    v6 = v5;
    v7 = @"[RAP Web UI] Add Hours";
  }

LABEL_17:
  v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

  return v8;
}

- (void)setupViews
{
  [(RAPWebBundleHomeViewController *)self setAccessibilityIdentifier:@"RAPHomeView"];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_dismiss"];
  navigationItem = [(RAPWebBundleHomeViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_submit"];
  navigationItem2 = [(RAPWebBundleHomeViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v5];

  _headerTitle = [(RAPWebBundleHomeViewController *)self _headerTitle];
  navigationItem3 = [(RAPWebBundleHomeViewController *)self navigationItem];
  [navigationItem3 setTitle:_headerTitle];

  v9.receiver = self;
  v9.super_class = RAPWebBundleHomeViewController;
  [(RAPWebBundleBaseViewController *)&v9 setupViews];
}

- (void)_submit
{
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1009489CC;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  v3 = objc_retainBlock(v10);
  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  if ([webBundleQuestion isAnonymous])
  {
  }

  else
  {
    v5 = +[UserProfileReportHistoryManager sharedInstance];
    inChina = [v5 inChina];

    if ((inChina & 1) == 0)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100948AA0;
      v7[3] = &unk_10165E0F8;
      objc_copyWeak(&v9, &location);
      v8 = v3;
      [RAPPrivacy performPrivacyCheckWithAppearance:4 completion:v7];

      objc_destroyWeak(&v9);
      goto LABEL_6;
    }
  }

  (v3[2])(v3);
LABEL_6:

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_reportSentWithDismissalGesture:(BOOL)gesture
{
  report = self->_report;
  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  reportedPlace = [webBundleQuestion reportedPlace];
  mapItem = [reportedPlace mapItem];
  +[RAPAnalyticsManager captureRAPAcknowledgementDoneActionFromReport:forMuid:](RAPAnalyticsManager, "captureRAPAcknowledgementDoneActionFromReport:forMuid:", report, [mapItem _muid]);

  [(RAPWebBundleBaseViewController *)self removeAllPhotos];
  completion = self->_completion;
  if (completion)
  {
    v9 = *(completion + 2);

    v9();
  }
}

- (void)_dismiss
{
  report = self->_report;
  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  reportedPlace = [webBundleQuestion reportedPlace];
  mapItem = [reportedPlace mapItem];
  +[RAPAnalyticsManager captureRAPCancelActionFromReport:forMuid:](RAPAnalyticsManager, "captureRAPCancelActionFromReport:forMuid:", report, [mapItem _muid]);

  [(RAPWebBundleBaseViewController *)self removeAllPhotos];
  completion = self->_completion;
  if (completion)
  {
    v8 = *(completion + 2);

    v8();
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = RAPWebBundleHomeViewController;
  [(RAPWebBundleHomeViewController *)&v8 viewDidAppear:appear];
  report = self->_report;
  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  reportedPlace = [webBundleQuestion reportedPlace];
  mapItem = [reportedPlace mapItem];
  +[RAPAnalyticsManager captureRAPRevealActionFromReport:forMuid:](RAPAnalyticsManager, "captureRAPRevealActionFromReport:forMuid:", report, [mapItem _muid]);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RAPWebBundleHomeViewController;
  [(RAPWebBundleBaseMapViewController *)&v3 viewDidLoad];
  [(RAPWebBundleBaseViewController *)self loadWebView];
}

- (RAPWebBundleHomeViewController)initWithReport:(id)report completion:(id)completion
{
  reportCopy = report;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = RAPWebBundleHomeViewController;
  v9 = [(RAPWebBundleBaseMapViewController *)&v14 initWithReport:reportCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_report, report);
    v11 = objc_retainBlock(completionCopy);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end