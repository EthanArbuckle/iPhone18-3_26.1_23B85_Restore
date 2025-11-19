@interface RAPWebBundleHomeViewController
- (RAPWebBundleHomeViewController)initWithReport:(id)a3 completion:(id)a4;
- (id)_headerTitle;
- (void)_contextFromQuestionWithLocales:(id)a3 withReplyHandler:(id)a4;
- (void)_dismiss;
- (void)_presentAddressUI;
- (void)_presentAutocompleteViewController:(id)a3 forItemKind:(int64_t)a4;
- (void)_presentContainmentUIIsParentContainment:(BOOL)a3 currentlySelectedMUIDs:(id)a4;
- (void)_reportSentWithDismissalGesture:(BOOL)a3;
- (void)_submit;
- (void)_uploadForm:(id)a3;
- (void)categoryChooserViewController:(id)a3 categoriesDidNotChange:(id)a4;
- (void)categoryChooserViewController:(id)a3 didReceiveSelectedCategories:(id)a4;
- (void)didDismissByGesture;
- (void)didReceiveMessageFromUserContentController:(id)a3 message:(id)a4 replyHandler:(id)a5;
- (void)rapSearchAutocompleteViewController:(id)a3 finishedPickingAutocompleteResult:(id)a4 isAutocompleteResult:(BOOL)a5;
- (void)setupViews;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation RAPWebBundleHomeViewController

- (void)categoryChooserViewController:(id)a3 categoriesDidNotChange:(id)a4
{
  replyHandler = self->_replyHandler;
  if (replyHandler)
  {
    v9 = @"categories";
    v10 = a4;
    v6 = a4;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    replyHandler[2](replyHandler, v7, 0);

    v8 = self->_replyHandler;
    self->_replyHandler = 0;
  }
}

- (void)categoryChooserViewController:(id)a3 didReceiveSelectedCategories:(id)a4
{
  replyHandler = self->_replyHandler;
  if (replyHandler)
  {
    v9 = @"categories";
    v10 = a4;
    v6 = a4;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    replyHandler[2](replyHandler, v7, 0);

    v8 = self->_replyHandler;
    self->_replyHandler = 0;
  }
}

