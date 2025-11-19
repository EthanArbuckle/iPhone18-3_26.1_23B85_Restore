@interface BKTOCWebViewController2
+ (id)classNameFromChapterInfo:(id)a3 excludedFromSample:(BOOL)a4;
+ (id)hairlineImageURIWithColor:(id)a3 horizontal:(BOOL)a4;
+ (id)pageNumberStringForChapter:(id)a3 directoryDelegate:(id)a4;
+ (id)tocHTMLWithFetchedResultsController:(id)a3 directoryDelegate:(id)a4 chapterTopLevelFont:(id)a5 chapterSubLevelFont:(id)a6 pageLabelFont:(id)a7 themeContentBackgroundColor:(id)a8 textColor:(id)a9 selectedTextColor:(id)a10 pageNumberTextColor:(id)a11 separatorColor:(id)a12 highlightedBackgroundColor:(id)a13 highlightedTextColor:(id)a14 contentInsets:(UIEdgeInsets)a15 completionBlock:(id)a16;
+ (int64_t)pageNumberForChapter:(id)a3 directoryDelegate:(id)a4;
- (BOOL)_webViewWantsToLoadURL:(id)a3 navigationIsClickOrOther:(BOOL)a4;
- (CGSize)contentSize;
- (id)_indexPathForURL:(id)a3;
- (id)chapterInfoForCurrentNode;
- (id)chapterInfoForPageNumber:(id)a3;
- (id)elementIdForChapterInfo:(id)a3;
- (id)elementIdForCurrentNode;
- (id)htmlMarkup;
- (id)pageLabelFont;
- (id)tocDelegate;
- (unint64_t)pageIndexForLocation:(id)a3;
- (unint64_t)tocDataIndexFromChapterHref:(id)a3;
- (void)_doInitialWebViewPositionAndLoad;
- (void)_updateContentInsets;
- (void)applyClassName:(id)a3 toOnlyLinkWithHref:(id)a4;
- (void)centerWebView;
- (void)highlightCurrentNodeWithCompletionBlock:(id)a3;
- (void)installJavaScriptWithCompletionBlock:(id)a3;
- (void)invalidateFollowingThemeChange;
- (void)loadHTML;
- (void)releaseViews;
- (void)scrollToItemId:(id)a3 completionBlock:(id)a4;
- (void)setTheme:(id)a3;
- (void)updatePageNumberStrings;
- (void)updatePageStylesheet;
- (void)updateView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation BKTOCWebViewController2

- (id)tocDelegate
{
  v2 = [(BKDirectoryContent *)self directoryDelegate];
  v3 = BUProtocolCast();

  return v3;
}

- (void)releaseViews
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4 = *&self->_htmlLoaded;
  *&self->_htmlLoaded = 0;

  [(BKActivityIndicatorOverlayView *)self->_activityIndicator setNavigationDelegate:0];
  [(BKActivityIndicatorOverlayView *)self->_activityIndicator stopLoading];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = 0;

  v6.receiver = self;
  v6.super_class = BKTOCWebViewController2;
  [(BKTOCViewController *)&v6 releaseViews];
}

- (void)setTheme:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKTOCWebViewController2;
  [(BKTOCViewController *)&v6 setTheme:a3];
  [(BKTOCWebViewController2 *)self updateView];
  v4 = [(BKTOCWebViewController2 *)self theme];
  v5 = [(BKTOCWebViewController2 *)self scrollView];
  [v4 stylizeScrollView:v5];
}

+ (id)pageNumberStringForChapter:(id)a3 directoryDelegate:(id)a4
{
  v5 = a3;
  v6 = [a4 tocViewController:0 pageTitleForChapter:v5];
  v7 = [v5 isExcludedFromSample];

  if (v7)
  {
    v8 = &stru_1E7188;
  }

  else
  {
    if ([v6 length])
    {
      goto LABEL_6;
    }

    v9 = AEBundle();
    v8 = [v9 localizedStringForKey:@"…" value:&stru_1E7188 table:0];

    v6 = v9;
  }

  v6 = v8;
LABEL_6:

  return v6;
}

+ (int64_t)pageNumberForChapter:(id)a3 directoryDelegate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isExcludedFromSample])
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = [v6 tocViewController:0 pageNumberForChapter:v5];
  }

  return v7;
}

