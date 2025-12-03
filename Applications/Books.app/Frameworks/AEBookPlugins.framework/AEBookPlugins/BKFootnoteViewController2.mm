@interface BKFootnoteViewController2
- (BEFootnoteDelegate)delegate;
- (BKFootnoteViewController2)initWithResource:(id)resource stylesheetSet:(id)set backgroundColor:(id)color textColor:(id)textColor;
- (BOOL)isBookTheme;
- (BOOL)isNightTheme;
- (BOOL)isPageTheme;
- (BOOL)navigationHandler:(id)handler handleInternalLoadRequest:(id)request;
- (id)_footNoteTitleHTML;
- (void)_applyCurrentTheme;
- (void)_constructAndActivateConstraints;
- (void)_didDismissFootnoteViewController;
- (void)_doneButtonTapped:(id)tapped;
- (void)_footnoteViewControllerPreparationForDisplayFailed:(id)failed;
- (void)_footnoteViewControllerReadyForDisplay;
- (void)_generateAndLoadContent;
- (void)_presentAlertController:(id)controller completion:(id)completion;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateDoneButton;
- (void)im_themeDidChange;
- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l;
- (void)navigationHandler:(id)handler handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated;
- (void)navigationHandler:(id)handler handleInternalLoadRequestForNewWindow:(id)window;
- (void)navigationHandler:(id)handler handleUserRequestForFrameToLoadExternalURL:(id)l completion:(id)completion;
- (void)navigationHandlerFirstSignificantPaintCompleted:(id)completed;
- (void)releaseViews;
- (void)setResource:(id)resource;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation BKFootnoteViewController2

