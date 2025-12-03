@interface RAPWebBundleBaseViewController
- (BOOL)_shouldShowNutritionLabel;
- (RAPWebBundleBaseViewController)initWithReport:(id)report;
- (RAPWebBundleQuestion)webBundleQuestion;
- (RAPWebBundleViewControllerDelegate)delegate;
- (WKWebView)webView;
- (id)_photoPickerAnchoringViewForBoundingBox:(CGRect)box;
- (id)_photoPickerReplyHandler:(id)handler;
- (void)_addAnalyticsEventToCombinedUserPath:(id)path;
- (void)_presentPrivacyView;
- (void)_removePhotoWithId:(id)id;
- (void)_saveInlineCardHeightIfNeeded:(double)needed;
- (void)_setupConstraints;
- (void)_submitButtonEnabled:(BOOL)enabled;
- (void)didReceiveMessageFromUserContentController:(id)controller message:(id)message replyHandler:(id)handler;
- (void)presentAccessoryViewController:(id)controller;
- (void)removeAllPhotos;
- (void)saveImage:(id)image withIdentifier:(id)identifier;
- (void)saveImageData:(id)data withIdentifier:(id)identifier;
- (void)setupViews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RAPWebBundleBaseViewController

- (RAPWebBundleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

- (id)_photoPickerReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[RAPPhotoPickerController alloc] initWithInitialPhoto:0];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100A4DAFC;
  v10[4] = sub_100A4DB28;
  v11 = objc_retainBlock(handlerCopy);
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A4DB30;
  v7[3] = &unk_101632750;
  objc_copyWeak(&v8, &location);
  v7[4] = v10;
  [(RAPPhotoPickerController *)v5 addObserver:self changeHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  _Block_object_dispose(v10, 8);

  return v5;
}

