@interface WKPDFView
+ (BOOL)web_requiresCustomSnapshotting;
- (BOOL)_computeFocusedSearchResultIndexWithOptions:(unint64_t)options didWrapAround:(BOOL *)around;
- (BOOL)actionSheetAssistant:(id)assistant shouldIncludeAppLinkActionsForElement:(id)element;
- (BOOL)web_handleKeyEvent:(id)event;
- (CGPDFDocument)_ensureDocumentForPrinting;
- (CGPoint)_offsetForPageNumberIndicator;
- (RetainPtr<NSArray>)actionSheetAssistant:(id)assistant decideActionsForElement:(id)element defaultActions:(RetainPtr<NSArray>)actions;
- (id).cxx_construct;
- (id)_URLWithPageIndex:(int64_t)index;
- (id)_contentView;
- (id)dataDetectionContextForActionSheetAssistant:(id)assistant positionInformation:(const void *)information;
- (id)web_initWithFrame:(CGRect)frame webView:(id)view mimeType:(id)type;
- (int64_t)compareFoundRange:(id)range toRange:(id)toRange inDocument:(id)document;
- (optional<WebKit::InteractionInformationAtPosition>)positionInformationForActionSheetAssistant:(optional<WebKit::InteractionInformationAtPosition> *__return_ptr)retstr;
- (uint64_t)pdfHostViewControllerExtensionProcessDidCrash:(id *)crash;
- (uint64_t)pdfHostViewControllerExtensionProcessDidCrash:(uint64_t)crash;
- (unint64_t)_wk_pageCountForPrintFormatter:(id)formatter;
- (void)_findString:(id)string withOptions:(unint64_t)options maxCount:(unint64_t)count completion:(id)completion;
- (void)_focusOnSearchResultWithOptions:(unint64_t)options;
- (void)_goToURL:(id)l atLocation:(CGPoint)location;
- (void)_movePageNumberIndicatorToPoint:(CGPoint)point animated:(BOOL)animated;
- (void)_resetFind;
- (void)_scrollToURLFragment:(id)fragment;
- (void)_showActionSheetForURL:(id)l atLocation:(CGPoint)location withAnnotationRect:(CGRect)rect;
- (void)_updateLayoutAnimated:(BOOL)animated;
- (void)_wk_requestDocumentForPrintFormatter:(id)formatter;
- (void)actionSheetAssistant:(id)assistant openElementAtLocation:(CGPoint)location;
- (void)actionSheetAssistant:(id)assistant performAction:(unsigned __int8)action;
- (void)actionSheetAssistant:(id)assistant shareElementWithURL:(id)l rect:(CGRect)rect;
- (void)clearAllDecoratedFoundText;
- (void)dealloc;
- (void)decorateFoundTextRange:(id)range inDocument:(id)document usingStyle:(int64_t)style;
- (void)pdfHostViewController:(id)controller didLongPressPageIndex:(int64_t)index atLocation:(CGPoint)location withAnnotationRect:(CGRect)rect;
- (void)pdfHostViewController:(id)controller documentDidUnlockWithPassword:(id)password;
- (void)pdfHostViewController:(id)controller findStringUpdate:(unint64_t)update done:(BOOL)done;
- (void)pdfHostViewController:(id)controller goToPageIndex:(int64_t)index withViewFrustum:(CGRect)frustum;
- (void)pdfHostViewController:(id)controller updatePageCount:(int64_t)count;
- (void)pdfHostViewControllerDocumentDidRequestPassword:(id)password;
- (void)pdfHostViewControllerExtensionProcessDidCrash:(id)crash;
- (void)pdfHostViewControllerExtensionProcessDidCrash:(uint64_t)crash;
- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator;
- (void)shareSheetDidDismiss:(id)dismiss;
- (void)updateBackgroundColor;
- (void)web_beginAnimatedResizeWithUpdates:(id)updates;
- (void)web_countStringMatches:(id)matches options:(unint64_t)options maxCount:(unint64_t)count;
- (void)web_didSameDocumentNavigation:(unsigned int)navigation;
- (void)web_findString:(id)string options:(unint64_t)options maxCount:(unint64_t)count;
- (void)web_setContentProviderData:(id)data suggestedFilename:(id)filename completionHandler:(id)handler;
- (void)web_setFixedOverlayView:(id)view;
- (void)web_setMinimumSize:(CGSize)size;
- (void)web_snapshotRectInContentViewCoordinates:(CGRect)coordinates snapshotWidth:(double)width completionHandler:(id)handler;
@end

@implementation WKPDFView

- (void)dealloc
{
  m_ptr = self->_shareSheet.m_ptr;
  if (m_ptr)
  {
    [(WKShareSheet *)m_ptr dismissIfNeededWithReason:2];
    v4 = self->_shareSheet.m_ptr;
    self->_shareSheet.m_ptr = 0;
    if (v4)
    {
    }
  }

  [(WKActionSheetAssistant *)self->_actionSheetAssistant.m_ptr cleanupSheet];
  [-[PDFHostViewController view](self->_hostViewController.m_ptr "view")];
  [(UIView *)self->_pageNumberIndicator.m_ptr removeFromSuperview];
  [(WKKeyboardScrollViewAnimator *)self->_keyboardScrollingAnimator.m_ptr invalidate];
  v5 = WTF::CString::mutableSpan(&self->_passwordForPrinting);
  bzero(v5, v6);
  v7 = self->_searchAggregator.m_ptr;
  self->_searchAggregator.m_ptr = 0;
  if (v7)
  {
  }

  v8 = self->_searchString.m_ptr;
  self->_searchString.m_ptr = 0;
  if (v8)
  {
  }

  v9.receiver = self;
  v9.super_class = WKPDFView;
  [(WKPDFView *)&v9 dealloc];
}

