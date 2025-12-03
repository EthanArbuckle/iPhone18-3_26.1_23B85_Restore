@interface WKWebView
- (BOOL)be_hasCompletedLoad;
- (BOOL)be_hasPendingOperations;
- (BOOL)be_hasSelectablePositionAtPoint:(CGPoint)point;
- (BOOL)be_hasSelection;
- (BOOL)be_isFontRegistered:(id)registered;
- (BOOL)be_isHorizontalScroll;
- (BOOL)be_requiresReload;
- (CGPoint)be_convertPointFromContentsToView:(CGPoint)view;
- (NSArray)be_fontFamiliesHavingFailedRegistration;
- (NSArray)be_selectionRects;
- (NSArray)be_webSelectionRects;
- (NSString)be_logDescription;
- (NSString)be_selectedText;
- (UIWKInteractionViewProtocol)be_textInputChild;
- (double)be_gutterLength;
- (double)be_scale;
- (double)be_scrollingPageHeight;
- (double)be_scrollingPageWidth;
- (id)_be_contentViewStateDescriptionForState:(int)state;
- (id)_be_failedFontFamilies;
- (id)be_updateAXValueForMessage:(id)message;
- (int)be_contentViewState;
- (int64_t)be_paginationMode;
- (unint64_t)be_appliedContentBlockingRule;
- (void)_invalidStateTransition:(id)transition;
- (void)be_applyRequestedContentOffset;
- (void)be_clearRegisteredFonts;
- (void)be_clearSelection;
- (void)be_completedLoad;
- (void)be_configureFontWithStyleManager:(id)manager completion:(id)completion;
- (void)be_discardingContentView;
- (void)be_evaluateJavaScript:(id)script afterNextPresentationUpdate:(BOOL)update completion:(id)completion;
- (void)be_failedLoad;
- (void)be_fontFamilyFailedToRegister:(id)register;
- (void)be_fontFamilySuccessfullyRegistered:(id)registered;
- (void)be_fontRegistrationCompleted:(BOOL)completed;
- (void)be_paginationOperationCanceled;
- (void)be_prepareForLoad;
- (void)be_prepareForReload;
- (void)be_preparingForReuse;
- (void)be_processingContentViewForHost;
- (void)be_returningContentViewToPool;
- (void)be_selectForWebView:(id)view;
- (void)be_setContentOffset:(CGPoint)offset bypassingJS:(BOOL)s completion:(id)completion;
- (void)be_takeSnapshotWithDefaultConfigurationCompletion:(id)completion;
- (void)be_updateAXCurrentReadingStateWithMessage:(id)message forValue:(id)value;
- (void)be_willAttemptFontRegistration;
- (void)be_willAttemptLoad:(id)load;
- (void)be_willFullyConfigure;
- (void)be_willLoadAboutBlank;
- (void)be_willProcessDeferredFontRegistration;
- (void)be_willSkipLoad;
- (void)setBe_appliedContentBlockingRule:(unint64_t)rule;
- (void)setBe_contentViewState:(int)state;
- (void)setBe_gutterLength:(double)length;
- (void)setBe_hasCompletedLoad:(BOOL)load;
- (void)setBe_hasPendingOperations:(BOOL)operations;
- (void)setBe_isHorizontalScroll:(BOOL)scroll;
- (void)setBe_paginationMode:(int64_t)mode;
- (void)setBe_requiresReload:(BOOL)reload;
@end

@implementation WKWebView

- (id)_be_contentViewStateDescriptionForState:(int)state
{
  if (state > 0xE)
  {
    return @"unknown";
  }

  else
  {
    return off_328CC0[state];
  }
}

