@interface RelatedSearchSuggestionViewController
- (BOOL)isHidden;
- (RelatedSearchSuggestionViewController)init;
- (RelatedSearchSuggestionViewControllerDelegate)delegate;
- (id)_createMapsThemeButtonWithTitle:(id)title;
- (id)_createMapsThemeLabelWithTitle:(id)title;
- (void)_clearTimer;
- (void)_componentButtonTapped:(id)tapped;
- (void)_hideSuggestionViewTimerFired:(id)fired;
- (void)_loadSuggestions;
- (void)_resetTimer;
- (void)dealloc;
- (void)dismissWithReason:(unint64_t)reason;
- (void)loadView;
- (void)preferredContentSizeChanged:(id)changed;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setSuggestion:(id)suggestion;
- (void)updateSuggestionPositionWithOffset:(double)offset;
- (void)viewDidLoad;
@end

@implementation RelatedSearchSuggestionViewController

- (RelatedSearchSuggestionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dismissWithReason:(unint64_t)reason
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
      delegate = [(RelatedSearchSuggestionViewController *)self delegate];
      [delegate relatedSearchSuggestionViewController:self didDismissWithReason:reason];
    }
  }

  self->_forceDismiss = 1;
}

- (void)updateSuggestionPositionWithOffset:(double)offset
{
  lastSuggestionScrollOffset = self->_lastSuggestionScrollOffset;
  if (lastSuggestionScrollOffset < offset && !self->_suggestionScrollViewScrollingLeft)
  {
    self->_suggestionScrollViewScrollingLeft = 1;
    self->_suggestionScrollViewScrollingRight = 0;
    delegate = [(RelatedSearchSuggestionViewController *)self delegate];
    [delegate relatedSearchSuggestionViewControllerDidScrollLeft:self];
    goto LABEL_7;
  }

  if (lastSuggestionScrollOffset > offset && !self->_suggestionScrollViewScrollingRight)
  {
    self->_suggestionScrollViewScrollingLeft = 0;
    self->_suggestionScrollViewScrollingRight = 1;
    delegate = [(RelatedSearchSuggestionViewController *)self delegate];
    [delegate relatedSearchSuggestionViewControllerDidScrollRight:self];
LABEL_7:
  }

  self->_lastSuggestionScrollOffset = offset;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v5 = v4;
  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    [scrollCopy contentSize];
    v7 = v6;
    [scrollCopy frame];
    v5 = v7 - (v5 + CGRectGetWidth(v10));
  }

  [(RelatedSearchSuggestionViewController *)self updateSuggestionPositionWithOffset:v5];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  [(RelatedSearchSuggestionViewController *)self _resetTimer:dragging];
  self->_suggestionScrollViewScrollingLeft = 0;
  self->_suggestionScrollViewScrollingRight = 0;
}

- (void)setSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (self->_suggestion != suggestionCopy)
  {
    objc_storeStrong(&self->_suggestion, suggestion);
    [(UIScrollView *)self->_scrollView setContentOffset:CGPointZero.x, CGPointZero.y];
    [(RelatedSearchSuggestion *)suggestionCopy visibleTime];
    self->_hideSuggestionViewTimeoutInSeconds = v6;
    if ([(RelatedSearchSuggestion *)suggestionCopy showCloseButton])
    {
      v7 = !self->_accessibilityEnabled;
    }

    else
    {
      v7 = 0;
    }

    suggestionView = [(RelatedSearchSuggestionViewController *)self suggestionView];
    [suggestionView setShowCloseButton:v7];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006CEF58;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [UIView performWithoutAnimation:v9];
  }
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(RelatedSearchSuggestionViewController *)self isHidden]!= hidden)
  {
    if (hidden)
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

    suggestionView = [(RelatedSearchSuggestionViewController *)self suggestionView];
    [suggestionView setAlpha:animatedCopy animated:v8];
  }
}

- (BOOL)isHidden
{
  view = [(RelatedSearchSuggestionViewController *)self view];
  [view alpha];
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

- (void)_hideSuggestionViewTimerFired:(id)fired
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

- (id)_createMapsThemeLabelWithTitle:(id)title
{
  titleCopy = title;
  v4 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MapsThemeLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor labelColor];
  [(MapsThemeLabel *)v4 setTextColor:v5];

  [DynamicTypeWizard autorefreshLabel:v4 withFontProvider:&stru_101626928];
  LODWORD(v6) = 1148846080;
  [(MapsThemeLabel *)v4 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [(MapsThemeLabel *)v4 setContentCompressionResistancePriority:0 forAxis:v7];
  [(MapsThemeLabel *)v4 setText:titleCopy];

  return v4;
}

- (id)_createMapsThemeButtonWithTitle:(id)title
{
  titleCopy = title;
  v5 = [MapsThemeButton buttonWithType:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 _setTouchInsets:{-7.0, -7.0, -7.0, -7.0}];
  [v5 setTitleColorProvider:&stru_1016309D0];
  titleLabel = [v5 titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_101626928];

  [v5 addTarget:self action:"_componentButtonTapped:" forControlEvents:64];
  titleLabel2 = [v5 titleLabel];
  [titleLabel2 setLineBreakMode:4];

  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v5 setContentHorizontalAlignment:v8];
  [v5 setTitle:titleCopy forState:0];

  return v5;
}