- (void)updatePageNumberStrings
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_467B4;
  v21 = sub_467C4;
  v22 = +[NSMutableArray array];
  v3 = [(BKTOCViewController *)self fetchedResultsController];
  v4 = [v3 fetchedObjects];

  v5 = [(BKTOCWebViewController2 *)self tocData];
  v6 = [v5 objectForKeyedSubscript:@"chapters"];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_467CC;
  v14[3] = &unk_1E3BD0;
  v14[4] = self;
  v16 = &v17;
  v7 = v6;
  v15 = v7;
  [v4 enumerateObjectsUsingBlock:v14];
  v8 = v18[5];
  v13 = 0;
  v9 = [NSJSONSerialization dataWithJSONObject:v8 options:1 error:&v13];
  v10 = v13;
  if ([v9 length])
  {
    v11 = [[NSString alloc] initWithData:v9 encoding:4];
    v12 = [NSString stringWithFormat:@"updatePageNumberStrings(%@)", v11];;
    [(BKActivityIndicatorOverlayView *)self->_activityIndicator evaluateJavaScript:v12 completionHandler:&stru_1E3C10];
  }

  _Block_object_dispose(&v17, 8);
}

+ (id)classNameFromChapterInfo:(id)a3 excludedFromSample:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 objectForKeyedSubscript:@"indentationLevel"];
  v6 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"indentation%lu", [v5 unsignedLongValue]);

  if (v4)
  {
    [v6 appendString:@" notPageExists"];
  }

  return v6;
}

+ (id)hairlineImageURIWithColor:(id)a3 horizontal:(BOOL)a4
{
  [a3 CGColor];
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v5 = BCCreateHairlineImageAsDataForColor();

  if (v5)
  {
    v6 = [v5 bu_dataURIString];
    CFRelease(v5);
  }

  else
  {
    v6 = &stru_1E7188;
  }

  return v6;
}