- (void)setBe_contentViewState:(int)state
{
  v3 = *&state;
  be_contentViewState = [(WKWebView *)self be_contentViewState];
  v6 = _BookEPUBLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    be_identifier = [(WKWebView *)self be_identifier];
    v8 = [(WKWebView *)self _be_contentViewStateDescriptionForState:be_contentViewState];
    v9 = [(WKWebView *)self _be_contentViewStateDescriptionForState:v3];
    v10 = [(WKWebView *)self URL];
    v12 = 138544386;
    v13 = be_identifier;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Transitioning webView:%{public}@ #webViewState from:%{public}@ to:%{public}@ for url:%{mask.hash}@", &v12, 0x34u);
  }

  v11 = [NSNumber numberWithUnsignedInt:v3];
  objc_setAssociatedObject(self, "be_contentViewState", v11, &dword_0 + 1);
}

- (int)be_contentViewState
{
  v2 = objc_getAssociatedObject(self, "be_contentViewState");
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_invalidStateTransition:(id)transition
{
  transitionCopy = transition;
  be_contentViewState = [(WKWebView *)self be_contentViewState];
  v6 = _BookEPUBLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    be_identifier = [(WKWebView *)self be_identifier];
    v8 = [(WKWebView *)self _be_contentViewStateDescriptionForState:be_contentViewState];
    v9 = 138543874;
    v10 = be_identifier;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = transitionCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Error Transitioning webView:%{public}@ #webViewState from:%{public}@ in Method:%{public}@", &v9, 0x20u);
  }
}

- (void)be_willAttemptFontRegistration
{
  be_contentViewState = [(WKWebView *)self be_contentViewState];
  if (be_contentViewState > 0xB || ((1 << be_contentViewState) & 0x991) == 0)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_willAttemptFontRegistration"];
  }

  [(WKWebView *)self setBe_contentViewState:5];
}

- (void)be_fontRegistrationCompleted:(BOOL)completed
{
  if (([(WKWebView *)self be_contentViewState]& 0xFFFFFFFE) != 4)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_fontRegistrationCompleted"];
  }

  [(WKWebView *)self setBe_contentViewState:6];
}

- (void)be_willSkipLoad
{
  be_contentViewState = [(WKWebView *)self be_contentViewState];
  if (be_contentViewState > 0xD || ((1 << be_contentViewState) & 0x2840) == 0)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_willSkipLoad"];
  }

  [(WKWebView *)self setBe_contentViewState:10];
}

- (void)be_willAttemptLoad:(id)load
{
  loadCopy = load;
  if ([(WKWebView *)self be_contentViewState]== 8)
  {
    v5 = _BookEPUBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      be_identifier = [(WKWebView *)self be_identifier];
      v7 = 138543618;
      v8 = be_identifier;
      v9 = 2114;
      v10 = loadCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "#webViewState webView:%{public}@ attempting load of:%{public}@", &v7, 0x16u);
    }
  }

  else
  {
    [(WKWebView *)self _invalidStateTransition:@"be_willAttemptLoad"];
  }

  [(WKWebView *)self setBe_contentViewState:9];
}

- (void)be_completedLoad
{
  v3 = [(WKWebView *)self be_contentViewState]- 2;
  if (v3 < 9 && ((0x183u >> v3) & 1) != 0)
  {
    v4 = dword_295D10[v3];
  }

  else
  {
    [(WKWebView *)self _invalidStateTransition:@"be_completedLoad"];
    v4 = 11;
  }

  [(WKWebView *)self setBe_contentViewState:v4];
}

- (void)be_paginationOperationCanceled
{
  be_contentViewState = [(WKWebView *)self be_contentViewState];
  if (be_contentViewState > 0xE)
  {
    goto LABEL_9;
  }

  if (((1 << be_contentViewState) & 0x40EE) != 0)
  {
    return;
  }

  if (((1 << be_contentViewState) & 0x3C00) == 0)
  {
    if (be_contentViewState == 9)
    {
      [(WKWebView *)self stopLoading];
      goto LABEL_4;
    }

LABEL_9:
    [(WKWebView *)self _invalidStateTransition:@"be_paginationOperationCanceled"];
  }

LABEL_4:

  [(WKWebView *)self setBe_contentViewState:13];
}