- (BOOL)web_handleKeyEvent:(id)event
{
  v4 = [[WKWebEvent alloc] initWithEvent:event];
  v5 = -[WKKeyboardScrollViewAnimator beginWithEvent:scrollView:](self->_keyboardScrollingAnimator.m_ptr, "beginWithEvent:scrollView:", v4, [objc_loadWeak(&self->_webView.m_weakReference) _scrollViewInternal]);
  if (!v5)
  {
    [(WKKeyboardScrollViewAnimator *)self->_keyboardScrollingAnimator.m_ptr handleKeyEvent:v4];
  }

  if (v4)
  {
  }

  return v5;
}

- (id)_contentView
{
  if (*(self + 64))
  {
    return [*(self + 64) view];
  }

  return self;
}

- (id)web_initWithFrame:(CGRect)frame webView:(id)view mimeType:(id)type
{
  v10.receiver = self;
  v10.super_class = WKPDFView;
  v6 = [(WKApplicationStateTrackingView *)&v10 initWithFrame:view webView:type, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v6)
  {
    v7 = objc_alloc_init(WKKeyboardScrollViewAnimator);
    m_ptr = v6->_keyboardScrollingAnimator.m_ptr;
    v6->_keyboardScrollingAnimator.m_ptr = v7;
    if (m_ptr)
    {
    }

    objc_storeWeak(&v6->_webView.m_weakReference, view);
    [(WKPDFView *)v6 updateBackgroundColor];
  }

  return v6;
}

- (void)updateBackgroundColor
{
  backgroundColor = [MEMORY[0x1E6978030] backgroundColor];
  [(WKPDFView *)self setBackgroundColor:backgroundColor];
  _wkScrollView = [objc_loadWeak(&self->_webView.m_weakReference) _wkScrollView];

  [_wkScrollView _setBackgroundColorInternal:backgroundColor];
}

- (void)web_setContentProviderData:(id)data suggestedFilename:(id)filename completionHandler:(id)handler
{
  v8 = [data copy];
  m_ptr = self->_data.m_ptr;
  self->_data.m_ptr = v8;
  if (m_ptr)
  {
  }

  v10 = [filename copy];
  v11 = self->_suggestedFilename.m_ptr;
  self->_suggestedFilename.m_ptr = v10;
  if (v11)
  {
  }

  [MEMORY[0x1E6978030] setUseIOSurfaceForTiles:0];
  v12 = MEMORY[0x1E6978030];
  v13 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __76__WKPDFView_web_setContentProviderData_suggestedFilename_completionHandler___block_invoke;
  v14[3] = &__block_descriptor_48_e8_32c89_ZTSKZ76__WKPDFView_web_setContentProviderData_suggestedFilename_completionHandler__E3__2_e31_v16__0__PDFHostViewController_8l;
  objc_initWeak(&v13, self);
  v14[4] = self;
  v15 = 0;
  objc_copyWeak(&v15, &v13);
  [v12 createHostView:v14 forExtensionIdentifier:0];
  objc_destroyWeak(&v13);
  (*(handler + 2))(handler);
  objc_destroyWeak(&v15);
}

id __76__WKPDFView_web_setContentProviderData_suggestedFilename_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    result = objc_loadWeak((*(a1 + 32) + 1096));
    if (a2)
    {
      v5 = result;
      if (result)
      {
        v6 = *(a1 + 32);
        v7 = a2;
        v8 = *(v6 + 512);
        *(v6 + 512) = a2;
        if (v8)
        {
        }

        v9 = [a2 view];
        [v5 bounds];
        [v9 setFrame:?];
        v10 = [v5 scrollView];
        [*(a1 + 32) removeFromSuperview];
        [v10 addSubview:v9];
        v11 = [[WKActionSheetAssistant alloc] initWithView:v9];
        v12 = *(a1 + 32);
        v13 = *(v12 + 424);
        *(v12 + 424) = v11;
        if (v13)
        {
        }

        [*(*(a1 + 32) + 424) setDelegate:?];
        v14 = [a2 pageNumberIndicator];
        v15 = v14;
        v16 = *(a1 + 32);
        if (v14)
        {
          v17 = v14;
        }

        v18 = *(v16 + 536);
        *(v16 + 536) = v15;
        if (v18)
        {
        }

        [*(*(a1 + 32) + 480) addSubview:*(*(a1 + 32) + 536)];
        [a2 setDelegate:*(a1 + 32)];
        v19 = *(*(a1 + 32) + 432);

        return [a2 setDocumentData:v19 withScrollView:v10];
      }
    }
  }

  return result;
}

- (CGPoint)_offsetForPageNumberIndicator
{
  Weak = objc_loadWeak(&self->_webView.m_weakReference);
  if (Weak)
  {
    v4 = Weak;
    [Weak _computedUnobscuredSafeAreaInset];
    [v4 _computedObscuredInset];
    UIEdgeInsetsAdd();
    v6 = v5;
    v8 = v7;
    v9 = v6 + self->_overlaidAccessoryViewsInset.height;
  }

  else
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_movePageNumberIndicatorToPoint:(CGPoint)point animated:(BOOL)animated
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__WKPDFView__movePageNumberIndicatorToPoint_animated___block_invoke;
  v6[3] = &unk_1E7633918;
  pointCopy = point;
  selfCopy = self;
  if (animated)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.3];
  }

  else
  {
    v4 = point.x + 20.0;
    v5 = point.y + 20.0;
    [(UIView *)self->_pageNumberIndicator.m_ptr frame];
    [(UIView *)selfCopy->_pageNumberIndicator.m_ptr setFrame:v4, v5];
  }
}

