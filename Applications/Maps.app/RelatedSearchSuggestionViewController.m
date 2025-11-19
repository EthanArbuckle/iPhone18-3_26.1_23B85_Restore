@interface RelatedSearchSuggestionViewController
- (BOOL)isHidden;
- (RelatedSearchSuggestionViewController)init;
- (RelatedSearchSuggestionViewControllerDelegate)delegate;
- (id)_createMapsThemeButtonWithTitle:(id)a3;
- (id)_createMapsThemeLabelWithTitle:(id)a3;
- (void)_clearTimer;
- (void)_componentButtonTapped:(id)a3;
- (void)_hideSuggestionViewTimerFired:(id)a3;
- (void)_loadSuggestions;
- (void)_resetTimer;
- (void)dealloc;
- (void)dismissWithReason:(unint64_t)a3;
- (void)loadView;
- (void)preferredContentSizeChanged:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setSuggestion:(id)a3;
- (void)updateSuggestionPositionWithOffset:(double)a3;
- (void)viewDidLoad;
@end

@implementation RelatedSearchSuggestionViewController

- (RelatedSearchSuggestionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dismissWithReason:(unint64_t)a3
{
  [(NSDate *)self->_suggestionShownDate timeIntervalSinceNow];
  v6 = v5;
  [(NSDate *)self->_suggestionShownDate timeIntervalSinceNow];
  v8 = v7;
  if (![(RelatedSearchSuggestionViewController *)self isHidden])
  {
    v9 = -v8;
    if (v6 >= 0.0)
    {
      v9 = v8;
    }

    if (v9 >= 5.0 || self->_forceDismiss)
    {
      [(RelatedSearchSuggestionViewController *)self setHidden:1 animated:1];
      [(RelatedSearchSuggestionViewController *)self resetData];
      v10 = [(RelatedSearchSuggestionViewController *)self delegate];
      [v10 relatedSearchSuggestionViewController:self didDismissWithReason:a3];
    }
  }

  self->_forceDismiss = 1;
}

- (void)updateSuggestionPositionWithOffset:(double)a3
{
  lastSuggestionScrollOffset = self->_lastSuggestionScrollOffset;
  if (lastSuggestionScrollOffset < a3 && !self->_suggestionScrollViewScrollingLeft)
  {
    self->_suggestionScrollViewScrollingLeft = 1;
    self->_suggestionScrollViewScrollingRight = 0;
    v6 = [(RelatedSearchSuggestionViewController *)self delegate];
    [v6 relatedSearchSuggestionViewControllerDidScrollLeft:self];
    goto LABEL_7;
  }

  if (lastSuggestionScrollOffset > a3 && !self->_suggestionScrollViewScrollingRight)
  {
    self->_suggestionScrollViewScrollingLeft = 0;
    self->_suggestionScrollViewScrollingRight = 1;
    v6 = [(RelatedSearchSuggestionViewController *)self delegate];
    [v6 relatedSearchSuggestionViewControllerDidScrollRight:self];
LABEL_7:
  }

  self->_lastSuggestionScrollOffset = a3;
}

- (void)scrollViewDidScroll:(id)a3
{
  v8 = a3;
  [v8 contentOffset];
  v5 = v4;
  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    [v8 contentSize];
    v7 = v6;
    [v8 frame];
    v5 = v7 - (v5 + CGRectGetWidth(v10));
  }

  [(RelatedSearchSuggestionViewController *)self updateSuggestionPositionWithOffset:v5];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  [(RelatedSearchSuggestionViewController *)self _resetTimer:a3];
  self->_suggestionScrollViewScrollingLeft = 0;
  self->_suggestionScrollViewScrollingRight = 0;
}

- (void)setSuggestion:(id)a3
{
  v5 = a3;
  if (self->_suggestion != v5)
  {
    objc_storeStrong(&self->_suggestion, a3);
    [(UIScrollView *)self->_scrollView setContentOffset:CGPointZero.x, CGPointZero.y];
    [(RelatedSearchSuggestion *)v5 visibleTime];
    self->_hideSuggestionViewTimeoutInSeconds = v6;
    if ([(RelatedSearchSuggestion *)v5 showCloseButton])
    {
      v7 = !self->_accessibilityEnabled;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(RelatedSearchSuggestionViewController *)self suggestionView];
    [v8 setShowCloseButton:v7];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006CEF58;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [UIView performWithoutAnimation:v9];
  }
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(RelatedSearchSuggestionViewController *)self isHidden]!= a3)
  {
    if (a3)
    {
      [(RelatedSearchSuggestionViewController *)self _clearTimer];
      suggestionShownDate = self->_suggestionShownDate;
      self->_suggestionShownDate = 0;

      v8 = 0.0;
    }

    else
    {
      [(RelatedSearchSuggestionViewController *)self _resetTimer];
      v9 = +[NSDate date];
      v10 = self->_suggestionShownDate;
      self->_suggestionShownDate = v9;

      self->_forceDismiss = 0;
      v8 = 1.0;
    }

    v11 = [(RelatedSearchSuggestionViewController *)self suggestionView];
    [v11 setAlpha:v4 animated:v8];
  }
}

