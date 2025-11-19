@interface QLPDFItemViewController
- (BOOL)_isPreviewingUnconvertedPDF;
- (BOOL)canBeLocked;
- (BOOL)canOfferFormFillingForOriginalDocument;
- (BOOL)canShowMarkupButton;
- (BOOL)canShowToolBar;
- (BOOL)needsToSaveChanges;
- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4;
- (BOOL)shouldDisplayAlternateEditButton;
- (UIEdgeInsets)customEdgeInsets;
- (UIEdgeInsets)customSketchOverlayInsets;
- (id)_itemUUID;
- (id)scrollView;
- (id)stateRestorationDictionary;
- (id)toolbarButtonsForTraitCollection:(id)a3;
- (void)_addDoubleTapGestureRecognizerIfNeeded;
- (void)_currentPDFPageChanged;
- (void)_findSessionDidBeginNotification:(id)a3;
- (void)_findSessionDidChange;
- (void)_findSessionDidEndNotification:(id)a3;
- (void)_setupPrintSessionWithSize:(CGSize)a3;
- (void)_startObservingCurrentPDFPageIndex;
- (void)_stopObservingCurrentPDFPageIndex;
- (void)applyRestoredPDFPageIndexIfPossible;
- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)dismissSearchIfNeeded;
- (void)editDetectedForMarkupViewController:(id)a3 shouldEnableMarkup:(BOOL)a4;
- (void)editor:(id)a3 needsScreenEdgePanGestureRecognition:(BOOL)a4;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)notifyStateRestorationWithUserInfo:(id)a3;
- (void)numberOfPagesWithSize:(CGSize)a3 completionHandler:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pdfDataForPageAtIndex:(int64_t)a3 withCompletionHandler:(id)a4;
- (void)permissionViewController:(id)a3 didPickOptions:(id)a4;
- (void)permissionViewControllerWasCancelled:(id)a3;
- (void)prepareForDrawingPages:(_NSRange)a3 ofSize:(CGSize)a4;
- (void)provideCurrentPageAndVisibleRectWithCompletionHandler:(id)a3;
- (void)requestLockForCurrentItem;
- (void)shouldLockPreviewForUnsavedEdits:(BOOL)a3;
- (void)startFormFilling;
- (void)transitionDidStart:(BOOL)a3;
- (void)transitionWillFinish:(BOOL)a3 didComplete:(BOOL)a4;
- (void)updateContentFrame;
- (void)updatePreviewItemDisplayState:(id)a3;
- (void)updateRemoteEdgePanGestureWidth;
- (void)updateStateRestorationWithUserInfo:(id)a3;
- (void)viewDidLoad;
@end

@implementation QLPDFItemViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = QLPDFItemViewController;
  [(QLMarkupItemViewController *)&v6 viewDidLoad];
  v3 = +[UIColor _ql_markupBackgroundColor];
  v4 = [(QLPDFItemViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(QLPDFItemViewController *)self view];
  [v5 setClipsToBounds:1];
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(QLPDFItemViewController *)self _stopObservingCurrentPDFPageIndex];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008348;
  v13[3] = &unk_100024C80;
  v13[4] = self;
  v14 = v8;
  v12.receiver = self;
  v12.super_class = QLPDFItemViewController;
  v11 = v8;
  [(QLMarkupItemViewController *)&v12 loadPreviewControllerWithContents:v10 context:v9 completionHandler:v13];
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
    v3 = [(QLPDFItemViewController *)self delegate];
    [v8 setDelegate:v3];

    v4 = [(QLPDFItemViewController *)self delegate];
    v5 = [v4 tapGesture];
    [v5 requireGestureRecognizerToFail:v8];

    v6 = [(QLMarkupItemViewController *)self markupViewController];
    v7 = [v6 view];
    [v7 addGestureRecognizer:v8];
  }
}

- (void)_startObservingCurrentPDFPageIndex
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_isObservingCurrentPDFPageIndex || ([(QLMarkupItemViewController *)v2 markupViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
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
      isObservingCurrentPDFPageIndex = v2->_isObservingCurrentPDFPageIndex;
      v6 = [(QLMarkupItemViewController *)v2 markupViewController];
      v9[0] = 67109378;
      v9[1] = isObservingCurrentPDFPageIndex;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not starting the PDF page index observation for state restoration. Already observing: %d. Content editor: %@. #AnyItemViewController", v9, 0x12u);
    }
  }

  else
  {
    v2->_isObservingCurrentPDFPageIndex = 1;
    v8 = [(QLMarkupItemViewController *)v2 markupViewController];
    [v8 addObserver:v2 forKeyPath:@"currentPDFPageIndex" options:1 context:&off_100024CA0];
  }

  objc_sync_exit(v2);
}