uint64_t __54__WKPDFView__movePageNumberIndicatorToPoint_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40) + 20.0;
  v3 = *(a1 + 48) + 20.0;
  [*(*(a1 + 32) + 536) frame];
  v4 = *(*(a1 + 32) + 536);

  return [v4 setFrame:{v2, v3}];
}

- (void)_updateLayoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PDFHostViewController *)self->_hostViewController.m_ptr updatePDFViewLayout];
  [(WKPDFView *)self _offsetForPageNumberIndicator];

  [(WKPDFView *)self _movePageNumberIndicatorToPoint:animatedCopy animated:?];
}

- (void)web_setMinimumSize:(CGSize)size
{
  [(WKPDFView *)self frame];
  [(WKPDFView *)self setFrame:?];

  [(WKPDFView *)self _updateLayoutAnimated:0];
}

- (void)web_setFixedOverlayView:(id)view
{
  if (view)
  {
    viewCopy = view;
  }

  m_ptr = self->_fixedOverlayView.m_ptr;
  self->_fixedOverlayView.m_ptr = view;
  if (m_ptr)
  {
  }
}

- (void)_scrollToURLFragment:(id)fragment
{
  if ([fragment hasPrefix:@"page"])
  {
    v5 = [objc_msgSend(fragment substringFromIndex:{4), "integerValue"}];
    v6 = v5 - 1;
    if (v5 < 1)
    {
      return;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6 < [(PDFHostViewController *)self->_hostViewController.m_ptr pageCount]&& v6 != [(PDFHostViewController *)self->_hostViewController.m_ptr currentPageIndex])
  {
    m_ptr = self->_hostViewController.m_ptr;

    [(PDFHostViewController *)m_ptr goToPageIndex:v6];
  }
}

- (void)web_didSameDocumentNavigation:(unsigned int)navigation
{
  if (navigation == 3)
  {
    v5 = [objc_msgSend(objc_loadWeak(&self->_webView.m_weakReference) "URL")];

    [(WKPDFView *)self _scrollToURLFragment:v5];
  }
}

- (void)_resetFind
{
  if (self->_findCompletion.m_block)
  {
    [(PDFHostViewController *)self->_hostViewController.m_ptr cancelFindString];
  }

  v3 = _Block_copy(0);
  _Block_release(self->_findCompletion.m_block);
  self->_findCompletion.m_block = v3;
  _Block_release(0);
  m_ptr = self->_findString.m_ptr;
  self->_findString.m_ptr = 0;
  if (m_ptr)
  {
  }

  self->_findStringCount = 0;
  self->_findStringMaxCount = 0;
  if (self->_focusedSearchResultIndex.__engaged_)
  {
    self->_focusedSearchResultIndex.__engaged_ = 0;
  }

  self->_focusedSearchResultPendingOffset = 0;
}

- (void)_findString:(id)string withOptions:(unint64_t)options maxCount:(unint64_t)count completion:(id)completion
{
  [(WKPDFView *)self _resetFind];
  v11 = _Block_copy(completion);
  _Block_release(self->_findCompletion.m_block);
  self->_findCompletion.m_block = v11;
  _Block_release(0);
  v12 = [string copy];
  m_ptr = self->_findString.m_ptr;
  self->_findString.m_ptr = v12;
  if (m_ptr)
  {

    v12 = self->_findString.m_ptr;
  }

  self->_findStringMaxCount = count;
  v14 = self->_hostViewController.m_ptr;

  [(PDFHostViewController *)v14 findString:v12 withOptions:options & 1 | (4 * ((options >> 3) & 1))];
}

- (void)web_countStringMatches:(id)matches options:(unint64_t)options maxCount:(unint64_t)count
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__WKPDFView_web_countStringMatches_options_maxCount___block_invoke;
  v5[3] = &unk_1E7631230;
  v5[4] = self;
  [(WKPDFView *)self _findString:matches withOptions:options maxCount:count completion:v5];
}

