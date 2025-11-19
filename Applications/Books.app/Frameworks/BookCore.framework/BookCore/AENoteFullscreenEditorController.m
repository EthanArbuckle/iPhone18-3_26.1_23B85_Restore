@interface AENoteFullscreenEditorController
- (AEAnnotationEditorDelegate)delegate;
- (AENoteFullscreenEditorController)initWithNibName:(id)a3 bundle:(id)a4;
- (CGRect)highlightColorBarFrame;
- (CGRect)highlightedTextLabelFrame;
- (CGSize)scrollViewContentSize;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)scrollViewScrollerInsets;
- (id)keyCommands;
- (id)makeTextViewWithText:(id)a3;
- (id)textAttributes;
- (void)_setupNavigationBarItems:(BOOL)a3;
- (void)_updateColors;
- (void)dealloc;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)p_revealTextViewCursorAnimated:(BOOL)a3;
- (void)releaseViews;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setTheme:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)updateScrollViewContent;
- (void)updateTextViewFrame;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

  v4 = [(UIScrollView *)self->_scrollView delegate];

  if (v4 == self)
  {
    [(UIScrollView *)self->_scrollView setDelegate:0];
  }

  scrollView = self->_scrollView;
  self->_scrollView = 0;

  v6 = [(UITextView *)self->_textView delegate];

  if (v6 == self)
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