- (void)_stopObservingCurrentPDFPageIndex
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_isObservingCurrentPDFPageIndex)
  {
    obj->_isObservingCurrentPDFPageIndex = 0;
    v3 = [(QLMarkupItemViewController *)obj markupViewController];
    [v3 removeObserver:obj forKeyPath:@"currentPDFPageIndex" context:&off_100024CA0];

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 != &off_100024CA0)
  {
    goto LABEL_6;
  }

  v13 = [(QLMarkupItemViewController *)self markupViewController];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_6:
    v16.receiver = self;
    v16.super_class = QLPDFItemViewController;
    [(QLPDFItemViewController *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_7;
  }

  v15 = [v10 isEqualToString:@"currentPDFPageIndex"];

  if (!v15)
  {
    goto LABEL_6;
  }

  [(QLPDFItemViewController *)self _currentPDFPageChanged];
LABEL_7:
}

- (void)editDetectedForMarkupViewController:(id)a3 shouldEnableMarkup:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7.receiver = self;
  v7.super_class = QLPDFItemViewController;
  [(QLMarkupItemViewController *)&v7 editDetectedForMarkupViewController:v6 shouldEnableMarkup:v4 & [(QLPDFItemViewController *)self _isPreviewingUnconvertedPDF]];
}

- (void)shouldLockPreviewForUnsavedEdits:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = QLPDFItemViewController;
  [(QLMarkupItemViewController *)&v6 shouldLockPreviewForUnsavedEdits:?];
  if (v3)
  {
    v5 = [(QLPDFItemViewController *)self delegate];
    [v5 previewItemViewControllerDidAcquireLock:self];
  }

  else
  {
    if (self->_isSearching)
    {
      return;
    }

    v5 = [(QLPDFItemViewController *)self delegate];
    [v5 previewItemViewControllerDidHandOverLock:self];
  }
}

- (void)editor:(id)a3 needsScreenEdgePanGestureRecognition:(BOOL)a4
{
  v4 = -1.0;
  if (a4)
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
    v4 = [(QLPDFItemViewController *)self delegate];
    [(QLPDFItemViewController *)self edgePanGestureWidth];
    [v4 previewItemViewController:self wantsToSetRemoteEdgePanGestureWidth:?];
  }
}

- (void)notifyStateRestorationWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v5 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "State restoration: Notified state for PDF item view controller: %@ #AnyItemViewController", &v15, 0xCu);
  }

  v6 = [v4 objectForKey:@"QLStateRestorationItemUUIDKey"];
  v7 = [(QLPDFItemViewController *)self _itemUUID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v4 objectForKey:@"QLStateRestorationPDFPageKey"];
    v10 = [v9 integerValue];
    if (v10 >= 1)
    {
      v11 = v10;
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
    v3 = [(QLMarkupItemViewController *)self markupViewController];
    v4 = [v3 contentViewController];

    if (v4)
    {
      v5 = [(QLMarkupItemViewController *)self markupViewController];
      [v5 setCurrentPDFPageIndex:{-[NSNumber unsignedIntegerValue](self->_restoredPDFPageIndex, "unsignedIntegerValue")}];

      restoredPDFPageIndex = self->_restoredPDFPageIndex;
      self->_restoredPDFPageIndex = 0;
    }
  }
}

- (id)_itemUUID
{
  v3 = [(QLPDFItemViewController *)self context];
  v4 = [v3 item];
  v5 = [v4 fpItem];

  if (v5)
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 hash]);
    v7 = [v6 stringValue];
  }

  else
  {
    v8 = [(QLPDFItemViewController *)self context];
    v9 = [v8 item];
    v6 = [v9 previewItemURL];

    if (v6)
    {
      v10 = [v6 absoluteString];
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 hash]);
      v7 = [v11 stringValue];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)stateRestorationDictionary
{
  v3 = [(QLMarkupItemViewController *)self markupViewController];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [(QLPDFItemViewController *)self _itemUUID];
    if (v5)
    {
      [v4 setValue:v5 forKey:@"QLStateRestorationItemUUIDKey"];
      v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 currentPDFPageIndex]);
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