void *__53__WKPDFView_web_countStringMatches_options_maxCount___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((*(a1 + 32) + 1096));
  if (result)
  {
    result = [result _page];
    v3 = v7;
    if (v7)
    {
      v4 = *(v7 + 128);
      MEMORY[0x19EB02040](&v6, *(*(a1 + 32) + 456));
      (*(*v4 + 16))(v4, v3, &v6, *(*(a1 + 32) + 464));
      result = v6;
      v6 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

- (BOOL)_computeFocusedSearchResultIndexWithOptions:(unint64_t)options didWrapAround:(BOOL *)around
{
  if ((options & 8) != 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  if (!self->_findCompletion.m_block)
  {
    findStringCount = self->_findStringCount;
    if (!findStringCount)
    {
      return 0;
    }

    p_focusedSearchResultIndex = &self->_focusedSearchResultIndex;
    engaged = self->_focusedSearchResultIndex.__engaged_;
    if (engaged)
    {
      v9 = p_focusedSearchResultIndex->var0.__val_ + v4;
      if (v9 < 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      focusedSearchResultPendingOffset = self->_focusedSearchResultPendingOffset;
      self->_focusedSearchResultPendingOffset = 0;
      v9 = focusedSearchResultPendingOffset + ((findStringCount - 1) & ((options << 60) >> 63));
      if (v9 < 0)
      {
        goto LABEL_14;
      }
    }

    if (v9 < self->_findStringCount)
    {
      if (engaged)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_14:
    if ((options & 0x10) == 0)
    {
      return 0;
    }

    if (v9 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = -v9;
    }

    v12 = self->_findStringCount;
    v13 = v11 % v12;
    v14 = v12 - v13;
    if (v9 >= 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v14;
    }

    *around = 1;
    if (self->_focusedSearchResultIndex.__engaged_)
    {
LABEL_24:
      p_focusedSearchResultIndex->var0.__val_ = v9;
      return 1;
    }

LABEL_23:
    self->_focusedSearchResultIndex.__engaged_ = 1;
    goto LABEL_24;
  }

  v5 = 0;
  self->_focusedSearchResultPendingOffset += v4;
  return v5;
}

- (void)_focusOnSearchResultWithOptions:(unint64_t)options
{
  Weak = objc_loadWeak(&self->_webView.m_weakReference);
  if (Weak)
  {
    [Weak _page];
    if (v19)
    {
      v18 = 0;
      if ([(WKPDFView *)self _computeFocusedSearchResultIndexWithOptions:options didWrapAround:&v18])
      {
        if (!self->_focusedSearchResultIndex.__engaged_)
        {
          __break(1u);
          return;
        }

        val = self->_focusedSearchResultIndex.var0.__val_;
        [(PDFHostViewController *)self->_hostViewController.m_ptr focusOnSearchResultAtIndex:val];
        v7 = v19;
        v8 = *(v19 + 128);
        MEMORY[0x19EB02040](&v17, self->_findString.m_ptr);
        findStringCount_low = LODWORD(self->_findStringCount);
        v15 = 0;
        v16 = 0;
        (*(*v8 + 24))(v8, v7, &v17, &v15, findStringCount_low, val, v18);
        v11 = v15;
        if (v15)
        {
          v15 = 0;
          LODWORD(v16) = 0;
          WTF::fastFree(v11, v10);
        }

        v12 = v17;
        v17 = 0;
        if (v12)
        {
          goto LABEL_11;
        }
      }

      else if (!self->_findCompletion.m_block)
      {
        v13 = v19;
        v14 = *(v19 + 128);
        MEMORY[0x19EB02040](&v15, self->_findString.m_ptr);
        (*(*v14 + 32))(v14, v13, &v15);
        v12 = v15;
        v15 = 0;
        if (v12)
        {
LABEL_11:
          if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v10);
          }
        }
      }
    }
  }
}

- (void)web_findString:(id)string options:(unint64_t)options maxCount:(unint64_t)count
{
  if ([(NSString *)self->_findString.m_ptr isEqualToString:?])
  {

    [(WKPDFView *)self _focusOnSearchResultWithOptions:options];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__WKPDFView_web_findString_options_maxCount___block_invoke;
    v9[3] = &unk_1E7633940;
    v9[4] = self;
    v9[5] = options;
    [(WKPDFView *)self _findString:string withOptions:options maxCount:count completion:v9];
  }
}

+ (BOOL)web_requiresCustomSnapshotting
{
  if (byte_1EB01D619 == 1)
  {
    HasEntitlement = _MergedGlobals_26;
  }

  else
  {
    HasEntitlement = WTF::processHasEntitlement();
    _MergedGlobals_26 = HasEntitlement;
    byte_1EB01D619 = 1;
  }

  return (HasEntitlement & 1) == 0;
}

- (void)web_beginAnimatedResizeWithUpdates:(id)updates
{
  [(PDFHostViewController *)self->_hostViewController.m_ptr beginPDFViewRotation];
  (*(updates + 2))(updates);
  m_ptr = self->_hostViewController.m_ptr;

  [(PDFHostViewController *)m_ptr endPDFViewRotation];
}

- (void)web_snapshotRectInContentViewCoordinates:(CGRect)coordinates snapshotWidth:(double)width completionHandler:(id)handler
{
  [-[WKPDFView _contentView](self "_contentView")];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  m_ptr = self->_hostViewController.m_ptr;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__WKPDFView_web_snapshotRectInContentViewCoordinates_snapshotWidth_completionHandler___block_invoke;
  v18[3] = &unk_1E7633968;
  v18[4] = handler;
  [(PDFHostViewController *)m_ptr snapshotViewRect:v17 snapshotWidth:0 afterScreenUpdates:v18 withResult:v9, v11, v13, v15];
}

uint64_t __86__WKPDFView_web_snapshotRectInContentViewCoordinates_snapshotWidth_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGImage];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)pdfHostViewController:(id)controller updatePageCount:(int64_t)count
{
  v5 = [objc_msgSend(objc_loadWeak(&self->_webView.m_weakReference) "URL")];

  [(WKPDFView *)self _scrollToURLFragment:v5];
}

- (void)pdfHostViewControllerDocumentDidRequestPassword:(id)password
{
  [objc_loadWeak(&self->_webView.m_weakReference) _didRequestPasswordForDocument];
  self->_isShowingPasswordView = 1;

  [(WKPDFView *)self updateBackgroundColor];
}

- (void)pdfHostViewController:(id)controller documentDidUnlockWithPassword:(id)password
{
  WTF::CString::CString(&v10, [password UTF8String]);
  v6 = v10;
  v10 = 0;
  m_ptr = self->_passwordForPrinting.m_buffer.m_ptr;
  self->_passwordForPrinting.m_buffer.m_ptr = v6;
  if (m_ptr)
  {
    v8 = *m_ptr - 1;
    if (*m_ptr == 1)
    {
      WTF::fastFree(m_ptr, v5);
      m_ptr = v10;
      v10 = 0;
      if (!m_ptr)
      {
        goto LABEL_4;
      }

      v8 = *m_ptr - 1;
      if (*m_ptr == 1)
      {
        WTF::fastFree(m_ptr, v9);
        goto LABEL_4;
      }
    }

    *m_ptr = v8;
  }

LABEL_4:
  [objc_loadWeak(&self->_webView.m_weakReference) _didStopRequestingPasswordForDocument];
  self->_isShowingPasswordView = 0;
  [(WKPDFView *)self updateBackgroundColor];
}

- (void)pdfHostViewController:(id)controller findStringUpdate:(unint64_t)update done:(BOOL)done
{
  m_ptr = self->_searchAggregator.m_ptr;
  if (m_ptr)
  {
    if (done)
    {
      if (update)
      {
        for (i = 0; i != update; ++i)
        {
          [(UITextSearchAggregator *)self->_searchAggregator.m_ptr foundRange:[WKPDFFoundTextRange foundTextRangeWithIndex:?], self->_searchString.m_ptr, 0];
        }

        m_ptr = self->_searchAggregator.m_ptr;
      }

      [(UITextSearchAggregator *)m_ptr finishedSearching];
      v9 = self->_searchAggregator.m_ptr;
      self->_searchAggregator.m_ptr = 0;
      if (v9)
      {
      }

      v10 = self->_searchString.m_ptr;
      self->_searchString.m_ptr = 0;
      if (v10)
      {
      }
    }
  }

  else
  {
    if (self->_findStringMaxCount >= update || done)
    {
      if (!done)
      {
        return;
      }
    }

    else
    {
      [controller cancelFindStringWithHighlightsCleared:0];
    }

    m_block = self->_findCompletion.m_block;
    self->_findCompletion.m_block = 0;
    v12 = _Block_copy(0);
    _Block_release(self->_findCompletion.m_block);
    self->_findCompletion.m_block = v12;
    _Block_release(0);
    if (m_block)
    {
      self->_findStringCount = update;
      m_block[2](m_block);
    }

    _Block_release(m_block);
  }
}

- (id)_URLWithPageIndex:(int64_t)index
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"#page%ld", index + 1];
  v6 = [v4 URLWithString:v5 relativeToURL:{objc_msgSend(objc_loadWeak(&self->_webView.m_weakReference), "URL")}];
  if (v5)
  {
  }

  return v6;
}