- (void)didReceiveMessageFromUserContentController:(id)controller message:(id)message replyHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v9 = [messageCopy objectForKeyedSubscript:@"name"];
  v10 = [v9 isEqualToString:@"setValid"];

  if (v10)
  {
    view = [messageCopy objectForKeyedSubscript:@"isValid"];
    -[RAPWebBundleBaseViewController _submitButtonEnabled:](self, "_submitButtonEnabled:", [view BOOLValue]);
LABEL_11:

    goto LABEL_12;
  }

  v12 = [messageCopy objectForKeyedSubscript:@"name"];
  v13 = [v12 isEqualToString:@"getPhotos"];

  if (v13)
  {
    view = [(RAPWebBundleBaseViewController *)self view];
    v14 = [messageCopy objectForKeyedSubscript:@"boundingBox"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [messageCopy objectForKeyedSubscript:@"boundingBox"];

      if (!v15)
      {
LABEL_8:
        v29 = [(RAPWebBundleBaseViewController *)self _photoPickerReplyHandler:handlerCopy];
        [(RAPPhotoPickerController *)v29 setAnchoringView:view];
        [(RAPPhotoPickerController *)v29 setPresentingViewController:self];
        [(RAPPhotoPickerController *)v29 startPicking];
        photoPicker = self->_photoPicker;
        self->_photoPicker = v29;

        goto LABEL_11;
      }

      v14 = [messageCopy objectForKeyedSubscript:@"boundingBox"];
      v16 = [v14 objectForKeyedSubscript:@"xCoordinate"];
      [v16 doubleValue];
      v18 = v17;
      v19 = [v14 objectForKeyedSubscript:@"yCoordinate"];
      [v19 doubleValue];
      v21 = v20;
      v22 = [v14 objectForKeyedSubscript:@"width"];
      [v22 doubleValue];
      v24 = v23;
      v25 = [v14 objectForKeyedSubscript:@"height"];
      [v25 doubleValue];
      v27 = v26;

      v28 = [(RAPWebBundleBaseViewController *)self _photoPickerAnchoringViewForBoundingBox:v18, v21, v24, v27];

      view = v28;
    }

    goto LABEL_8;
  }

  v31 = [messageCopy objectForKeyedSubscript:@"name"];
  v32 = [v31 isEqualToString:@"removePhoto"];

  if (v32)
  {
    view = [messageCopy objectForKeyedSubscript:@"id"];
    [(RAPWebBundleBaseViewController *)self _removePhotoWithId:view];
    goto LABEL_11;
  }

  v33 = [messageCopy objectForKeyedSubscript:@"name"];
  v34 = [v33 isEqualToString:@"showPrivacy"];

  if (v34)
  {
    [(RAPWebBundleBaseViewController *)self _presentPrivacyView];
    goto LABEL_12;
  }

  v35 = [messageCopy objectForKeyedSubscript:@"name"];
  v36 = [v35 isEqualToString:@"sendAnalyticsEvent"];

  if (v36)
  {
    view = [messageCopy objectForKeyedSubscript:@"values"];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v37 = [view countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v69;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v69 != v39)
          {
            objc_enumerationMutation(view);
          }

          [(RAPWebBundleBaseViewController *)self _addAnalyticsEventToCombinedUserPath:*(*(&v68 + 1) + 8 * i)];
        }

        v38 = [view countByEnumeratingWithState:&v68 objects:v74 count:16];
      }

      while (v38);
    }

    goto LABEL_11;
  }

  v41 = [messageCopy objectForKeyedSubscript:@"name"];
  v42 = [v41 isEqualToString:@"pageShown"];

  if (v42)
  {
    v43 = [messageCopy objectForKeyedSubscript:@"success"];
    bOOLValue = [v43 BOOLValue];

    [(WebBundleManager *)self->_webBundleManager didLoadPageWithSuccess:bOOLValue];
    self->_needsCardHeightSave = 1;
    goto LABEL_12;
  }

  v45 = [messageCopy objectForKeyedSubscript:@"name"];
  v46 = [v45 isEqualToString:@"pageResized"];

  if (!v46)
  {
    v55 = [messageCopy objectForKeyedSubscript:@"name"];
    v56 = [v55 isEqualToString:@"logWebBundleMsg"];

    if (v56)
    {
      v57 = [messageCopy objectForKeyedSubscript:@"value"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_12;
      }

      v59 = [messageCopy objectForKeyedSubscript:@"value"];
      v60 = sub_100038318();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v73 = v59;
        v61 = "Message from WebBundle: %@";
        v62 = v60;
        v63 = OS_LOG_TYPE_INFO;
LABEL_43:
        _os_log_impl(&_mh_execute_header, v62, v63, v61, buf, 0xCu);
      }
    }

    else
    {
      v64 = [messageCopy objectForKeyedSubscript:@"name"];
      v65 = [v64 isEqualToString:@"logWebBundleError"];

      if (!v65)
      {
        goto LABEL_12;
      }

      v66 = [messageCopy objectForKeyedSubscript:@"value"];
      objc_opt_class();
      v67 = objc_opt_isKindOfClass();

      if ((v67 & 1) == 0)
      {
        goto LABEL_12;
      }

      v59 = [messageCopy objectForKeyedSubscript:@"value"];
      v60 = sub_100038318();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = v59;
        v61 = "Error from WebBundle: %@";
        v62 = v60;
        v63 = OS_LOG_TYPE_ERROR;
        goto LABEL_43;
      }
    }

    goto LABEL_12;
  }

  v47 = [messageCopy objectForKeyedSubscript:@"pageHeight"];
  [v47 cgFloatValue];
  v49 = v48;

  if ((MapsFeature_IsEnabled_RAPCommunityID() & 1) == 0)
  {
    selfCopy = self;
    objc_opt_class();
    v51 = (objc_opt_isKindOfClass() & 1) != 0 ? selfCopy : 0;
    v52 = v51;

    nutritionLabelView = selfCopy->_nutritionLabelView;
    if (nutritionLabelView)
    {
      if (!v52)
      {
        [(UGCUserInformationCell *)nutritionLabelView frame];
        v49 = v49 + 8.0 + CGRectGetHeight(v75);
      }
    }
  }

  delegate = [(RAPWebBundleBaseViewController *)self delegate];
  [delegate updateCardHeight:v49];

  [(RAPWebBundleBaseViewController *)self _saveInlineCardHeightIfNeeded:v49];
LABEL_12:
}

- (id)_photoPickerAnchoringViewForBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  if (!self->_photoPickerAnchoringView)
  {
    v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    photoPickerAnchoringView = self->_photoPickerAnchoringView;
    self->_photoPickerAnchoringView = v8;

    [(UIView *)self->_photoPickerAnchoringView setUserInteractionEnabled:0];
    view = [(RAPWebBundleBaseViewController *)self view];
    [view addSubview:self->_photoPickerAnchoringView];
  }

  view2 = [(RAPWebBundleBaseViewController *)self view];
  webView = [(RAPWebBundleBaseViewController *)self webView];
  [view2 convertRect:webView fromView:{x, y, width, height}];
  [(UIView *)self->_photoPickerAnchoringView setFrame:?];

  v13 = self->_photoPickerAnchoringView;

  return v13;
}

