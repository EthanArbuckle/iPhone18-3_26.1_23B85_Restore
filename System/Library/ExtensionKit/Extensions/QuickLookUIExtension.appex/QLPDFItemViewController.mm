@interface QLPDFItemViewController
- (BOOL)_isPreviewingUnconvertedPDF;
- (BOOL)canBeLocked;
- (BOOL)canOfferFormFillingForOriginalDocument;
- (BOOL)canShowMarkupButton;
- (BOOL)canShowToolBar;
- (BOOL)needsToSaveChanges;
- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer;
- (BOOL)shouldDisplayAlternateEditButton;
- (UIEdgeInsets)customEdgeInsets;
- (UIEdgeInsets)customSketchOverlayInsets;
- (id)_itemUUID;
- (id)scrollView;
- (id)stateRestorationDictionary;
- (id)toolbarButtonsForTraitCollection:(id)collection;
- (void)_addDoubleTapGestureRecognizerIfNeeded;
- (void)_currentPDFPageChanged;
- (void)_findSessionDidBeginNotification:(id)notification;
- (void)_findSessionDidChange;
- (void)_findSessionDidEndNotification:(id)notification;
- (void)_setupPrintSessionWithSize:(CGSize)size;
- (void)_startObservingCurrentPDFPageIndex;
- (void)_stopObservingCurrentPDFPageIndex;
- (void)applyRestoredPDFPageIndexIfPossible;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)dismissSearchIfNeeded;
- (void)editDetectedForMarkupViewController:(id)controller shouldEnableMarkup:(BOOL)markup;
- (void)editor:(id)editor needsScreenEdgePanGestureRecognition:(BOOL)recognition;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)notifyStateRestorationWithUserInfo:(id)info;
- (void)numberOfPagesWithSize:(CGSize)size completionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pdfDataForPageAtIndex:(int64_t)index withCompletionHandler:(id)handler;
- (void)permissionViewController:(id)controller didPickOptions:(id)options;
- (void)permissionViewControllerWasCancelled:(id)cancelled;
- (void)prepareForDrawingPages:(_NSRange)pages ofSize:(CGSize)size;
- (void)provideCurrentPageAndVisibleRectWithCompletionHandler:(id)handler;
- (void)requestLockForCurrentItem;
- (void)shouldLockPreviewForUnsavedEdits:(BOOL)edits;
- (void)startFormFilling;
- (void)transitionDidStart:(BOOL)start;
- (void)transitionWillFinish:(BOOL)finish didComplete:(BOOL)complete;
- (void)updateContentFrame;
- (void)updatePreviewItemDisplayState:(id)state;
- (void)updateRemoteEdgePanGestureWidth;
- (void)updateStateRestorationWithUserInfo:(id)info;
- (void)viewDidLoad;
@end

@implementation QLPDFItemViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = QLPDFItemViewController;
  [(QLMarkupItemViewController *)&v6 viewDidLoad];
  v3 = +[UIColor _ql_markupBackgroundColor];
  view = [(QLPDFItemViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(QLPDFItemViewController *)self view];
  [view2 setClipsToBounds:1];
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  contentsCopy = contents;
  [(QLPDFItemViewController *)self _stopObservingCurrentPDFPageIndex];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008348;
  v13[3] = &unk_100024C80;
  v13[4] = self;
  v14 = handlerCopy;
  v12.receiver = self;
  v12.super_class = QLPDFItemViewController;
  v11 = handlerCopy;
  [(QLMarkupItemViewController *)&v12 loadPreviewControllerWithContents:contentsCopy context:contextCopy completionHandler:v13];
}

- (void)dealloc
{
  [(QLPDFItemViewController *)self _stopObservingCurrentPDFPageIndex];
  v3.receiver = self;
  v3.super_class = QLPDFItemViewController;
  [(QLPDFItemViewController *)&v3 dealloc];
}