- (void)_goToURL:(id)l atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  locationCopy = location;
  Weak = objc_loadWeak(&self->_webView.m_weakReference);
  if (Weak)
  {
    [Weak _page];
    if (v29)
    {
      view = [(PDFHostViewController *)self->_hostViewController.m_ptr view];
      window = [view window];
      [view convertPoint:0 toView:{x, y}];
      [window convertPoint:0 toWindow:?];
      v28.x = v11;
      v28.y = v12;
      v13 = v29;
      MEMORY[0x19EB02040](&v27, [l absoluteString]);
      WebCore::FloatPoint::FloatPoint(v26, &locationCopy);
      v14 = roundf(v26[0]);
      v15 = 0x80000000;
      if (v14 > -2147500000.0)
      {
        v15 = v14;
      }

      if (v14 < 2147500000.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x7FFFFFFFLL;
      }

      v17 = roundf(v26[1]);
      if (v17 >= 2147500000.0)
      {
        v18 = 0x7FFFFFFF00000000;
      }

      else if (v17 <= -2147500000.0)
      {
        v18 = 0x8000000000000000;
      }

      else
      {
        v18 = v17 << 32;
      }

      WebCore::FloatPoint::FloatPoint(v25, &v28);
      v19 = roundf(v25[0]);
      if (v19 >= 2147500000.0)
      {
        v20 = 0x7FFFFFFFLL;
      }

      else
      {
        v20 = 0x80000000;
        if (v19 > -2147500000.0)
        {
          v20 = v19;
        }
      }

      v21 = roundf(v25[1]);
      if (v21 >= 2147500000.0)
      {
        v22 = 0x7FFFFFFF00000000;
      }

      else if (v21 <= -2147500000.0)
      {
        v22 = 0x8000000000000000;
      }

      else
      {
        v22 = v21 << 32;
      }

      WebKit::WebPageProxy::navigateToPDFLinkWithSimulatedClick(v13, &v27, v18 | v16, v22 | v20);
      v24 = v27;
      v27 = 0;
      if (v24)
      {
        if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v23);
        }
      }
    }
  }
}

- (void)pdfHostViewController:(id)controller goToPageIndex:(int64_t)index withViewFrustum:(CGRect)frustum
{
  y = frustum.origin.y;
  x = frustum.origin.x;
  v8 = [(WKPDFView *)self _URLWithPageIndex:index, frustum.origin.x, frustum.origin.y, frustum.size.width, frustum.size.height];

  [(WKPDFView *)self _goToURL:v8 atLocation:x, y];
}