- (void)_saveInlineCardHeightIfNeeded:(double)needed
{
  if (self->_needsCardHeightSave)
  {
    self->_needsCardHeightSave = 0;
    delegate = [(RAPWebBundleBaseViewController *)self delegate];
    [delegate saveInitialCardHeight:needed];
  }
}

- (void)_addAnalyticsEventToCombinedUserPath:(id)path
{
  report = self->_report;
  pathCopy = path;
  combinedUserPath = [(RAPReport *)report combinedUserPath];
  [combinedUserPath addWebPath:pathCopy];
}

- (void)_presentPrivacyView
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.mapsrap"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)_submitButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(RAPWebBundleBaseViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (void)_removePhotoWithId:(id)id
{
  idCopy = id;
  webBundleDirectory = [(WebBundleConfiguration *)self->_configuration webBundleDirectory];
  v6 = [RAPImageStorage removeImageWithImageIdentifier:idCopy directory:webBundleDirectory];

  if ((v6 & 1) == 0)
  {
    v7 = sub_100038318();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = idCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot remove image from device with id: %@", &v15, 0xCu);
    }
  }

  absoluteCachedWebBundleDirectory = [(WebBundleConfiguration *)self->_configuration absoluteCachedWebBundleDirectory];
  v9 = [RAPImageStorage removeImageWithImageIdentifier:idCopy directory:absoluteCachedWebBundleDirectory];

  if ((v9 & 1) == 0)
  {
    v10 = sub_100038318();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = idCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot remove image in on-device directory from device with id: %@", &v15, 0xCu);
    }
  }

  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  geotaggedPhotoCommentQuestion = [webBundleQuestion geotaggedPhotoCommentQuestion];
  v13 = [geotaggedPhotoCommentQuestion removePhotoForIdentifier:idCopy];

  if ((v13 & 1) == 0)
  {
    v14 = sub_100038318();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = idCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Cannot remove image from rap question with id: %@", &v15, 0xCu);
    }
  }
}