- (void)be_failedLoad
{
  if (([(WKWebView *)self be_contentViewState]| 4) == 0xD)
  {

    [(WKWebView *)self setBe_contentViewState:12];
  }

  else
  {

    [(WKWebView *)self _invalidStateTransition:@"be_failedLoad"];
  }
}

- (void)be_preparingForReuse
{
  be_contentViewState = [(WKWebView *)self be_contentViewState];
  if (be_contentViewState - 8 >= 6 && be_contentViewState != 6)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_preparingForReuse"];
  }

  [(WKWebView *)self setBe_contentViewState:1];
}

- (void)be_willLoadAboutBlank
{
  if ([(WKWebView *)self be_contentViewState]!= 1)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_willLoadAboutBlank"];
  }

  [(WKWebView *)self setBe_contentViewState:2];
}

- (void)be_processingContentViewForHost
{
  if ([(WKWebView *)self be_contentViewState]!= 3)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_processingContentViewForHost"];
  }

  [(WKWebView *)self setBe_contentViewState:4];
}

- (void)be_returningContentViewToPool
{
  if ([(WKWebView *)self be_contentViewState]!= 3)
  {

    [(WKWebView *)self _invalidStateTransition:@"be_returningContentViewToPool"];
  }
}

- (void)be_discardingContentView
{
  if ([(WKWebView *)self be_contentViewState]!= 3)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_discardingContentView"];
  }

  [(WKWebView *)self setBe_contentViewState:14];
}

- (void)be_prepareForLoad
{
  be_contentViewState = [(WKWebView *)self be_contentViewState];
  if (be_contentViewState > 0xD || ((1 << be_contentViewState) & 0x3940) == 0)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_prepareForLoad"];
  }

  [(WKWebView *)self setBe_contentViewState:8];
}

- (void)be_prepareForReload
{
  be_contentViewState = [(WKWebView *)self be_contentViewState];
  if (be_contentViewState > 0xB || ((1 << be_contentViewState) & 0xB40) == 0)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_prepareForLoad"];
  }

  [(WKWebView *)self setBe_contentViewState:8];
}

- (void)be_willFullyConfigure
{
  be_contentViewState = [(WKWebView *)self be_contentViewState];
  if (be_contentViewState - 10 >= 4)
  {
    if (be_contentViewState == 5)
    {
      return;
    }

    if (be_contentViewState != 6)
    {
      [(WKWebView *)self _invalidStateTransition:@"be_willFullyConfigure"];
    }
  }

  [(WKWebView *)self setBe_contentViewState:7];
}

- (void)be_willProcessDeferredFontRegistration
{
  if (([(WKWebView *)self be_contentViewState]& 0xFFFFFFFE) != 6)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_willProcessDeferredFontRegistration"];
  }

  [(WKWebView *)self setBe_contentViewState:7];
}

- (void)setBe_paginationMode:(int64_t)mode
{
  if ((mode - 1) >= 4)
  {
    mode = 0;
  }

  [(WKWebView *)self _setPaginationMode:mode];
}