- (void)_showActionSheetForURL:(id)l atLocation:(CGPoint)location withAnnotationRect:(CGRect)rect
{
  v44 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  rectCopy = rect;
  if (objc_loadWeak(&self->_webView.m_weakReference))
  {
    memset(v22, 0, sizeof(v22));
    v23 = 1;
    v24 = 1;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v31[2] = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31[0] = 0;
    *(v31 + 6) = 0;
    WTF::URL::URL(v32);
    WTF::URL::URL(v33);
    v39 = 0;
    v40 = 0;
    v42[104] = 0;
    v42[120] = 0;
    v42[200] = 0;
    v43 = 0u;
    *&v33[40] = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v41 = 0u;
    memset(v42, 0, 25);
    WebCore::FloatRect::FloatRect(v19, &rectCopy);
    *(&v34 + 1) = WebCore::roundedIntRect(v19, v7);
    *&v35 = v8;
    WebCore::FloatPoint::FloatPoint(v19, &locationCopy);
    v9 = roundf(*v19);
    if (v9 >= 2147500000.0)
    {
      v10 = 0x7FFFFFFFLL;
    }

    else if (v9 <= -2147500000.0)
    {
      v10 = 0x80000000;
    }

    else
    {
      v10 = v9;
    }

    v11 = roundf(*(v19 + 1));
    if (v11 >= 2147500000.0)
    {
      v12 = 0x7FFFFFFF00000000;
    }

    else if (v11 <= -2147500000.0)
    {
      v12 = 0x8000000000000000;
    }

    else
    {
      v12 = v11 << 32;
    }

    *v22 = v12 | v10;
    MEMORY[0x19EB01DE0](v19, l);
    WTF::URL::operator=(v32, v19);
    v14 = v19[0];
    v19[0] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    WebKit::InteractionInformationAtPosition::operator=(&self->_positionInformation, v22);
    canBePresentedByDataDetectors = WebCore::DataDetection::canBePresentedByDataDetectors(&self->_positionInformation.url, v15);
    m_ptr = self->_actionSheetAssistant.m_ptr;
    if (canBePresentedByDataDetectors)
    {
      [(WKActionSheetAssistant *)m_ptr showDataDetectorsUIForPositionInformation:v22];
    }

    else
    {
      [(WKActionSheetAssistant *)m_ptr showLinkSheet];
    }

    WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(v22, v18);
  }
}

- (void)pdfHostViewController:(id)controller didLongPressPageIndex:(int64_t)index atLocation:(CGPoint)location withAnnotationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = location.y;
  v11 = location.x;
  v13 = [(WKPDFView *)self _URLWithPageIndex:index];

  [(WKPDFView *)self _showActionSheetForURL:v13 atLocation:v11 withAnnotationRect:v10, x, y, width, height];
}

- (void)pdfHostViewControllerExtensionProcessDidCrash:(id)crash
{
  WTF::RunLoop::mainSingleton(self);
  v6 = 0;
  objc_copyWeak(&v6, &self->_webView.m_weakReference);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F110D928;
  *(v4 + 8) = 0;
  objc_moveWeak((v4 + 8), &v6);
  v7 = v4;
  WTF::RunLoop::dispatch();
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  objc_destroyWeak(&v6);
}

- (optional<WebKit::InteractionInformationAtPosition>)positionInformationForActionSheetAssistant:(optional<WebKit::InteractionInformationAtPosition> *__return_ptr)retstr
{
  result = WebKit::InteractionInformationAtPosition::InteractionInformationAtPosition(retstr, (v1 + 560));
  *(&retstr[1].var0.__engaged_ + 136) = 1;
  return result;
}

- (void)actionSheetAssistant:(id)assistant performAction:(unsigned __int8)action
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (!action)
  {
    v17[0] = *MEMORY[0x1E69638C8];
    p_url = &self->_positionInformation.url;
    m_ptr = self->_positionInformation.url.m_string.m_impl.m_ptr;
    if (m_ptr)
    {
      atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v16, m_ptr, a2, assistant);
      if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(m_ptr, v7);
      }
    }

    else
    {
      v16 = &stru_1F1147748;
      v8 = &stru_1F1147748;
    }

    v18[0] = v16;
    v17[1] = *MEMORY[0x1E69638B8];
    WTF::URL::createCFURL(&v15, p_url);
    v18[1] = v15;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v10 = v15;
    v15 = 0;
    if (v10)
    {
    }

    v11 = v16;
    v16 = 0;
    if (v11)
    {
    }

    v12 = MEMORY[0x1E69DCD50];
    v13 = [objc_loadWeak(&self->_webView.m_weakReference) _effectiveDataOwner:{-[WKPDFView _dataOwnerForCopy](self, "_dataOwnerForCopy")}];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__WKPDFView_actionSheetAssistant_performAction___block_invoke;
    v14[3] = &unk_1E7631230;
    v14[4] = v9;
    [v12 _performAsDataOwner:v13 block:v14];
  }
}

uint64_t __48__WKPDFView_actionSheetAssistant_performAction___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *(a1 + 32);
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  return [objc_msgSend(MEMORY[0x1E69DCD50] "generalPasteboard")];
}

- (void)actionSheetAssistant:(id)assistant openElementAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  WTF::URL::createCFURL(&v8, &self->_positionInformation.url);
  [(WKPDFView *)self _goToURL:v8 atLocation:x, y];
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }
}