- (void)_setupConstraints
{
  v117 = objc_alloc_init(NSMutableArray);
  topAnchor = [(UIVisualEffectView *)self->_blurView topAnchor];
  view = [(RAPWebBundleBaseViewController *)self view];
  topAnchor2 = [view topAnchor];
  v105 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v124[0] = v105;
  leadingAnchor = [(UIVisualEffectView *)self->_blurView leadingAnchor];
  view2 = [(RAPWebBundleBaseViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v93 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v124[1] = v93;
  trailingAnchor = [(UIVisualEffectView *)self->_blurView trailingAnchor];
  view3 = [(RAPWebBundleBaseViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v84 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v124[2] = v84;
  bottomAnchor = [(UIVisualEffectView *)self->_blurView bottomAnchor];
  view4 = [(RAPWebBundleBaseViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v76 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v124[3] = v76;
  webView = [(RAPWebBundleBaseViewController *)self webView];
  topAnchor3 = [webView topAnchor];
  view5 = [(RAPWebBundleBaseViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  v64 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v124[4] = v64;
  webView2 = [(RAPWebBundleBaseViewController *)self webView];
  leadingAnchor3 = [webView2 leadingAnchor];
  view6 = [(RAPWebBundleBaseViewController *)self view];
  leadingAnchor4 = [view6 leadingAnchor];
  v5 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v124[5] = v5;
  webView3 = [(RAPWebBundleBaseViewController *)self webView];
  trailingAnchor3 = [webView3 trailingAnchor];
  view7 = [(RAPWebBundleBaseViewController *)self view];
  trailingAnchor4 = [view7 trailingAnchor];
  v10 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v124[6] = v10;
  v11 = [NSArray arrayWithObjects:v124 count:7];
  [v117 addObjectsFromArray:v11];

  v12 = sub_10000FA08(self);
  view8 = [(RAPWebBundleBaseViewController *)self view];
  v14 = view8;
  if (v12 == 5)
  {
    safeAreaLayoutGuide2 = [view8 safeAreaLayoutGuide];
    bottomAnchor3 = [safeAreaLayoutGuide2 bottomAnchor];
  }

  else
  {
    bottomAnchor3 = [view8 bottomAnchor];
  }

  if (MapsFeature_IsEnabled_RAPCommunityID() && ![(RAPWebBundleBaseViewController *)self _shouldShowNutritionLabel])
  {
    webView4 = [(RAPWebBundleBaseViewController *)self webView];
    bottomAnchor4 = [(RAPWebBundleBaseViewController *)webView4 bottomAnchor];
    view12 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor3];
    v123 = view12;
    safeAreaLayoutGuide6 = [NSArray arrayWithObjects:&v123 count:1];
    v33 = v117;
    [v117 addObjectsFromArray:safeAreaLayoutGuide6];
  }

  else
  {
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = selfCopy;
    }

    else
    {
      v18 = 0;
    }

    webView4 = v18;

    nutritionLabelView = selfCopy->_nutritionLabelView;
    if (nutritionLabelView)
    {
      v116 = bottomAnchor3;
      if (webView4)
      {
        webView5 = [(RAPWebBundleBaseViewController *)selfCopy webView];
        bottomAnchor5 = [webView5 bottomAnchor];
        view9 = [(RAPWebBundleBaseViewController *)selfCopy view];
        safeAreaLayoutGuide3 = [view9 safeAreaLayoutGuide];
        bottomAnchor6 = [safeAreaLayoutGuide3 bottomAnchor];
        v106 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
        v121[0] = v106;
        leadingAnchor5 = [(UGCUserInformationCell *)selfCopy->_nutritionLabelView leadingAnchor];
        footerView = [(RAPWebBundleBaseViewController *)webView4 footerView];
        accessoryView = [footerView accessoryView];
        leadingAnchor6 = [accessoryView leadingAnchor];
        v91 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
        v121[1] = v91;
        trailingAnchor5 = [(UGCUserInformationCell *)selfCopy->_nutritionLabelView trailingAnchor];
        footerView2 = [(RAPWebBundleBaseViewController *)webView4 footerView];
        accessoryView2 = [footerView2 accessoryView];
        trailingAnchor6 = [accessoryView2 trailingAnchor];
        v77 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
        v121[2] = v77;
        layoutMarginsGuide = [(UGCUserInformationCell *)selfCopy->_nutritionLabelView layoutMarginsGuide];
        topAnchor5 = [layoutMarginsGuide topAnchor];
        footerView3 = [(RAPWebBundleBaseViewController *)webView4 footerView];
        accessoryView3 = [footerView3 accessoryView];
        topAnchor6 = [accessoryView3 topAnchor];
        v63 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
        v121[3] = v63;
        layoutMarginsGuide2 = [(UGCUserInformationCell *)selfCopy->_nutritionLabelView layoutMarginsGuide];
        bottomAnchor7 = [layoutMarginsGuide2 bottomAnchor];
        footerView4 = [(RAPWebBundleBaseViewController *)webView4 footerView];
        accessoryView4 = [footerView4 accessoryView];
        bottomAnchor8 = [accessoryView4 bottomAnchor];
        v21 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8];
        v121[4] = v21;
        layoutMarginsGuide3 = [(UGCUserInformationCell *)selfCopy->_nutritionLabelView layoutMarginsGuide];
        centerYAnchor = [layoutMarginsGuide3 centerYAnchor];
        footerView5 = [(RAPWebBundleBaseViewController *)webView4 footerView];
        [footerView5 accessoryView];
        v26 = v25 = webView4;
        centerYAnchor2 = [v26 centerYAnchor];
        v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v121[5] = v28;
        v29 = [NSArray arrayWithObjects:v121 count:6];
        [v117 addObjectsFromArray:v29];

        bottomAnchor4 = webView5;
        bottomAnchor10 = safeAreaLayoutGuide3;

        webView4 = v25;
        safeAreaLayoutGuide6 = view9;

        v33 = v117;
        view12 = bottomAnchor5;
      }

      else
      {
        topAnchor7 = [(UGCUserInformationCell *)nutritionLabelView topAnchor];
        webView6 = [(RAPWebBundleBaseViewController *)selfCopy webView];
        bottomAnchor9 = [webView6 bottomAnchor];
        v101 = [topAnchor7 constraintEqualToAnchor:bottomAnchor9 constant:8.0];
        v120[0] = v101;
        leadingAnchor7 = [(UGCUserInformationCell *)selfCopy->_nutritionLabelView leadingAnchor];
        view10 = [(RAPWebBundleBaseViewController *)selfCopy view];
        safeAreaLayoutGuide4 = [view10 safeAreaLayoutGuide];
        leadingAnchor8 = [safeAreaLayoutGuide4 leadingAnchor];
        v36 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
        v120[1] = v36;
        trailingAnchor7 = [(UGCUserInformationCell *)selfCopy->_nutritionLabelView trailingAnchor];
        view11 = [(RAPWebBundleBaseViewController *)selfCopy view];
        safeAreaLayoutGuide5 = [view11 safeAreaLayoutGuide];
        trailingAnchor8 = [safeAreaLayoutGuide5 trailingAnchor];
        v41 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
        v120[2] = v41;
        v42 = [NSArray arrayWithObjects:v120 count:3];
        [v117 addObjectsFromArray:v42];

        webBundleQuestion = [(RAPWebBundleBaseViewController *)selfCopy webBundleQuestion];
        v44 = [webBundleQuestion questionType] - 13;

        bottomAnchor4 = [(UGCUserInformationCell *)selfCopy->_nutritionLabelView bottomAnchor];
        view12 = [(RAPWebBundleBaseViewController *)selfCopy view];
        safeAreaLayoutGuide6 = [view12 safeAreaLayoutGuide];
        bottomAnchor10 = [safeAreaLayoutGuide6 bottomAnchor];
        if (v44 > 7)
        {
          v54 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor10];
          v118 = v54;
          v55 = [NSArray arrayWithObjects:&v118 count:1];
          [v117 addObjectsFromArray:v55];

          v33 = v117;
        }

        else
        {
          v108 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor10];
          v119[0] = v108;
          bottomAnchor11 = [(UGCUserInformationCell *)selfCopy->_nutritionLabelView bottomAnchor];
          [(RAPWebBundleBaseViewController *)selfCopy view];
          v46 = v114 = view12;
          keyboardLayoutGuide = [v46 keyboardLayoutGuide];
          [keyboardLayoutGuide topAnchor];
          v49 = v48 = safeAreaLayoutGuide6;
          LODWORD(v50) = 1144750080;
          v51 = [bottomAnchor11 constraintEqualToAnchor:v49 constant:-8.0 priority:v50];
          v119[1] = v51;
          [NSArray arrayWithObjects:v119 count:2];
          v53 = v52 = bottomAnchor10;
          v33 = v117;
          [v117 addObjectsFromArray:v53];

          bottomAnchor10 = v52;
          safeAreaLayoutGuide6 = v48;

          view12 = v114;
        }

        bottomAnchor3 = v116;
        webView4 = 0;
      }
    }

    else
    {
      bottomAnchor4 = [(RAPWebBundleBaseViewController *)selfCopy webView];
      view12 = [bottomAnchor4 bottomAnchor];
      safeAreaLayoutGuide6 = [view12 constraintEqualToAnchor:bottomAnchor3];
      v122 = safeAreaLayoutGuide6;
      bottomAnchor10 = [NSArray arrayWithObjects:&v122 count:1];
      v33 = v117;
      [v117 addObjectsFromArray:bottomAnchor10];
    }
  }

  [NSLayoutConstraint activateConstraints:v33];
}

- (BOOL)_shouldShowNutritionLabel
{
  if (sub_10074262C())
  {
    loggedIn = 0;
  }

  else
  {
    v4 = +[UserInformationManager sharedInstance];
    loggedIn = [v4 loggedIn];
  }

  initialQuestion = [(RAPReport *)self->_report initialQuestion];
  isAnonymous = [initialQuestion isAnonymous];

  return (isAnonymous ^ 1) & loggedIn;
}

- (void)setupViews
{
  v3 = [MapsTheme visualEffectViewAllowingBlur:1];
  blurView = self->_blurView;
  self->_blurView = v3;

  [(UIVisualEffectView *)self->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(RAPWebBundleBaseViewController *)self view];
  [view addSubview:self->_blurView];

  webView = [(WebBundleManager *)self->_webBundleManager webView];
  [(RAPWebBundleBaseViewController *)self setWebView:webView];

  webView2 = [(RAPWebBundleBaseViewController *)self webView];
  [webView2 setAccessibilityIdentifier:@"RAPWebView"];

  webView3 = [(RAPWebBundleBaseViewController *)self webView];
  [webView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(RAPWebBundleBaseViewController *)self view];
  webView4 = [(RAPWebBundleBaseViewController *)self webView];
  [view2 addSubview:webView4];

  v31 = +[UserInformationManager sharedInstance];
  if ([(RAPWebBundleBaseViewController *)self _shouldShowNutritionLabel])
  {
    v11 = [[UGCUserInformationCell alloc] initWithEmphasis:0];
    nutritionLabelView = self->_nutritionLabelView;
    self->_nutritionLabelView = v11;

    [(UGCUserInformationCell *)self->_nutritionLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = self->_nutritionLabelView;
    v14 = [UIFont _maps_systemFontWithSize:12.0];
    v15 = +[UIColor secondaryLabelColor];
    [(UGCUserInformationCell *)v13 setOverallFont:v14 overallColor:v15];

    v16 = self->_nutritionLabelView;
    v17 = [UIFont _maps_systemFontWithSize:12.0];
    v18 = +[UIColor secondaryLabelColor];
    [(UGCUserInformationCell *)v16 setOverallFont:v17 overallColor:v18];

    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = selfCopy;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v21)
    {
      footerView = [(RAPWebBundleBaseViewController *)v21 footerView];
      accessoryView = [footerView accessoryView];
      [accessoryView addSubview:self->_nutritionLabelView];
    }

    else
    {
      footerView = [(RAPWebBundleBaseViewController *)selfCopy view];
      [footerView addSubview:self->_nutritionLabelView];
    }

    v24 = objc_alloc_init(UGCUserInformationViewModel);
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"[RAP Web UI] Reporting As User's Information" value:@"localized string not found" table:0];

    userName = [v31 userName];
    v28 = [NSString stringWithFormat:v26, userName];
    [(UGCUserInformationViewModel *)v24 setUserName:v28];

    userEmail = [v31 userEmail];
    [(UGCUserInformationViewModel *)v24 setUserEmail:userEmail];

    userIcon = [v31 userIcon];
    [(UGCUserInformationViewModel *)v24 setUserIcon:userIcon];

    [(UGCUserInformationCell *)self->_nutritionLabelView setViewModel:v24];
  }

  [(RAPWebBundleBaseViewController *)self _submitButtonEnabled:0];
}

- (void)removeAllPhotos
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  webBundleQuestion = [(RAPWebBundleBaseViewController *)self webBundleQuestion];
  geotaggedPhotoCommentQuestion = [webBundleQuestion geotaggedPhotoCommentQuestion];
  photos = [geotaggedPhotoCommentQuestion photos];

  v6 = [photos countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(photos);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        identifier = [v10 identifier];
        [(RAPWebBundleBaseViewController *)self _removePhotoWithId:identifier];

        photoIdentifiers = self->_photoIdentifiers;
        identifier2 = [v10 identifier];
        [(NSMutableSet *)photoIdentifiers removeObject:identifier2];
      }

      v7 = [photos countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = self->_photoIdentifiers;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(RAPWebBundleBaseViewController *)self _removePhotoWithId:*(*(&v19 + 1) + 8 * j), v19];
      }

      v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)saveImage:(id)image withIdentifier:(id)identifier
{
  imageCopy = image;
  identifierCopy = identifier;
  v8 = UIImagePNGRepresentation(imageCopy);
  if (v8)
  {
    [(RAPWebBundleBaseViewController *)self saveImageData:v8 withIdentifier:identifierCopy];
  }

  else
  {
    v9 = sub_100038318();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = imageCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create imageData from image: %@.", &v10, 0xCu);
    }
  }
}

