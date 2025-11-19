@interface WKWebView
- (BOOL)be_hasCompletedLoad;
- (BOOL)be_hasPendingOperations;
- (BOOL)be_hasSelectablePositionAtPoint:(CGPoint)a3;
- (BOOL)be_hasSelection;
- (BOOL)be_isFontRegistered:(id)a3;
- (BOOL)be_isHorizontalScroll;
- (BOOL)be_requiresReload;
- (CGPoint)be_convertPointFromContentsToView:(CGPoint)a3;
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
- (id)_be_contentViewStateDescriptionForState:(int)a3;
- (id)_be_failedFontFamilies;
- (id)be_updateAXValueForMessage:(id)a3;
- (int)be_contentViewState;
- (int64_t)be_paginationMode;
- (unint64_t)be_appliedContentBlockingRule;
- (void)_invalidStateTransition:(id)a3;
- (void)be_applyRequestedContentOffset;
- (void)be_clearRegisteredFonts;
- (void)be_clearSelection;
- (void)be_completedLoad;
- (void)be_configureFontWithStyleManager:(id)a3 completion:(id)a4;
- (void)be_discardingContentView;
- (void)be_evaluateJavaScript:(id)a3 afterNextPresentationUpdate:(BOOL)a4 completion:(id)a5;
- (void)be_failedLoad;
- (void)be_fontFamilyFailedToRegister:(id)a3;
- (void)be_fontFamilySuccessfullyRegistered:(id)a3;
- (void)be_fontRegistrationCompleted:(BOOL)a3;
- (void)be_paginationOperationCanceled;
- (void)be_prepareForLoad;
- (void)be_prepareForReload;
- (void)be_preparingForReuse;
- (void)be_processingContentViewForHost;
- (void)be_returningContentViewToPool;
- (void)be_selectForWebView:(id)a3;
- (void)be_setContentOffset:(CGPoint)a3 bypassingJS:(BOOL)a4 completion:(id)a5;
- (void)be_takeSnapshotWithDefaultConfigurationCompletion:(id)a3;
- (void)be_updateAXCurrentReadingStateWithMessage:(id)a3 forValue:(id)a4;
- (void)be_willAttemptFontRegistration;
- (void)be_willAttemptLoad:(id)a3;
- (void)be_willFullyConfigure;
- (void)be_willLoadAboutBlank;
- (void)be_willProcessDeferredFontRegistration;
- (void)be_willSkipLoad;
- (void)setBe_appliedContentBlockingRule:(unint64_t)a3;
- (void)setBe_contentViewState:(int)a3;
- (void)setBe_gutterLength:(double)a3;
- (void)setBe_hasCompletedLoad:(BOOL)a3;
- (void)setBe_hasPendingOperations:(BOOL)a3;
- (void)setBe_isHorizontalScroll:(BOOL)a3;
- (void)setBe_paginationMode:(int64_t)a3;
- (void)setBe_requiresReload:(BOOL)a3;
@end

@implementation WKWebView

- (id)_be_contentViewStateDescriptionForState:(int)a3
{
  if (a3 > 0xE)
  {
    return @"unknown";
  }

  else
  {
    return off_328CC0[a3];
  }
}

- (void)setBe_contentViewState:(int)a3
{
  v3 = *&a3;
  v5 = [(WKWebView *)self be_contentViewState];
  v6 = _BookEPUBLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(WKWebView *)self be_identifier];
    v8 = [(WKWebView *)self _be_contentViewStateDescriptionForState:v5];
    v9 = [(WKWebView *)self _be_contentViewStateDescriptionForState:v3];
    v10 = [(WKWebView *)self URL];
    v12 = 138544386;
    v13 = v7;
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
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_invalidStateTransition:(id)a3
{
  v4 = a3;
  v5 = [(WKWebView *)self be_contentViewState];
  v6 = _BookEPUBLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [(WKWebView *)self be_identifier];
    v8 = [(WKWebView *)self _be_contentViewStateDescriptionForState:v5];
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Error Transitioning webView:%{public}@ #webViewState from:%{public}@ in Method:%{public}@", &v9, 0x20u);
  }
}

- (void)be_willAttemptFontRegistration
{
  v3 = [(WKWebView *)self be_contentViewState];
  if (v3 > 0xB || ((1 << v3) & 0x991) == 0)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_willAttemptFontRegistration"];
  }

  [(WKWebView *)self setBe_contentViewState:5];
}

- (void)be_fontRegistrationCompleted:(BOOL)a3
{
  if (([(WKWebView *)self be_contentViewState]& 0xFFFFFFFE) != 4)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_fontRegistrationCompleted"];
  }

  [(WKWebView *)self setBe_contentViewState:6];
}