- (void)_addDoubleTapGestureRecognizerIfNeeded
{
  if (_os_feature_enabled_impl())
  {
    v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_eatDoubleTapGesture:"];
    [v8 setNumberOfTapsRequired:2];
    delegate = [(QLPDFItemViewController *)self delegate];
    [v8 setDelegate:delegate];

    delegate2 = [(QLPDFItemViewController *)self delegate];
    tapGesture = [delegate2 tapGesture];
    [tapGesture requireGestureRecognizerToFail:v8];

    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    view = [markupViewController view];
    [view addGestureRecognizer:v8];
  }
}

- (void)_startObservingCurrentPDFPageIndex
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isObservingCurrentPDFPageIndex || ([(QLMarkupItemViewController *)selfCopy markupViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v3 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v3 = _qlsLogHandle;
    }

    v4 = v3;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      isObservingCurrentPDFPageIndex = selfCopy->_isObservingCurrentPDFPageIndex;
      markupViewController = [(QLMarkupItemViewController *)selfCopy markupViewController];
      v9[0] = 67109378;
      v9[1] = isObservingCurrentPDFPageIndex;
      v10 = 2112;
      v11 = markupViewController;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not starting the PDF page index observation for state restoration. Already observing: %d. Content editor: %@. #AnyItemViewController", v9, 0x12u);
    }
  }

  else
  {
    selfCopy->_isObservingCurrentPDFPageIndex = 1;
    markupViewController2 = [(QLMarkupItemViewController *)selfCopy markupViewController];
    [markupViewController2 addObserver:selfCopy forKeyPath:@"currentPDFPageIndex" options:1 context:&off_100024CA0];
  }

  objc_sync_exit(selfCopy);
}

- (void)_stopObservingCurrentPDFPageIndex
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_isObservingCurrentPDFPageIndex)
  {
    obj->_isObservingCurrentPDFPageIndex = 0;
    markupViewController = [(QLMarkupItemViewController *)obj markupViewController];
    [markupViewController removeObserver:obj forKeyPath:@"currentPDFPageIndex" context:&off_100024CA0];

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context != &off_100024CA0)
  {
    goto LABEL_6;
  }

  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  v14 = markupViewController;
  if (markupViewController != objectCopy)
  {

LABEL_6:
    v16.receiver = self;
    v16.super_class = QLPDFItemViewController;
    [(QLPDFItemViewController *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_7;
  }

  v15 = [pathCopy isEqualToString:@"currentPDFPageIndex"];

  if (!v15)
  {
    goto LABEL_6;
  }

  [(QLPDFItemViewController *)self _currentPDFPageChanged];
LABEL_7:
}

- (void)editDetectedForMarkupViewController:(id)controller shouldEnableMarkup:(BOOL)markup
{
  markupCopy = markup;
  controllerCopy = controller;
  v7.receiver = self;
  v7.super_class = QLPDFItemViewController;
  [(QLMarkupItemViewController *)&v7 editDetectedForMarkupViewController:controllerCopy shouldEnableMarkup:markupCopy & [(QLPDFItemViewController *)self _isPreviewingUnconvertedPDF]];
}

- (void)shouldLockPreviewForUnsavedEdits:(BOOL)edits
{
  editsCopy = edits;
  v6.receiver = self;
  v6.super_class = QLPDFItemViewController;
  [(QLMarkupItemViewController *)&v6 shouldLockPreviewForUnsavedEdits:?];
  if (editsCopy)
  {
    delegate = [(QLPDFItemViewController *)self delegate];
    [delegate previewItemViewControllerDidAcquireLock:self];
  }

  else
  {
    if (self->_isSearching)
    {
      return;
    }

    delegate = [(QLPDFItemViewController *)self delegate];
    [delegate previewItemViewControllerDidHandOverLock:self];
  }
}

- (void)editor:(id)editor needsScreenEdgePanGestureRecognition:(BOOL)recognition
{
  v4 = -1.0;
  if (recognition)
  {
    v4 = 8.0;
  }

  if (v4 != self->_edgePanGestureWidth)
  {
    self->_edgePanGestureWidth = v4;
    [(QLPDFItemViewController *)self updateRemoteEdgePanGestureWidth];
  }
}

- (void)updateRemoteEdgePanGestureWidth
{
  if (self->_isVisible)
  {
    delegate = [(QLPDFItemViewController *)self delegate];
    [(QLPDFItemViewController *)self edgePanGestureWidth];
    [delegate previewItemViewController:self wantsToSetRemoteEdgePanGestureWidth:?];
  }
}

- (void)notifyStateRestorationWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v5 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "State restoration: Notified state for PDF item view controller: %@ #AnyItemViewController", &v15, 0xCu);
  }

  v6 = [infoCopy objectForKey:@"QLStateRestorationItemUUIDKey"];
  _itemUUID = [(QLPDFItemViewController *)self _itemUUID];
  v8 = [v6 isEqual:_itemUUID];

  if (v8)
  {
    v9 = [infoCopy objectForKey:@"QLStateRestorationPDFPageKey"];
    integerValue = [v9 integerValue];
    if (integerValue >= 1)
    {
      v11 = integerValue;
      v12 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v12 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "State restoration: Restoring PDF page index: %ld #AnyItemViewController", &v15, 0xCu);
      }

      v13 = [NSNumber numberWithInteger:v11];
      restoredPDFPageIndex = self->_restoredPDFPageIndex;
      self->_restoredPDFPageIndex = v13;

      [(QLPDFItemViewController *)self applyRestoredPDFPageIndexIfPossible];
    }
  }
}

