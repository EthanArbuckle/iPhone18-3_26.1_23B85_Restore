@interface BKTOCWebViewController2
+ (id)classNameFromChapterInfo:(id)info excludedFromSample:(BOOL)sample;
+ (id)hairlineImageURIWithColor:(id)color horizontal:(BOOL)horizontal;
+ (id)pageNumberStringForChapter:(id)chapter directoryDelegate:(id)delegate;
+ (id)tocHTMLWithFetchedResultsController:(id)controller directoryDelegate:(id)delegate chapterTopLevelFont:(id)font chapterSubLevelFont:(id)levelFont pageLabelFont:(id)labelFont themeContentBackgroundColor:(id)color textColor:(id)textColor selectedTextColor:(id)self0 pageNumberTextColor:(id)self1 separatorColor:(id)self2 highlightedBackgroundColor:(id)self3 highlightedTextColor:(id)self4 contentInsets:(UIEdgeInsets)self5 completionBlock:(id)self6;
+ (int64_t)pageNumberForChapter:(id)chapter directoryDelegate:(id)delegate;
- (BOOL)_webViewWantsToLoadURL:(id)l navigationIsClickOrOther:(BOOL)other;
- (CGSize)contentSize;
- (id)_indexPathForURL:(id)l;
- (id)chapterInfoForCurrentNode;
- (id)chapterInfoForPageNumber:(id)number;
- (id)elementIdForChapterInfo:(id)info;
- (id)elementIdForCurrentNode;
- (id)htmlMarkup;
- (id)pageLabelFont;
- (id)tocDelegate;
- (unint64_t)pageIndexForLocation:(id)location;
- (unint64_t)tocDataIndexFromChapterHref:(id)href;
- (void)_doInitialWebViewPositionAndLoad;
- (void)_updateContentInsets;
- (void)applyClassName:(id)name toOnlyLinkWithHref:(id)href;
- (void)centerWebView;
- (void)highlightCurrentNodeWithCompletionBlock:(id)block;
- (void)installJavaScriptWithCompletionBlock:(id)block;
- (void)invalidateFollowingThemeChange;
- (void)loadHTML;
- (void)releaseViews;
- (void)scrollToItemId:(id)id completionBlock:(id)block;
- (void)setTheme:(id)theme;
- (void)updatePageNumberStrings;
- (void)updatePageStylesheet;
- (void)updateView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation BKTOCWebViewController2

