@interface AENoteFullscreenEditorController
- (AEAnnotationEditorDelegate)delegate;
- (AENoteFullscreenEditorController)initWithNibName:(id)name bundle:(id)bundle;
- (CGRect)highlightColorBarFrame;
- (CGRect)highlightedTextLabelFrame;
- (CGSize)scrollViewContentSize;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)scrollViewScrollerInsets;
- (id)keyCommands;
- (id)makeTextViewWithText:(id)text;
- (id)textAttributes;
- (void)_setupNavigationBarItems:(BOOL)items;
- (void)_updateColors;
- (void)dealloc;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)p_revealTextViewCursorAnimated:(BOOL)animated;
- (void)releaseViews;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setTheme:(id)theme;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
- (void)updateScrollViewContent;
- (void)updateTextViewFrame;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AENoteFullscreenEditorController

- (void)dealloc
{
  [(AENoteFullscreenEditorController *)self releaseViews];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIKeyboardWillHideNotification object:0];

  v5.receiver = self;
  v5.super_class = AENoteFullscreenEditorController;
  [(IMViewController *)&v5 dealloc];
}

- (void)releaseViews
{
  highlightedTextLabel = self->_highlightedTextLabel;
  self->_highlightedTextLabel = 0;

  delegate = [(UIScrollView *)self->_scrollView delegate];

  if (delegate == self)
  {
    [(UIScrollView *)self->_scrollView setDelegate:0];
  }

  scrollView = self->_scrollView;
  self->_scrollView = 0;

  delegate2 = [(UITextView *)self->_textView delegate];

  if (delegate2 == self)
  {
    [(UITextView *)self->_textView setDelegate:0];
  }

  textView = self->_textView;
  self->_textView = 0;

  dimmingOverlayView = self->_dimmingOverlayView;
  self->_dimmingOverlayView = 0;

  v9.receiver = self;
  v9.super_class = AENoteFullscreenEditorController;
  [(IMViewController *)&v9 releaseViews];
}