- (void)applyRestoredPDFPageIndexIfPossible
{
  if (self->_restoredPDFPageIndex)
  {
    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    contentViewController = [markupViewController contentViewController];

    if (contentViewController)
    {
      markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
      [markupViewController2 setCurrentPDFPageIndex:{-[NSNumber unsignedIntegerValue](self->_restoredPDFPageIndex, "unsignedIntegerValue")}];

      restoredPDFPageIndex = self->_restoredPDFPageIndex;
      self->_restoredPDFPageIndex = 0;
    }
  }
}

- (id)_itemUUID
{
  context = [(QLPDFItemViewController *)self context];
  item = [context item];
  fpItem = [item fpItem];

  if (fpItem)
  {
    previewItemURL = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [fpItem hash]);
    stringValue = [previewItemURL stringValue];
  }

  else
  {
    context2 = [(QLPDFItemViewController *)self context];
    item2 = [context2 item];
    previewItemURL = [item2 previewItemURL];

    if (previewItemURL)
    {
      absoluteString = [previewItemURL absoluteString];
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [absoluteString hash]);
      stringValue = [v11 stringValue];
    }

    else
    {
      stringValue = 0;
    }
  }

  return stringValue;
}

- (id)stateRestorationDictionary
{
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  if (markupViewController)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    _itemUUID = [(QLPDFItemViewController *)self _itemUUID];
    if (_itemUUID)
    {
      [v4 setValue:_itemUUID forKey:@"QLStateRestorationItemUUIDKey"];
      v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [markupViewController currentPDFPageIndex]);
      [v4 setValue:v6 forKey:@"QLStateRestorationPDFPageKey"];
    }
  }

  else
  {
    v7 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v7 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not saving the current state because there is no editor #AnyItemViewController", v9, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)updatePreviewItemDisplayState:(id)state
{
  v4 = [state objectForKey:@"QLStateRestorationPDFPageKey"];
  integerValue = [v4 integerValue];
  if (integerValue >= 1)
  {
    v6 = integerValue;
    v7 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v7 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updatePreviewItemDisplayState: Restoring PDF page index: %ld #AnyItemViewController", &v10, 0xCu);
    }

    v8 = [NSNumber numberWithInteger:v6];
    restoredPDFPageIndex = self->_restoredPDFPageIndex;
    self->_restoredPDFPageIndex = v8;

    self->_disablePageChangeNotifications = 1;
    [(QLPDFItemViewController *)self applyRestoredPDFPageIndexIfPossible];
    self->_disablePageChangeNotifications = 0;
  }
}