- (void)actionSheetAssistant:(id)assistant shareElementWithURL:(id)l rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Weak = objc_loadWeak(&self->_webView.m_weakReference);
  if (Weak)
  {
    v12 = Weak;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    memset(v29, 0, 41);
    MEMORY[0x19EB01DE0](&v27, l);
    v28 = 1;
    std::__optional_storage_base<WTF::URL,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::URL,false>>(&v29[2] + 8, &v27);
    if (v28 == 1)
    {
      v14 = v27.origin.x;
      v27.origin.x = 0.0;
      if (v14 != 0.0 && atomic_fetch_add_explicit(*&v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(*&v14, v13);
      }
    }

    v33 = 1;
    [(WKShareSheet *)self->_shareSheet.m_ptr dismissIfNeededWithReason:0];
    v15 = [[WKShareSheet alloc] initWithView:v12];
    m_ptr = self->_shareSheet.m_ptr;
    self->_shareSheet.m_ptr = v15;
    if (m_ptr)
    {

      v15 = self->_shareSheet.m_ptr;
    }

    [(WKShareSheet *)v15 setDelegate:self];
    v17 = self->_shareSheet.m_ptr;
    [-[PDFHostViewController view](self->_hostViewController.m_ptr "view")];
    v27.origin.x = v18;
    v27.origin.y = v19;
    v27.size.width = v20;
    v27.size.height = v21;
    WebCore::FloatRect::FloatRect(v26, &v27);
    v26[16] = 1;
    v22 = WTF::fastMalloc(0x10);
    *v22 = &unk_1F110D950;
    v25 = v22;
    [(WKShareSheet *)v17 presentWithParameters:v29 inRect:v26 completionHandler:&v25];
    v24 = v25;
    v25 = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    WebCore::ShareDataWithParsedURL::~ShareDataWithParsedURL(v29, v23);
  }
}