- (BOOL)isHidden
{
  v2 = [(RelatedSearchSuggestionViewController *)self view];
  [v2 alpha];
  v4 = v3 == 0.0;

  return v4;
}

- (void)_resetTimer
{
  [(RelatedSearchSuggestionViewController *)self _clearTimer];
  if (self->_hideSuggestionViewTimeoutInSeconds > 0.0)
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_hideSuggestionViewTimerFired:" selector:0 userInfo:0 repeats:?];
    hideSuggestionViewTimer = self->_hideSuggestionViewTimer;
    self->_hideSuggestionViewTimer = v3;
  }
}

- (void)_hideSuggestionViewTimerFired:(id)a3
{
  [(RelatedSearchSuggestionViewController *)self _clearTimer];

  [(RelatedSearchSuggestionViewController *)self dismissWithReason:1];
}

- (void)_clearTimer
{
  [(NSTimer *)self->_hideSuggestionViewTimer invalidate];
  hideSuggestionViewTimer = self->_hideSuggestionViewTimer;
  self->_hideSuggestionViewTimer = 0;
}

- (id)_createMapsThemeLabelWithTitle:(id)a3
{
  v3 = a3;
  v4 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MapsThemeLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor labelColor];
  [(MapsThemeLabel *)v4 setTextColor:v5];

  [DynamicTypeWizard autorefreshLabel:v4 withFontProvider:&stru_101626928];
  LODWORD(v6) = 1148846080;
  [(MapsThemeLabel *)v4 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [(MapsThemeLabel *)v4 setContentCompressionResistancePriority:0 forAxis:v7];
  [(MapsThemeLabel *)v4 setText:v3];

  return v4;
}

- (id)_createMapsThemeButtonWithTitle:(id)a3
{
  v4 = a3;
  v5 = [MapsThemeButton buttonWithType:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 _setTouchInsets:{-7.0, -7.0, -7.0, -7.0}];
  [v5 setTitleColorProvider:&stru_1016309D0];
  v6 = [v5 titleLabel];
  [DynamicTypeWizard autorefreshLabel:v6 withFontProvider:&stru_101626928];

  [v5 addTarget:self action:"_componentButtonTapped:" forControlEvents:64];
  v7 = [v5 titleLabel];
  [v7 setLineBreakMode:4];

  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v5 setContentHorizontalAlignment:v8];
  [v5 setTitle:v4 forState:0];

  return v5;
}

- (void)_componentButtonTapped:(id)a3
{
  v12 = a3;
  [(RelatedSearchSuggestionViewController *)self setHidden:1 animated:1];
  v4 = [v12 tag];
  v5 = [(RelatedSearchSuggestion *)self->_suggestion components];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    v8 = [(RelatedSearchSuggestionViewController *)self delegate];
    [v8 relatedSearchSuggestionViewController:self didDismissWithReason:0];
  }

  else
  {
    v7 = [(RelatedSearchSuggestion *)self->_suggestion components];
    v8 = [v7 objectAtIndexedSubscript:v4];

    if ([v8 isRelatedSearchSuggestion])
    {
      v9 = [v8 suggestion];
      pdSuggestion = self->_pdSuggestion;
      self->_pdSuggestion = v9;

      v11 = [(RelatedSearchSuggestionViewController *)self delegate];
      [v11 relatedSearchSuggestionViewControllerDidTapActionButton:self];
    }
  }

LABEL_7:
}