+ (id)tocHTMLWithFetchedResultsController:(id)a3 directoryDelegate:(id)a4 chapterTopLevelFont:(id)a5 chapterSubLevelFont:(id)a6 pageLabelFont:(id)a7 themeContentBackgroundColor:(id)a8 textColor:(id)a9 selectedTextColor:(id)a10 pageNumberTextColor:(id)a11 separatorColor:(id)a12 highlightedBackgroundColor:(id)a13 highlightedTextColor:(id)a14 contentInsets:(UIEdgeInsets)a15 completionBlock:(id)a16
{
  right = a15.right;
  left = a15.left;
  v78 = a3;
  v76 = a4;
  v24 = a5;
  v79 = a6;
  v75 = a7;
  v25 = a8;
  v83 = a9;
  v26 = a10;
  v80 = a11;
  v27 = a12;
  v82 = a13;
  v81 = a14;
  v74 = a16;
  v28 = +[NSMutableDictionary dictionary];
  v72 = v27;
  v29 = [a1 hairlineImageURIWithColor:v27 horizontal:0];
  [v28 setObject:@"vertical-rl" forKeyedSubscript:@"toc_writing_mode"];
  v30 = +[NSMutableArray array];
  [v28 setObject:v30 forKeyedSubscript:@"chapters"];

  v31 = [v76 tocViewControllerTocIdCssRules:0];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = &stru_1E7188;
  }

  [v28 setObject:v33 forKeyedSubscript:@"idCssRules"];

  v73 = v26;
  v34 = [v26 bc_rgbaString];
  v35 = [NSString stringWithFormat:@"%@", v34];
  [v28 setObject:v35 forKeyedSubscript:@"selectedTextColor"];

  v36 = +[UIColor grayColor];
  v37 = [v36 bc_rgbaString];
  v38 = [NSString stringWithFormat:@"%@", v37];
  [v28 setObject:v38 forKeyedSubscript:@"textNotPageExistsColor"];

  [v28 setObject:v29 forKeyedSubscript:@"dividerImageURI"];
  v39 = [v24 bc_cssFontFamily];
  [v28 setObject:v39 forKeyedSubscript:@"chapterTopLevelFontFamily"];

  v40 = [v24 bc_cssFontWeight];
  [v28 setObject:v40 forKeyedSubscript:@"chapterTopLevelFontWeight"];

  v41 = [v24 bc_cssFontSize];
  [v28 setObject:v41 forKeyedSubscript:@"chapterTopLevelFontSize"];

  v42 = [v79 bc_cssFontFamily];
  [v28 setObject:v42 forKeyedSubscript:@"chapterSubLevelFontFamily"];

  v43 = [v79 bc_cssFontWeight];
  [v28 setObject:v43 forKeyedSubscript:@"chapterSubLevelFontWeight"];

  v44 = [v79 bc_cssFontSize];
  [v28 setObject:v44 forKeyedSubscript:@"chapterSubLevelFontSize"];

  v45 = [v75 bc_cssFontFamily];
  [v28 setObject:v45 forKeyedSubscript:@"pageLabelFontFamily"];

  v46 = [v75 bc_cssFontWeight];
  [v28 setObject:v46 forKeyedSubscript:@"pageLabelFontWeight"];

  v47 = [v75 bc_cssFontSize];
  [v28 setObject:v47 forKeyedSubscript:@"pageLabelFontSize"];

  v48 = [v25 bc_rgbaString];
  v49 = [NSString stringWithFormat:@"%@", v48];
  [v28 setObject:v49 forKeyedSubscript:@"themeContentBackgroundColor"];

  v50 = [v83 bc_rgbaString];
  v51 = [NSString stringWithFormat:@"%@", v50];
  [v28 setObject:v51 forKeyedSubscript:@"textColor"];

  v52 = [v80 bc_rgbaString];
  v53 = [NSString stringWithFormat:@"%@", v52];
  [v28 setObject:v53 forKeyedSubscript:@"pageNumberTextColor"];

  v54 = [v82 bc_rgbaString];
  v55 = [NSString stringWithFormat:@"%@", v54];
  [v28 setObject:v55 forKeyedSubscript:@"highlightedBackgroundColor"];

  v56 = [v81 bc_rgbaString];
  v57 = [NSString stringWithFormat:@"%@", v56];
  [v28 setObject:v57 forKeyedSubscript:@"highlightedTextColor"];

  v58 = [NSString stringWithFormat:@"%ldpx", llround(left)];
  [v28 setObject:v58 forKeyedSubscript:@"leftContentInset"];

  v59 = [NSString stringWithFormat:@"%ldpx", llround(44.0)];
  [v28 setObject:v59 forKeyedSubscript:@"leftIndentZero"];

  v60 = [NSString stringWithFormat:@"%ldpx", llround(44.0 + 16.0)];
  [v28 setObject:v60 forKeyedSubscript:@"leftIndentOne"];

  v61 = [NSString stringWithFormat:@"%ldpx", llround(16.0 * 2.0 + 44.0)];
  [v28 setObject:v61 forKeyedSubscript:@"leftIndentTwo"];

  v62 = [NSString stringWithFormat:@"%ldpx", llround(right)];
  [v28 setObject:v62 forKeyedSubscript:@"rightContentInset"];

  v63 = [NSString stringWithFormat:@"%ldpx", llround(34.0)];
  [v28 setObject:v63 forKeyedSubscript:@"rightIndent"];

  v64 = [v78 fetchedObjects];
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x2020000000;
  v90[3] = 0;
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_47324;
  v85[3] = &unk_1E3C38;
  v88 = v90;
  v89 = a1;
  v65 = v76;
  v86 = v65;
  v66 = v28;
  v87 = v66;
  [v64 enumerateObjectsUsingBlock:v85];
  v67 = AEBundle();
  v68 = [v67 URLForResource:@"BEVerticalTOC.xhtml" withExtension:@"tmpl"];

  v84 = 0;
  v69 = [AEMinimalTemplate evaluateTemplateWithURL:v68 data:v66 error:&v84];
  v70 = v84;
  if (v74)
  {
    v74[2](v74, v66);
  }

  _Block_object_dispose(v90, 8);

  return v69;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = BKTOCWebViewController2;
  [(BKContentViewController *)&v24 viewDidLoad];
  v3 = [BEWebViewFactory viewConfiguredForWebTOC:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v3;

  [(BKActivityIndicatorOverlayView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKActivityIndicatorOverlayView *)self->_activityIndicator setNavigationDelegate:self];
  v5 = +[UIColor clearColor];
  [(BKActivityIndicatorOverlayView *)self->_activityIndicator setBackgroundColor:v5];

  v6 = +[UIColor clearColor];
  v7 = [(BKActivityIndicatorOverlayView *)self->_activityIndicator scrollView];
  [v7 setBackgroundColor:v6];

  [(BKActivityIndicatorOverlayView *)self->_activityIndicator setOpaque:0];
  v8 = [(BKActivityIndicatorOverlayView *)self->_activityIndicator configuration];
  v9 = [v8 defaultWebpagePreferences];
  [v9 _setMouseEventPolicy:1];

  v10 = [(BKTOCWebViewController2 *)self scrollView];
  [v10 setBounces:1];
  [v10 setAlwaysBounceVertical:0];
  [v10 setDecelerationRate:UIScrollViewDecelerationRateNormal];
  [v10 setContentInsetAdjustmentBehavior:2];
  [v10 _setShowsBackgroundShadow:0];
  v11 = [(BKTOCWebViewController2 *)self theme];
  v12 = [(BKTOCWebViewController2 *)self scrollView];
  [v11 stylizeScrollView:v12];

  v13 = [BKActivityIndicatorOverlayView alloc];
  v14 = [(BKTOCWebViewController2 *)self theme];
  v15 = [v14 contentTextColor];
  v16 = [v15 colorWithAlphaComponent:0.7];
  v17 = [(BKTOCWebViewController2 *)self theme];
  v18 = [v17 backgroundColorForTraitEnvironment:self];
  v19 = [(BKActivityIndicatorOverlayView *)v13 initWithBackgroundColor:v16 foregroundColor:v18];
  v20 = *&self->_htmlLoaded;
  *&self->_htmlLoaded = v19;

  v21 = *&self->_htmlLoaded;
  v22 = [(BKTOCWebViewController2 *)self view];
  [v21 showIndicatorCenteredInView:v22 animated:1 animationDelay:0.0];

  v23 = +[NSNotificationCenter defaultCenter];
  [v23 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_doInitialWebViewPositionAndLoad
{
  v8 = [(BKTOCWebViewController2 *)self view];
  [v8 bounds];
  [(BKActivityIndicatorOverlayView *)self->_activityIndicator setFrame:?];
  [v8 insertSubview:self->_activityIndicator atIndex:0];
  [(BKTOCWebViewController2 *)self _updateContentInsets];
  if ([(BKTOCViewController *)self isVertical])
  {
    [(BKContentViewController *)self contentInsets];
    v4 = v3;
    v5 = [(BKTOCWebViewController2 *)self view];
    [v5 bounds];
    [(BKActivityIndicatorOverlayView *)self->_activityIndicator setFrame:v6 + 0.0, v4 + v7];
  }

  [(BKTOCWebViewController2 *)self loadHTML];
}

- (void)_updateContentInsets
{
  v3 = [(BKContentViewController *)self layoutDelegate];

  if (v3)
  {
    v4 = [(BKContentViewController *)self layoutDelegate];
    [v4 edgeInsetsForContentViewController:self];
    [(BKContentViewController *)self setContentInsets:?];

    v5 = [(BKContentViewController *)self layoutDelegate];
    [v5 separatorInsetsForContentViewController:self];
    [(BKContentViewController *)self setSeparatorInsets:?];
  }
}

- (void)centerWebView
{
  if ([(BKTOCViewController *)self isVertical])
  {
    [(BKContentViewController *)self contentInsets];
    v4 = v3;
    v6 = v5;
    v7 = [(BKTOCWebViewController2 *)self view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    activityIndicator = self->_activityIndicator;
    if (activityIndicator)
    {
      v17 = round(v15) - (v4 + v6);
      v18 = v9 + 0.0;
      v19 = v4 + v11;
      [(BKActivityIndicatorOverlayView *)activityIndicator frame];
      v25.origin.x = v18;
      v25.origin.y = v19;
      v25.size.width = v13;
      v25.size.height = v17;
      if (!CGRectEqualToRect(v23, v25))
      {
        v24.origin.x = v18;
        v24.origin.y = v19;
        v24.size.width = v13;
        v24.size.height = v17;
        v21 = [NSString stringWithFormat:@"document.getElementById('setupWritingMode').style.height = '%ldpx'", llround(CGRectGetHeight(v24))];;
        [(BKActivityIndicatorOverlayView *)self->_activityIndicator evaluateJavaScript:v21 completionHandler:&stru_1E3C58];
        [(BKActivityIndicatorOverlayView *)self->_activityIndicator setFrame:v18, v19, v13, v17];
        v20 = [(BKActivityIndicatorOverlayView *)self->_activityIndicator scrollView];
        [v20 setContentSize:{v13, v17}];
      }
    }
  }
}

- (void)updateView
{
  if (BYTE4(self->super._verticalCenteringInsets.right) == 1)
  {
    [(BKTOCWebViewController2 *)self _updateContentInsets];
    [(BKTOCWebViewController2 *)self updatePageStylesheet];
    [(BKTOCWebViewController2 *)self updatePageNumberStrings];

    [(BKTOCWebViewController2 *)self centerWebView];
  }
}

- (void)invalidateFollowingThemeChange
{
  v2 = [(BKTOCWebViewController2 *)self viewIfLoaded];
  [v2 setNeedsLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BKTOCWebViewController2;
  [(BKTOCViewController *)&v5 viewWillAppear:a3];
  [(BKTOCWebViewController2 *)self _doInitialWebViewPositionAndLoad];
  v4 = [(BKTOCWebViewController2 *)self view];
  [v4 setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKTOCWebViewController2;
  [(BKTOCWebViewController2 *)&v3 viewWillLayoutSubviews];
  if (![(BKTOCViewController *)self shouldIgnoreViewLayoutUpdates])
  {
    [(BKTOCWebViewController2 *)self updateView];
    [(BKTOCViewController *)self reload];
  }
}

- (id)_indexPathForURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  if ([v3 hasPrefix:@"row-"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"row-", "length")}];
    v5 = [v4 integerValue];

    v6 = [NSIndexPath indexPathForRow:v5 inSection:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v19 = a5;
  v7 = a4;
  v8 = [v7 request];
  v9 = [v8 URL];
  v10 = [(BKTOCWebViewController2 *)self _indexPathForURL:v9];

  v11 = [v7 navigationType];
  if (v11 + 1 <= 1 && v10)
  {
    v12 = [(BKTOCViewController *)self fetchedResultsController];
    v13 = [v12 objectAtIndexPath:v10];

    if (v13)
    {
      v14 = [(BKTOCViewController *)self eventEngagement];
      [v14 sendReaderEventNewSectionViaToC];

      v15 = [(BKTOCWebViewController2 *)self tocDelegate];
      [v15 tocViewController:self didSelectChapter:v13];

      activityIndicator = self->_activityIndicator;
      if (activityIndicator)
      {
        [(BKActivityIndicatorOverlayView *)activityIndicator evaluateJavaScript:@"clearSelectedLink();" completionHandler:&stru_1E3C78];
      }
    }
  }

  v17 = objc_retainBlock(v19);
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, v10 == 0);
  }
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_48054;
  v4[3] = &unk_1E2C20;
  v4[4] = self;
  [(BKTOCWebViewController2 *)self installJavaScriptWithCompletionBlock:v4, a4];
}

- (BOOL)_webViewWantsToLoadURL:(id)a3 navigationIsClickOrOther:(BOOL)a4
{
  v4 = a4;
  v6 = [(BKTOCWebViewController2 *)self _indexPathForURL:a3];
  v7 = v6;
  if (v4 && v6)
  {
    v8 = [(BKTOCViewController *)self fetchedResultsController];
    v9 = [v8 objectAtIndexPath:v7];

    if (v9)
    {
      v10 = [(BKTOCWebViewController2 *)self tocDelegate];
      [v10 tocViewController:self didSelectChapter:v9];
    }
  }

  return v7 == 0;
}

- (id)pageLabelFont
{
  [(BKTOCViewController *)self calculateFontSize];

  return [UIFont systemFontOfSize:?];
}

- (void)scrollToItemId:(id)a3 completionBlock:(id)a4
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_483E0;
  v13[3] = &unk_1E3CA0;
  v6 = a4;
  v14 = v6;
  v7 = a3;
  v8 = objc_retainBlock(v13);
  v9 = [NSString stringWithFormat:@"scrollToItemWithId(%@)", v7];

  activityIndicator = self->_activityIndicator;
  if (activityIndicator)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_48460;
    v11[3] = &unk_1E3550;
    v12 = v8;
    [(BKActivityIndicatorOverlayView *)activityIndicator evaluateJavaScript:v9 completionHandler:v11];
  }
}