- (void)viewWillAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = AENoteFullscreenEditorController;
  [(IMViewController *)&v17 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];

  [(AENoteFullscreenEditorController *)self updateScrollViewContent];
  if ([(AENoteFullscreenEditorController *)self shouldDim])
  {
    v6 = [IMPassthroughView alloc];
    v7 = [(AENoteFullscreenEditorController *)self view];
    [v7 bounds];
    v8 = [(IMPassthroughView *)v6 initWithFrame:?];
    dimmingOverlayView = self->_dimmingOverlayView;
    self->_dimmingOverlayView = v8;

    v10 = [(AENoteFullscreenEditorController *)self dimmingOverlayView];
    [v10 setAutoresizingMask:18];

    v11 = [UIColor colorWithWhite:0.0 alpha:0.2];
    v12 = [(AENoteFullscreenEditorController *)self dimmingOverlayView];
    [v12 setBackgroundColor:v11];

    v13 = [(AENoteFullscreenEditorController *)self dimmingOverlayView];
    [v13 setAcceptsHits:0];

    v14 = [(AENoteFullscreenEditorController *)self view];
    v15 = [(AENoteFullscreenEditorController *)self dimmingOverlayView];
    [v14 addSubview:v15];
  }

  v16 = [(AENoteFullscreenEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v16 willShowAnnotationEditor:self];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(AENoteFullscreenEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 didShowAnnotationEditor:self];
  }

  v7.receiver = self;
  v7.super_class = AENoteFullscreenEditorController;
  [(AENoteFullscreenEditorController *)&v7 viewDidAppear:v3];
  if ([(AENoteFullscreenEditorController *)self editsOnLaunch])
  {
    v6 = [(AENoteFullscreenEditorController *)self textView];
    [v6 becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AENoteFullscreenEditorController;
  [(AENoteFullscreenEditorController *)&v5 viewWillDisappear:a3];
  [(UITextView *)self->_textView resignFirstResponder];
  v4 = [(AENoteFullscreenEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 willHideAnnotationEditor:self];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(AENoteFullscreenEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 didHideAnnotationEditor:self];
  }

  v8.receiver = self;
  v8.super_class = AENoteFullscreenEditorController;
  [(IMViewController *)&v8 viewDidDisappear:v3];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:UIKeyboardWillHideNotification object:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AENoteFullscreenEditorController;
  v7 = a4;
  [(IMViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_13960C;
  v8[3] = &unk_2C7CD0;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (void)_setupNavigationBarItems:(BOOL)a3
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
  v13 = [(AENoteFullscreenEditorController *)self annotation];
  v14 = [v13 annotationModificationDate];
  v59 = self;
  v15 = [(AENoteFullscreenEditorController *)self annotation];
  v16 = v15;
  if (v14)
  {
    [v15 annotationModificationDate];
  }

  else
  {
    [v15 annotationCreationDate];
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
  v53 = [v8 leadingAnchor];
  v54 = [v21 layoutMarginsGuide];
  v52 = [v54 leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v60[0] = v51;
  v49 = [v8 topAnchor];
  v50 = [v21 safeAreaLayoutGuide];
  v48 = [v50 topAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v60[1] = v47;
  v45 = [v8 bottomAnchor];
  v46 = [v21 safeAreaLayoutGuide];
  v44 = [v46 bottomAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v60[2] = v43;
  v42 = [(UILabel *)v12 leadingAnchor];
  v58 = v8;
  v41 = [v8 trailingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:5.0];
  v60[3] = v40;
  v38 = [(UILabel *)v12 trailingAnchor];
  v39 = [v21 layoutMarginsGuide];
  v37 = [v39 trailingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v60[4] = v36;
  v22 = [(UILabel *)v12 topAnchor];
  v23 = [v21 safeAreaLayoutGuide];
  v24 = [v23 topAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v60[5] = v25;
  v56 = v12;
  v26 = [(UILabel *)v12 bottomAnchor];
  v27 = [v21 safeAreaLayoutGuide];
  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v60[6] = v29;
  v30 = [NSArray arrayWithObjects:v60 count:7];
  [v21 addConstraints:v30];

  v31 = [[UIBarButtonItem alloc] initWithCustomView:v21];
  [v31 _setPrefersNoPlatter:1];
  v32 = [(AENoteFullscreenEditorController *)v59 navigationItem];
  [v32 setLeftBarButtonItem:v31];

  if (!a3)
  {
    v33 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v59 action:"doneButtonPressed:"];
    v34 = [(AENoteFullscreenEditorController *)v59 navigationItem];
    [v34 setRightBarButtonItem:v33];
  }

  dateLabel = v59->_dateLabel;
  v59->_dateLabel = v56;
}

- (AENoteFullscreenEditorController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = AENoteFullscreenEditorController;
  v4 = [(IMViewController *)&v8 initWithNibName:a3 bundle:a4];
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
  v3 = [(AENoteFullscreenEditorController *)self highlightedTextFont];
  if (!v3)
  {
    v3 = [UIFont systemFontOfSize:17.0];
  }

  v92 = v3;
  v4 = [UIScrollView alloc];
  v5 = [(AENoteFullscreenEditorController *)self view];
  [v5 bounds];
  v6 = [v4 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v6;

  v8 = [(AENoteFullscreenEditorController *)self scrollView];
  [v8 setDelegate:self];

  v9 = [(AENoteFullscreenEditorController *)self scrollView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(AENoteFullscreenEditorController *)self scrollView];
  [v10 setOpaque:1];

  [(AENoteFullscreenEditorController *)self scrollViewScrollerInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(AENoteFullscreenEditorController *)self scrollView];
  [v19 setScrollIndicatorInsets:{v12, v14, v16, v18}];

  [(AENoteFullscreenEditorController *)self scrollViewScrollerInsets];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [(AENoteFullscreenEditorController *)self scrollView];
  [v28 setContentInset:{v21, v23, v25, v27}];

  v29 = [AEHighlightedTextLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v33 = [(AEHighlightedTextLabel *)v29 initWithFrame:0 generateHighlight:0 generateHighlightAsynchronously:CGRectZero.origin.x, y, width, height];
  highlightedTextLabel = self->_highlightedTextLabel;
  self->_highlightedTextLabel = v33;

  [(AEHighlightedTextLabel *)self->_highlightedTextLabel setUseSelectedText:1];
  v35 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v35 setAutoresizingMask:34];

  v36 = [(AENoteFullscreenEditorController *)self annotation];
  v37 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v37 setAnnotation:v36];

  v38 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v38 setFont:v3];

  v39 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v39 setOpaque:1];

  v40 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v40 setNumberOfLines:3];

  v41 = objc_alloc_init(UIView);
  highlightColorBar = self->_highlightColorBar;
  self->_highlightColorBar = v41;

  v43 = [(AENoteFullscreenEditorController *)self annotation];
  v44 = [v43 annotationNote];
  v45 = [(AENoteFullscreenEditorController *)self makeTextViewWithText:v44];
  [(AENoteFullscreenEditorController *)self setTextView:v45];

  v46 = [(AENoteFullscreenEditorController *)self textView];
  [v46 setAutoresizingMask:18];

  v47 = [(AENoteFullscreenEditorController *)self textView];
  [v47 setScrollEnabled:0];

  v48 = [(AENoteFullscreenEditorController *)self textView];
  [v48 setDelegate:self];

  v49 = IMCommonCoreBundle();
  v91 = [v49 localizedStringForKey:@"Note_Editor_Placeholder" value:@"Add a note…" table:@"BCCommonCoreLocalizable"];

  v50 = [[NSAttributedString alloc] initWithString:v91];
  v51 = [(AENoteFullscreenEditorController *)self textView];
  [v51 setAttributedPlaceholder:v50];

  v52 = [(AENoteFullscreenEditorController *)self scrollView];
  v53 = [(AENoteFullscreenEditorController *)self textView];
  [v52 addSubview:v53];

  v54 = [(AENoteFullscreenEditorController *)self scrollView];
  v55 = [(AENoteFullscreenEditorController *)self highlightColorBar];
  [v54 addSubview:v55];

  v56 = [(AENoteFullscreenEditorController *)self scrollView];
  v57 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v56 addSubview:v57];

  v58 = [(AENoteFullscreenEditorController *)self view];
  v59 = [(AENoteFullscreenEditorController *)self scrollView];
  [v58 addSubview:v59];

  [(AENoteFullscreenEditorController *)self _setupNavigationBarItems:0];
  v60 = [(AENoteFullscreenEditorController *)self view];
  v61 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v60 addSubview:v61];
  [v61 setHidden:1];
  v62 = [v61 heightAnchor];
  v63 = [v62 constraintEqualToConstant:0.0];
  v95 = v63;
  v64 = [NSArray arrayWithObjects:&v95 count:1];
  [NSLayoutConstraint activateConstraints:v64];

  v89 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v65 = v60;
  v90 = [v60 safeAreaLayoutGuide];
  v88 = [v90 leadingAnchor];
  v87 = [v89 constraintEqualToAnchor:v88];
  v94[0] = v87;
  v85 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v86 = [v60 safeAreaLayoutGuide];
  v84 = [v86 trailingAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v94[1] = v83;
  v82 = [(UIScrollView *)self->_scrollView topAnchor];
  v79 = v60;
  v81 = [v60 topAnchor];
  v80 = [v82 constraintEqualToAnchor:v81];
  v94[2] = v80;
  v78 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v77 = [v61 topAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v94[3] = v76;
  v75 = [v61 leadingAnchor];
  v74 = [v60 leadingAnchor];
  v66 = [v75 constraintEqualToAnchor:v74];
  v94[4] = v66;
  v67 = [v61 trailingAnchor];
  v68 = [v65 trailingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];
  v94[5] = v69;
  v70 = [v61 bottomAnchor];
  v71 = [v65 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];
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
  v11 = [(AENoteFullscreenEditorController *)self scrollView];
  [v11 setContentInset:{v4, v6, v8, v10}];
}

- (id)keyCommands
{
  v9.receiver = self;
  v9.super_class = AENoteFullscreenEditorController;
  v2 = [(AENoteFullscreenEditorController *)&v9 keyCommands];
  v3 = [v2 mutableCopy];
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

- (void)setTheme:(id)a3
{
  v4.receiver = self;
  v4.super_class = AENoteFullscreenEditorController;
  [(IMViewController *)&v4 setTheme:a3];
  [(AENoteFullscreenEditorController *)self _updateColors];
}

- (void)_updateColors
{
  v25 = [(IMViewController *)self themePage];
  v3 = [(AENoteFullscreenEditorController *)self annotation];
  v4 = [v3 annotationStyle];
  v5 = [v25 annotationPageTheme];
  v6 = [(AENoteFullscreenEditorController *)self annotation];
  v7 = +[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", v4, v5, [v6 annotationIsUnderline]);

  v8 = [v25 backgroundColorForTraitEnvironment:self];
  v9 = [(AENoteFullscreenEditorController *)self viewIfLoaded];
  v10 = [v25 keyColor];
  [v9 setTintColor:v10];

  [v9 setBackgroundColor:v8];
  v11 = [(AENoteFullscreenEditorController *)self scrollView];
  [v11 setBackgroundColor:v8];

  v12 = [v25 primaryTextColor];
  v13 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v13 setTextColor:v12];
  [v13 setShouldInvertContent:{objc_msgSend(v25, "shouldInvertContent")}];
  [v13 setAnnotationBlendMode:{objc_msgSend(v25, "annotationBlendMode")}];
  [v13 setHighlightedAnnotationBlendMode:{objc_msgSend(v25, "highlightedAnnotationBlendMode")}];
  [v13 setPageTheme:{objc_msgSend(v25, "annotationPageTheme")}];
  [v13 setBackgroundColor:v8];
  v14 = [(AENoteFullscreenEditorController *)self textView];
  [v14 setBackgroundColor:v8];

  v15 = [(AENoteFullscreenEditorController *)self textView];
  [v15 setTextColor:v12];

  v16 = [v7 notesSidebarBarColor];
  v17 = [(IMViewController *)self theme];
  v18 = [v16 bkaxAdjustedForIncreaseContrastAdjustingDarker:{objc_msgSend(v17, "shouldInvertContent") ^ 1}];
  v19 = [(AENoteFullscreenEditorController *)self highlightColorBar];
  [v19 setBackgroundColor:v18];

  v20 = +[UITraitCollection currentTraitCollection];
  v21 = [v20 accessibilityContrast];

  if (v21 == &dword_0 + 1)
  {
    [v25 primaryTextColor];
  }

  else
  {
    [v25 secondaryTextColor];
  }
  v22 = ;
  v23 = [(AENoteFullscreenEditorController *)self dateLabel];
  [v23 setTextColor:v22];

  v24 = [(AENoteFullscreenEditorController *)self textView];
  [v25 stylizeKeyboard:v24];
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v7 = [(AENoteFullscreenEditorController *)self delegate];
  v5 = [(AENoteFullscreenEditorController *)self annotation];
  v6 = [v4 text];

  [v7 editorController:self editedAnnotation:v5 toText:v6];
}

- (void)textViewDidChange:(id)a3
{
  v4 = [(AENoteFullscreenEditorController *)self textView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(AENoteFullscreenEditorController *)self textView];
  [v13 sizeToFit];

  v14 = [(AENoteFullscreenEditorController *)self textView];
  [v14 frame];
  v16 = v15;

  v17 = [(AENoteFullscreenEditorController *)self textView];
  [v17 setFrame:{v6, v8, v10, v12}];

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

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = [(AENoteFullscreenEditorController *)self textView];
  [v3 resignFirstResponder];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = a3;
  if (![(AENoteFullscreenEditorController *)self keyboardVisible])
  {
    [(AENoteFullscreenEditorController *)self setKeyboardVisible:1];
    v5 = [v4 userInfo];
    v6 = [v5 valueForKey:UIKeyboardFrameEndUserInfoKey];
    [v6 CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(AENoteFullscreenEditorController *)self view];
    [v15 convertRect:0 fromView:{v8, v10, v12, v14}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [v4 userInfo];
    v25 = [v24 valueForKey:UIKeyboardAnimationCurveUserInfoKey];
    v26 = [v25 integerValue];

    v27 = [v4 userInfo];
    v28 = [v27 valueForKey:UIKeyboardAnimationDurationUserInfoKey];
    [v28 doubleValue];
    v51 = v29;

    v30 = [(AENoteFullscreenEditorController *)self scrollView];
    [v30 frame];
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
    [UIView animateWithDuration:v26 << 16 delay:v53 options:v52 animations:v51 completion:0.0];
  }
}

- (void)keyboardWillHide:(id)a3
{
  v4 = a3;
  if ([(AENoteFullscreenEditorController *)self keyboardVisible])
  {
    [(AENoteFullscreenEditorController *)self setKeyboardVisible:0];
    v5 = [v4 userInfo];
    v6 = [v5 valueForKey:UIKeyboardAnimationCurveUserInfoKey];
    v7 = [v6 integerValue];

    v8 = [v4 userInfo];
    v9 = [v8 valueForKey:UIKeyboardAnimationDurationUserInfoKey];
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
    [UIView animateWithDuration:v7 << 16 delay:v17 options:v16 animations:v11 completion:0.0];
  }
}

- (void)updateScrollViewContent
{
  [(AENoteFullscreenEditorController *)self highlightedTextLabelFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(AENoteFullscreenEditorController *)self highlightColorBarFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(AENoteFullscreenEditorController *)self highlightColorBar];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(AENoteFullscreenEditorController *)self updateTextViewFrame];
  [(AENoteFullscreenEditorController *)self scrollViewContentSize];
  v22 = v21;
  v24 = v23;
  v25 = [(AENoteFullscreenEditorController *)self scrollView];
  [v25 setContentSize:{v22, v24}];
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
  v4 = [(AENoteFullscreenEditorController *)self scrollView];
  [v4 bounds];
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
  v18 = [(AENoteFullscreenEditorController *)self bc_windowForViewController];
  v19 = [v18 windowScene];
  if ([v19 interfaceOrientation] - 1 >= &dword_0 + 2)
  {
    v20 = 13.0;
  }

  else
  {
    v20 = 20.0;
  }

  v21 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  v22 = objc_opt_class();
  v23 = [(AENoteFullscreenEditorController *)self annotation];
  v24 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  v25 = [v24 font];
  v35.origin.x = v16;
  v35.origin.y = v20;
  v35.size.width = v17;
  v35.size.height = height;
  Width = CGRectGetWidth(v35);
  v27 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v22 sizeForAnnotation:v23 font:v25 width:objc_msgSend(v27 numberOfLines:"numberOfLines") useSelectedText:{1, Width}];
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
  v3 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v3 frame];
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
  v5 = [(AENoteFullscreenEditorController *)self highlightedTextLabel];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(AENoteFullscreenEditorController *)self scrollView];
  [v14 bounds];
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
  v30 = [(AENoteFullscreenEditorController *)self textView];
  [v30 setFrame:{v34, v23, v29, v28}];

  v31 = [(AENoteFullscreenEditorController *)self textView];
  [v31 sizeToFit];

  v32 = [(AENoteFullscreenEditorController *)self textView];
  [v32 frame];
  Height = CGRectGetHeight(v42);

  if (v28 >= Height)
  {
    Height = v28;
  }

  v37 = [(AENoteFullscreenEditorController *)self textView];
  [v37 setFrame:{v34, v23, v29, Height}];
}

- (CGSize)scrollViewContentSize
{
  v3 = [(AENoteFullscreenEditorController *)self textView];
  [v3 frame];
  MaxY = CGRectGetMaxY(v16);

  v5 = [(AENoteFullscreenEditorController *)self view];
  [v5 bounds];
  Width = CGRectGetWidth(v17);
  v7 = [(AENoteFullscreenEditorController *)self view];
  [v7 safeAreaInsets];
  v9 = Width - v8;
  v10 = [(AENoteFullscreenEditorController *)self view];
  [v10 safeAreaInsets];
  v12 = v9 - v11;

  v13 = v12;
  v14 = MaxY;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)p_revealTextViewCursorAnimated:(BOOL)a3
{
  v3 = a3;
  v29 = [(AENoteFullscreenEditorController *)self textView];
  if ([v29 isFirstResponder])
  {
    [v29 selectedRange];
    if (!v5)
    {
      v6 = [v29 selectedTextRange];
      v7 = [v6 start];
      [v29 caretRectForPosition:v7];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = [v29 font];
      [v16 lineHeight];
      v18 = v15 + v17;

      v19 = [(AENoteFullscreenEditorController *)self scrollView];
      [v19 convertRect:v29 fromView:{v9, v11, v13, v18}];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28 = [(AENoteFullscreenEditorController *)self scrollView];
      [v28 scrollRectToVisible:v3 animated:{v21, v23, v25, v27}];
    }
  }
}

- (AEAnnotationEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)makeTextViewWithText:(id)a3
{
  v4 = sub_1EEF04();
  v6 = v5;
  v7 = self;
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