- (void)_currentPDFPageChanged
{
  if (!self->_disablePageChangeNotifications)
  {
    stateRestorationDictionary = [(QLPDFItemViewController *)self stateRestorationDictionary];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"updateStateRestorationWithUserInfo:" object:0];
    [(QLPDFItemViewController *)self performSelector:"updateStateRestorationWithUserInfo:" withObject:stateRestorationDictionary afterDelay:1.0];
    delegate = [(QLPDFItemViewController *)self delegate];
    [delegate previewItemViewController:self wantsToUpdatePreviewItemDisplayState:stateRestorationDictionary];
  }
}

- (void)updateStateRestorationWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v5 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "State restoration: Updating user info from throttle: %@ #AnyItemViewController", &v7, 0xCu);
  }

  delegate = [(QLPDFItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsToUpdateStateRestorationWithUserInfo:infoCopy];
}

- (UIEdgeInsets)customEdgeInsets
{
  appearance = [(QLPDFItemViewController *)self appearance];
  if ([appearance presentationMode] == 4)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    appearance2 = [(QLPDFItemViewController *)self appearance];
    [appearance2 peripheryInsets];
    top = v9;
    left = v10;
    bottom = v11;
    right = v12;
  }

  appearance3 = [(QLPDFItemViewController *)self appearance];
  [appearance3 topInset];
  v15 = v14;

  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  toolbar = [markupViewController toolbar];
  if ([toolbar isHidden])
  {
    appearance4 = [(QLPDFItemViewController *)self appearance];
    [appearance4 bottomInset];
    v20 = v19;

    if (bottom < v20)
    {
      bottom = v20;
    }
  }

  else
  {
    markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
    toolbar2 = [markupViewController2 toolbar];
    [toolbar2 frame];
    bottom = v23;
  }

  if (v15 >= top)
  {
    top = v15;
  }

  v24 = top;
  v25 = left;
  v26 = bottom;
  v27 = right;
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

- (UIEdgeInsets)customSketchOverlayInsets
{
  [(QLPDFItemViewController *)self customEdgeInsets];
  v6 = v5 + 3.0;
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v6;
  return result;
}

- (id)toolbarButtonsForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v21.receiver = self;
  v21.super_class = QLPDFItemViewController;
  v5 = [(QLMarkupItemViewController *)&v21 toolbarButtonsForTraitCollection:collectionCopy];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = +[NSMutableArray array];
  }

  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
    v10 = [markupViewController2 documentIsLocked] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  if (self->_isSearching)
  {
    v11 = 0;
  }

  else
  {
    markupViewController3 = [(QLMarkupItemViewController *)self markupViewController];
    findInteraction = [markupViewController3 findInteraction];
    if (findInteraction)
    {
      markupViewController4 = [(QLMarkupItemViewController *)self markupViewController];
      if ([markupViewController4 annotationEditingEnabled])
      {
        v11 = 0;
      }

      else
      {
        markupViewController5 = [(QLMarkupItemViewController *)self markupViewController];
        v11 = ([markupViewController5 formFillingEnabled] ^ 1) & v10;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  if ((v11 & 1) != 0 || horizontalSizeClass == 1)
  {
    v17 = [QLToolbarButton alloc];
    v18 = [v17 initWithIdentifier:QLSearchButtonIdentifier];
    [v18 setSymbolImageName:@"magnifyingglass"];
    v19 = QLLocalizedString();
    [v18 setTitle:v19];

    [v18 setPlacement:2];
    [v18 setForceToNavBar:_UIBarsDesktopNavigationBarEnabled() ^ 1];
    [v18 setAccessibilityIdentifier:QLPDFItemViewControllerBarSearchRightButtonAccessibilityIdentifier];
    [v18 setEnabled:v11];
    [v6 addObject:v18];
  }

  return v6;
}

- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy isEqualToString:QLSearchButtonIdentifier])
  {
    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    findInteraction = [markupViewController findInteraction];
    [findInteraction presentFindNavigatorShowingReplace:0];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else if ([identifierCopy isEqualToString:QLActionButtonIdentifier] && self->_isSearching)
  {
    [(QLPDFItemViewController *)self dismissSearchIfNeeded];
    [(QLMarkupItemViewController *)&v14 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy, v12.receiver, v12.super_class, v13.receiver, v13.super_class, self, QLPDFItemViewController];
  }

  else if ([identifierCopy isEqualToString:@"QLInlineMarkup"])
  {
    [(QLPDFItemViewController *)self dismissSearchIfNeeded];
    [(QLMarkupItemViewController *)&v13 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy, v12.receiver, v12.super_class, self, QLPDFItemViewController, v14.receiver, v14.super_class];
  }

  else
  {
    if (self->_isSearching)
    {
      markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
      findInteraction2 = [markupViewController2 findInteraction];
      [findInteraction2 dismissFindNavigator];
    }

    else
    {
      markupViewController2 = [(QLPDFItemViewController *)self view];
      [markupViewController2 endEditing:0];
    }

    [(QLMarkupItemViewController *)&v12 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy, self, QLPDFItemViewController, v13.receiver, v13.super_class, v14.receiver, v14.super_class];
  }
}