- (id)chapterInfoForPageNumber:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BKTOCWebViewController2 *)self tocData];
    v6 = [v5 objectForKeyedSubscript:@"chapters"];

    v7 = [v6 reverseObjectEnumerator];
    v8 = [v7 nextObject];
    if (v8)
    {
      while (1)
      {
        v9 = [v8 objectForKeyedSubscript:@"pageInteger"];
        if ([v9 integerValue] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [v4 integerValue];
          if (v10 >= [v9 integerValue])
          {
            break;
          }
        }

        v11 = [v7 nextObject];

        v8 = v11;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v8 = v8;
    }

LABEL_9:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)tocDataIndexFromChapterHref:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BKTOCWebViewController2 *)self tocData];
    v6 = [v5 objectForKeyedSubscript:@"chapters"];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v18;
LABEL_4:
      v12 = 0;
      v13 = v10;
      v10 += v9;
      while (1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v17 + 1) + 8 * v12) objectForKeyedSubscript:{@"href", v17}];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          break;
        }

        ++v13;
        if (v9 == ++v12)
        {
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (void)applyClassName:(id)a3 toOnlyLinkWithHref:(id)a4
{
  v5 = [NSString stringWithFormat:@"applyClassNameToOnlyLinkWithHref(%@, %@)", a4, a3];;
  activityIndicator = self->_activityIndicator;
  if (activityIndicator)
  {
    v7 = v5;
    activityIndicator = [(BKActivityIndicatorOverlayView *)activityIndicator evaluateJavaScript:v5 completionHandler:&stru_1E3CC0];
    v5 = v7;
  }

  _objc_release_x1(activityIndicator, v5);
}

- (unint64_t)pageIndexForLocation:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = a3;
  v5 = [(BKDirectoryContent *)self directoryDelegate];
  v6 = [v5 directoryContent:self pageNumberForLocation:v4];

  return v6;
}