- (BKFootnoteViewController2)initWithResource:(id)resource stylesheetSet:(id)set backgroundColor:(id)color textColor:(id)textColor
{
  resourceCopy = resource;
  setCopy = set;
  colorCopy = color;
  textColorCopy = textColor;
  if (!resourceCopy)
  {
    sub_138520();
  }

  resource = [resourceCopy resource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    sub_138558();
  }

  v25.receiver = self;
  v25.super_class = BKFootnoteViewController2;
  v16 = [(BKViewController *)&v25 initWithNibName:0 bundle:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_resource, resource);
    sourceURL = [(BKExpandedContentResource *)v17->_resource sourceURL];
    v19 = BEURLHandleriBooksImgUrlFromiBooksURL();
    [(BKExpandedContentResource *)v17->_resource setSourceURL:v19];

    objc_storeStrong(&v17->_stylesheetSet, set);
    objc_storeStrong(&v17->_backgroundColor, color);
    objc_storeStrong(&v17->_textColor, textColor);
    height = 667.0;
    if (CGSizeZero.height <= 667.0)
    {
      height = CGSizeZero.height;
    }

    [(BKFootnoteViewController2 *)v17 setPreferredContentSize:375.0, height];
    [(BKFootnoteViewController2 *)v17 setModalPresentationStyle:7];
    v21 = +[UITraitCollection bc_allAPITraits];
    v22 = [(BKFootnoteViewController2 *)v17 registerForTraitChanges:v21 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v17;
}

- (void)releaseViews
{
  be_navigationHandler = [(WKWebView *)self->_webView be_navigationHandler];
  [be_navigationHandler setDelegate:0];

  be_uiHandler = [(WKWebView *)self->_webView be_uiHandler];
  [be_uiHandler setDelegate:0];

  [(WKWebView *)self->_webView stopLoading];
  webView = self->_webView;
  self->_webView = 0;

  v6.receiver = self;
  v6.super_class = BKFootnoteViewController2;
  [(BKViewController *)&v6 releaseViews];
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = BKFootnoteViewController2;
  [(BKFootnoteViewController2 *)&v35 viewDidLoad];
  view = [(BKFootnoteViewController2 *)self view];
  [view setFrame:{0.0, 0.0, 375.0, 0.0}];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  allowsRemoteInspection = [(BKFootnoteViewController2 *)self allowsRemoteInspection];
  bookID = [(BKExpandedContentResource *)self->_resource bookID];
  cacheItem = [(BKExpandedContentResource *)self->_resource cacheItem];
  v15 = +[BEContentCleanupJSOptions expandedContentOptions];
  v16 = [BEWebViewFactory viewConfiguredForPreview:allowsRemoteInspection enableDeveloperExtras:bookID bookID:0 imageFilterMode:cacheItem protocolCacheItem:v15 cleanupOptions:self->_stylesheetSet stylesheetSet:v5, v7, v9, v11];
  webView = self->_webView;
  self->_webView = v16;

  [(WKWebView *)self->_webView setTranslatesAutoresizingMaskIntoConstraints:0];
  be_navigationHandler = [(WKWebView *)self->_webView be_navigationHandler];
  [be_navigationHandler setDelegate:self];

  be_uiHandler = [(WKWebView *)self->_webView be_uiHandler];
  [be_uiHandler setDelegate:self];

  [(BKExpandedContentResource *)self->_resource zoomScale];
  if (v20 > 0.0)
  {
    [(BKExpandedContentResource *)self->_resource zoomScale];
    [(WKWebView *)self->_webView _setTextZoomFactor:?];
  }

  scrollView = [(WKWebView *)self->_webView scrollView];
  [scrollView _setShowsBackgroundShadow:0];
  [scrollView setShowsHorizontalScrollIndicator:0];
  [scrollView setAlwaysBounceVertical:0];
  v22 = objc_alloc_init(IMFadeView);
  headerMask = self->_headerMask;
  self->_headerMask = v22;

  [(IMFadeView *)self->_headerMask setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = objc_alloc_init(IMFadeView);
  footerMask = self->_footerMask;
  self->_footerMask = v24;

  [(IMFadeView *)self->_footerMask setTranslatesAutoresizingMaskIntoConstraints:0];
  [(IMFadeView *)self->_footerMask setDirection:1];
  v26 = [UIButton buttonWithType:1];
  doneButton = self->_doneButton;
  self->_doneButton = v26;

  [(UIButton *)self->_doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v28) = 1148846080;
  [(UIButton *)self->_doneButton setContentCompressionResistancePriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [(UIButton *)self->_doneButton setContentCompressionResistancePriority:1 forAxis:v29];
  v30 = self->_doneButton;
  v31 = AEBundle();
  v32 = [v31 localizedStringForKey:@"Done" value:&stru_1E7188 table:0];
  [(UIButton *)v30 setTitle:v32 forState:0];

  [(UIButton *)self->_doneButton addTarget:self action:"_doneButtonTapped:" forControlEvents:64];
  v33 = [UIFont systemFontOfSize:17.0];
  titleLabel = [(UIButton *)self->_doneButton titleLabel];
  [titleLabel setFont:v33];

  [view addSubview:self->_doneButton];
  [view addSubview:self->_webView];
  [view addSubview:self->_headerMask];
  [view addSubview:self->_footerMask];
  [(BKFootnoteViewController2 *)self _constructAndActivateConstraints];
  [(BKFootnoteViewController2 *)self _applyCurrentTheme];
  [(BKFootnoteViewController2 *)self _generateAndLoadContent];
  [view setNeedsUpdateConstraints];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  [(BKFootnoteViewController2 *)self _updateDoneButton:change];

  [(BKFootnoteViewController2 *)self _applyCurrentTheme];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKFootnoteViewController2;
  [(BKFootnoteViewController2 *)&v4 viewDidAppear:appear];
  [(BKFootnoteViewController2 *)self _updateDoneButton];
}

- (void)_doneButtonTapped:(id)tapped
{
  presentingViewController = [(BKFootnoteViewController2 *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];

  if (presentedViewController == self)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_C9A68;
    v6[3] = &unk_1E2BD0;
    v6[4] = self;
    [(BKFootnoteViewController2 *)self dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    sub_138594();
  }
}

- (void)navigationHandler:(id)handler handleUserRequestForFrameToLoadExternalURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained footnoteViewController:self handleUserRequestForFrameToLoadExternalURL:lCopy completion:completionCopy];
}

- (void)navigationHandler:(id)handler handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained footnoteViewController:self handleExternalLoadRequest:requestCopy likelyUserInitiated:initiatedCopy];
}

- (BOOL)navigationHandler:(id)handler handleInternalLoadRequest:(id)request
{
  requestCopy = request;
  sourceURL = [(BKExpandedContentResource *)self->_resource sourceURL];
  v7 = [requestCopy isEqual:sourceURL];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sourceURL2 = [(BKExpandedContentResource *)self->_resource sourceURL];
    v10 = [requestCopy be_isEquivalentToURL:sourceURL2 ignoringFragment:1];

    if (v10)
    {
      v8 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = [WeakRetained footnoteViewController:self handleInternalLoadRequest:requestCopy];
    }
  }

  return v8;
}