- (void)shareSheetDidDismiss:(id)dismiss
{
  [(WKShareSheet *)self->_shareSheet.m_ptr setDelegate:0];
  m_ptr = self->_shareSheet.m_ptr;
  self->_shareSheet.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (BOOL)actionSheetAssistant:(id)assistant shouldIncludeAppLinkActionsForElement:(id)element
{
  Weak = objc_loadWeak(&self->_webView.m_weakReference);
  if (Weak)
  {
    [Weak _page];
    if (v7)
    {
      LOBYTE(Weak) = (*(**(v7 + 120) + 464))(*(v7 + 120), element);
    }

    else
    {
      LOBYTE(Weak) = 0;
    }
  }

  return Weak;
}

- (RetainPtr<NSArray>)actionSheetAssistant:(id)assistant decideActionsForElement:(id)element defaultActions:(RetainPtr<NSArray>)actions
{
  v8 = v5;
  Weak = objc_loadWeak(&self->_webView.m_weakReference);
  if (Weak && (Weak = [Weak _page], v14))
  {
    v10 = *(v14 + 120);
    isa = actions.m_ptr->super.isa;
    actions.m_ptr->super.isa = 0;
    v13 = isa;
    Weak = (*(*v10 + 472))(v10, element, &v13);
    v12 = v13;
    v13 = 0;
    if (v12)
    {
    }
  }

  else
  {
    *v8 = 0;
  }

  return Weak;
}

- (id)dataDetectionContextForActionSheetAssistant:(id)assistant positionInformation:(const void *)information
{
  Weak = objc_loadWeak(&self->_webView.m_weakReference);
  if (!Weak)
  {
    return 0;
  }

  v5 = Weak;
  uIDelegate = [Weak UIDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [uIDelegate _dataDetectionContextForWebView:v5];
}

- (int64_t)compareFoundRange:(id)range toRange:(id)toRange inDocument:(id)document
{
  result = WTF::dynamic_objc_cast<WKPDFFoundTextPosition>([range start]);
  if (result)
  {
    v7 = result;
    result = WTF::dynamic_objc_cast<WKPDFFoundTextPosition>([toRange start]);
    if (result)
    {
      v8 = result;
      index = [v7 index];
      if (index >= [v8 index])
      {
        index2 = [v7 index];
        return index2 > [v8 index];
      }

      else
      {
        return -1;
      }
    }
  }

  return result;
}

- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator
{
  [(PDFHostViewController *)self->_hostViewController.m_ptr cancelFindString];
  if (aggregator)
  {
    aggregatorCopy = aggregator;
  }

  m_ptr = self->_searchAggregator.m_ptr;
  self->_searchAggregator.m_ptr = aggregator;
  if (m_ptr)
  {
  }

  if (string)
  {
    stringCopy = string;
  }

  v12 = self->_searchString.m_ptr;
  self->_searchString.m_ptr = string;
  if (v12)
  {
  }

  v13 = self->_hostViewController.m_ptr;
  stringCompareOptions = [options stringCompareOptions];

  [(PDFHostViewController *)v13 findString:string withOptions:stringCompareOptions];
}

- (void)decorateFoundTextRange:(id)range inDocument:(id)document usingStyle:(int64_t)style
{
  if (range)
  {
    if (style == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        m_ptr = self->_hostViewController.m_ptr;
        index = [range index];

        [(PDFHostViewController *)m_ptr focusOnSearchResultAtIndex:index];
      }
    }
  }
}

- (void)clearAllDecoratedFoundText
{
  [(PDFHostViewController *)self->_hostViewController.m_ptr cancelFindString];
  m_ptr = self->_searchAggregator.m_ptr;
  self->_searchAggregator.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (id).cxx_construct
{
  self->_actionSheetAssistant.m_ptr = 0;
  self->_data.m_ptr = 0;
  self->_documentForPrinting.m_ptr = 0;
  self->_findCompletion.m_block = 0;
  self->_findString.m_ptr = 0;
  self->_fixedOverlayView.m_ptr = 0;
  self->_focusedSearchResultIndex.var0.__null_state_ = 0;
  self->_focusedSearchResultIndex.__engaged_ = 0;
  self->_hostViewController.m_ptr = 0;
  self->_pageNumberIndicator.m_ptr = 0;
  self->_passwordForPrinting.m_buffer.m_ptr = 0;
  p_positionInformation = &self->_positionInformation;
  *(&self->_positionInformation.request.point.m_y + 3) = 0;
  self->_positionInformation.request.point = 0;
  *&self->_positionInformation.request.includeHasDoubleClickHandler = 1;
  self->_positionInformation.canBeValid = 1;
  *&self->_positionInformation.nodeAtPositionHasDoubleClickHandler.var0.__null_state_ = 0;
  *&self->_positionInformation.prefersDraggingOverTextSelection = 0;
  self->_positionInformation.touchCalloutEnabled = 1;
  self->_positionInformation.adjustedPointForNodeRespondingToClickEvents = 0;
  *&self->_positionInformation.isLink = 0;
  self->_positionInformation.isContentEditable = 0;
  *(&self->_positionInformation.containerScrollingNodeID.m_value.m_processIdentifier.m_identifier + 6) = 0;
  self->_positionInformation.containerScrollingNodeID.m_value.m_object.m_identifier = 0;
  self->_positionInformation.containerScrollingNodeID.m_value.m_processIdentifier.m_identifier = 0;
  WTF::URL::URL(&self->_positionInformation.url);
  WTF::URL::URL(&p_positionInformation->imageURL);
  p_positionInformation->cursorContext.cursor.__engaged_ = 0;
  *&p_positionInformation->cursorContext.isVerticalWritingMode = 0;
  p_positionInformation[1].isLink = 0;
  LOBYTE(p_positionInformation[1].containerScrollingNodeID.m_value.m_object.m_identifier) = 0;
  *(&p_positionInformation[1].imageURL + 8) = 0;
  *&p_positionInformation[1].imageURL.m_hostEnd = 0u;
  *&p_positionInformation->imageMIMEType.m_impl.m_ptr = 0u;
  *&p_positionInformation->idAttribute.m_impl.m_ptr = 0u;
  *&p_positionInformation->bounds.m_size.m_width = 0u;
  *&p_positionInformation->textBefore.m_impl.m_ptr = 0u;
  p_positionInformation->cursorContext.lineCaretExtent = 0u;
  p_positionInformation->cursorContext.cursor.var0.__null_state_ = 0;
  *&p_positionInformation->textIndicator.m_ptr = 0u;
  *&p_positionInformation->dataDetectorResults.m_ptr = 0u;
  *(&p_positionInformation->dataDetectorBounds + 1) = 0u;
  self->_suggestedFilename.m_ptr = 0;
  self->_webView.m_weakReference = 0;
  self->_keyboardScrollingAnimator.m_ptr = 0;
  self->_shareSheet.m_ptr = 0;
  self->_searchAggregator.m_ptr = 0;
  self->_searchString.m_ptr = 0;
  return self;
}

- (CGPDFDocument)_ensureDocumentForPrinting
{
  m_ptr = self->_documentForPrinting.m_ptr;
  if (!m_ptr)
  {
    v4 = CGDataProviderCreateWithCFData(self->_data.m_ptr);
    m_ptr = CGPDFDocumentCreateWithProvider(v4);
    if ((CGPDFDocumentIsUnlocked(m_ptr) || ((v5 = self->_passwordForPrinting.m_buffer.m_ptr) != 0 ? (v6 = v5 + 16) : (v6 = 0), CGPDFDocumentUnlockWithPassword(m_ptr, v6))) && CGPDFDocumentAllowsPrinting(m_ptr))
    {
      v7 = self->_documentForPrinting.m_ptr;
      self->_documentForPrinting.m_ptr = m_ptr;
      if (v7)
      {
        CFRelease(v7);
        m_ptr = self->_documentForPrinting.m_ptr;
      }
    }

    else if (m_ptr)
    {
      CFRelease(m_ptr);
      m_ptr = 0;
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return m_ptr;
}

- (unint64_t)_wk_pageCountForPrintFormatter:(id)formatter
{
  result = [(WKPDFView *)self _ensureDocumentForPrinting];
  if (result)
  {
    NumberOfPages = CGPDFDocumentGetNumberOfPages(result);
    if ([formatter snapshotFirstPage])
    {
      return NumberOfPages != 0;
    }

    else
    {
      return NumberOfPages;
    }
  }

  return result;
}

- (void)_wk_requestDocumentForPrintFormatter:(id)formatter
{
  _ensureDocumentForPrinting = [(WKPDFView *)self _ensureDocumentForPrinting];

  [formatter _setPrintedDocument:_ensureDocumentForPrinting];
}

- (uint64_t)pdfHostViewControllerExtensionProcessDidCrash:(uint64_t)crash
{
  *crash = &unk_1F110D928;
  objc_destroyWeak((crash + 8));
  return crash;
}

- (uint64_t)pdfHostViewControllerExtensionProcessDidCrash:(id *)crash
{
  *crash = &unk_1F110D928;
  objc_destroyWeak(crash + 1);

  return WTF::fastFree(crash, v2);
}

- (void)pdfHostViewControllerExtensionProcessDidCrash:(uint64_t)crash
{
  Weak = objc_loadWeak((crash + 8));
  if (Weak)
  {
    [Weak _page];
    if (v2)
    {
      WebKit::WebPageProxy::dispatchProcessDidTerminate(v2, *(v2 + 352), 5);
    }
  }
}

@end