- (void)updatePreviewItemDisplayState:(id)a3
{
  v4 = [a3 objectForKey:@"QLStateRestorationPDFPageKey"];
  v5 = [v4 integerValue];
  if (v5 >= 1)
  {
    v6 = v5;
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
    v5 = [(QLPDFItemViewController *)self stateRestorationDictionary];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"updateStateRestorationWithUserInfo:" object:0];
    [(QLPDFItemViewController *)self performSelector:"updateStateRestorationWithUserInfo:" withObject:v5 afterDelay:1.0];
    v4 = [(QLPDFItemViewController *)self delegate];
    [v4 previewItemViewController:self wantsToUpdatePreviewItemDisplayState:v5];
  }
}

- (void)updateStateRestorationWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v5 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "State restoration: Updating user info from throttle: %@ #AnyItemViewController", &v7, 0xCu);
  }

  v6 = [(QLPDFItemViewController *)self delegate];
  [v6 previewItemViewController:self wantsToUpdateStateRestorationWithUserInfo:v4];
}

- (UIEdgeInsets)customEdgeInsets
{
  v3 = [(QLPDFItemViewController *)self appearance];
  if ([v3 presentationMode] == 4)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    v8 = [(QLPDFItemViewController *)self appearance];
    [v8 peripheryInsets];
    top = v9;
    left = v10;
    bottom = v11;
    right = v12;
  }

  v13 = [(QLPDFItemViewController *)self appearance];
  [v13 topInset];
  v15 = v14;

  v16 = [(QLMarkupItemViewController *)self markupViewController];
  v17 = [v16 toolbar];
  if ([v17 isHidden])
  {
    v18 = [(QLPDFItemViewController *)self appearance];
    [v18 bottomInset];
    v20 = v19;

    if (bottom < v20)
    {
      bottom = v20;
    }
  }

  else
  {
    v21 = [(QLMarkupItemViewController *)self markupViewController];
    v22 = [v21 toolbar];
    [v22 frame];
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

- (id)toolbarButtonsForTraitCollection:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = QLPDFItemViewController;
  v5 = [(QLMarkupItemViewController *)&v21 toolbarButtonsForTraitCollection:v4];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = +[NSMutableArray array];
  }

  v7 = [(QLMarkupItemViewController *)self markupViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(QLMarkupItemViewController *)self markupViewController];
    v10 = [v9 documentIsLocked] ^ 1;
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
    v12 = [(QLMarkupItemViewController *)self markupViewController];
    v13 = [v12 findInteraction];
    if (v13)
    {
      v14 = [(QLMarkupItemViewController *)self markupViewController];
      if ([v14 annotationEditingEnabled])
      {
        v11 = 0;
      }

      else
      {
        v15 = [(QLMarkupItemViewController *)self markupViewController];
        v11 = ([v15 formFillingEnabled] ^ 1) & v10;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v16 = [v4 horizontalSizeClass];
  if ((v11 & 1) != 0 || v16 == 1)
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

- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:QLSearchButtonIdentifier])
  {
    v8 = [(QLMarkupItemViewController *)self markupViewController];
    v9 = [v8 findInteraction];
    [v9 presentFindNavigatorShowingReplace:0];

    if (v7)
    {
      v7[2](v7);
    }
  }

  else if ([v6 isEqualToString:QLActionButtonIdentifier] && self->_isSearching)
  {
    [(QLPDFItemViewController *)self dismissSearchIfNeeded];
    [(QLMarkupItemViewController *)&v14 buttonPressedWithIdentifier:v6 completionHandler:v7, v12.receiver, v12.super_class, v13.receiver, v13.super_class, self, QLPDFItemViewController];
  }

  else if ([v6 isEqualToString:@"QLInlineMarkup"])
  {
    [(QLPDFItemViewController *)self dismissSearchIfNeeded];
    [(QLMarkupItemViewController *)&v13 buttonPressedWithIdentifier:v6 completionHandler:v7, v12.receiver, v12.super_class, self, QLPDFItemViewController, v14.receiver, v14.super_class];
  }

  else
  {
    if (self->_isSearching)
    {
      v10 = [(QLMarkupItemViewController *)self markupViewController];
      v11 = [v10 findInteraction];
      [v11 dismissFindNavigator];
    }

    else
    {
      v10 = [(QLPDFItemViewController *)self view];
      [v10 endEditing:0];
    }

    [(QLMarkupItemViewController *)&v12 buttonPressedWithIdentifier:v6 completionHandler:v7, self, QLPDFItemViewController, v13.receiver, v13.super_class, v14.receiver, v14.super_class];
  }
}