- (id)chapterInfoForCurrentNode
{
  v3 = [(BKTOCWebViewController2 *)self tocDelegate];
  v4 = [v3 tocViewControllerCurrentLocation:self];

  v5 = [(BKTOCWebViewController2 *)self pageIndexForLocation:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedInteger:v5 + 1];
    v8 = [(BKTOCWebViewController2 *)self chapterInfoForPageNumber:v7];
    v9 = v8;
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v10 = [(BKTOCWebViewController2 *)self tocData];
      v11 = [v10 objectForKeyedSubscript:@"chapters"];
      v6 = [v11 firstObject];
    }
  }

  return v6;
}

- (id)elementIdForCurrentNode
{
  v3 = [(BKTOCWebViewController2 *)self chapterInfoForCurrentNode];
  v4 = [(BKTOCWebViewController2 *)self elementIdForChapterInfo:v3];

  return v4;
}

- (id)elementIdForChapterInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"href"];
    if (!v6)
    {
      v17 = BCIMLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v24 = 136315650;
        v25 = "[BKTOCWebViewController2 elementIdForChapterInfo:]";
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Controllers/Directory/BKTOCWebViewController2.m";
        v28 = 1024;
        v29 = 615;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%s %s:%d", &v24, 0x1Cu);
      }

      v9 = BCIMLog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v24 = 138412290;
      v25 = v5;
      v10 = "@Expected a toc href for chapter: %@";
      goto LABEL_19;
    }

    if (BYTE4(self->super._verticalCenteringInsets.right) == 1)
    {
      [(BKTOCWebViewController2 *)self applyClassName:@"currentLocation" toOnlyLinkWithHref:v6];
    }

    v7 = [(BKTOCWebViewController2 *)self tocDataIndexFromChapterHref:v6];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = BCIMLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v24 = 136315650;
        v25 = "[BKTOCWebViewController2 elementIdForChapterInfo:]";
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Controllers/Directory/BKTOCWebViewController2.m";
        v28 = 1024;
        v29 = 612;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s %s:%d", &v24, 0x1Cu);
      }

      v9 = BCIMLog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v24 = 138412290;
      v25 = v6;
      v10 = "@Expected a toc data for href: %@";