- (void)navigationHandler:(id)handler handleInternalLoadRequestForNewWindow:(id)window
{
  windowCopy = window;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained footnoteViewController:self handleInternalLoadRequestForNewWindow:windowCopy];
}

- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l
{
  handlerCopy = handler;
  lCopy = l;
  objc_initWeak(&location, self);
  webView = self->_webView;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_C9DA8;
  v9[3] = &unk_1E36A8;
  objc_copyWeak(&v10, &location);
  [(WKWebView *)webView evaluateJavaScript:@"var rect = document.documentElement.getBoundingClientRect(); JSON.stringify([rect.width completionHandler:rect.height])", v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)navigationHandlerFirstSignificantPaintCompleted:(id)completed
{
  scrollView = [(WKWebView *)self->_webView scrollView];
  [scrollView contentSize];
  v4 = v3;
  [scrollView bounds];
  if (v4 > CGRectGetHeight(v7))
  {
    [scrollView flashScrollIndicators];
  }
}

- (BOOL)isPageTheme
{
  theme = [(BKFootnoteViewController2 *)self theme];
  identifier = [theme identifier];
  if ([identifier isEqualToString:kIMThemeIdentifierWhitePageTheme])
  {
    v5 = 1;
  }

  else
  {
    theme2 = [(BKFootnoteViewController2 *)self theme];
    identifier2 = [theme2 identifier];
    if ([identifier2 isEqualToString:kIMThemeIdentifierSepiaPageTheme])
    {
      v5 = 1;
    }

    else
    {
      theme3 = [(BKFootnoteViewController2 *)self theme];
      identifier3 = [theme3 identifier];
      if ([identifier3 isEqualToString:kIMThemeIdentifierGrayPageTheme])
      {
        v5 = 1;
      }

      else
      {
        theme4 = [(BKFootnoteViewController2 *)self theme];
        identifier4 = [theme4 identifier];
        v5 = [identifier4 isEqualToString:kIMThemeIdentifierDefaultPageTheme];
      }
    }
  }

  return v5;
}

- (BOOL)isNightTheme
{
  selfCopy = self;
  theme = [(BKFootnoteViewController2 *)self theme];
  LOBYTE(selfCopy) = [theme isNight:selfCopy];

  return selfCopy;
}

- (BOOL)isBookTheme
{
  if ([(BKFootnoteViewController2 *)self isPageTheme])
  {
    return 1;
  }

  return [(BKFootnoteViewController2 *)self isNightTheme];
}

- (void)im_themeDidChange
{
  v3.receiver = self;
  v3.super_class = BKFootnoteViewController2;
  [(BKFootnoteViewController2 *)&v3 im_themeDidChange];
  [(BKFootnoteViewController2 *)self _applyCurrentTheme];
}

- (void)_footnoteViewControllerReadyForDisplay
{
  [(BKFootnoteViewController2 *)self setReadyForDisplay:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained footnoteViewDidFinishLoad:self];
  }
}

- (void)_footnoteViewControllerPreparationForDisplayFailed:(id)failed
{
  [(BKFootnoteViewController2 *)self setFailedToLoad:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained footnoteViewDidFinishLoad:self];
  }
}

- (void)_didDismissFootnoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained footnoteViewDidDisappear:self];
  }
}

- (void)_presentAlertController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained footnoteViewController:self presentAlertController:controllerCopy completion:completionCopy];
  }
}