- (void)dismissSearchIfNeeded
{
  if (self->_isSearching)
  {
    v4 = [(QLMarkupItemViewController *)self markupViewController];
    v3 = [v4 findInteraction];
    [v3 dismissFindNavigator];
  }
}

- (BOOL)shouldDisplayAlternateEditButton
{
  v2 = [(QLMarkupItemViewController *)self markupViewController];
  v3 = [v2 formFillingEnabled];

  return v3;
}

- (void)transitionDidStart:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = QLPDFItemViewController;
  [(QLPDFItemViewController *)&v14 transitionDidStart:?];
  v5 = [(QLMarkupItemViewController *)self markupViewController];
  v6 = [v5 contentViewScrollView];
  v7 = [v6 panGestureRecognizer];
  [v7 setEnabled:0];

  v8 = [(QLMarkupItemViewController *)self markupViewController];
  v9 = [v8 contentViewScrollView];
  v10 = [v9 pinchGestureRecognizer];
  [v10 setEnabled:0];

  if (v3)
  {
    v11 = +[UIColor clearColor];
    v12 = [(QLPDFItemViewController *)self view];
    [v12 setBackgroundColor:v11];

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

- (void)transitionWillFinish:(BOOL)a3 didComplete:(BOOL)a4
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = QLPDFItemViewController;
  [QLPDFItemViewController transitionWillFinish:"transitionWillFinish:didComplete:" didComplete:?];
  v7 = [(QLMarkupItemViewController *)self markupViewController];
  v8 = [v7 contentViewScrollView];
  v9 = [v8 panGestureRecognizer];
  [v9 setEnabled:1];

  v10 = [(QLMarkupItemViewController *)self markupViewController];
  v11 = [v10 contentViewScrollView];
  v12 = [v11 pinchGestureRecognizer];
  [v12 setEnabled:1];

  if (v5)
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100009E3C;
    v22 = &unk_100024A00;
    v23 = self;
    v13 = &v19;
  }

  else
  {
    if (a4)
    {
      return;
    }

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100009EA8;
    v17 = &unk_100024A00;
    v18 = self;
    v13 = &v14;
  }

  [UIView animateWithDuration:v13 animations:0.2, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23];
}

- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(QLMarkupItemViewController *)self markupViewController];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(QLMarkupItemViewController *)self markupViewController];
    v10 = [v9 acceptSingleTouch:v6];

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
    v11 = [(QLMarkupItemViewController *)&v13 shouldAcceptTouch:v6 ofGestureRecognizer:v7];
    goto LABEL_8;
  }