LABEL_19:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v10, &v24, 0xCu);
LABEL_20:
      v16 = &stru_1E7188;
LABEL_21:

      goto LABEL_22;
    }

    v19 = v7;
    v20 = [(BKTOCWebViewController2 *)self tocData];
    v21 = [v20 objectForKeyedSubscript:@"chapters"];
    v22 = [v21 objectAtIndexedSubscript:v19];
    v16 = [v22 objectForKeyedSubscript:@"id"];

    if (!v16)
    {
      v23 = BCIMLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = 136315650;
        v25 = "[BKTOCWebViewController2 elementIdForChapterInfo:]";
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Controllers/Directory/BKTOCWebViewController2.m";
        v28 = 1024;
        v29 = 609;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%s %s:%d", &v24, 0x1Cu);
      }

      v9 = BCIMLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "@Expected a toc element id for href: %@", &v24, 0xCu);
      }

      v16 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v11 = [(BKTOCWebViewController2 *)self tocDelegate];
    v12 = [v11 tocViewControllerCurrentLocation:self];
    v13 = [(BKTOCWebViewController2 *)self pageIndexForLocation:v12];

    v14 = BCIMLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v24 = 136315650;
      v25 = "[BKTOCWebViewController2 elementIdForChapterInfo:]";
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Controllers/Directory/BKTOCWebViewController2.m";
      v28 = 1024;
      v29 = 619;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%s %s:%d", &v24, 0x1Cu);
    }

    v6 = BCIMLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = [NSNumber numberWithUnsignedInteger:v13];
      v24 = 138412290;
      v25 = v15;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "@Expected a toc entry for page %@", &v24, 0xCu);
    }

    v16 = &stru_1E7188;
  }