- (void)saveImageData:(id)data withIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v8 = sub_100038318();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    webBundleDirectory = [(WebBundleConfiguration *)self->_configuration webBundleDirectory];
    absoluteString = [webBundleDirectory absoluteString];
    absoluteCachedWebBundleDirectory = [(WebBundleConfiguration *)self->_configuration absoluteCachedWebBundleDirectory];
    v18 = 138412802;
    v19 = dataCopy;
    v20 = 2112;
    v21 = absoluteString;
    v22 = 2112;
    v23 = absoluteCachedWebBundleDirectory;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will try to save icon with data: %@, at path: %@ and path: %@", &v18, 0x20u);
  }

  webBundleDirectory2 = [(WebBundleConfiguration *)self->_configuration webBundleDirectory];
  v13 = [RAPImageStorage saveImageWithImageIdentifier:identifierCopy imageData:dataCopy directory:webBundleDirectory2];

  if ((v13 & 1) == 0)
  {
    v14 = sub_100798874();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to save image.", &v18, 2u);
    }
  }

  absoluteCachedWebBundleDirectory2 = [(WebBundleConfiguration *)self->_configuration absoluteCachedWebBundleDirectory];
  v16 = [RAPImageStorage saveImageWithImageIdentifier:identifierCopy imageData:dataCopy directory:absoluteCachedWebBundleDirectory2];

  if ((v16 & 1) == 0)
  {
    v17 = sub_100798874();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to save image in on-device writable directory.", &v18, 2u);
    }
  }

  [(NSMutableSet *)self->_photoIdentifiers addObject:identifierCopy];
}