LABEL_6:
  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)canBeLocked
{
  v3 = [(QLMarkupItemViewController *)self markupViewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 canEncryptDocument];
    v5 = 0;
    if ([(QLMarkupItemViewController *)self shouldAllowEditingContents]&& v4)
    {
      v6 = [(QLMarkupItemViewController *)self writeOptionsForSaving];
      v5 = v6 == 0;
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
  v3 = [(QLPDFItemViewController *)self delegate];
  [v3 previewItemViewController:self wantsFullScreen:1];

  v6 = objc_alloc_init(QLPDFPermissionViewController);
  [(QLPDFPermissionViewController *)v6 setDelegate:self];
  v4 = [[UINavigationController alloc] initWithRootViewController:v6];
  [v4 setModalPresentationStyle:2];
  v5 = [v4 presentationController];
  [v5 setDelegate:v6];

  [(QLPDFItemViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)scrollView
{
  v2 = [(QLMarkupItemViewController *)self markupViewController];
  v3 = [v2 contentViewScrollView];

  return v3;
}

- (void)numberOfPagesWithSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  [(QLPDFItemViewController *)self _setupPrintSessionWithSize:width, height];
  NumberOfPages = CGPDFDocumentGetNumberOfPages([(QLPrintSession *)self->_currentPrintSession pdfDocumentRef]);
  v8[2](v8, NumberOfPages);
}

- (void)prepareForDrawingPages:(_NSRange)a3 ofSize:(CGSize)a4
{
  if (!self->_currentPrintSession)
  {
    [(QLPDFItemViewController *)self _setupPrintSessionWithSize:a3.location, a3.length, a4.width, a4.height];
  }
}

- (void)pdfDataForPageAtIndex:(int64_t)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v4 = v5;
  QLRunInMainThreadSync();
}

- (void)provideCurrentPageAndVisibleRectWithCompletionHandler:(id)a3
{
  v4 = a3;
  v3 = v4;
  QLRunInMainThread();
}

- (void)_setupPrintSessionWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_opt_new();
  currentPrintSession = self->_currentPrintSession;
  self->_currentPrintSession = v6;

  v8 = [(QLPDFItemViewController *)self contents];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data = [(QLPDFItemViewController *)self contents];
  }

  else
  {
    v9 = [(QLPDFItemViewController *)self contents];
    data = [NSData dataWithContentsOfURL:v9];
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

- (void)_findSessionDidBeginNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(QLMarkupItemViewController *)self markupViewController];
  v6 = [v5 findInteraction];
  v7 = [v6 activeFindSession];

  if (v4 == v7)
  {
    self->_isSearching = 1;

    [(QLPDFItemViewController *)self _findSessionDidChange];
  }
}

- (void)_findSessionDidEndNotification:(id)a3
{
  if (self->_isSearching)
  {
    v4 = [a3 object];
    v5 = [(QLMarkupItemViewController *)self markupViewController];
    v6 = [v5 findInteraction];
    v7 = [v6 activeFindSession];

    if (v4 == v7)
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
  v4 = [(QLPDFItemViewController *)self delegate];
  v5 = v4;
  if (isSearching)
  {
    [v4 previewItemViewControllerDidAcquireLock:self];
  }

  else
  {
    [v4 previewItemViewControllerDidHandOverLock:self];
  }

  v6 = [(QLPDFItemViewController *)self delegate];
  [v6 previewItemViewControllerWantsUpdateOverlay:self animated:0];

  v7 = [(QLPDFItemViewController *)self delegate];
  [v7 previewItemViewControllerWantsUpdateKeyCommands:self];
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

- (void)permissionViewController:(id)a3 didPickOptions:(id)a4
{
  v5 = a4;
  v6 = [(QLPDFItemViewController *)self delegate];
  [v6 previewItemViewController:self wantsFullScreen:0];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000ADE4;
  v8[3] = &unk_100024960;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(QLPDFItemViewController *)self dismissViewControllerAnimated:1 completion:v8];
}

- (void)permissionViewControllerWasCancelled:(id)a3
{
  v4 = [(QLPDFItemViewController *)self delegate];
  [v4 previewItemViewController:self wantsFullScreen:0];

  [(QLPDFItemViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)canShowMarkupButton
{
  v5.receiver = self;
  v5.super_class = QLPDFItemViewController;
  v3 = [(QLMarkupItemViewController *)&v5 canShowMarkupButton];
  if (v3)
  {
    LOBYTE(v3) = [(QLPDFItemViewController *)self _isPreviewingUnconvertedPDF];
  }

  return v3;
}

- (BOOL)_isPreviewingUnconvertedPDF
{
  v2 = [(QLPDFItemViewController *)self context];
  v3 = [v2 item];
  v4 = [v3 previewItemContentType];
  v5 = [UTTypePDF identifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)canOfferFormFillingForOriginalDocument
{
  v3 = [(QLPDFItemViewController *)self context];
  v4 = [v3 contentType];

  if (_os_feature_enabled_impl())
  {
    v5 = v4;
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

    v10 = 1;
    goto LABEL_15;
  }

LABEL_12:
  v10 = [(QLPDFItemViewController *)self _isPreviewingUnconvertedPDF];
LABEL_15:

  return v10;
}

- (void)startFormFilling
{
  [(QLPDFItemViewController *)self dismissSearchIfNeeded];
  v3.receiver = self;
  v3.super_class = QLPDFItemViewController;
  [(QLMarkupItemViewController *)&v3 startFormFilling];
}

@end