- (id)tocDelegate
{
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
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

- (void)setTheme:(id)theme
{
  v6.receiver = self;
  v6.super_class = BKTOCWebViewController2;
  [(BKTOCViewController *)&v6 setTheme:theme];
  [(BKTOCWebViewController2 *)self updateView];
  theme = [(BKTOCWebViewController2 *)self theme];
  scrollView = [(BKTOCWebViewController2 *)self scrollView];
  [theme stylizeScrollView:scrollView];
}

+ (id)pageNumberStringForChapter:(id)chapter directoryDelegate:(id)delegate
{
  chapterCopy = chapter;
  v6 = [delegate tocViewController:0 pageTitleForChapter:chapterCopy];
  isExcludedFromSample = [chapterCopy isExcludedFromSample];

  if (isExcludedFromSample)
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

+ (int64_t)pageNumberForChapter:(id)chapter directoryDelegate:(id)delegate
{
  chapterCopy = chapter;
  delegateCopy = delegate;
  if ([chapterCopy isExcludedFromSample])
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = [delegateCopy tocViewController:0 pageNumberForChapter:chapterCopy];
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
  fetchedResultsController = [(BKTOCViewController *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];

  tocData = [(BKTOCWebViewController2 *)self tocData];
  v6 = [tocData objectForKeyedSubscript:@"chapters"];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_467CC;
  v14[3] = &unk_1E3BD0;
  v14[4] = self;
  v16 = &v17;
  v7 = v6;
  v15 = v7;
  [fetchedObjects enumerateObjectsUsingBlock:v14];
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

+ (id)classNameFromChapterInfo:(id)info excludedFromSample:(BOOL)sample
{
  sampleCopy = sample;
  v5 = [info objectForKeyedSubscript:@"indentationLevel"];
  v6 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"indentation%lu", [v5 unsignedLongValue]);

  if (sampleCopy)
  {
    [v6 appendString:@" notPageExists"];
  }

  return v6;
}

+ (id)hairlineImageURIWithColor:(id)color horizontal:(BOOL)horizontal
{
  [color CGColor];
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v5 = BCCreateHairlineImageAsDataForColor();

  if (v5)
  {
    bu_dataURIString = [v5 bu_dataURIString];
    CFRelease(v5);
  }

  else
  {
    bu_dataURIString = &stru_1E7188;
  }

  return bu_dataURIString;
}

+ (id)tocHTMLWithFetchedResultsController:(id)controller directoryDelegate:(id)delegate chapterTopLevelFont:(id)font chapterSubLevelFont:(id)levelFont pageLabelFont:(id)labelFont themeContentBackgroundColor:(id)color textColor:(id)textColor selectedTextColor:(id)self0 pageNumberTextColor:(id)self1 separatorColor:(id)self2 highlightedBackgroundColor:(id)self3 highlightedTextColor:(id)self4 contentInsets:(UIEdgeInsets)self5 completionBlock:(id)self6
{
  right = insets.right;
  left = insets.left;
  controllerCopy = controller;
  delegateCopy = delegate;
  fontCopy = font;
  levelFontCopy = levelFont;
  labelFontCopy = labelFont;
  colorCopy = color;
  textColorCopy = textColor;
  selectedTextColorCopy = selectedTextColor;
  numberTextColorCopy = numberTextColor;
  separatorColorCopy = separatorColor;
  backgroundColorCopy = backgroundColor;
  highlightedTextColorCopy = highlightedTextColor;
  blockCopy = block;
  v28 = +[NSMutableDictionary dictionary];
  v72 = separatorColorCopy;
  v29 = [self hairlineImageURIWithColor:separatorColorCopy horizontal:0];
  [v28 setObject:@"vertical-rl" forKeyedSubscript:@"toc_writing_mode"];
  v30 = +[NSMutableArray array];
  [v28 setObject:v30 forKeyedSubscript:@"chapters"];

  v31 = [delegateCopy tocViewControllerTocIdCssRules:0];
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

  v73 = selectedTextColorCopy;
  bc_rgbaString = [selectedTextColorCopy bc_rgbaString];
  v35 = [NSString stringWithFormat:@"%@", bc_rgbaString];
  [v28 setObject:v35 forKeyedSubscript:@"selectedTextColor"];

  v36 = +[UIColor grayColor];
  bc_rgbaString2 = [v36 bc_rgbaString];
  v38 = [NSString stringWithFormat:@"%@", bc_rgbaString2];
  [v28 setObject:v38 forKeyedSubscript:@"textNotPageExistsColor"];

  [v28 setObject:v29 forKeyedSubscript:@"dividerImageURI"];
  bc_cssFontFamily = [fontCopy bc_cssFontFamily];
  [v28 setObject:bc_cssFontFamily forKeyedSubscript:@"chapterTopLevelFontFamily"];

  bc_cssFontWeight = [fontCopy bc_cssFontWeight];
  [v28 setObject:bc_cssFontWeight forKeyedSubscript:@"chapterTopLevelFontWeight"];

  bc_cssFontSize = [fontCopy bc_cssFontSize];
  [v28 setObject:bc_cssFontSize forKeyedSubscript:@"chapterTopLevelFontSize"];

  bc_cssFontFamily2 = [levelFontCopy bc_cssFontFamily];
  [v28 setObject:bc_cssFontFamily2 forKeyedSubscript:@"chapterSubLevelFontFamily"];

  bc_cssFontWeight2 = [levelFontCopy bc_cssFontWeight];
  [v28 setObject:bc_cssFontWeight2 forKeyedSubscript:@"chapterSubLevelFontWeight"];

  bc_cssFontSize2 = [levelFontCopy bc_cssFontSize];
  [v28 setObject:bc_cssFontSize2 forKeyedSubscript:@"chapterSubLevelFontSize"];

  bc_cssFontFamily3 = [labelFontCopy bc_cssFontFamily];
  [v28 setObject:bc_cssFontFamily3 forKeyedSubscript:@"pageLabelFontFamily"];

  bc_cssFontWeight3 = [labelFontCopy bc_cssFontWeight];
  [v28 setObject:bc_cssFontWeight3 forKeyedSubscript:@"pageLabelFontWeight"];

  bc_cssFontSize3 = [labelFontCopy bc_cssFontSize];
  [v28 setObject:bc_cssFontSize3 forKeyedSubscript:@"pageLabelFontSize"];

  bc_rgbaString3 = [colorCopy bc_rgbaString];
  v49 = [NSString stringWithFormat:@"%@", bc_rgbaString3];
  [v28 setObject:v49 forKeyedSubscript:@"themeContentBackgroundColor"];

  bc_rgbaString4 = [textColorCopy bc_rgbaString];
  v51 = [NSString stringWithFormat:@"%@", bc_rgbaString4];
  [v28 setObject:v51 forKeyedSubscript:@"textColor"];

  bc_rgbaString5 = [numberTextColorCopy bc_rgbaString];
  v53 = [NSString stringWithFormat:@"%@", bc_rgbaString5];
  [v28 setObject:v53 forKeyedSubscript:@"pageNumberTextColor"];

  bc_rgbaString6 = [backgroundColorCopy bc_rgbaString];
  v55 = [NSString stringWithFormat:@"%@", bc_rgbaString6];
  [v28 setObject:v55 forKeyedSubscript:@"highlightedBackgroundColor"];

  bc_rgbaString7 = [highlightedTextColorCopy bc_rgbaString];
  v57 = [NSString stringWithFormat:@"%@", bc_rgbaString7];
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

  fetchedObjects = [controllerCopy fetchedObjects];
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x2020000000;
  v90[3] = 0;
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_47324;
  v85[3] = &unk_1E3C38;
  v88 = v90;
  selfCopy = self;
  v65 = delegateCopy;
  v86 = v65;
  v66 = v28;
  v87 = v66;
  [fetchedObjects enumerateObjectsUsingBlock:v85];
  v67 = AEBundle();
  v68 = [v67 URLForResource:@"BEVerticalTOC.xhtml" withExtension:@"tmpl"];

  v84 = 0;
  v69 = [AEMinimalTemplate evaluateTemplateWithURL:v68 data:v66 error:&v84];
  v70 = v84;
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v66);
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
  scrollView = [(BKActivityIndicatorOverlayView *)self->_activityIndicator scrollView];
  [scrollView setBackgroundColor:v6];

  [(BKActivityIndicatorOverlayView *)self->_activityIndicator setOpaque:0];
  configuration = [(BKActivityIndicatorOverlayView *)self->_activityIndicator configuration];
  defaultWebpagePreferences = [configuration defaultWebpagePreferences];
  [defaultWebpagePreferences _setMouseEventPolicy:1];

  scrollView2 = [(BKTOCWebViewController2 *)self scrollView];
  [scrollView2 setBounces:1];
  [scrollView2 setAlwaysBounceVertical:0];
  [scrollView2 setDecelerationRate:UIScrollViewDecelerationRateNormal];
  [scrollView2 setContentInsetAdjustmentBehavior:2];
  [scrollView2 _setShowsBackgroundShadow:0];
  theme = [(BKTOCWebViewController2 *)self theme];
  scrollView3 = [(BKTOCWebViewController2 *)self scrollView];
  [theme stylizeScrollView:scrollView3];

  v13 = [BKActivityIndicatorOverlayView alloc];
  theme2 = [(BKTOCWebViewController2 *)self theme];
  contentTextColor = [theme2 contentTextColor];
  v16 = [contentTextColor colorWithAlphaComponent:0.7];
  theme3 = [(BKTOCWebViewController2 *)self theme];
  v18 = [theme3 backgroundColorForTraitEnvironment:self];
  v19 = [(BKActivityIndicatorOverlayView *)v13 initWithBackgroundColor:v16 foregroundColor:v18];
  v20 = *&self->_htmlLoaded;
  *&self->_htmlLoaded = v19;

  v21 = *&self->_htmlLoaded;
  view = [(BKTOCWebViewController2 *)self view];
  [v21 showIndicatorCenteredInView:view animated:1 animationDelay:0.0];

  v23 = +[NSNotificationCenter defaultCenter];
  [v23 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_doInitialWebViewPositionAndLoad
{
  view = [(BKTOCWebViewController2 *)self view];
  [view bounds];
  [(BKActivityIndicatorOverlayView *)self->_activityIndicator setFrame:?];
  [view insertSubview:self->_activityIndicator atIndex:0];
  [(BKTOCWebViewController2 *)self _updateContentInsets];
  if ([(BKTOCViewController *)self isVertical])
  {
    [(BKContentViewController *)self contentInsets];
    v4 = v3;
    view2 = [(BKTOCWebViewController2 *)self view];
    [view2 bounds];
    [(BKActivityIndicatorOverlayView *)self->_activityIndicator setFrame:v6 + 0.0, v4 + v7];
  }

  [(BKTOCWebViewController2 *)self loadHTML];
}

- (void)_updateContentInsets
{
  layoutDelegate = [(BKContentViewController *)self layoutDelegate];

  if (layoutDelegate)
  {
    layoutDelegate2 = [(BKContentViewController *)self layoutDelegate];
    [layoutDelegate2 edgeInsetsForContentViewController:self];
    [(BKContentViewController *)self setContentInsets:?];

    layoutDelegate3 = [(BKContentViewController *)self layoutDelegate];
    [layoutDelegate3 separatorInsetsForContentViewController:self];
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
    view = [(BKTOCWebViewController2 *)self view];
    [view bounds];
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
        scrollView = [(BKActivityIndicatorOverlayView *)self->_activityIndicator scrollView];
        [scrollView setContentSize:{v13, v17}];
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
  viewIfLoaded = [(BKTOCWebViewController2 *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = BKTOCWebViewController2;
  [(BKTOCViewController *)&v5 viewWillAppear:appear];
  [(BKTOCWebViewController2 *)self _doInitialWebViewPositionAndLoad];
  view = [(BKTOCWebViewController2 *)self view];
  [view setNeedsLayout];
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

- (id)_indexPathForURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  if ([lastPathComponent hasPrefix:@"row-"])
  {
    v4 = [lastPathComponent substringFromIndex:{objc_msgSend(@"row-", "length")}];
    integerValue = [v4 integerValue];

    v6 = [NSIndexPath indexPathForRow:integerValue inSection:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  handlerCopy = handler;
  actionCopy = action;
  request = [actionCopy request];
  v9 = [request URL];
  v10 = [(BKTOCWebViewController2 *)self _indexPathForURL:v9];

  navigationType = [actionCopy navigationType];
  if (navigationType + 1 <= 1 && v10)
  {
    fetchedResultsController = [(BKTOCViewController *)self fetchedResultsController];
    v13 = [fetchedResultsController objectAtIndexPath:v10];

    if (v13)
    {
      eventEngagement = [(BKTOCViewController *)self eventEngagement];
      [eventEngagement sendReaderEventNewSectionViaToC];

      tocDelegate = [(BKTOCWebViewController2 *)self tocDelegate];
      [tocDelegate tocViewController:self didSelectChapter:v13];

      activityIndicator = self->_activityIndicator;
      if (activityIndicator)
      {
        [(BKActivityIndicatorOverlayView *)activityIndicator evaluateJavaScript:@"clearSelectedLink();" completionHandler:&stru_1E3C78];
      }
    }
  }

  v17 = objc_retainBlock(handlerCopy);
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, v10 == 0);
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_48054;
  v4[3] = &unk_1E2C20;
  v4[4] = self;
  [(BKTOCWebViewController2 *)self installJavaScriptWithCompletionBlock:v4, navigation];
}

- (BOOL)_webViewWantsToLoadURL:(id)l navigationIsClickOrOther:(BOOL)other
{
  otherCopy = other;
  v6 = [(BKTOCWebViewController2 *)self _indexPathForURL:l];
  v7 = v6;
  if (otherCopy && v6)
  {
    fetchedResultsController = [(BKTOCViewController *)self fetchedResultsController];
    v9 = [fetchedResultsController objectAtIndexPath:v7];

    if (v9)
    {
      tocDelegate = [(BKTOCWebViewController2 *)self tocDelegate];
      [tocDelegate tocViewController:self didSelectChapter:v9];
    }
  }

  return v7 == 0;
}

- (id)pageLabelFont
{
  [(BKTOCViewController *)self calculateFontSize];

  return [UIFont systemFontOfSize:?];
}

- (void)scrollToItemId:(id)id completionBlock:(id)block
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_483E0;
  v13[3] = &unk_1E3CA0;
  blockCopy = block;
  v14 = blockCopy;
  idCopy = id;
  v8 = objc_retainBlock(v13);
  idCopy = [NSString stringWithFormat:@"scrollToItemWithId(%@)", idCopy];

  activityIndicator = self->_activityIndicator;
  if (activityIndicator)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_48460;
    v11[3] = &unk_1E3550;
    v12 = v8;
    [(BKActivityIndicatorOverlayView *)activityIndicator evaluateJavaScript:idCopy completionHandler:v11];
  }
}

- (id)chapterInfoForPageNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    tocData = [(BKTOCWebViewController2 *)self tocData];
    v6 = [tocData objectForKeyedSubscript:@"chapters"];

    reverseObjectEnumerator = [v6 reverseObjectEnumerator];
    nextObject = [reverseObjectEnumerator nextObject];
    if (nextObject)
    {
      while (1)
      {
        v9 = [nextObject objectForKeyedSubscript:@"pageInteger"];
        if ([v9 integerValue] != 0x7FFFFFFFFFFFFFFFLL)
        {
          integerValue = [numberCopy integerValue];
          if (integerValue >= [v9 integerValue])
          {
            break;
          }
        }

        nextObject2 = [reverseObjectEnumerator nextObject];

        nextObject = nextObject2;
        if (!nextObject2)
        {
          goto LABEL_9;
        }
      }

      nextObject = nextObject;
    }

LABEL_9:
  }

  else
  {
    nextObject = 0;
  }

  return nextObject;
}

- (unint64_t)tocDataIndexFromChapterHref:(id)href
{
  hrefCopy = href;
  if (hrefCopy)
  {
    tocData = [(BKTOCWebViewController2 *)self tocData];
    v6 = [tocData objectForKeyedSubscript:@"chapters"];

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
        v15 = [v14 isEqualToString:hrefCopy];

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

- (void)applyClassName:(id)name toOnlyLinkWithHref:(id)href
{
  name = [NSString stringWithFormat:@"applyClassNameToOnlyLinkWithHref(%@, %@)", href, name];;
  activityIndicator = self->_activityIndicator;
  if (activityIndicator)
  {
    v7 = name;
    activityIndicator = [(BKActivityIndicatorOverlayView *)activityIndicator evaluateJavaScript:name completionHandler:&stru_1E3CC0];
    name = v7;
  }

  _objc_release_x1(activityIndicator, name);
}

- (unint64_t)pageIndexForLocation:(id)location
{
  if (!location)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  locationCopy = location;
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  v6 = [directoryDelegate directoryContent:self pageNumberForLocation:locationCopy];

  return v6;
}

- (id)chapterInfoForCurrentNode
{
  tocDelegate = [(BKTOCWebViewController2 *)self tocDelegate];
  v4 = [tocDelegate tocViewControllerCurrentLocation:self];

  v5 = [(BKTOCWebViewController2 *)self pageIndexForLocation:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    firstObject = 0;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedInteger:v5 + 1];
    v8 = [(BKTOCWebViewController2 *)self chapterInfoForPageNumber:v7];
    v9 = v8;
    if (v8)
    {
      firstObject = v8;
    }

    else
    {
      tocData = [(BKTOCWebViewController2 *)self tocData];
      v11 = [tocData objectForKeyedSubscript:@"chapters"];
      firstObject = [v11 firstObject];
    }
  }

  return firstObject;
}

- (id)elementIdForCurrentNode
{
  chapterInfoForCurrentNode = [(BKTOCWebViewController2 *)self chapterInfoForCurrentNode];
  v4 = [(BKTOCWebViewController2 *)self elementIdForChapterInfo:chapterInfoForCurrentNode];

  return v4;
}

- (id)elementIdForChapterInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"href"];
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
    tocData = [(BKTOCWebViewController2 *)self tocData];
    v21 = [tocData objectForKeyedSubscript:@"chapters"];
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
    tocDelegate = [(BKTOCWebViewController2 *)self tocDelegate];
    v12 = [tocDelegate tocViewControllerCurrentLocation:self];
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

- (void)highlightCurrentNodeWithCompletionBlock:(id)block
{
  blockCopy = block;
  elementIdForCurrentNode = [(BKTOCWebViewController2 *)self elementIdForCurrentNode];
  if (elementIdForCurrentNode)
  {
    [(BKTOCWebViewController2 *)self scrollToItemId:elementIdForCurrentNode completionBlock:blockCopy];
    activityIndicator = self->_activityIndicator;
    tocDelegate = [NSString stringWithFormat:@"selectItemWithId(%@)", elementIdForCurrentNode];;
    [(BKActivityIndicatorOverlayView *)activityIndicator evaluateJavaScript:tocDelegate completionHandler:&stru_1E3CE0];
  }

  else
  {
    tocDelegate = [(BKTOCWebViewController2 *)self tocDelegate];
    v7 = [tocDelegate tocViewControllerCurrentLocation:self];
    blockCopy[2](blockCopy, v7 == 0);
  }
}

- (void)installJavaScriptWithCompletionBlock:(id)block
{
  blockCopy = block;
  tocData = [(BKTOCWebViewController2 *)self tocData];
  v6 = [tocData objectForKeyedSubscript:@"chapters"];
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
    v18 = blockCopy;
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
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

- (id)htmlMarkup
{
  [(BKTOCViewController *)self establishChapterFonts];
  themePage = [(BKTOCWebViewController2 *)self themePage];
  separatorColor = [themePage separatorColor];
  traitCollection = [(BKTOCWebViewController2 *)self traitCollection];
  v5 = dbl_193280[[traitCollection userInterfaceStyle] == &dword_0 + 2];

  v6 = +[UIColor tintColor];
  v7 = [v6 colorWithAlphaComponent:v5];

  v24 = v7;
  if ([(BKTOCViewController *)self usesPopoverStyle])
  {
    tableViewCellSelectedColor = v7;
  }

  else
  {
    tableViewCellSelectedColor = [themePage tableViewCellSelectedColor];
  }

  v9 = tableViewCellSelectedColor;
  v19 = tableViewCellSelectedColor;
  v23 = +[UIColor clearColor];
  primaryTextColor = [themePage primaryTextColor];
  tintColor = [themePage tintColor];
  tocPageNumberTextColor = [themePage tocPageNumberTextColor];
  v20 = objc_opt_class();
  fetchedResultsController = [(BKTOCViewController *)self fetchedResultsController];
  tocDelegate = [(BKTOCWebViewController2 *)self tocDelegate];
  v13 = BUProtocolCast();
  chapterTopLevelFont = [(BKTOCViewController *)self chapterTopLevelFont];
  chapterSubLevelFont = [(BKTOCViewController *)self chapterSubLevelFont];
  pageLabelFont = [(BKTOCWebViewController2 *)self pageLabelFont];
  [(BKContentViewController *)self contentInsets];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_4972C;
  v26[3] = &unk_1E3D70;
  v26[4] = self;
  v21 = [v20 tocHTMLWithFetchedResultsController:fetchedResultsController directoryDelegate:v13 chapterTopLevelFont:chapterTopLevelFont chapterSubLevelFont:chapterSubLevelFont pageLabelFont:pageLabelFont themeContentBackgroundColor:v23 textColor:primaryTextColor selectedTextColor:tintColor pageNumberTextColor:tocPageNumberTextColor separatorColor:separatorColor highlightedBackgroundColor:v9 highlightedTextColor:primaryTextColor contentInsets:v26 completionBlock:?];

  return v21;
}

- (void)loadHTML
{
  htmlMarkup = [(BKTOCWebViewController2 *)self htmlMarkup];
  book = [(BKContentViewController *)self book];
  tocPageHref = [book tocPageHref];
  v5 = [book urlForHref:tocPageHref];

  absoluteString = [v5 absoluteString];
  elementIdForCurrentNode = [(BKTOCWebViewController2 *)self elementIdForCurrentNode];
  v8 = [NSString stringWithFormat:@"%@#%@", absoluteString, elementIdForCurrentNode];

  v9 = [NSURL URLWithString:v8];
  v10 = BEURLHandleriBooksImgUrlFromiBooksURL();

  v11 = [htmlMarkup dataUsingEncoding:4];
  v12 = [(BKActivityIndicatorOverlayView *)self->_activityIndicator loadData:v11 MIMEType:BEXBEHTMLContentType characterEncodingName:BEUTF8StringEncodingName baseURL:v10];
}

- (void)updatePageStylesheet
{
  htmlMarkup = [(BKTOCWebViewController2 *)self htmlMarkup];
  v4 = AEBundle();
  v5 = [v4 URLForResource:@"BEVerticalTOC.xhtml" withExtension:@"tmpl"];

  tocData = [(BKTOCWebViewController2 *)self tocData];
  v21 = 0;
  v7 = [AEMinimalTemplate evaluateTemplateWithURL:v5 data:tocData error:&v21];
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
  elementIdForCurrentNode = [(BKTOCWebViewController2 *)self elementIdForCurrentNode];
  v18 = [NSString stringWithFormat:@"updatePageStylesheet(%@) clearSelectedLink(); scrollToItemWithId(%@)", v16, elementIdForCurrentNode];;
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