- (RAPWebBundleQuestion)webBundleQuestion
{
  initialQuestion = [(RAPReport *)self->_report initialQuestion];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    initialQuestion2 = [(RAPReport *)self->_report initialQuestion];
  }

  else
  {
    initialQuestion2 = 0;
  }

  return initialQuestion2;
}

- (void)presentAccessoryViewController:(id)controller
{
  controllerCopy = controller;
  traitCollection = [(RAPWebBundleBaseViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    navigationController = [(RAPWebBundleBaseViewController *)self navigationController];
    [navigationController pushViewController:controllerCopy animated:1];
  }

  else
  {
    [controllerCopy setModalInPresentation:1];
    navigationController = [[UINavigationController alloc] initWithRootViewController:controllerCopy];
    [navigationController setModalPresentationStyle:2];
    navigationController2 = [(RAPWebBundleBaseViewController *)self navigationController];
    [navigationController setOverrideUserInterfaceStyle:{objc_msgSend(navigationController2, "overrideUserInterfaceStyle")}];

    navigationController3 = [(RAPWebBundleBaseViewController *)self navigationController];
    [controllerCopy setOverrideUserInterfaceStyle:{objc_msgSend(navigationController3, "overrideUserInterfaceStyle")}];

    [(RAPWebBundleBaseViewController *)self presentViewController:navigationController animated:1 completion:0];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = RAPWebBundleBaseViewController;
  [(RAPWebBundleBaseViewController *)&v4 viewSafeAreaInsetsDidChange];
  delegate = [(RAPWebBundleBaseViewController *)self delegate];
  [delegate updatePreferredContentSize];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = RAPWebBundleBaseViewController;
  [(RAPWebBundleBaseViewController *)&v4 viewWillDisappear:disappear];
  [(WebBundleManager *)self->_webBundleManager cancelLoadRequest];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = RAPWebBundleBaseViewController;
  [(RAPWebBundleBaseViewController *)&v14 viewDidLoad];
  v3 = objc_alloc_init(RAPWebBundleConfigurationManager);
  configuration = [(RAPWebBundleConfigurationManager *)v3 configuration];
  configuration = self->_configuration;
  self->_configuration = configuration;

  v6 = [WebBundleManager alloc];
  configuration2 = [(RAPWebBundleConfigurationManager *)v3 configuration];
  v8 = [(WebBundleManager *)v6 initWithConfiguration:configuration2 delegate:self];
  webBundleManager = self->_webBundleManager;
  self->_webBundleManager = v8;

  entryPointString = [(RAPWebBundleBaseViewController *)self entryPointString];

  if (entryPointString)
  {
    entryPointString2 = [(RAPWebBundleBaseViewController *)self entryPointString];
    [(WebBundleManager *)self->_webBundleManager setEntryPointString:entryPointString2];
  }

  [(RAPWebBundleBaseViewController *)self setupViews];
  [(RAPWebBundleBaseViewController *)self _setupConstraints];
  v12 = objc_alloc_init(NSMutableSet);
  photoIdentifiers = self->_photoIdentifiers;
  self->_photoIdentifiers = v12;
}

- (RAPWebBundleBaseViewController)initWithReport:(id)report
{
  reportCopy = report;
  v9.receiver = self;
  v9.super_class = RAPWebBundleBaseViewController;
  v6 = [(RAPWebBundleBaseViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_report, report);
  }

  return v7;
}

@end