- (void)_componentButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  [(RelatedSearchSuggestionViewController *)self setHidden:1 animated:1];
  v4 = [tappedCopy tag];
  components = [(RelatedSearchSuggestion *)self->_suggestion components];
  v6 = [components count];

  if (v4 >= v6)
  {
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    delegate = [(RelatedSearchSuggestionViewController *)self delegate];
    [delegate relatedSearchSuggestionViewController:self didDismissWithReason:0];
  }

  else
  {
    components2 = [(RelatedSearchSuggestion *)self->_suggestion components];
    delegate = [components2 objectAtIndexedSubscript:v4];

    if ([delegate isRelatedSearchSuggestion])
    {
      suggestion = [delegate suggestion];
      pdSuggestion = self->_pdSuggestion;
      self->_pdSuggestion = suggestion;

      delegate2 = [(RelatedSearchSuggestionViewController *)self delegate];
      [delegate2 relatedSearchSuggestionViewControllerDidTapActionButton:self];
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
  components = [(RelatedSearchSuggestion *)self->_suggestion components];
  v26 = [components countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v26)
  {
    v7 = components;
    goto LABEL_19;
  }

  v7 = 0;
  v8 = 0;
  obj = components;
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
      isRelatedSearchSuggestion = [v11 isRelatedSearchSuggestion];
      displayText = [v11 displayText];
      if (isRelatedSearchSuggestion)
      {
        v14 = [(RelatedSearchSuggestionViewController *)self _createMapsThemeButtonWithTitle:displayText];

        [v14 setTag:v8];
      }

      else
      {
        v14 = [(RelatedSearchSuggestionViewController *)self _createMapsThemeLabelWithTitle:displayText];
      }

      [(UIScrollView *)self->_scrollView addSubview:v14];
      centerYAnchor = [v14 centerYAnchor];
      centerYAnchor2 = [(UIScrollView *)self->_scrollView centerYAnchor];
      v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v5 addObject:v17];

      leadingAnchor = [v14 leadingAnchor];
      if (v10)
      {
        trailingAnchor = [v10 trailingAnchor];
        [leadingAnchor constraintEqualToAnchor:trailingAnchor];
      }

      else
      {
        trailingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
        [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:16.0];
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
    trailingAnchor2 = [v7 trailingAnchor];
    trailingAnchor3 = [(UIScrollView *)self->_scrollView trailingAnchor];
    v23 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
    [v5 addObject:v23];

LABEL_19:
  }

  [NSLayoutConstraint activateConstraints:v5];
}

- (void)preferredContentSizeChanged:(id)changed
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

  suggestionView = [(RelatedSearchSuggestionViewController *)self suggestionView];
  [suggestionView setShowCloseButton:v4];
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
  suggestionView = [(RelatedSearchSuggestionViewController *)self suggestionView];
  [suggestionView setBlurView:v5];

  view = [(RelatedSearchSuggestionViewController *)self view];
  [view addSubview:self->_blurView];

  v8 = self->_blurView;
  suggestionView2 = [(RelatedSearchSuggestionViewController *)self suggestionView];
  [suggestionView2 setBlurView:v8];

  v10 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  scrollView = self->_scrollView;
  self->_scrollView = v10;

  [(UIScrollView *)self->_scrollView setDelegate:self];
  view2 = [(RelatedSearchSuggestionViewController *)self view];
  [view2 addSubview:self->_scrollView];

  v13 = self->_scrollView;
  suggestionView3 = [(RelatedSearchSuggestionViewController *)self suggestionView];
  [suggestionView3 setScrollView:v13];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Close [DYM]" value:@"localized string not found" table:0];
  v17 = [(RelatedSearchSuggestionViewController *)self _createMapsThemeButtonWithTitle:v16];
  closeButton = self->_closeButton;
  self->_closeButton = v17;

  [(MapsThemeButton *)self->_closeButton setTag:0x7FFFFFFFFFFFFFFFLL];
  view3 = [(RelatedSearchSuggestionViewController *)self view];
  [view3 addSubview:self->_closeButton];

  v20 = self->_closeButton;
  suggestionView4 = [(RelatedSearchSuggestionViewController *)self suggestionView];
  [suggestionView4 setCloseButton:v20];

  view4 = [(RelatedSearchSuggestionViewController *)self view];
  v23 = [view4 _maps_addHairlineAtTopWithMargin:0.0];
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