LABEL_22:

  return v16;
}

- (void)highlightCurrentNodeWithCompletionBlock:(id)a3
{
  v8 = a3;
  v4 = [(BKTOCWebViewController2 *)self elementIdForCurrentNode];
  if (v4)
  {
    [(BKTOCWebViewController2 *)self scrollToItemId:v4 completionBlock:v8];
    activityIndicator = self->_activityIndicator;
    v6 = [NSString stringWithFormat:@"selectItemWithId(%@)", v4];;
    [(BKActivityIndicatorOverlayView *)activityIndicator evaluateJavaScript:v6 completionHandler:&stru_1E3CE0];
  }

  else
  {
    v6 = [(BKTOCWebViewController2 *)self tocDelegate];
    v7 = [v6 tocViewControllerCurrentLocation:self];
    v8[2](v8, v7 == 0);
  }
}

- (void)installJavaScriptWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(BKTOCWebViewController2 *)self tocData];
  v6 = [v5 objectForKeyedSubscript:@"chapters"];
  v19 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:v6 options:1 error:&v19];
  v8 = v19;

  if ([v7 length])
  {
    v9 = [[NSString alloc] initWithData:v7 encoding:4];
    v10 = [NSString stringWithFormat:@"setupTOCWithChapters(%@)", v9];;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_491E0;
    v16[3] = &unk_1E3D48;
    v16[4] = self;
    v18 = v4;
    v17 = v8;
    v11 = objc_retainBlock(v16);
    v12 = v11;
    activityIndicator = self->_activityIndicator;
    if (activityIndicator)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_493F8;
      v14[3] = &unk_1E3550;
      v15 = v11;
      [(BKActivityIndicatorOverlayView *)activityIndicator evaluateJavaScript:v10 completionHandler:v14];
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (id)htmlMarkup
{
  [(BKTOCViewController *)self establishChapterFonts];
  v3 = [(BKTOCWebViewController2 *)self themePage];
  v25 = [v3 separatorColor];
  v4 = [(BKTOCWebViewController2 *)self traitCollection];
  v5 = dbl_193280[[v4 userInterfaceStyle] == &dword_0 + 2];

  v6 = +[UIColor tintColor];
  v7 = [v6 colorWithAlphaComponent:v5];

  v24 = v7;
  if ([(BKTOCViewController *)self usesPopoverStyle])
  {
    v8 = v7;
  }

  else
  {
    v8 = [v3 tableViewCellSelectedColor];
  }

  v9 = v8;
  v19 = v8;
  v23 = +[UIColor clearColor];
  v10 = [v3 primaryTextColor];
  v11 = [v3 tintColor];
  v12 = [v3 tocPageNumberTextColor];
  v20 = objc_opt_class();
  v18 = [(BKTOCViewController *)self fetchedResultsController];
  v22 = [(BKTOCWebViewController2 *)self tocDelegate];
  v13 = BUProtocolCast();
  v14 = [(BKTOCViewController *)self chapterTopLevelFont];
  v15 = [(BKTOCViewController *)self chapterSubLevelFont];
  v16 = [(BKTOCWebViewController2 *)self pageLabelFont];
  [(BKContentViewController *)self contentInsets];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_4972C;
  v26[3] = &unk_1E3D70;
  v26[4] = self;
  v21 = [v20 tocHTMLWithFetchedResultsController:v18 directoryDelegate:v13 chapterTopLevelFont:v14 chapterSubLevelFont:v15 pageLabelFont:v16 themeContentBackgroundColor:v23 textColor:v10 selectedTextColor:v11 pageNumberTextColor:v12 separatorColor:v25 highlightedBackgroundColor:v9 highlightedTextColor:v10 contentInsets:v26 completionBlock:?];

  return v21;
}

- (void)loadHTML
{
  v13 = [(BKTOCWebViewController2 *)self htmlMarkup];
  v3 = [(BKContentViewController *)self book];
  v4 = [v3 tocPageHref];
  v5 = [v3 urlForHref:v4];

  v6 = [v5 absoluteString];
  v7 = [(BKTOCWebViewController2 *)self elementIdForCurrentNode];
  v8 = [NSString stringWithFormat:@"%@#%@", v6, v7];

  v9 = [NSURL URLWithString:v8];
  v10 = BEURLHandleriBooksImgUrlFromiBooksURL();

  v11 = [v13 dataUsingEncoding:4];
  v12 = [(BKActivityIndicatorOverlayView *)self->_activityIndicator loadData:v11 MIMEType:BEXBEHTMLContentType characterEncodingName:BEUTF8StringEncodingName baseURL:v10];
}

- (void)updatePageStylesheet
{
  v3 = [(BKTOCWebViewController2 *)self htmlMarkup];
  v4 = AEBundle();
  v5 = [v4 URLForResource:@"BEVerticalTOC.xhtml" withExtension:@"tmpl"];

  v6 = [(BKTOCWebViewController2 *)self tocData];
  v21 = 0;
  v7 = [AEMinimalTemplate evaluateTemplateWithURL:v5 data:v6 error:&v21];
  v8 = v21;

  v9 = [v7 rangeOfString:@"<style"];
  v10 = [v7 rangeOfString:@">" options:0 range:{v9, objc_msgSend(v7, "length") - v9}];
  v12 = [v7 substringWithRange:{&v10[v11], objc_msgSend(v7, "rangeOfString:options:range:", @"</style>", 0, &v10[v11], objc_msgSend(v7, "length") - &v10[v11]) - &v10[v11]}];
  v22 = v12;
  v13 = [NSArray arrayWithObjects:&v22 count:1];
  v20 = 0;
  v14 = [NSJSONSerialization dataWithJSONObject:v13 options:1 error:&v20];
  v15 = v20;

  v16 = [[NSString alloc] initWithData:v14 encoding:4];
  v17 = [(BKTOCWebViewController2 *)self elementIdForCurrentNode];
  v18 = [NSString stringWithFormat:@"updatePageStylesheet(%@) clearSelectedLink(); scrollToItemWithId(%@)", v16, v17];;
  activityIndicator = self->_activityIndicator;
  if (activityIndicator)
  {
    [(BKActivityIndicatorOverlayView *)activityIndicator evaluateJavaScript:v18 completionHandler:&stru_1E3D90];
  }
}

- (CGSize)contentSize
{
  tocData = self->_tocData;
  width = self->_contentSize.width;
  result.height = width;
  result.width = *&tocData;
  return result;
}

@end