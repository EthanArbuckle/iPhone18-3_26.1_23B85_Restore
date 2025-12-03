@interface PreviewViewController
- (void)_addVCToHierarchy:(id)hierarchy;
- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler;
- (void)preparePreviewOfSearchableItemWithIdentifier:(id)identifier queryString:(id)string completionHandler:(id)handler;
- (void)viewWillLayoutSubviews;
@end

@implementation PreviewViewController

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = PreviewViewController;
  [(PreviewViewController *)&v14 viewWillLayoutSubviews];
  view = [(PreviewViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  detailVC = self->_detailVC;
  if (detailVC)
  {
    view2 = [(UIViewController *)detailVC view];
    [view2 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)_addVCToHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  objc_storeStrong(&self->_detailVC, hierarchy);
  [(PreviewViewController *)self addChildViewController:hierarchyCopy];
  view = [hierarchyCopy view];
  view2 = [(PreviewViewController *)self view];
  [view2 addSubview:view];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = view;
    [v7 setShowsVerticalScrollIndicator:0];
    [v7 setShowsHorizontalScrollIndicator:0];
  }
}

- (void)preparePreviewOfSearchableItemWithIdentifier:(id)identifier queryString:(id)string completionHandler:(id)handler
{
  identifierCopy = identifier;
  stringCopy = string;
  handlerCopy = handler;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "preparePreviewOfSearchableItemWithIdentifier:%@", &buf, 0xCu);
  }

  objc_initWeak(&location, self);
  v10 = +[PKPassLibrary sharedInstance];
  library = self->_library;
  self->_library = v10;

  v12 = [PKCoreSpotlightUtilities transactionIdentifierFromSpotlightIdentifier:identifierCopy];
  transactionIdentifier = self->_transactionIdentifier;
  self->_transactionIdentifier = v12;

  v14 = [PKCoreSpotlightUtilities passUniqueIdentifierFromSpotlightIdentifier:identifierCopy];
  v15 = v14;
  if (!v14)
  {
    v15 = [PKCoreSpotlightUtilities passUniqueIdentifierFromCardInformationSpotlightIdentifier:identifierCopy];
  }

  objc_storeStrong(&self->_passUniqueIdentifier, v15);
  if (!v14)
  {
  }

  if (self->_transactionIdentifier)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v70 = 0x3032000000;
    v71 = sub_1000019D8;
    v72 = sub_1000019E8;
    v73 = 0;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3032000000;
    v66[3] = sub_1000019D8;
    v66[4] = sub_1000019E8;
    v67 = 0;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x3032000000;
    v64[3] = sub_1000019D8;
    v64[4] = sub_1000019E8;
    v65 = 0;
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x3032000000;
    v62[3] = sub_1000019D8;
    v62[4] = sub_1000019E8;
    v63 = 0;
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x3032000000;
    v60[3] = sub_1000019D8;
    v60[4] = sub_1000019E8;
    v61 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x3032000000;
    v58[3] = sub_1000019D8;
    v58[4] = sub_1000019E8;
    v59 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = sub_1000019D8;
    v56[4] = sub_1000019E8;
    v57 = 0;
    v16 = +[PKPaymentService paymentService];
    paymentService = self->_paymentService;
    self->_paymentService = v16;

    v18 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000019F0;
    v51[3] = &unk_100008268;
    v51[4] = self;
    objc_copyWeak(&v55, &location);
    p_buf = &buf;
    v19 = identifierCopy;
    v52 = v19;
    v54 = v56;
    [v18 addOperation:v51];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100001C94;
    v49[3] = &unk_1000082B8;
    v49[4] = self;
    objc_copyWeak(&v50, &location);
    v49[5] = v58;
    [v18 addOperation:v49];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100001E48;
    v44[3] = &unk_100008308;
    objc_copyWeak(&v48, &location);
    v44[4] = self;
    v46 = v60;
    v45 = v19;
    v47 = v56;
    [v18 addOperation:v44];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10000210C;
    v42[3] = &unk_100008358;
    v42[4] = &buf;
    objc_copyWeak(&v43, &location);
    v42[5] = v66;
    [v18 addOperation:v42];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100002300;
    v40[3] = &unk_100008358;
    v40[4] = &buf;
    objc_copyWeak(&v41, &location);
    v40[5] = v64;
    [v18 addOperation:v40];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100002508;
    v38[3] = &unk_100008358;
    v38[4] = &buf;
    objc_copyWeak(&v39, &location);
    v38[5] = v62;
    [v18 addOperation:v38];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100002704;
    v36[3] = &unk_1000083D0;
    objc_copyWeak(&v37, &location);
    v36[4] = &buf;
    v36[5] = v60;
    v36[6] = v58;
    v36[7] = v66;
    v36[8] = v64;
    v36[9] = v62;
    [v18 addOperation:v36];
    v20 = +[NSNull null];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000029EC;
    v33[3] = &unk_1000083F8;
    v34 = handlerCopy;
    v35 = v56;
    v21 = [v18 evaluateWithInput:v20 completion:v33];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v43);

    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);

    objc_destroyWeak(&v55);
    _Block_object_dispose(v56, 8);

    _Block_object_dispose(v58, 8);
    _Block_object_dispose(v60, 8);

    _Block_object_dispose(v62, 8);
    _Block_object_dispose(v64, 8);

    _Block_object_dispose(v66, 8);
    _Block_object_dispose(&buf, 8);
  }

  else if (self->_passUniqueIdentifier)
  {
    v22 = +[PKPassLibrary sharedInstance];
    v23 = self->_library;
    self->_library = v22;

    v24 = [(PKPassLibrary *)self->_library passWithUniqueID:self->_passUniqueIdentifier];
    if (v24)
    {
      objc_initWeak(&buf, self);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002A08;
      block[3] = &unk_100008420;
      objc_copyWeak(&v32, &buf);
      v30 = v24;
      v31 = handlerCopy;
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v32);
      objc_destroyWeak(&buf);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = identifierCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Pass not found with identifier %@", &buf, 0xCu);
      }

      v26 = [NSError errorWithDomain:@"PassbookQuicklookPreviewExtensionErrorDomain" code:2 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v26);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Non presentable identifier: %@", &buf, 0xCu);
    }

    v25 = [NSError errorWithDomain:@"PassbookQuicklookPreviewExtensionErrorDomain" code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v25);
  }

  objc_destroyWeak(&location);
}

- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = lCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Generating quicklook for file URL: %@", buf, 0xCu);
  }

  if (lCopy)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [NSData dataWithContentsOfURL:lCopy];
    v14 = 0;
    v11 = [PKPass createWithData:v10 warnings:0 error:&v14];
    v12 = v14;
    if (v11)
    {
      [v11 loadContentSync];
      [v11 loadImageSetSync:0 preheat:1];

      objc_autoreleasePoolPop(v9);
      v13 = [[PKDashboardPassGroupViewController alloc] initWithPass:v11];
      [(PreviewViewController *)self _addVCToHierarchy:v13];
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {

      objc_autoreleasePoolPop(v9);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pass quicklook could not be generated with error %@", buf, 0xCu);
      }

      (handlerCopy)[2](handlerCopy, v12);
    }
  }

  else
  {
    v11 = [NSError errorWithDomain:@"PassbookQuicklookPreviewExtensionErrorDomain" code:2 userInfo:0];
    (handlerCopy)[2](handlerCopy, v11);
  }
}

@end