- (void)viewWillAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = AENoteFullscreenEditorController;
  [(IMViewController *)&v17 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];

  [(AENoteFullscreenEditorController *)self updateScrollViewContent];
  if ([(AENoteFullscreenEditorController *)self shouldDim])
  {
    v6 = [IMPassthroughView alloc];
    view = [(AENoteFullscreenEditorController *)self view];
    [view bounds];
    v8 = [(IMPassthroughView *)v6 initWithFrame:?];
    dimmingOverlayView = self->_dimmingOverlayView;
    self->_dimmingOverlayView = v8;

    dimmingOverlayView = [(AENoteFullscreenEditorController *)self dimmingOverlayView];
    [dimmingOverlayView setAutoresizingMask:18];

    v11 = [UIColor colorWithWhite:0.0 alpha:0.2];
    dimmingOverlayView2 = [(AENoteFullscreenEditorController *)self dimmingOverlayView];
    [dimmingOverlayView2 setBackgroundColor:v11];

    dimmingOverlayView3 = [(AENoteFullscreenEditorController *)self dimmingOverlayView];
    [dimmingOverlayView3 setAcceptsHits:0];

    view2 = [(AENoteFullscreenEditorController *)self view];
    dimmingOverlayView4 = [(AENoteFullscreenEditorController *)self dimmingOverlayView];
    [view2 addSubview:dimmingOverlayView4];
  }

  delegate = [(AENoteFullscreenEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate willShowAnnotationEditor:self];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  delegate = [(AENoteFullscreenEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didShowAnnotationEditor:self];
  }

  v7.receiver = self;
  v7.super_class = AENoteFullscreenEditorController;
  [(AENoteFullscreenEditorController *)&v7 viewDidAppear:appearCopy];
  if ([(AENoteFullscreenEditorController *)self editsOnLaunch])
  {
    textView = [(AENoteFullscreenEditorController *)self textView];
    [textView becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AENoteFullscreenEditorController;
  [(AENoteFullscreenEditorController *)&v5 viewWillDisappear:disappear];
  [(UITextView *)self->_textView resignFirstResponder];
  delegate = [(AENoteFullscreenEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate willHideAnnotationEditor:self];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  delegate = [(AENoteFullscreenEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didHideAnnotationEditor:self];
  }

  v8.receiver = self;
  v8.super_class = AENoteFullscreenEditorController;
  [(IMViewController *)&v8 viewDidDisappear:disappearCopy];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:UIKeyboardWillHideNotification object:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AENoteFullscreenEditorController;
  coordinatorCopy = coordinator;
  [(IMViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_13960C;
  v8[3] = &unk_2C7CD0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)_setupNavigationBarItems:(BOOL)items
{
  v4 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v9 = IMCommonCoreBundle();
  v10 = [v9 localizedStringForKey:@"Note_Editor_Title" value:@"Note" table:@"BCCommonCoreLocalizable"];
  [v8 setText:v10];

  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v8 setFont:v11];

  [v8 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 sizeToFit];
  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  annotation = [(AENoteFullscreenEditorController *)self annotation];
  annotationModificationDate = [annotation annotationModificationDate];
  selfCopy = self;
  annotation2 = [(AENoteFullscreenEditorController *)self annotation];
  v16 = annotation2;
  if (annotationModificationDate)
  {
    [annotation2 annotationModificationDate];
  }

  else
  {
    [annotation2 annotationCreationDate];
  }
  v17 = ;

  v18 = [NSDate mailLikeDescriptionFromDate:v17];
  [(UILabel *)v12 setText:v18];

  v55 = v17;
  v19 = [NSDate accessibleMailLikeDescriptionFromDate:v17];
  [(UILabel *)v12 setAccessibilityLabel:v19];

  v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)v12 setFont:v20];

  [(UILabel *)v12 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];
  [(UILabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v12 sizeToFit];
  v21 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 addSubview:v8];
  [v21 addSubview:v12];
  leadingAnchor = [v8 leadingAnchor];
  layoutMarginsGuide = [v21 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v51 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v60[0] = v51;
  topAnchor = [v8 topAnchor];
  safeAreaLayoutGuide = [v21 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v60[1] = v47;
  bottomAnchor = [v8 bottomAnchor];
  safeAreaLayoutGuide2 = [v21 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v60[2] = v43;
  leadingAnchor3 = [(UILabel *)v12 leadingAnchor];
  v58 = v8;
  trailingAnchor = [v8 trailingAnchor];
  v40 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:5.0];
  v60[3] = v40;
  trailingAnchor2 = [(UILabel *)v12 trailingAnchor];
  layoutMarginsGuide2 = [v21 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
  v36 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v60[4] = v36;
  topAnchor3 = [(UILabel *)v12 topAnchor];
  safeAreaLayoutGuide3 = [v21 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide3 topAnchor];
  v25 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v60[5] = v25;
  v56 = v12;
  bottomAnchor3 = [(UILabel *)v12 bottomAnchor];
  safeAreaLayoutGuide4 = [v21 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide4 bottomAnchor];
  v29 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v60[6] = v29;
  v30 = [NSArray arrayWithObjects:v60 count:7];
  [v21 addConstraints:v30];

  v31 = [[UIBarButtonItem alloc] initWithCustomView:v21];
  [v31 _setPrefersNoPlatter:1];
  navigationItem = [(AENoteFullscreenEditorController *)selfCopy navigationItem];
  [navigationItem setLeftBarButtonItem:v31];

  if (!items)
  {
    v33 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:selfCopy action:"doneButtonPressed:"];
    navigationItem2 = [(AENoteFullscreenEditorController *)selfCopy navigationItem];
    [navigationItem2 setRightBarButtonItem:v33];
  }

  dateLabel = selfCopy->_dateLabel;
  selfCopy->_dateLabel = v56;
}

- (AENoteFullscreenEditorController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = AENoteFullscreenEditorController;
  v4 = [(IMViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(AENoteFullscreenEditorController *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)viewDidLoad
{
  v93.receiver = self;
  v93.super_class = AENoteFullscreenEditorController;
  [(AENoteFullscreenEditorController *)&v93 viewDidLoad];
  highlightedTextFont = [(AENoteFullscreenEditorController *)self highlightedTextFont];
  if (!highlightedTextFont)
  {
    highlightedTextFont = [UIFont systemFontOfSize:17.0];
  }

  v92 = highlightedTextFont;
  v4 = [UIScrollView alloc];
  view = [(AENoteFullscreenEditorController *)self view];
  [view bounds];
  v6 = [v4 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v6;

  scrollView = [(AENoteFullscreenEditorController *)self scrollView];
  [scrollView setDelegate:self];

  scrollView2 = [(AENoteFullscreenEditorController *)self scrollView];
  [scrollView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView3 = [(AENoteFullscreenEditorController *)self scrollView];
  [scrollView3 setOpaque:1];

  [(AENoteFullscreenEditorController *)self scrollViewScrollerInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  scrollView4 = [(AENoteFullscreenEditorController *)self scrollView];
  [scrollView4 setScrollIndicatorInsets:{v12, v14, v16, v18}];

  [(AENoteFullscreenEditorController *)self scrollViewScrollerInsets];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  scrollView5 = [(AENoteFullscreenEditorController *)self scrollView];
  [scrollView5 setContentInset:{v21, v23, v25, v27}];

  v29 = [AEHighlightedTextLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(AEHighlightedTextLabel *)v29 initWithFrame:0 generateHighlight:0 generateHighlightAsynchronously:CGRectZero.origin.x, y, width, height];
  highlightedTextLabel = self->_highlightedTextLabel;
  self->_highlightedTextLabel = height;

  [(AEHighlightedTextLabel *)self->_highlightedTextLabel setUseSelectedText:1];
  highlightedTextLabel = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [highlightedTextLabel setAutoresizingMask:34];

  annotation = [(AENoteFullscreenEditorController *)self annotation];
  highlightedTextLabel2 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [highlightedTextLabel2 setAnnotation:annotation];

  highlightedTextLabel3 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [highlightedTextLabel3 setFont:highlightedTextFont];

  highlightedTextLabel4 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [highlightedTextLabel4 setOpaque:1];

  highlightedTextLabel5 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [highlightedTextLabel5 setNumberOfLines:3];

  v41 = objc_alloc_init(UIView);
  highlightColorBar = self->_highlightColorBar;
  self->_highlightColorBar = v41;

  annotation2 = [(AENoteFullscreenEditorController *)self annotation];
  annotationNote = [annotation2 annotationNote];
  v45 = [(AENoteFullscreenEditorController *)self makeTextViewWithText:annotationNote];
  [(AENoteFullscreenEditorController *)self setTextView:v45];

  textView = [(AENoteFullscreenEditorController *)self textView];
  [textView setAutoresizingMask:18];

  textView2 = [(AENoteFullscreenEditorController *)self textView];
  [textView2 setScrollEnabled:0];

  textView3 = [(AENoteFullscreenEditorController *)self textView];
  [textView3 setDelegate:self];

  v49 = IMCommonCoreBundle();
  v91 = [v49 localizedStringForKey:@"Note_Editor_Placeholder" value:@"Add a note…" table:@"BCCommonCoreLocalizable"];

  v50 = [[NSAttributedString alloc] initWithString:v91];
  textView4 = [(AENoteFullscreenEditorController *)self textView];
  [textView4 setAttributedPlaceholder:v50];

  scrollView6 = [(AENoteFullscreenEditorController *)self scrollView];
  textView5 = [(AENoteFullscreenEditorController *)self textView];
  [scrollView6 addSubview:textView5];

  scrollView7 = [(AENoteFullscreenEditorController *)self scrollView];
  highlightColorBar = [(AENoteFullscreenEditorController *)self highlightColorBar];
  [scrollView7 addSubview:highlightColorBar];

  scrollView8 = [(AENoteFullscreenEditorController *)self scrollView];
  highlightedTextLabel6 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [scrollView8 addSubview:highlightedTextLabel6];

  view2 = [(AENoteFullscreenEditorController *)self view];
  scrollView9 = [(AENoteFullscreenEditorController *)self scrollView];
  [view2 addSubview:scrollView9];

  [(AENoteFullscreenEditorController *)self _setupNavigationBarItems:0];
  view3 = [(AENoteFullscreenEditorController *)self view];
  v61 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view3 addSubview:v61];
  [v61 setHidden:1];
  heightAnchor = [v61 heightAnchor];
  v63 = [heightAnchor constraintEqualToConstant:0.0];
  v95 = v63;
  v64 = [NSArray arrayWithObjects:&v95 count:1];
  [NSLayoutConstraint activateConstraints:v64];

  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  v65 = view3;
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v94[0] = v87;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v83 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v94[1] = v83;
  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  v79 = view3;
  topAnchor2 = [view3 topAnchor];
  v80 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v94[2] = v80;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  topAnchor3 = [v61 topAnchor];
  v76 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v94[3] = v76;
  leadingAnchor3 = [v61 leadingAnchor];
  leadingAnchor4 = [view3 leadingAnchor];
  v66 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v94[4] = v66;
  trailingAnchor3 = [v61 trailingAnchor];
  trailingAnchor4 = [v65 trailingAnchor];
  v69 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v94[5] = v69;
  bottomAnchor2 = [v61 bottomAnchor];
  bottomAnchor3 = [v65 bottomAnchor];
  v72 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v94[6] = v72;
  v73 = [NSArray arrayWithObjects:v94 count:7];
  [NSLayoutConstraint activateConstraints:v73];

  [(AENoteFullscreenEditorController *)self updateScrollViewContent];
  [(AENoteFullscreenEditorController *)self _updateColors];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = AENoteFullscreenEditorController;
  [(AENoteFullscreenEditorController *)&v12 viewDidLayoutSubviews];
  [(AENoteFullscreenEditorController *)self updateScrollViewContent];
  [(AENoteFullscreenEditorController *)self scrollViewScrollerInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  scrollView = [(AENoteFullscreenEditorController *)self scrollView];
  [scrollView setContentInset:{v4, v6, v8, v10}];
}

- (id)keyCommands
{
  v9.receiver = self;
  v9.super_class = AENoteFullscreenEditorController;
  keyCommands = [(AENoteFullscreenEditorController *)&v9 keyCommands];
  v3 = [keyCommands mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSMutableArray array];
  }

  v6 = v5;

  v7 = [UIKeyCommand commandWithTitle:&stru_2D2930 image:0 action:"doneButtonPressed:" input:@"\r" modifierFlags:0x100000 propertyList:0];
  [v6 addObject:v7];

  return v6;
}

- (void)setTheme:(id)theme
{
  v4.receiver = self;
  v4.super_class = AENoteFullscreenEditorController;
  [(IMViewController *)&v4 setTheme:theme];
  [(AENoteFullscreenEditorController *)self _updateColors];
}

- (void)_updateColors
{
  themePage = [(IMViewController *)self themePage];
  annotation = [(AENoteFullscreenEditorController *)self annotation];
  annotationStyle = [annotation annotationStyle];
  annotationPageTheme = [themePage annotationPageTheme];
  annotation2 = [(AENoteFullscreenEditorController *)self annotation];
  v7 = +[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", annotationStyle, annotationPageTheme, [annotation2 annotationIsUnderline]);

  v8 = [themePage backgroundColorForTraitEnvironment:self];
  viewIfLoaded = [(AENoteFullscreenEditorController *)self viewIfLoaded];
  keyColor = [themePage keyColor];
  [viewIfLoaded setTintColor:keyColor];

  [viewIfLoaded setBackgroundColor:v8];
  scrollView = [(AENoteFullscreenEditorController *)self scrollView];
  [scrollView setBackgroundColor:v8];

  primaryTextColor = [themePage primaryTextColor];
  highlightedTextLabel = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [highlightedTextLabel setTextColor:primaryTextColor];
  [highlightedTextLabel setShouldInvertContent:{objc_msgSend(themePage, "shouldInvertContent")}];
  [highlightedTextLabel setAnnotationBlendMode:{objc_msgSend(themePage, "annotationBlendMode")}];
  [highlightedTextLabel setHighlightedAnnotationBlendMode:{objc_msgSend(themePage, "highlightedAnnotationBlendMode")}];
  [highlightedTextLabel setPageTheme:{objc_msgSend(themePage, "annotationPageTheme")}];
  [highlightedTextLabel setBackgroundColor:v8];
  textView = [(AENoteFullscreenEditorController *)self textView];
  [textView setBackgroundColor:v8];

  textView2 = [(AENoteFullscreenEditorController *)self textView];
  [textView2 setTextColor:primaryTextColor];

  notesSidebarBarColor = [v7 notesSidebarBarColor];
  theme = [(IMViewController *)self theme];
  v18 = [notesSidebarBarColor bkaxAdjustedForIncreaseContrastAdjustingDarker:{objc_msgSend(theme, "shouldInvertContent") ^ 1}];
  highlightColorBar = [(AENoteFullscreenEditorController *)self highlightColorBar];
  [highlightColorBar setBackgroundColor:v18];

  v20 = +[UITraitCollection currentTraitCollection];
  accessibilityContrast = [v20 accessibilityContrast];

  if (accessibilityContrast == &dword_0 + 1)
  {
    [themePage primaryTextColor];
  }

  else
  {
    [themePage secondaryTextColor];
  }
  v22 = ;
  dateLabel = [(AENoteFullscreenEditorController *)self dateLabel];
  [dateLabel setTextColor:v22];

  textView3 = [(AENoteFullscreenEditorController *)self textView];
  [themePage stylizeKeyboard:textView3];
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  delegate = [(AENoteFullscreenEditorController *)self delegate];
  annotation = [(AENoteFullscreenEditorController *)self annotation];
  text = [editingCopy text];

  [delegate editorController:self editedAnnotation:annotation toText:text];
}

- (void)textViewDidChange:(id)change
{
  textView = [(AENoteFullscreenEditorController *)self textView];
  [textView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  textView2 = [(AENoteFullscreenEditorController *)self textView];
  [textView2 sizeToFit];

  textView3 = [(AENoteFullscreenEditorController *)self textView];
  [textView3 frame];
  v16 = v15;

  textView4 = [(AENoteFullscreenEditorController *)self textView];
  [textView4 setFrame:{v6, v8, v10, v12}];

  v18 = v12;
  v19 = v16;
  if (vabds_f32(v18, v19) >= 0.01)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(AENoteFullscreenEditorController *)self updateScrollViewContent];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_13AC34;
    v20[3] = &unk_2C7D40;
    v20[4] = self;
    [CATransaction setCompletionBlock:v20];
    +[CATransaction commit];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  textView = [(AENoteFullscreenEditorController *)self textView];
  [textView resignFirstResponder];
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  if (![(AENoteFullscreenEditorController *)self keyboardVisible])
  {
    [(AENoteFullscreenEditorController *)self setKeyboardVisible:1];
    userInfo = [showCopy userInfo];
    v6 = [userInfo valueForKey:UIKeyboardFrameEndUserInfoKey];
    [v6 CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    view = [(AENoteFullscreenEditorController *)self view];
    [view convertRect:0 fromView:{v8, v10, v12, v14}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    userInfo2 = [showCopy userInfo];
    v25 = [userInfo2 valueForKey:UIKeyboardAnimationCurveUserInfoKey];
    integerValue = [v25 integerValue];

    userInfo3 = [showCopy userInfo];
    v28 = [userInfo3 valueForKey:UIKeyboardAnimationDurationUserInfoKey];
    [v28 doubleValue];
    v51 = v29;

    scrollView = [(AENoteFullscreenEditorController *)self scrollView];
    [scrollView frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v54.origin.x = v32;
    v54.origin.y = v34;
    v54.size.width = v36;
    v54.size.height = v38;
    v57.origin.x = v17;
    v57.origin.y = v19;
    v57.size.width = v21;
    v57.size.height = v23;
    v55 = CGRectIntersection(v54, v57);
    x = v55.origin.x;
    y = v55.origin.y;
    width = v55.size.width;
    height = v55.size.height;
    [(AENoteFullscreenEditorController *)self scrollViewScrollerInsets];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_13AF28;
    v53[3] = &unk_2CDDC0;
    v53[4] = self;
    v53[5] = v44;
    v53[6] = v46;
    *&v53[7] = v48 + CGRectGetHeight(v56);
    v53[8] = v50;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_13AFD0;
    v52[3] = &unk_2C99D8;
    v52[4] = self;
    [UIView animateWithDuration:integerValue << 16 delay:v53 options:v52 animations:v51 completion:0.0];
  }
}

- (void)keyboardWillHide:(id)hide
{
  hideCopy = hide;
  if ([(AENoteFullscreenEditorController *)self keyboardVisible])
  {
    [(AENoteFullscreenEditorController *)self setKeyboardVisible:0];
    userInfo = [hideCopy userInfo];
    v6 = [userInfo valueForKey:UIKeyboardAnimationCurveUserInfoKey];
    integerValue = [v6 integerValue];

    userInfo2 = [hideCopy userInfo];
    v9 = [userInfo2 valueForKey:UIKeyboardAnimationDurationUserInfoKey];
    [v9 doubleValue];
    v11 = v10;

    [(AENoteFullscreenEditorController *)self scrollViewScrollerInsets];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_13B168;
    v17[3] = &unk_2CDDC0;
    v17[4] = self;
    v17[5] = v12;
    v17[6] = v13;
    v17[7] = v14;
    v17[8] = v15;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_13B210;
    v16[3] = &unk_2C99D8;
    v16[4] = self;
    [UIView animateWithDuration:integerValue << 16 delay:v17 options:v16 animations:v11 completion:0.0];
  }
}

- (void)updateScrollViewContent
{
  [(AENoteFullscreenEditorController *)self highlightedTextLabelFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  highlightedTextLabel = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [highlightedTextLabel setFrame:{v4, v6, v8, v10}];

  [(AENoteFullscreenEditorController *)self highlightColorBarFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  highlightColorBar = [(AENoteFullscreenEditorController *)self highlightColorBar];
  [highlightColorBar setFrame:{v13, v15, v17, v19}];

  [(AENoteFullscreenEditorController *)self updateTextViewFrame];
  [(AENoteFullscreenEditorController *)self scrollViewContentSize];
  v22 = v21;
  v24 = v23;
  scrollView = [(AENoteFullscreenEditorController *)self scrollView];
  [scrollView setContentSize:{v22, v24}];
}

- (UIEdgeInsets)scrollViewScrollerInsets
{
  [(AENoteFullscreenEditorController *)self contentInsets];
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)highlightedTextLabelFrame
{
  height = CGRectZero.size.height;
  scrollView = [(AENoteFullscreenEditorController *)self scrollView];
  [scrollView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(AENoteFullscreenEditorController *)self contentInsets];
  v14 = v13;
  v16 = v15 + 4.0 + 10.0;
  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = v12;
  v17 = CGRectGetWidth(v34) - v16 - v14;
  bc_windowForViewController = [(AENoteFullscreenEditorController *)self bc_windowForViewController];
  windowScene = [bc_windowForViewController windowScene];
  if ([windowScene interfaceOrientation] - 1 >= &dword_0 + 2)
  {
    v20 = 13.0;
  }

  else
  {
    v20 = 20.0;
  }

  highlightedTextLabel = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  v22 = objc_opt_class();
  annotation = [(AENoteFullscreenEditorController *)self annotation];
  highlightedTextLabel2 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  font = [highlightedTextLabel2 font];
  v35.origin.x = v16;
  v35.origin.y = v20;
  v35.size.width = v17;
  v35.size.height = height;
  Width = CGRectGetWidth(v35);
  highlightedTextLabel3 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v22 sizeForAnnotation:annotation font:font width:objc_msgSend(highlightedTextLabel3 numberOfLines:"numberOfLines") useSelectedText:{1, Width}];
  v29 = v28;

  v30 = v16;
  v31 = v20;
  v32 = v17;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)highlightColorBarFrame
{
  highlightedTextLabel = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [highlightedTextLabel frame];
  v5 = v4;
  v7 = v6;

  [(AENoteFullscreenEditorController *)self contentInsets];
  v9 = v8;
  v10 = 4.0;
  v11 = v5;
  v12 = v7;
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v11;
  result.origin.x = v9;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  v2 = 0.0;
  v3 = 16.0;
  v4 = 15.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)updateTextViewFrame
{
  [(AENoteFullscreenEditorController *)self contentInsets];
  v35 = v3;
  v36 = v4;
  highlightedTextLabel = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [highlightedTextLabel frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  scrollView = [(AENoteFullscreenEditorController *)self scrollView];
  [scrollView bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v34 = v7 + -5.0;
  v39.origin.x = v7;
  v39.origin.y = v9;
  v39.size.width = v11;
  v39.size.height = v13;
  v23 = CGRectGetMaxY(v39) + 6.0;
  v40.origin.x = v16;
  v40.origin.y = v18;
  v40.size.width = v20;
  v40.size.height = v22;
  v24 = CGRectGetHeight(v40) - v23;
  [(AENoteFullscreenEditorController *)self scrollViewScrollerInsets];
  v26 = v24 - v25;
  [(AENoteFullscreenEditorController *)self scrollViewScrollerInsets];
  v28 = v26 - v27 - v35;
  v41.origin.x = v16;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  v29 = CGRectGetWidth(v41) - v34 - *&v36;
  textView = [(AENoteFullscreenEditorController *)self textView];
  [textView setFrame:{v34, v23, v29, v28}];

  textView2 = [(AENoteFullscreenEditorController *)self textView];
  [textView2 sizeToFit];

  textView3 = [(AENoteFullscreenEditorController *)self textView];
  [textView3 frame];
  Height = CGRectGetHeight(v42);

  if (v28 >= Height)
  {
    Height = v28;
  }

  textView4 = [(AENoteFullscreenEditorController *)self textView];
  [textView4 setFrame:{v34, v23, v29, Height}];
}

- (CGSize)scrollViewContentSize
{
  textView = [(AENoteFullscreenEditorController *)self textView];
  [textView frame];
  MaxY = CGRectGetMaxY(v16);

  view = [(AENoteFullscreenEditorController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v17);
  view2 = [(AENoteFullscreenEditorController *)self view];
  [view2 safeAreaInsets];
  v9 = Width - v8;
  view3 = [(AENoteFullscreenEditorController *)self view];
  [view3 safeAreaInsets];
  v12 = v9 - v11;

  v13 = v12;
  v14 = MaxY;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)p_revealTextViewCursorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  textView = [(AENoteFullscreenEditorController *)self textView];
  if ([textView isFirstResponder])
  {
    [textView selectedRange];
    if (!v5)
    {
      selectedTextRange = [textView selectedTextRange];
      start = [selectedTextRange start];
      [textView caretRectForPosition:start];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      font = [textView font];
      [font lineHeight];
      v18 = v15 + v17;

      scrollView = [(AENoteFullscreenEditorController *)self scrollView];
      [scrollView convertRect:textView fromView:{v9, v11, v13, v18}];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      scrollView2 = [(AENoteFullscreenEditorController *)self scrollView];
      [scrollView2 scrollRectToVisible:animatedCopy animated:{v21, v23, v25, v27}];
    }
  }
}

- (AEAnnotationEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)makeTextViewWithText:(id)text
{
  v4 = sub_1EEF04();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9.super.super.super.super.isa = AENoteFullscreenEditorController.makeTextView(text:)(v8).super.super.super.super.isa;

  return v9.super.super.super.super.isa;
}

- (id)textAttributes
{
  sub_1AEB9C();
  type metadata accessor for Key(0);
  sub_1AEA60();
  v2.super.isa = sub_1EEE44().super.isa;

  return v2.super.isa;
}

@end