- (void)be_willSkipLoad
{
  v3 = [(WKWebView *)self be_contentViewState];
  if (v3 > 0xD || ((1 << v3) & 0x2840) == 0)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_willSkipLoad"];
  }

  [(WKWebView *)self setBe_contentViewState:10];
}

- (void)be_willAttemptLoad:(id)a3
{
  v4 = a3;
  if ([(WKWebView *)self be_contentViewState]== 8)
  {
    v5 = _BookEPUBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(WKWebView *)self be_identifier];
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
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
  v3 = [(WKWebView *)self be_contentViewState];
  if (v3 > 0xE)
  {
    goto LABEL_9;
  }

  if (((1 << v3) & 0x40EE) != 0)
  {
    return;
  }

  if (((1 << v3) & 0x3C00) == 0)
  {
    if (v3 == 9)
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
  v3 = [(WKWebView *)self be_contentViewState];
  if (v3 - 8 >= 6 && v3 != 6)
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
  v3 = [(WKWebView *)self be_contentViewState];
  if (v3 > 0xD || ((1 << v3) & 0x3940) == 0)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_prepareForLoad"];
  }

  [(WKWebView *)self setBe_contentViewState:8];
}

- (void)be_prepareForReload
{
  v3 = [(WKWebView *)self be_contentViewState];
  if (v3 > 0xB || ((1 << v3) & 0xB40) == 0)
  {
    [(WKWebView *)self _invalidStateTransition:@"be_prepareForLoad"];
  }

  [(WKWebView *)self setBe_contentViewState:8];
}