- (int64_t)be_paginationMode
{
  result = [(WKWebView *)self _paginationMode];
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

- (CGPoint)be_convertPointFromContentsToView:(CGPoint)view
{
  [(WKWebView *)self _convertPointFromContentsToView:view.x, view.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setBe_gutterLength:(double)length
{
  v4 = [NSNumber numberWithDouble:length];
  objc_setAssociatedObject(self, "be_gutterLength", v4, &dword_0 + 1);
}

- (double)be_gutterLength
{
  v2 = objc_getAssociatedObject(self, "be_gutterLength");
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setBe_isHorizontalScroll:(BOOL)scroll
{
  v4 = [NSNumber numberWithBool:scroll];
  objc_setAssociatedObject(self, "be_isHorizontalScroll", v4, &dword_0 + 1);
}

- (BOOL)be_isHorizontalScroll
{
  v2 = objc_getAssociatedObject(self, "be_isHorizontalScroll");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setBe_appliedContentBlockingRule:(unint64_t)rule
{
  v4 = [NSNumber numberWithUnsignedInteger:rule];
  objc_setAssociatedObject(self, "be_appliedContentBlockingRule", v4, &dword_0 + 1);
}

- (unint64_t)be_appliedContentBlockingRule
{
  v2 = objc_getAssociatedObject(self, "be_appliedContentBlockingRule");
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)be_scrollingPageWidth
{
  _paginationMode = [(WKWebView *)self _paginationMode];
  if (_paginationMode > 4)
  {
    return 0.0;
  }

  if (((1 << _paginationMode) & 0x19) != 0)
  {
    [(WKWebView *)self bounds];

    return CGRectGetWidth(*&v4);
  }

  else
  {

    [(WKWebView *)self _pageLength];
  }

  return result;
}

- (double)be_scrollingPageHeight
{
  _paginationMode = [(WKWebView *)self _paginationMode];
  if (_paginationMode >= 3)
  {
    if ((_paginationMode - 3) > 1)
    {
      return 0.0;
    }

    else
    {

      [(WKWebView *)self _pageLength];
    }
  }

  else
  {
    [(WKWebView *)self bounds];

    return CGRectGetHeight(*&v4);
  }

  return result;
}

- (double)be_scale
{
  objc_opt_class();
  v2 = BUDynamicCast();
  v3 = v2;
  if (v2)
  {
    [v2 be_initialScale];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (NSString)be_logDescription
{
  v3 = objc_opt_class();
  v18 = NSStringFromClass(v3);
  be_identifier = [(WKWebView *)self be_identifier];
  v19 = [(WKWebView *)self URL];
  absoluteString = [v19 absoluteString];
  scrollView = [(WKWebView *)self scrollView];
  [scrollView contentOffset];
  v21[0] = v7;
  v21[1] = v8;
  v9 = [NSValue valueWithBytes:v21 objCType:"{CGPoint=dd}"];
  be_requestedContentOffset = [(WKWebView *)self be_requestedContentOffset];
  scrollView2 = [(WKWebView *)self scrollView];
  [scrollView2 contentSize];
  v20[0] = v12;
  v20[1] = v13;
  v14 = [NSValue valueWithBytes:v20 objCType:"{CGSize=dd}"];
  be_estimatedContentSizeValue = [(WKWebView *)self be_estimatedContentSizeValue];
  v16 = [NSString stringWithFormat:@"<%@: %@> url: %@\n\tcontentOffset: %@ requestedOffset: %@\n\tcontentSize: %@ estimatedSize: %@", v18, be_identifier, absoluteString, v9, be_requestedContentOffset, v14, be_estimatedContentSizeValue];

  return v16;
}

- (BOOL)be_hasPendingOperations
{
  v2 = objc_getAssociatedObject(self, "be_hasPendingOperations");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setBe_hasPendingOperations:(BOOL)operations
{
  operationsCopy = operations;
  v5 = NSStringFromSelector("be_hasPendingOperations");
  [(WKWebView *)self willChangeValueForKey:v5];

  v6 = [NSNumber numberWithBool:operationsCopy];
  objc_setAssociatedObject(self, "be_hasPendingOperations", v6, &dword_0 + 1);

  v7 = NSStringFromSelector("be_hasPendingOperations");
  [(WKWebView *)self didChangeValueForKey:v7];
}

- (void)be_setContentOffset:(CGPoint)offset bypassingJS:(BOOL)s completion:(id)completion
{
  sCopy = s;
  y = offset.y;
  x = offset.x;
  completionCopy = completion;
  *v26 = x;
  *&v26[1] = y;
  v10 = [NSValue valueWithBytes:v26 objCType:"{CGPoint=dd}"];
  [(WKWebView *)self setBe_requestedContentOffset:v10];

  v11 = [NSNumber numberWithBool:sCopy];
  [(WKWebView *)self setBe_requestedContentOffsetShouldBypassJS:v11];

  scrollView = [(WKWebView *)self scrollView];
  [(WKWebView *)self convertPoint:scrollView fromView:x, y];
  [(WKWebView *)self _convertPointFromViewToContents:?];
  v14 = v13;
  v16 = v15;

  scrollView2 = [(WKWebView *)self scrollView];
  [scrollView2 setContentOffset:{x, y}];

  if (sCopy)
  {
    v18 = objc_retainBlock(completionCopy);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }

  else
  {
    v20 = [NSNumber numberWithDouble:v14];
    v21 = [NSNumber numberWithDouble:v16];
    v19 = [NSString stringWithFormat:@"window.scrollTo(%@, %@)", v20, v21];;

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_208BC;
    v22[3] = &unk_328C28;
    v22[4] = self;
    v24 = x;
    v25 = y;
    v23 = completionCopy;
    [(WKWebView *)self evaluateJavaScript:v19 completionHandler:v22];
  }
}

- (void)be_applyRequestedContentOffset
{
  be_requestedContentOffset = [(WKWebView *)self be_requestedContentOffset];
  be_requestedContentOffsetShouldBypassJS = [(WKWebView *)self be_requestedContentOffsetShouldBypassJS];
  bOOLValue = [be_requestedContentOffsetShouldBypassJS BOOLValue];

  if (be_requestedContentOffset)
  {
    [be_requestedContentOffset CGPointValue];
    v7 = v6;
    v9 = v8;
    y = CGPointZero.y;
    scrollView = [(WKWebView *)self scrollView];
    [scrollView contentSize];
    v13 = v12;
    v15 = v14;

    v28.origin.x = CGPointZero.x;
    v28.origin.y = y;
    v28.size.width = v13;
    v28.size.height = v15;
    v27.x = v7;
    v27.y = v9;
    if (CGRectContainsPoint(v28, v27))
    {
      [(WKWebView *)self be_setContentOffset:bOOLValue bypassingJS:v7, v9];
      [(WKWebView *)self setBe_requestedContentOffset:0];
      [(WKWebView *)self setBe_requestedContentOffsetShouldBypassJS:0];
    }

    else
    {
      v16 = _BookEPUBLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        be_identifier = [(WKWebView *)self be_identifier];
        v29.origin.x = CGPointZero.x;
        v29.origin.y = y;
        v29.size.width = v13;
        v29.size.height = v15;
        v18 = NSStringFromCGRect(v29);
        v26.x = v7;
        v26.y = v9;
        v19 = NSStringFromCGPoint(v26);
        v20 = 138543874;
        v21 = be_identifier;
        v22 = 2114;
        v23 = v18;
        v24 = 2114;
        v25 = v19;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "be_applyRequestedContentOffset - contentSizeRect: WebView: %{public}@ %{public}@ does not contain %{public}@.  Skipping..", &v20, 0x20u);
      }
    }
  }
}

- (BOOL)be_hasCompletedLoad
{
  v2 = objc_getAssociatedObject(self, "be_hasCompletedLoad");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setBe_hasCompletedLoad:(BOOL)load
{
  loadCopy = load;
  v5 = NSStringFromSelector("be_hasCompletedLoad");
  [(WKWebView *)self willChangeValueForKey:v5];

  v6 = [NSNumber numberWithBool:loadCopy];
  objc_setAssociatedObject(self, "be_hasCompletedLoad", v6, &dword_0 + 1);

  v7 = NSStringFromSelector("be_hasCompletedLoad");
  [(WKWebView *)self didChangeValueForKey:v7];
}

- (BOOL)be_requiresReload
{
  v2 = objc_getAssociatedObject(self, "be_requiresReload");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setBe_requiresReload:(BOOL)reload
{
  reloadCopy = reload;
  v5 = NSStringFromSelector("be_requiresReload");
  [(WKWebView *)self willChangeValueForKey:v5];

  v6 = [NSNumber numberWithBool:reloadCopy];
  objc_setAssociatedObject(self, "be_requiresReload", v6, &dword_0 + 1);

  v7 = NSStringFromSelector("be_requiresReload");
  [(WKWebView *)self didChangeValueForKey:v7];
}

- (NSArray)be_fontFamiliesHavingFailedRegistration
{
  _be_failedFontFamilies = [(WKWebView *)self _be_failedFontFamilies];
  allObjects = [_be_failedFontFamilies allObjects];

  return allObjects;
}

- (id)_be_failedFontFamilies
{
  v3 = objc_getAssociatedObject(self, "_be_failedFontFamilies");
  if (!v3)
  {
    v3 = objc_alloc_init(NSMutableSet);
    objc_setAssociatedObject(self, "_be_failedFontFamilies", v3, &dword_0 + 1);
  }

  return v3;
}

- (void)be_fontFamilyFailedToRegister:(id)register
{
  registerCopy = register;
  v5 = [registerCopy length];
  v6 = _BookEPUBLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = registerCopy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "be_fontFamilyFailedToRegister #staleCache failing '%@'", &v10, 0xCu);
    }

    v8 = NSStringFromSelector("be_fontFamiliesHavingFailedRegistration");
    [(WKWebView *)self willChangeValueForKey:v8];

    _be_failedFontFamilies = [(WKWebView *)self _be_failedFontFamilies];
    [_be_failedFontFamilies addObject:registerCopy];

    v6 = NSStringFromSelector("be_fontFamiliesHavingFailedRegistration");
    [(WKWebView *)self didChangeValueForKey:v6];
  }

  else if (v7)
  {
    v10 = 138412290;
    v11 = registerCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "be_fontFamilyFailedToRegister: #staleCache Attempt to mark fontFamily '%@' as failed!", &v10, 0xCu);
  }
}

- (void)be_fontFamilySuccessfullyRegistered:(id)registered
{
  registeredCopy = registered;
  if ([registeredCopy length])
  {
    _be_failedFontFamilies = [(WKWebView *)self _be_failedFontFamilies];
    v6 = [_be_failedFontFamilies containsObject:registeredCopy];

    if (v6)
    {
      v7 = NSStringFromSelector("be_fontFamiliesHavingFailedRegistration");
      [(WKWebView *)self willChangeValueForKey:v7];

      _be_failedFontFamilies2 = [(WKWebView *)self _be_failedFontFamilies];
      [_be_failedFontFamilies2 removeObject:registeredCopy];

      v9 = NSStringFromSelector("be_fontFamiliesHavingFailedRegistration");
      [(WKWebView *)self didChangeValueForKey:v9];
    }
  }

  else
  {
    v10 = _BookEPUBLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = registeredCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "be_fontFamilyFailedToRegister: Attempt to mark fontFamily '%@' as failed!", &v11, 0xCu);
    }
  }
}

- (BOOL)be_isFontRegistered:(id)registered
{
  registeredCopy = registered;
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = [v4 be_isFontRegistered:registeredCopy];

  return v5;
}

- (void)be_clearRegisteredFonts
{
  objc_opt_class();
  v2 = BUDynamicCast();
  [v2 be_clearRegisteredFonts];
}

- (void)be_configureFontWithStyleManager:(id)manager completion:(id)completion
{
  completionCopy = completion;
  managerCopy = manager;
  objc_opt_class();
  v7 = BUDynamicCast();
  [v7 be_configureFontWithStyleManager:managerCopy completion:completionCopy];
}

- (NSString)be_selectedText
{
  if ([(WKWebView *)self be_hasSelection])
  {
    be_textInputChild = [(WKWebView *)self be_textInputChild];
    selectedText = [be_textInputChild selectedText];
  }

  else
  {
    selectedText = 0;
  }

  return selectedText;
}

- (void)be_clearSelection
{
  be_textInputChild = [(WKWebView *)self be_textInputChild];
  [be_textInputChild clearSelection];
}

- (BOOL)be_hasSelection
{
  be_webSelectionRects = [(WKWebView *)self be_webSelectionRects];
  v3 = [be_webSelectionRects count] != 0;

  return v3;
}

- (NSArray)be_webSelectionRects
{
  be_textInputChild = [(WKWebView *)self be_textInputChild];
  webSelectionRects = [be_textInputChild webSelectionRects];

  return webSelectionRects;
}

- (NSArray)be_selectionRects
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  be_webSelectionRects = [(WKWebView *)self be_webSelectionRects];
  v5 = [be_webSelectionRects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(be_webSelectionRects);
        }

        [*(*(&v11 + 1) + 8 * i) rect];
        v9 = [NSValue valueWithCGRect:?];
        [v3 addObject:v9];
      }

      v6 = [be_webSelectionRects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (void)be_selectForWebView:(id)view
{
  viewCopy = view;
  be_textInputChild = [(WKWebView *)self be_textInputChild];
  [be_textInputChild selectForWebView:0];
  interactionAssistant = [be_textInputChild interactionAssistant];
  selectionView = [interactionAssistant selectionView];
  [selectionView showSelectionCommandsAfterDelay:0.2];

  if (viewCopy)
  {
    v8 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_21660;
    block[3] = &unk_328C50;
    v10 = viewCopy;
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

- (BOOL)be_hasSelectablePositionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  be_textInputChild = [(WKWebView *)self be_textInputChild];
  v6 = [be_textInputChild hasSelectablePositionAtPoint:{x, y}];

  return v6;
}

- (UIWKInteractionViewProtocol)be_textInputChild
{
  firstObject = objc_getAssociatedObject(self, "be_textInputChild");
  if (!firstObject)
  {
    selfCopy = self;
    v5 = [[NSMutableArray alloc] initWithObjects:{selfCopy, 0}];
    if ([v5 count])
    {
      while (1)
      {
        firstObject = [v5 firstObject];
        if ([firstObject conformsToProtocol:&OBJC_PROTOCOL___UIWKInteractionViewProtocol])
        {
          if ([firstObject conformsToProtocol:&OBJC_PROTOCOL___UITextInputPrivate])
          {
            break;
          }
        }

        [v5 removeObjectAtIndex:0];
        subviews = [firstObject subviews];
        [v5 addObjectsFromArray:subviews];

        if (![v5 count])
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      firstObject = 0;
    }

    objc_setAssociatedObject(selfCopy, "be_textInputChild", firstObject, &dword_0 + 1);
  }

  return firstObject;
}

- (void)be_takeSnapshotWithDefaultConfigurationCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(WKSnapshotConfiguration);
  [(WKWebView *)self takeSnapshotWithConfiguration:v5 completionHandler:completionCopy];
}

- (void)be_evaluateJavaScript:(id)script afterNextPresentationUpdate:(BOOL)update completion:(id)completion
{
  updateCopy = update;
  scriptCopy = script;
  completionCopy = completion;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_219C0;
  v16[3] = &unk_328CA0;
  v10 = scriptCopy;
  v17 = v10;
  v11 = completionCopy;
  v18 = v11;
  v16[4] = self;
  v12 = objc_retainBlock(v16);
  v13 = v12;
  if (updateCopy)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_21E00;
    v14[3] = &unk_328C50;
    v15 = v12;
    [(WKWebView *)self _doAfterNextPresentationUpdateWithoutWaitingForPainting:v14];
  }

  else
  {
    (v12[2])(v12);
  }
}

- (void)be_updateAXCurrentReadingStateWithMessage:(id)message forValue:(id)value
{
  valueCopy = value;
  messageCopy = message;
  objc_opt_class();
  v7 = BUDynamicCast();
  [v7 be_updateAXCurrentReadingStateWithMessage:messageCopy forValue:valueCopy];
}

- (id)be_updateAXValueForMessage:(id)message
{
  v8[0] = @"BEWebProcessPluginIdentifierParameterKey";
  messageCopy = message;
  be_identifier = [(WKWebView *)self be_identifier];
  v8[1] = @"BEWebProcessPluginMessageParameterKey";
  v9[0] = be_identifier;
  v9[1] = messageCopy;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end