- (void)_constructAndActivateConstraints
{
  view = [(BKFootnoteViewController2 *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor = [(WKWebView *)self->_webView topAnchor];
  bottomAnchor = [(UIButton *)self->_doneButton bottomAnchor];
  v6 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:10.0];
  webViewTopAnchorWhenDoneButtonVisible = self->_webViewTopAnchorWhenDoneButtonVisible;
  self->_webViewTopAnchorWhenDoneButtonVisible = v6;

  topAnchor2 = [(WKWebView *)self->_webView topAnchor];
  topAnchor3 = [safeAreaLayoutGuide topAnchor];
  v10 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  webViewTopConstraint = self->_webViewTopConstraint;
  self->_webViewTopConstraint = v10;

  trailingAnchor = [(UIButton *)self->_doneButton trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v54[0] = v50;
  topAnchor4 = [(UIButton *)self->_doneButton topAnchor];
  topAnchor5 = [safeAreaLayoutGuide topAnchor];
  v47 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v12 = self->_webViewTopAnchorWhenDoneButtonVisible;
  v54[1] = v47;
  v54[2] = v12;
  leftAnchor = [(WKWebView *)self->_webView leftAnchor];
  leftAnchor2 = [safeAreaLayoutGuide leftAnchor];
  v44 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:16.0];
  v54[3] = v44;
  rightAnchor = [(WKWebView *)self->_webView rightAnchor];
  rightAnchor2 = [safeAreaLayoutGuide rightAnchor];
  v41 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-16.0];
  v54[4] = v41;
  bottomAnchor2 = [(WKWebView *)self->_webView bottomAnchor];
  bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
  v38 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v54[5] = v38;
  leftAnchor3 = [(IMFadeView *)self->_headerMask leftAnchor];
  leftAnchor4 = [safeAreaLayoutGuide leftAnchor];
  v35 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v54[6] = v35;
  rightAnchor3 = [(IMFadeView *)self->_headerMask rightAnchor];
  rightAnchor4 = [safeAreaLayoutGuide rightAnchor];
  v32 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v54[7] = v32;
  heightAnchor = [(IMFadeView *)self->_headerMask heightAnchor];
  v30 = [heightAnchor constraintEqualToConstant:5.0];
  v54[8] = v30;
  topAnchor6 = [(IMFadeView *)self->_headerMask topAnchor];
  topAnchor7 = [(WKWebView *)self->_webView topAnchor];
  v27 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v54[9] = v27;
  heightAnchor2 = [(IMFadeView *)self->_headerMask heightAnchor];
  v25 = [heightAnchor2 constraintEqualToConstant:5.0];
  v54[10] = v25;
  leftAnchor5 = [(IMFadeView *)self->_footerMask leftAnchor];
  leftAnchor6 = [safeAreaLayoutGuide leftAnchor];
  v22 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  v54[11] = v22;
  rightAnchor5 = [(IMFadeView *)self->_footerMask rightAnchor];
  rightAnchor6 = [safeAreaLayoutGuide rightAnchor];
  v15 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  v54[12] = v15;
  bottomAnchor4 = [(IMFadeView *)self->_footerMask bottomAnchor];
  bottomAnchor5 = [safeAreaLayoutGuide bottomAnchor];
  v18 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v54[13] = v18;
  heightAnchor3 = [(IMFadeView *)self->_footerMask heightAnchor];
  v20 = [heightAnchor3 constraintEqualToConstant:5.0];
  v54[14] = v20;
  v21 = [NSArray arrayWithObjects:v54 count:15];
  [NSLayoutConstraint activateConstraints:v21];
}

- (void)_applyCurrentTheme
{
  backgroundColor = [(BKFootnoteViewController2 *)self backgroundColor];
  v4 = backgroundColor;
  if (backgroundColor)
  {
    v22 = backgroundColor;
  }

  else
  {
    themePage = [(BKFootnoteViewController2 *)self themePage];
    v22 = [themePage backgroundColorForTraitEnvironment:self];
  }

  textColor = [(BKFootnoteViewController2 *)self textColor];
  v7 = textColor;
  if (textColor)
  {
    contentTextColor = textColor;
  }

  else
  {
    themePage2 = [(BKFootnoteViewController2 *)self themePage];
    contentTextColor = [themePage2 contentTextColor];
  }

  doneButton = [(BKFootnoteViewController2 *)self doneButton];
  [doneButton setTitleColor:contentTextColor forState:0];

  configuration = [(WKWebView *)self->_webView configuration];
  userContentController = [configuration userContentController];

  if (self->_themeStylesheet)
  {
    [userContentController _removeUserStyleSheet:?];
  }

  bc_rgbaString = [v22 bc_rgbaString];
  bc_rgbaString2 = [contentTextColor bc_rgbaString];
  v15 = [NSString stringWithFormat:@" html { -webkit-user-select: none -webkit-column-width: auto; width: 100%%; height: auto; background-color: %@ !important; }body { margin: 12px 16px !important; padding: auto !important; background-color: %@ !important; color: %@; overflow: visible !important; }", bc_rgbaString, bc_rgbaString, bc_rgbaString2];;

  v16 = [[_WKUserStyleSheet alloc] initWithSource:v15 forMainFrameOnly:1];
  themeStylesheet = self->_themeStylesheet;
  self->_themeStylesheet = v16;

  [userContentController _addUserStyleSheet:self->_themeStylesheet];
  headerMask = [(BKFootnoteViewController2 *)self headerMask];
  [headerMask setBackgroundColor:v22];

  footerMask = [(BKFootnoteViewController2 *)self footerMask];
  [footerMask setBackgroundColor:v22];

  webView = [(BKFootnoteViewController2 *)self webView];
  [webView setBackgroundColor:v22];

  viewIfLoaded = [(BKFootnoteViewController2 *)self viewIfLoaded];
  [viewIfLoaded setBackgroundColor:v22];
}