- (void)dismissSearchIfNeeded
{
  if (self->_isSearching)
  {
    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    findInteraction = [markupViewController findInteraction];
    [findInteraction dismissFindNavigator];
  }
}

- (BOOL)shouldDisplayAlternateEditButton
{
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  formFillingEnabled = [markupViewController formFillingEnabled];

  return formFillingEnabled;
}

- (void)transitionDidStart:(BOOL)start
{
  startCopy = start;
  v14.receiver = self;
  v14.super_class = QLPDFItemViewController;
  [(QLPDFItemViewController *)&v14 transitionDidStart:?];
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  contentViewScrollView = [markupViewController contentViewScrollView];
  panGestureRecognizer = [contentViewScrollView panGestureRecognizer];
  [panGestureRecognizer setEnabled:0];

  markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
  contentViewScrollView2 = [markupViewController2 contentViewScrollView];
  pinchGestureRecognizer = [contentViewScrollView2 pinchGestureRecognizer];
  [pinchGestureRecognizer setEnabled:0];

  if (startCopy)
  {
    v11 = +[UIColor clearColor];
    view = [(QLPDFItemViewController *)self view];
    [view setBackgroundColor:v11];

    [(QLPDFItemViewController *)self updateScrollViewContentOffset];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100009C10;
    v13[3] = &unk_100024A00;
    v13[4] = self;
    [UIView animateWithDuration:v13 animations:0.2];
  }
}

- (void)transitionWillFinish:(BOOL)finish didComplete:(BOOL)complete
{
  finishCopy = finish;
  v24.receiver = self;
  v24.super_class = QLPDFItemViewController;
  [QLPDFItemViewController transitionWillFinish:"transitionWillFinish:didComplete:" didComplete:?];
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  contentViewScrollView = [markupViewController contentViewScrollView];
  panGestureRecognizer = [contentViewScrollView panGestureRecognizer];
  [panGestureRecognizer setEnabled:1];

  markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
  contentViewScrollView2 = [markupViewController2 contentViewScrollView];
  pinchGestureRecognizer = [contentViewScrollView2 pinchGestureRecognizer];
  [pinchGestureRecognizer setEnabled:1];

  if (finishCopy)
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100009E3C;
    v22 = &unk_100024A00;
    selfCopy = self;
    v13 = &v19;
  }

  else
  {
    if (complete)
    {
      return;
    }

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100009EA8;
    v17 = &unk_100024A00;
    selfCopy2 = self;
    v13 = &v14;
  }

  [UIView animateWithDuration:v13 animations:0.2, v14, v15, v16, v17, selfCopy2, v19, v20, v21, v22, selfCopy];
}

- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  if (objc_opt_respondsToSelector())
  {
    markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
    v10 = [markupViewController2 acceptSingleTouch:touchCopy];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if (!self->_isSearching)
  {
    v13.receiver = self;
    v13.super_class = QLPDFItemViewController;
    v11 = [(QLMarkupItemViewController *)&v13 shouldAcceptTouch:touchCopy ofGestureRecognizer:recognizerCopy];
    goto LABEL_8;
  }

LABEL_6:
  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)canBeLocked
{
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  if (objc_opt_respondsToSelector())
  {
    canEncryptDocument = [markupViewController canEncryptDocument];
    v5 = 0;
    if ([(QLMarkupItemViewController *)self shouldAllowEditingContents]&& canEncryptDocument)
    {
      writeOptionsForSaving = [(QLMarkupItemViewController *)self writeOptionsForSaving];
      v5 = writeOptionsForSaving == 0;
    }
  }

  else
  {
    [(QLMarkupItemViewController *)self shouldAllowEditingContents];
    v5 = 0;
  }

  return v5;
}

- (BOOL)canShowToolBar
{
  v5.receiver = self;
  v5.super_class = QLPDFItemViewController;
  return [(QLMarkupItemViewController *)&v5 canShowToolBar]&& !self->_isSearching;
}

- (void)requestLockForCurrentItem
{
  delegate = [(QLPDFItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:1];

  v6 = objc_alloc_init(QLPDFPermissionViewController);
  [(QLPDFPermissionViewController *)v6 setDelegate:self];
  v4 = [[UINavigationController alloc] initWithRootViewController:v6];
  [v4 setModalPresentationStyle:2];
  presentationController = [v4 presentationController];
  [presentationController setDelegate:v6];

  [(QLPDFItemViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)scrollView
{
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  contentViewScrollView = [markupViewController contentViewScrollView];

  return contentViewScrollView;
}

- (void)numberOfPagesWithSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  [(QLPDFItemViewController *)self _setupPrintSessionWithSize:width, height];
  NumberOfPages = CGPDFDocumentGetNumberOfPages([(QLPrintSession *)self->_currentPrintSession pdfDocumentRef]);
  handlerCopy[2](handlerCopy, NumberOfPages);
}

- (void)prepareForDrawingPages:(_NSRange)pages ofSize:(CGSize)size
{
  if (!self->_currentPrintSession)
  {
    [(QLPDFItemViewController *)self _setupPrintSessionWithSize:pages.location, pages.length, size.width, size.height];
  }
}

- (void)pdfDataForPageAtIndex:(int64_t)index withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  QLRunInMainThreadSync();
}

- (void)provideCurrentPageAndVisibleRectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = handlerCopy;
  QLRunInMainThread();
}

- (void)_setupPrintSessionWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_opt_new();
  currentPrintSession = self->_currentPrintSession;
  self->_currentPrintSession = v6;

  contents = [(QLPDFItemViewController *)self contents];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data = [(QLPDFItemViewController *)self contents];
  }

  else
  {
    contents2 = [(QLPDFItemViewController *)self contents];
    data = [NSData dataWithContentsOfURL:contents2];
  }

  v10 = CGDataProviderCreateWithCFData(data);
  v11 = CGPDFDocumentCreateWithProvider(v10);
  [(QLPrintSession *)self->_currentPrintSession setDataProvider:v10];
  [(QLPrintSession *)self->_currentPrintSession setPdfDocumentRef:v11];
  [(QLPrintSession *)self->_currentPrintSession setPrintSize:width, height];
  CGPDFDocumentRelease(v11);
  CGDataProviderRelease(v10);
}

- (void)updateContentFrame
{
  v3.receiver = self;
  v3.super_class = QLPDFItemViewController;
  [(QLMarkupItemViewController *)&v3 updateContentFrame];
  [(QLPDFItemViewController *)self contentFrame];
  self->_isSearching;
  [(QLPDFItemViewController *)self setContentFrame:?];
}

- (void)_findSessionDidBeginNotification:(id)notification
{
  object = [notification object];
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  findInteraction = [markupViewController findInteraction];
  activeFindSession = [findInteraction activeFindSession];

  if (object == activeFindSession)
  {
    self->_isSearching = 1;

    [(QLPDFItemViewController *)self _findSessionDidChange];
  }
}

- (void)_findSessionDidEndNotification:(id)notification
{
  if (self->_isSearching)
  {
    object = [notification object];
    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    findInteraction = [markupViewController findInteraction];
    activeFindSession = [findInteraction activeFindSession];

    if (object == activeFindSession)
    {
      self->_isSearching = 0;

      [(QLPDFItemViewController *)self _findSessionDidChange];
    }
  }
}