- (void)be_willFullyConfigure
{
  v3 = [(WKWebView *)self be_contentViewState];
  if (v3 - 10 >= 4)
  {
    if (v3 == 5)
    {
      return;
    }

    if (v3 != 6)
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

- (void)setBe_paginationMode:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    a3 = 0;
  }

  [(WKWebView *)self _setPaginationMode:a3];
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

- (CGPoint)be_convertPointFromContentsToView:(CGPoint)a3
{
  [(WKWebView *)self _convertPointFromContentsToView:a3.x, a3.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setBe_gutterLength:(double)a3
{
  v4 = [NSNumber numberWithDouble:a3];
  objc_setAssociatedObject(self, "be_gutterLength", v4, &dword_0 + 1);
}

- (double)be_gutterLength
{
  v2 = objc_getAssociatedObject(self, "be_gutterLength");
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setBe_isHorizontalScroll:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, "be_isHorizontalScroll", v4, &dword_0 + 1);
}

- (BOOL)be_isHorizontalScroll
{
  v2 = objc_getAssociatedObject(self, "be_isHorizontalScroll");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setBe_appliedContentBlockingRule:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  objc_setAssociatedObject(self, "be_appliedContentBlockingRule", v4, &dword_0 + 1);
}

- (unint64_t)be_appliedContentBlockingRule
{
  v2 = objc_getAssociatedObject(self, "be_appliedContentBlockingRule");
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (double)be_scrollingPageWidth
{
  v3 = [(WKWebView *)self _paginationMode];
  if (v3 > 4)
  {
    return 0.0;
  }

  if (((1 << v3) & 0x19) != 0)
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
  v3 = [(WKWebView *)self _paginationMode];
  if (v3 >= 3)
  {
    if ((v3 - 3) > 1)
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
  v4 = [(WKWebView *)self be_identifier];
  v19 = [(WKWebView *)self URL];
  v5 = [v19 absoluteString];
  v6 = [(WKWebView *)self scrollView];
  [v6 contentOffset];
  v21[0] = v7;
  v21[1] = v8;
  v9 = [NSValue valueWithBytes:v21 objCType:"{CGPoint=dd}"];
  v10 = [(WKWebView *)self be_requestedContentOffset];
  v11 = [(WKWebView *)self scrollView];
  [v11 contentSize];
  v20[0] = v12;
  v20[1] = v13;
  v14 = [NSValue valueWithBytes:v20 objCType:"{CGSize=dd}"];
  v15 = [(WKWebView *)self be_estimatedContentSizeValue];
  v16 = [NSString stringWithFormat:@"<%@: %@> url: %@\n\tcontentOffset: %@ requestedOffset: %@\n\tcontentSize: %@ estimatedSize: %@", v18, v4, v5, v9, v10, v14, v15];

  return v16;
}

- (BOOL)be_hasPendingOperations
{
  v2 = objc_getAssociatedObject(self, "be_hasPendingOperations");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setBe_hasPendingOperations:(BOOL)a3
{
  v3 = a3;
  v5 = NSStringFromSelector("be_hasPendingOperations");
  [(WKWebView *)self willChangeValueForKey:v5];

  v6 = [NSNumber numberWithBool:v3];
  objc_setAssociatedObject(self, "be_hasPendingOperations", v6, &dword_0 + 1);

  v7 = NSStringFromSelector("be_hasPendingOperations");
  [(WKWebView *)self didChangeValueForKey:v7];
}

- (void)be_setContentOffset:(CGPoint)a3 bypassingJS:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v9 = a5;
  *v26 = x;
  *&v26[1] = y;
  v10 = [NSValue valueWithBytes:v26 objCType:"{CGPoint=dd}"];
  [(WKWebView *)self setBe_requestedContentOffset:v10];

  v11 = [NSNumber numberWithBool:v5];
  [(WKWebView *)self setBe_requestedContentOffsetShouldBypassJS:v11];

  v12 = [(WKWebView *)self scrollView];
  [(WKWebView *)self convertPoint:v12 fromView:x, y];
  [(WKWebView *)self _convertPointFromViewToContents:?];
  v14 = v13;
  v16 = v15;

  v17 = [(WKWebView *)self scrollView];
  [v17 setContentOffset:{x, y}];

  if (v5)
  {
    v18 = objc_retainBlock(v9);
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
    v23 = v9;
    [(WKWebView *)self evaluateJavaScript:v19 completionHandler:v22];
  }
}

- (void)be_applyRequestedContentOffset
{
  v3 = [(WKWebView *)self be_requestedContentOffset];
  v4 = [(WKWebView *)self be_requestedContentOffsetShouldBypassJS];
  v5 = [v4 BOOLValue];

  if (v3)
  {
    [v3 CGPointValue];
    v7 = v6;
    v9 = v8;
    y = CGPointZero.y;
    v11 = [(WKWebView *)self scrollView];
    [v11 contentSize];
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
      [(WKWebView *)self be_setContentOffset:v5 bypassingJS:v7, v9];
      [(WKWebView *)self setBe_requestedContentOffset:0];
      [(WKWebView *)self setBe_requestedContentOffsetShouldBypassJS:0];
    }

    else
    {
      v16 = _BookEPUBLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [(WKWebView *)self be_identifier];
        v29.origin.x = CGPointZero.x;
        v29.origin.y = y;
        v29.size.width = v13;
        v29.size.height = v15;
        v18 = NSStringFromCGRect(v29);
        v26.x = v7;
        v26.y = v9;
        v19 = NSStringFromCGPoint(v26);
        v20 = 138543874;
        v21 = v17;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setBe_hasCompletedLoad:(BOOL)a3
{
  v3 = a3;
  v5 = NSStringFromSelector("be_hasCompletedLoad");
  [(WKWebView *)self willChangeValueForKey:v5];

  v6 = [NSNumber numberWithBool:v3];
  objc_setAssociatedObject(self, "be_hasCompletedLoad", v6, &dword_0 + 1);

  v7 = NSStringFromSelector("be_hasCompletedLoad");
  [(WKWebView *)self didChangeValueForKey:v7];
}

- (BOOL)be_requiresReload
{
  v2 = objc_getAssociatedObject(self, "be_requiresReload");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setBe_requiresReload:(BOOL)a3
{
  v3 = a3;
  v5 = NSStringFromSelector("be_requiresReload");
  [(WKWebView *)self willChangeValueForKey:v5];

  v6 = [NSNumber numberWithBool:v3];
  objc_setAssociatedObject(self, "be_requiresReload", v6, &dword_0 + 1);

  v7 = NSStringFromSelector("be_requiresReload");
  [(WKWebView *)self didChangeValueForKey:v7];
}

- (NSArray)be_fontFamiliesHavingFailedRegistration
{
  v2 = [(WKWebView *)self _be_failedFontFamilies];
  v3 = [v2 allObjects];

  return v3;
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

- (void)be_fontFamilyFailedToRegister:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = _BookEPUBLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "be_fontFamilyFailedToRegister #staleCache failing '%@'", &v10, 0xCu);
    }

    v8 = NSStringFromSelector("be_fontFamiliesHavingFailedRegistration");
    [(WKWebView *)self willChangeValueForKey:v8];

    v9 = [(WKWebView *)self _be_failedFontFamilies];
    [v9 addObject:v4];

    v6 = NSStringFromSelector("be_fontFamiliesHavingFailedRegistration");
    [(WKWebView *)self didChangeValueForKey:v6];
  }

  else if (v7)
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "be_fontFamilyFailedToRegister: #staleCache Attempt to mark fontFamily '%@' as failed!", &v10, 0xCu);
  }
}

- (void)be_fontFamilySuccessfullyRegistered:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(WKWebView *)self _be_failedFontFamilies];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      v7 = NSStringFromSelector("be_fontFamiliesHavingFailedRegistration");
      [(WKWebView *)self willChangeValueForKey:v7];

      v8 = [(WKWebView *)self _be_failedFontFamilies];
      [v8 removeObject:v4];

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
      v12 = v4;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "be_fontFamilyFailedToRegister: Attempt to mark fontFamily '%@' as failed!", &v11, 0xCu);
    }
  }
}