- (id)_footNoteTitleHTML
{
  title = [(BKExpandedContentResource *)self->_resource title];
  if ([title length])
  {
    v3 = [NSCharacterSet characterSetWithCharactersInString:@" *"];
    if ([title rangeOfCharacterFromSet:v3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      invertedSet = [v3 invertedSet];
      v4 = [title rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL;
    }

    v7 = objc_alloc_init(NSMutableArray);
    [v7 addObject:@"<div"];
    if (v4)
    {
      [v7 addObject:@" class=enhanced"];
    }

    [v7 addObject:@"><span><div role=heading aria-help="];
    v8 = AEAXLocString(@"footnote.link");
    [v7 addObject:v8];

    [v7 addObject:@">"];
    [v7 addObject:title];
    [v7 addObject:@"</div></span></div>"];
    v5 = [v7 componentsJoinedByString:&stru_1E7188];
  }

  else
  {
    v5 = &stru_1E7188;
  }

  return v5;
}

- (void)_generateAndLoadContent
{
  v3 = AEBundle();
  v4 = [v3 pathForResource:@"footnote" ofType:@"xhtml"];
  v20 = 0;
  v5 = [NSString stringWithContentsOfFile:v4 encoding:4 error:&v20];
  v6 = v20;

  if ([v5 length])
  {
    v7 = [NSNumber numberWithDouble:343.0];
    stringValue = [v7 stringValue];
    v9 = [v5 stringByReplacingOccurrencesOfString:@"metaviewport-width-goes-here" withString:stringValue];

    _footNoteTitleHTML = [(BKFootnoteViewController2 *)self _footNoteTitleHTML];
    v11 = [v9 stringByReplacingOccurrencesOfString:@"<BKASIDETITLEGOESHERE/>" withString:_footNoteTitleHTML];

    objc_opt_class();
    resource = [(BKExpandedContentResource *)self->_resource resource];
    v13 = BUDynamicCast();
    v5 = [v11 stringByReplacingOccurrencesOfString:@"<BKASIDEHTMLGOESHERE/>" withString:v13];

    v14 = [v5 dataUsingEncoding:4];
    webView = self->_webView;
    contentType = [(BKExpandedContentResource *)self->_resource contentType];
    v17 = BEUTF8StringEncodingName;
    sourceURL = [(BKExpandedContentResource *)self->_resource sourceURL];
    v19 = [(WKWebView *)webView loadData:v14 MIMEType:contentType characterEncodingName:v17 baseURL:sourceURL];
  }

  else
  {
    BCReportAssertionFailureWithMessage();
    [(BKFootnoteViewController2 *)self _footnoteViewControllerPreparationForDisplayFailed:v6];
  }
}

- (void)_updateDoneButton
{
  presentingViewController = [(BKFootnoteViewController2 *)self presentingViewController];

  if (presentingViewController)
  {
    presentationController = [(BKFootnoteViewController2 *)self presentationController];
    presentingViewController = [presentationController im_isFullScreen];
  }

  [(NSLayoutConstraint *)self->_webViewTopAnchorWhenDoneButtonVisible setActive:presentingViewController];
  [(NSLayoutConstraint *)self->_webViewTopConstraint setActive:presentingViewController ^ 1];
  doneButton = self->_doneButton;

  [(UIButton *)doneButton setHidden:presentingViewController ^ 1];
}

- (void)setResource:(id)resource
{
  resourceCopy = resource;
  objc_storeStrong(&self->_resource, resource);
  sourceURL = [resourceCopy sourceURL];

  if (sourceURL)
  {
    [(BKFootnoteViewController2 *)self _generateAndLoadContent];
  }
}

- (BEFootnoteDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end