- (void)_findSessionDidChange
{
  [(QLPDFItemViewController *)self updateContentFrame];
  isSearching = self->_isSearching;
  delegate = [(QLPDFItemViewController *)self delegate];
  v5 = delegate;
  if (isSearching)
  {
    [delegate previewItemViewControllerDidAcquireLock:self];
  }

  else
  {
    [delegate previewItemViewControllerDidHandOverLock:self];
  }

  delegate2 = [(QLPDFItemViewController *)self delegate];
  [delegate2 previewItemViewControllerWantsUpdateOverlay:self animated:0];

  delegate3 = [(QLPDFItemViewController *)self delegate];
  [delegate3 previewItemViewControllerWantsUpdateKeyCommands:self];
}

- (BOOL)needsToSaveChanges
{
  v4.receiver = self;
  v4.super_class = QLPDFItemViewController;
  if ([(QLMarkupItemViewController *)&v4 needsToSaveChanges])
  {
    return 1;
  }

  else
  {
    return [(QLPDFItemViewController *)self hasUnsavedPermissionChanges];
  }
}

- (void)permissionViewController:(id)controller didPickOptions:(id)options
{
  optionsCopy = options;
  delegate = [(QLPDFItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:0];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000ADE4;
  v8[3] = &unk_100024960;
  v8[4] = self;
  v9 = optionsCopy;
  v7 = optionsCopy;
  [(QLPDFItemViewController *)self dismissViewControllerAnimated:1 completion:v8];
}

- (void)permissionViewControllerWasCancelled:(id)cancelled
{
  delegate = [(QLPDFItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:0];

  [(QLPDFItemViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)canShowMarkupButton
{
  v5.receiver = self;
  v5.super_class = QLPDFItemViewController;
  canShowMarkupButton = [(QLMarkupItemViewController *)&v5 canShowMarkupButton];
  if (canShowMarkupButton)
  {
    LOBYTE(canShowMarkupButton) = [(QLPDFItemViewController *)self _isPreviewingUnconvertedPDF];
  }

  return canShowMarkupButton;
}

- (BOOL)_isPreviewingUnconvertedPDF
{
  context = [(QLPDFItemViewController *)self context];
  item = [context item];
  previewItemContentType = [item previewItemContentType];
  identifier = [UTTypePDF identifier];
  v6 = [previewItemContentType isEqualToString:identifier];

  return v6;
}

- (BOOL)canOfferFormFillingForOriginalDocument
{
  context = [(QLPDFItemViewController *)self context];
  contentType = [context contentType];

  if (_os_feature_enabled_impl())
  {
    v5 = contentType;
    v6 = ![v5 caseInsensitiveCompare:@"com.apple.iwork.pages.pages"] || !objc_msgSend(v5, "caseInsensitiveCompare:", @"com.apple.iwork.pages.sffpages") || !objc_msgSend(v5, "caseInsensitiveCompare:", @"com.apple.iwork.pages.template") || objc_msgSend(v5, "caseInsensitiveCompare:", @"com.apple.iwork.pages.sfftemplate") == 0;

    v7 = v5;
    if ([v7 caseInsensitiveCompare:@"com.microsoft.word.doc"])
    {
      v8 = [v7 caseInsensitiveCompare:@"com.microsoft.word.docx"];

      if (v8)
      {
        v9 = v6;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    _isPreviewingUnconvertedPDF = 1;
    goto LABEL_15;
  }

LABEL_12:
  _isPreviewingUnconvertedPDF = [(QLPDFItemViewController *)self _isPreviewingUnconvertedPDF];
LABEL_15:

  return _isPreviewingUnconvertedPDF;
}

- (void)startFormFilling
{
  [(QLPDFItemViewController *)self dismissSearchIfNeeded];
  v3.receiver = self;
  v3.super_class = QLPDFItemViewController;
  [(QLMarkupItemViewController *)&v3 startFormFilling];
}

@end