- (BOOL)be_isFontRegistered:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = [v4 be_isFontRegistered:v3];

  return v5;
}

- (void)be_clearRegisteredFonts
{
  objc_opt_class();
  v2 = BUDynamicCast();
  [v2 be_clearRegisteredFonts];
}

- (void)be_configureFontWithStyleManager:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = BUDynamicCast();
  [v7 be_configureFontWithStyleManager:v6 completion:v5];
}

- (NSString)be_selectedText
{
  if ([(WKWebView *)self be_hasSelection])
  {
    v3 = [(WKWebView *)self be_textInputChild];
    v4 = [v3 selectedText];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)be_clearSelection
{
  v2 = [(WKWebView *)self be_textInputChild];
  [v2 clearSelection];
}

- (BOOL)be_hasSelection
{
  v2 = [(WKWebView *)self be_webSelectionRects];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)be_webSelectionRects
{
  v2 = [(WKWebView *)self be_textInputChild];
  v3 = [v2 webSelectionRects];

  return v3;
}

- (NSArray)be_selectionRects
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(WKWebView *)self be_webSelectionRects];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * i) rect];
        v9 = [NSValue valueWithCGRect:?];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (void)be_selectForWebView:(id)a3
{
  v4 = a3;
  v5 = [(WKWebView *)self be_textInputChild];
  [v5 selectForWebView:0];
  v6 = [v5 interactionAssistant];
  v7 = [v6 selectionView];
  [v7 showSelectionCommandsAfterDelay:0.2];

  if (v4)
  {
    v8 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_21660;
    block[3] = &unk_328C50;
    v10 = v4;
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

- (BOOL)be_hasSelectablePositionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(WKWebView *)self be_textInputChild];
  v6 = [v5 hasSelectablePositionAtPoint:{x, y}];

  return v6;
}

- (UIWKInteractionViewProtocol)be_textInputChild
{
  v3 = objc_getAssociatedObject(self, "be_textInputChild");
  if (!v3)
  {
    v4 = self;
    v5 = [[NSMutableArray alloc] initWithObjects:{v4, 0}];
    if ([v5 count])
    {
      while (1)
      {
        v3 = [v5 firstObject];
        if ([v3 conformsToProtocol:&OBJC_PROTOCOL___UIWKInteractionViewProtocol])
        {
          if ([v3 conformsToProtocol:&OBJC_PROTOCOL___UITextInputPrivate])
          {
            break;
          }
        }

        [v5 removeObjectAtIndex:0];
        v6 = [v3 subviews];
        [v5 addObjectsFromArray:v6];

        if (![v5 count])
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v3 = 0;
    }

    objc_setAssociatedObject(v4, "be_textInputChild", v3, &dword_0 + 1);
  }

  return v3;
}

- (void)be_takeSnapshotWithDefaultConfigurationCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WKSnapshotConfiguration);
  [(WKWebView *)self takeSnapshotWithConfiguration:v5 completionHandler:v4];
}

- (void)be_evaluateJavaScript:(id)a3 afterNextPresentationUpdate:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_219C0;
  v16[3] = &unk_328CA0;
  v10 = v8;
  v17 = v10;
  v11 = v9;
  v18 = v11;
  v16[4] = self;
  v12 = objc_retainBlock(v16);
  v13 = v12;
  if (v6)
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

- (void)be_updateAXCurrentReadingStateWithMessage:(id)a3 forValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = BUDynamicCast();
  [v7 be_updateAXCurrentReadingStateWithMessage:v6 forValue:v5];
}

- (id)be_updateAXValueForMessage:(id)a3
{
  v8[0] = @"BEWebProcessPluginIdentifierParameterKey";
  v4 = a3;
  v5 = [(WKWebView *)self be_identifier];
  v8[1] = @"BEWebProcessPluginMessageParameterKey";
  v9[0] = v5;
  v9[1] = v4;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end