- (void)rapSearchAutocompleteViewController:(id)a3 finishedPickingAutocompleteResult:(id)a4 isAutocompleteResult:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  currentAutocompleteSelectionKind = self->_currentAutocompleteSelectionKind;
  if (currentAutocompleteSelectionKind)
  {
    if (currentAutocompleteSelectionKind == 1)
    {
      v46 = v8;
      v12 = [v9 selectedMapItem];
      v13 = objc_alloc_init(RAPWebBundleImageContext);
      v14 = [v12 _styleAttributes];
      v15 = +[UIScreen mainScreen];
      [v15 scale];
      v16 = [MKIconManager imageForStyle:v14 size:3 forScale:0 format:?];

      v17 = UIImagePNGRepresentation(v16);
      [(RAPWebBundleImageContext *)v13 setImage:v17];

      v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v12 _muid]);
      [(RAPWebBundleImageContext *)v13 setIdentifier:v18];
      v19 = [(RAPWebBundleImageContext *)v13 identifier];
      v45 = v16;
      [(RAPWebBundleBaseViewController *)self saveImage:v16 withIdentifier:v19];

      v20 = objc_alloc_init(RAPWebBundlePlaceSummaryContext);
      [(RAPWebBundlePlaceSummaryContext *)v20 setIdentifier:v18];
      v21 = [v12 name];
      [(RAPWebBundlePlaceSummaryContext *)v20 setTitle:v21];

      v22 = [v12 _addressFormattedAsShortenedAddress];
      [(RAPWebBundlePlaceSummaryContext *)v20 setSubtitle:v22];

      v23 = [[RAPPlaceCorrectableAddress alloc] _initWithMapItem:v12];
      v24 = [v23 freeformAddress];
      v25 = [v24 value];
      [(RAPWebBundlePlaceSummaryContext *)v20 setAddress:v25];

      [(RAPWebBundlePlaceSummaryContext *)v20 setImageContext:v13];
      replyHandler = self->_replyHandler;
      if (replyHandler)
      {
        v27 = [(RAPWebBundlePlaceSummaryContext *)v20 context];
        replyHandler[2](replyHandler, v27, 0);

        v28 = self->_replyHandler;
        self->_replyHandler = 0;
      }

      v8 = v46;
    }
  }

  else
  {
    v29 = [v9 searchBarText];
    v30 = v29;
    v31 = &stru_1016631F0;
    if (v29)
    {
      v31 = v29;
    }

    v32 = v31;

    if (v5)
    {
      v33 = [RAPPlaceCorrectableAddress alloc];
      v34 = [v10 selectedMapItem];
      v35 = [(RAPPlaceCorrectableAddress *)v33 _initWithMapItem:v34];

      v36 = [v35 freeformAddress];
      v37 = [v36 value];
      v38 = [v37 length];

      if (v38)
      {
        v39 = [v35 freeformAddress];
        v40 = [v39 value];

        v32 = v40;
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

- (void)_presentAutocompleteViewController:(id)a3 forItemKind:(int64_t)a4
{
  self->_currentAutocompleteSelectionKind = a4;
  v5 = a3;
  [v5 setDelegate:self];
  [(RAPWebBundleBaseViewController *)self presentAccessoryViewController:v5];
}

- (void)_presentContainmentUIIsParentContainment:(BOOL)a3 currentlySelectedMUIDs:(id)a4
{
  v5 = a4;
  v6 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  v7 = [v6 report];
  v8 = [v7 _context];
  v9 = [v8 mapCamera];
  [v9 centerCoordinate];

  GEOCoordinateRegionMakeWithDistance();
  v17 = [[GEOMapRegion alloc] initWithCoordinateRegion:{v10, v11, v12, v13}];
  v14 = [RAPSearchAutocompleteViewController poiAutocompleteViewControllerWithBoundedMapRegion:v17 excludedMUIDs:v5];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Choose a Place [RAP]" value:@"localized string not found" table:0];
  [v14 setTitleText:v16];

  [(RAPWebBundleHomeViewController *)self _presentAutocompleteViewController:v14 forItemKind:1];
}

- (void)_contextFromQuestionWithLocales:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1009473A0;
  v10[3] = &unk_10162F548;
  objc_copyWeak(&v12, &location);
  v10[4] = self;
  v9 = v7;
  v11 = v9;
  [v8 retrieveContextwithLocales:v6 contextCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_presentAddressUI
{
  v16 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  v3 = [RAPPlaceCorrectableAddress alloc];
  v4 = [v16 reportedPlace];
  v5 = [v4 mapItem];
  v6 = [(RAPPlaceCorrectableAddress *)v3 _initWithMapItem:v5];

  v7 = [v6 freeformAddress];
  v8 = [v7 value];
  v9 = [RAPSearchAutocompleteViewController addressAutocompleteViewControllerWithInitialSearchString:v8];

  v10 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  v11 = [v10 questionType];

  v12 = @"Change Address [RAP]";
  if (v11 == 28)
  {
    v12 = @"Add Address [RAP]";
  }

  if ((v11 - 2) >= 5)
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

- (void)didReceiveMessageFromUserContentController:(id)a3 message:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v53.receiver = self;
  v53.super_class = RAPWebBundleHomeViewController;
  [(RAPWebBundleBaseMapViewController *)&v53 didReceiveMessageFromUserContentController:v8 message:v9 replyHandler:v10];
  v11 = [v9 objectForKeyedSubscript:@"name"];
  v12 = [v11 isEqualToString:@"context"];

  if (v12)
  {
    v13 = [v9 objectForKeyedSubscript:@"supportedLocales"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = +[NSArray array];

      v13 = v14;
    }

    [(RAPWebBundleHomeViewController *)self _contextFromQuestionWithLocales:v13 withReplyHandler:v10];
  }

  else
  {
    v15 = [v9 objectForKeyedSubscript:@"name"];
    v16 = [v15 isEqualToString:@"setValid"];

    if (v16)
    {
      v17 = [(RAPWebBundleBaseViewController *)self delegate];
      [v17 enableDismissByGesture:0];
    }

    else
    {
      v18 = [v9 objectForKeyedSubscript:@"name"];
      v19 = [v18 isEqualToString:@"getAddress"];

      if (v19)
      {
        v20 = objc_retainBlock(v10);
        replyHandler = self->_replyHandler;
        self->_replyHandler = v20;

        [(RAPWebBundleHomeViewController *)self _presentAddressUI];
      }

      else
      {
        v22 = [v9 objectForKeyedSubscript:@"name"];
        v23 = [v22 isEqualToString:@"getCategories"];

        if (v23)
        {
          v24 = objc_retainBlock(v10);
          v25 = self->_replyHandler;
          self->_replyHandler = v24;

          v26 = [v9 objectForKeyedSubscript:@"categories"];
          v27 = [[ReportAProblemCategoryChooserViewController alloc] initWithPresentationStyle:1 selectedCategoryNames:v26];
          [(ReportAProblemCategoryChooserViewController *)v27 setChooserDelegate:self];
          [(RAPWebBundleBaseViewController *)self presentAccessoryViewController:v27];
        }

        else
        {
          v28 = [v9 objectForKeyedSubscript:@"name"];
          v29 = [v28 isEqualToString:@"showPoi"];

          if (v29)
          {
            v30 = [v9 objectForKeyedSubscript:@"id"];
            v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v30 unsignedLongLongValue]);

            v32 = +[GEOMapService sharedService];
            v54 = v31;
            v33 = [NSArray arrayWithObjects:&v54 count:1];
            v34 = +[GEOMapService sharedService];
            v35 = [v34 defaultTraits];
            v36 = [v32 ticketForMUIDs:v33 traits:v35];

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
            v39 = [v9 objectForKeyedSubscript:@"name"];
            v40 = [v39 isEqualToString:@"getPoi"];

            if (v40)
            {
              v41 = objc_retainBlock(v10);
              v42 = self->_replyHandler;
              self->_replyHandler = v41;

              [(RAPWebBundleHomeViewController *)self _presentContainmentUIIsParentContainment:0 currentlySelectedMUIDs:&__NSArray0__struct];
            }

            else
            {
              v43 = [v9 objectForKeyedSubscript:@"name"];
              v44 = [v43 hasPrefix:@"showModal"];

              if (v44)
              {
                v45 = [v9 objectForKeyedSubscript:@"url"];
                v46 = [v9 objectForKeyedSubscript:@"title"];
                v47 = [v9 objectForKeyedSubscript:@"modalData"];
                v48 = [[RAPWebBundleDataDrivenViewController alloc] initWithEntryPoint:v45 report:self->_report title:v46 data:v47 replyHandler:v10];
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
  v3 = [(RAPWebBundleHomeViewController *)self navigationController];
  v4 = [v3 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(RAPWebBundleHomeViewController *)self _reportSentWithDismissalGesture:1];
  }
}

- (void)_uploadForm:(id)a3
{
  v4 = a3;
  v5 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  [v5 setDynamicForm:v4];
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
  v12 = self;
  [(RAPReport *)report submitWithPrivacyRequestHandler:&stru_10162F4A8 willStartSubmitting:v14 didFinishSubmitting:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)_headerTitle
{
  v2 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  v3 = [v2 questionType];

  if (v3 <= 12)
  {
    if ((v3 - 2) < 7)
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

  if (v3 > 14)
  {
    switch(v3)
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
  if (v3 == 13)
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
  v4 = [(RAPWebBundleHomeViewController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_submit"];
  v6 = [(RAPWebBundleHomeViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [(RAPWebBundleHomeViewController *)self _headerTitle];
  v8 = [(RAPWebBundleHomeViewController *)self navigationItem];
  [v8 setTitle:v7];

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
  v4 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  if ([v4 isAnonymous])
  {
  }

  else
  {
    v5 = +[UserProfileReportHistoryManager sharedInstance];
    v6 = [v5 inChina];

    if ((v6 & 1) == 0)
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

- (void)_reportSentWithDismissalGesture:(BOOL)a3
{
  report = self->_report;
  v5 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  v6 = [v5 reportedPlace];
  v7 = [v6 mapItem];
  +[RAPAnalyticsManager captureRAPAcknowledgementDoneActionFromReport:forMuid:](RAPAnalyticsManager, "captureRAPAcknowledgementDoneActionFromReport:forMuid:", report, [v7 _muid]);

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
  v4 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  v5 = [v4 reportedPlace];
  v6 = [v5 mapItem];
  +[RAPAnalyticsManager captureRAPCancelActionFromReport:forMuid:](RAPAnalyticsManager, "captureRAPCancelActionFromReport:forMuid:", report, [v6 _muid]);

  [(RAPWebBundleBaseViewController *)self removeAllPhotos];
  completion = self->_completion;
  if (completion)
  {
    v8 = *(completion + 2);

    v8();
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = RAPWebBundleHomeViewController;
  [(RAPWebBundleHomeViewController *)&v8 viewDidAppear:a3];
  report = self->_report;
  v5 = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  v6 = [v5 reportedPlace];
  v7 = [v6 mapItem];
  +[RAPAnalyticsManager captureRAPRevealActionFromReport:forMuid:](RAPAnalyticsManager, "captureRAPRevealActionFromReport:forMuid:", report, [v7 _muid]);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RAPWebBundleHomeViewController;
  [(RAPWebBundleBaseMapViewController *)&v3 viewDidLoad];
  [(RAPWebBundleBaseViewController *)self loadWebView];
}

- (RAPWebBundleHomeViewController)initWithReport:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RAPWebBundleHomeViewController;
  v9 = [(RAPWebBundleBaseMapViewController *)&v14 initWithReport:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_report, a3);
    v11 = objc_retainBlock(v8);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end