- (void)_loadSuggestions
{
  [(NSMutableArray *)self->_componentViews makeObjectsPerformSelector:"removeFromSuperview"];
  [(NSMutableArray *)self->_componentViews removeAllObjects];
  if (!self->_componentViews)
  {
    v3 = objc_alloc_init(NSMutableArray);
    componentViews = self->_componentViews;
    self->_componentViews = v3;
  }

  v5 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [(RelatedSearchSuggestion *)self->_suggestion components];
  v26 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v26)
  {
    v7 = v6;
    goto LABEL_19;
  }

  v7 = 0;
  v8 = 0;
  obj = v6;
  v25 = *v28;
  do
  {
    v9 = 0;
    v10 = v7;
    do
    {
      if (*v28 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v27 + 1) + 8 * v9);
      v12 = [v11 isRelatedSearchSuggestion];
      v13 = [v11 displayText];
      if (v12)
      {
        v14 = [(RelatedSearchSuggestionViewController *)self _createMapsThemeButtonWithTitle:v13];

        [v14 setTag:v8];
      }

      else
      {
        v14 = [(RelatedSearchSuggestionViewController *)self _createMapsThemeLabelWithTitle:v13];
      }

      [(UIScrollView *)self->_scrollView addSubview:v14];
      v15 = [v14 centerYAnchor];
      v16 = [(UIScrollView *)self->_scrollView centerYAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
      [v5 addObject:v17];

      v18 = [v14 leadingAnchor];
      if (v10)
      {
        v19 = [v10 trailingAnchor];
        [v18 constraintEqualToAnchor:v19];
      }

      else
      {
        v19 = [(UIScrollView *)self->_scrollView leadingAnchor];
        [v18 constraintEqualToAnchor:v19 constant:16.0];
      }
      v20 = ;
      [v5 addObject:v20];

      ++v8;
      v7 = v14;

      [(NSMutableArray *)self->_componentViews addObject:v7];
      v9 = v9 + 1;
      v10 = v7;
    }

    while (v26 != v9);
    v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v26);

  if (v7)
  {
    v21 = [v7 trailingAnchor];
    v22 = [(UIScrollView *)self->_scrollView trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-16.0];
    [v5 addObject:v23];

LABEL_19:
  }

  [NSLayoutConstraint activateConstraints:v5];
}

- (void)preferredContentSizeChanged:(id)a3
{
  self->_accessibilityEnabled = +[UIFont accessibilityTextEnabled];
  if ([(RelatedSearchSuggestion *)self->_suggestion showCloseButton])
  {
    v4 = !self->_accessibilityEnabled;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(RelatedSearchSuggestionViewController *)self suggestionView];
  [v5 setShowCloseButton:v4];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = RelatedSearchSuggestionViewController;
  [(RelatedSearchSuggestionViewController *)&v24 viewDidLoad];
  v3 = [MapsTheme visualEffectViewAllowingBlur:1];
  blurView = self->_blurView;
  self->_blurView = v3;

  v5 = self->_blurView;
  v6 = [(RelatedSearchSuggestionViewController *)self suggestionView];
  [v6 setBlurView:v5];

  v7 = [(RelatedSearchSuggestionViewController *)self view];
  [v7 addSubview:self->_blurView];

  v8 = self->_blurView;
  v9 = [(RelatedSearchSuggestionViewController *)self suggestionView];
  [v9 setBlurView:v8];

  v10 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  scrollView = self->_scrollView;
  self->_scrollView = v10;

  [(UIScrollView *)self->_scrollView setDelegate:self];
  v12 = [(RelatedSearchSuggestionViewController *)self view];
  [v12 addSubview:self->_scrollView];

  v13 = self->_scrollView;
  v14 = [(RelatedSearchSuggestionViewController *)self suggestionView];
  [v14 setScrollView:v13];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Close [DYM]" value:@"localized string not found" table:0];
  v17 = [(RelatedSearchSuggestionViewController *)self _createMapsThemeButtonWithTitle:v16];
  closeButton = self->_closeButton;
  self->_closeButton = v17;

  [(MapsThemeButton *)self->_closeButton setTag:0x7FFFFFFFFFFFFFFFLL];
  v19 = [(RelatedSearchSuggestionViewController *)self view];
  [v19 addSubview:self->_closeButton];

  v20 = self->_closeButton;
  v21 = [(RelatedSearchSuggestionViewController *)self suggestionView];
  [v21 setCloseButton:v20];

  v22 = [(RelatedSearchSuggestionViewController *)self view];
  v23 = [v22 _maps_addHairlineAtTopWithMargin:0.0];
}

- (void)loadView
{
  v4 = [[RelatedSearchSuggestionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(RelatedSearchSuggestionView *)v4 _setHostsLayoutEngine:1];
  LODWORD(v3) = 1148846080;
  [(RelatedSearchSuggestionView *)v4 setContentCompressionResistancePriority:1 forAxis:v3];
  [(RelatedSearchSuggestionView *)v4 setAlpha:0.0];
  [(RelatedSearchSuggestionViewController *)self setView:v4];
}

- (void)dealloc
{
  [(RelatedSearchSuggestionViewController *)self _clearTimer];
  v3.receiver = self;
  v3.super_class = RelatedSearchSuggestionViewController;
  [(RelatedSearchSuggestionViewController *)&v3 dealloc];
}

- (RelatedSearchSuggestionViewController)init
{
  v5.receiver = self;
  v5.super_class = RelatedSearchSuggestionViewController;
  v2 = [(RelatedSearchSuggestionViewController *)&v5 init];
  if (v2)
  {
    v2->_accessibilityEnabled = +[UIFont accessibilityTextEnabled];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v2;
}

@end