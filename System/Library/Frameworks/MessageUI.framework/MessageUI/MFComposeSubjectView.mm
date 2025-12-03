@interface MFComposeSubjectView
- (BOOL)becomeFirstResponder;
- (BOOL)isEndEditingText:(id)text;
- (BOOL)isNotifyOptionSelected;
- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText;
- (BOOL)separatorHidden;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (MFComposeSubjectView)initWithFrame:(CGRect)frame;
- (id)_textContainerExclusionPathsWithNotifyButton:(BOOL)button;
- (void)_configureNotifyGlyphs;
- (void)_showNotifyButtonIfNeeded;
- (void)_textInputDidChange:(id)change;
- (void)_updateExclusionPathsIfNeeded;
- (void)_updateTextContainerInsets;
- (void)dealloc;
- (void)displayMetricsDidChange;
- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end;
- (void)layoutSubviews;
- (void)refreshPreferredContentSize;
- (void)setAllowsNotifyOption:(BOOL)option;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setNotifyOptionSelected:(BOOL)selected;
- (void)setSeparatorHidden:(BOOL)hidden;
- (void)setTrailingButtonMidlineInsetFromLayoutMargin:(double)margin;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MFComposeSubjectView

- (MFComposeSubjectView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v19.receiver = self;
  v19.super_class = MFComposeSubjectView;
  v5 = [(MFComposeSubjectView *)&v19 initWithFrame:frame.origin.x, frame.origin.y];
  v6 = v5;
  if (v5)
  {
    [(MFComposeSubjectView *)v5 setNeedsInputAssistantItemUpdate:1];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SUBJECT" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeSubjectView *)v6 setLabel:v8];

    defaultFont = [objc_opt_class() defaultFont];
    v10 = [MFComposeSubjectTextView alloc];
    v11 = [(MFComposeSubjectTextView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), width - *MEMORY[0x1E695F058], floor(height)];
    textView = v6->_textView;
    v6->_textView = v11;

    textContainer = [(UITextView *)v6->_textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)v6->_textView setFont:defaultFont];
    [(UITextView *)v6->_textView setDelegate:v6];
    layoutManager = [(UITextView *)v6->_textView layoutManager];
    [layoutManager setDelegate:v6];

    v15 = v6->_textView;
    mailComposeTextViewBackgroundColor = [MEMORY[0x1E69DC888] mailComposeTextViewBackgroundColor];
    [(UITextView *)v15 setBackgroundColor:mailComposeTextViewBackgroundColor];

    [(UITextView *)v6->_textView setAccessibilityIdentifier:@"subjectField"];
    [(UITextView *)v6->_textView setScrollsToTop:0];
    [(MFComposeSubjectView *)v6 addSubview:v6->_textView];
    v6->_needsExclusionPathUpdate = 1;
    [(MFComposeSubjectView *)v6 _updateTextContainerInsets];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__textInputDidChange_ name:*MEMORY[0x1E69DE6B8] object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MFComposeSubjectView;
  [(MFComposeSubjectView *)&v4 dealloc];
}

- (void)_showNotifyButtonIfNeeded
{
  if (!self->_notifyButton)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"NOTIFY_ME_CONFIRMATION" value:&stru_1F3CF3758 table:@"Main"];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"NOTIFY_ME" value:&stru_1F3CF3758 table:@"Main"];
    v7 = [MFConfirmationButton confirmationButtonWithMessage:v4 confirmationLabel:v6 handler:0];
    notifyButton = self->_notifyButton;
    self->_notifyButton = v7;

    [(MFConfirmationButton *)self->_notifyButton setAccessibilityIdentifier:*MEMORY[0x1E69ADB70]];
    v9 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"bell.fill" forView:14];
    [(MFConfirmationButton *)self->_notifyButton setConfirmationIcon:v9];

    [(MFConfirmationButton *)self->_notifyButton setConfirmationType:1];
    [(MFConfirmationButton *)self->_notifyButton setConfirmationSelectionMode:1];
    [(MFDimmableButton *)self->_notifyButton setHidesWhenDimmedIfNotSelected:1];
    [(MFDimmableButton *)self->_notifyButton setDimmed:1];
    [(MFConfirmationButton *)self->_notifyButton setContentMode:4];
    [(MFComposeSubjectView *)self _configureNotifyGlyphs];
    [(MFComposeSubjectView *)self addSubview:self->_notifyButton];
    allowsNotifyOption = [(MFComposeSubjectView *)self allowsNotifyOption];
    v11 = self->_notifyButton;

    [(MFDimmableButton *)v11 setHidden:allowsNotifyOption];
  }
}

- (void)_configureNotifyGlyphs
{
  notifyButton = [(MFComposeSubjectView *)self notifyButton];
  quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  v3 = __46__MFComposeSubjectView__configureNotifyGlyphs__block_invoke(quaternaryLabelColor, @"bell.fill", quaternaryLabelColor);

  [notifyButton setImage:v3 forState:65540];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v5 = __46__MFComposeSubjectView__configureNotifyGlyphs__block_invoke(systemBlueColor, @"bell.fill", systemBlueColor);

  [notifyButton setImage:v5 forState:4];
  systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
  v7 = __46__MFComposeSubjectView__configureNotifyGlyphs__block_invoke(systemBlueColor2, @"bell", systemBlueColor2);

  [notifyButton setImage:v7 forState:0];
}

id __46__MFComposeSubjectView__configureNotifyGlyphs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:a2 forView:14];
  v6 = [v5 imageWithTintColor:v4];
  v7 = [v6 imageWithRenderingMode:1];

  return v7;
}

- (void)setAllowsNotifyOption:(BOOL)option
{
  optionCopy = option;
  self->_allowsNotifyOption = option;
  notifyButton = [(MFComposeSubjectView *)self notifyButton];
  [notifyButton setHidden:!optionCopy];
}

- (BOOL)isNotifyOptionSelected
{
  notifyButton = [(MFComposeSubjectView *)self notifyButton];
  isSelected = [notifyButton isSelected];

  return isSelected;
}

- (void)setNotifyOptionSelected:(BOOL)selected
{
  selectedCopy = selected;
  notifyButton = [(MFComposeSubjectView *)self notifyButton];
  [notifyButton setSelected:selectedCopy];
}

- (void)setTrailingButtonMidlineInsetFromLayoutMargin:(double)margin
{
  if (self->_trailingButtonMidlineInsetFromLayoutMargin != margin)
  {
    self->_trailingButtonMidlineInsetFromLayoutMargin = margin;
    [(MFComposeSubjectView *)self setNeedsLayout];
  }
}

- (void)setSeparatorHidden:(BOOL)hidden
{
  if (self->_separatorHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_separatorHidden = hidden;
    separator = [(MFComposeSubjectView *)self separator];
    [separator setHidden:hiddenCopy];
  }
}

- (BOOL)separatorHidden
{
  separator = [(MFComposeSubjectView *)self separator];
  isHidden = [separator isHidden];

  return isHidden;
}

- (void)_updateExclusionPathsIfNeeded
{
  if (self->_needsExclusionPathUpdate)
  {
    self->_needsExclusionPathUpdate = 0;
    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      notifyButton = [(MFComposeSubjectView *)self notifyButton];
      v4 = -[MFComposeSubjectView _textContainerExclusionPathsWithNotifyButton:](self, "_textContainerExclusionPathsWithNotifyButton:", [notifyButton isHidden] ^ 1);

      v8 = v4;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    textContainer = [(UITextView *)self->_textView textContainer];
    [textContainer setExclusionPaths:v8];
  }
}

- (BOOL)becomeFirstResponder
{
  if ([(MFComposeSubjectView *)self needsInputAssistantItemUpdate])
  {
    inputAssistantItem = [(MFComposeSubjectView *)self inputAssistantItem];
    [inputAssistantItem _setShowsBarButtonItemsInline:0];

    [(MFComposeSubjectView *)self setNeedsInputAssistantItemUpdate:0];
  }

  textView = self->_textView;

  return [(UITextView *)textView becomeFirstResponder];
}

- (void)textViewDidEndEditing:(id)editing
{
  notifyButton = [(MFComposeSubjectView *)self notifyButton];
  [notifyButton setDimmed:1];

  delegate = [(MFComposeSubjectView *)self delegate];
  [delegate composeSubjectViewTextFieldDidResignFirstResponder:self];
}

- (void)textViewDidBeginEditing:(id)editing
{
  [(MFComposeSubjectView *)self _showNotifyButtonIfNeeded];
  notifyButton = [(MFComposeSubjectView *)self notifyButton];
  [notifyButton setDimmed:0];

  [(MFComposeSubjectView *)self setNeedsExclusionPathUpdate];
  delegate = [(MFComposeSubjectView *)self delegate];
  [delegate composeSubjectViewTextFieldDidBecomeFirstResponder:self];
}

- (void)refreshPreferredContentSize
{
  v5.receiver = self;
  v5.super_class = MFComposeSubjectView;
  [(MFComposeSubjectView *)&v5 refreshPreferredContentSize];
  textView = self->_textView;
  defaultFont = [objc_opt_class() defaultFont];
  [(UITextView *)textView setFont:defaultFont];

  [(MFComposeSubjectView *)self setNeedsExclusionPathUpdate];
}

- (void)_updateTextContainerInsets
{
  [(MFComposeSubjectView *)self _recipientViewEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UITextView *)self->_textView textContainerInset];
  if (v6 != v14 || v4 != v11 || v10 != v13 || v8 != v12)
  {
    textView = self->_textView;

    [(UITextView *)textView setTextContainerInset:v4, v6, v8, v10];
  }
}

- (id)_textContainerExclusionPathsWithNotifyButton:(BOOL)button
{
  buttonCopy = button;
  array = [MEMORY[0x1E695DF70] array];
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v30.receiver = self;
  v30.super_class = MFComposeSubjectView;
  [(MFComposeSubjectView *)&v30 layoutIfNeeded];
  labelView = [(MFComposeSubjectView *)self labelView];
  if (userInterfaceLayoutDirection == 1)
  {
    v8 = 8;
  }

  else
  {
    v8 = 2;
  }

  [(MFComposeSubjectView *)self _exclusionRectForView:labelView alongEdge:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(MFComposeSubjectView *)self convertRect:self->_textView toView:v10, v12, v14, v16];
  v17 = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
  [array addObject:v17];
  if (buttonCopy)
  {
    notifyButton = [(MFComposeSubjectView *)self notifyButton];
    if (userInterfaceLayoutDirection == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = 8;
    }

    [(MFComposeSubjectView *)self _exclusionRectForView:notifyButton alongEdge:v19];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [(MFComposeSubjectView *)self convertRect:self->_textView toView:v21, v23, v25, v27];
    v28 = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
    [array addObject:v28];
  }

  return array;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = CGRectGetWidth(frame);
  [(MFComposeSubjectView *)self frame];
  v9 = v8 - CGRectGetWidth(v11);
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 >= 2.22044605e-16)
  {
    self->_needsExclusionPathUpdate = 1;
  }

  v10.receiver = self;
  v10.super_class = MFComposeSubjectView;
  [(MFComposeSubjectView *)&v10 setFrame:x, y, width, height];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = MFComposeSubjectView;
  [(MFMailComposeHeaderView *)&v8 traitCollectionDidChange:changeCopy];
  traitCollection = [(MFComposeSubjectView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(MFComposeSubjectView *)self _configureNotifyGlyphs];
    self->_needsExclusionPathUpdate = 1;
  }
}

- (void)layoutSubviews
{
  v70.receiver = self;
  v70.super_class = MFComposeSubjectView;
  [(MFComposeSubjectView *)&v70 layoutSubviews];
  layoutManager = [(UITextView *)self->_textView layoutManager];
  v4 = MEMORY[0x1E69DDA98];
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v7 = 0.0;
  v8 = 1.0;
  if (!IsAccessibilityCategory)
  {
    v8 = 0.0;
  }

  [layoutManager setHyphenationFactor:v8];

  effectiveUserInterfaceLayoutDirection = [(MFComposeSubjectView *)self effectiveUserInterfaceLayoutDirection];
  if ([(MFComposeSubjectView *)self allowsNotifyOption])
  {
    notifyButton = [(MFComposeSubjectView *)self notifyButton];
    v7 = 2.0;
    [notifyButton sizeToFit];
  }

  else
  {
    notifyButton = 0;
  }

  [(MFComposeSubjectView *)self _contentRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v67 = v11;
  v68 = v13;
  v66 = v15;
  v69 = v17;
  if (notifyButton)
  {
    [notifyButton frame];
    v19 = v12;
    v20 = v14;
    v21 = v16;
    v22 = v18;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      CGRectGetMinX(*&v19);
    }

    else
    {
      CGRectGetMaxX(*&v19);
    }

    [(MFComposeSubjectView *)self bounds];
    preferredContentSizeCategory2 = [*v4 preferredContentSizeCategory];
    v29 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

    if (v29)
    {
      labelView = [(MFComposeSubjectView *)self labelView];
      [labelView frame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v71.origin.x = v32;
      v71.origin.y = v34;
      v71.size.width = v36;
      v71.size.height = v38;
      CGRectGetMinY(v71);
      v72.origin.x = v32;
      v72.origin.y = v34;
      v72.size.width = v36;
      v72.size.height = v38;
      CGRectGetHeight(v72);
    }

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v65 = v40;
    UIRectCenteredYInRectScale();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v73.origin.x = v42;
    v73.origin.y = v44;
    v73.size.width = v46;
    v73.size.height = v48;
    v74 = CGRectOffset(v73, 0.0, -v7);
    x = v74.origin.x;
    y = v74.origin.y;
    width = v74.size.width;
    height = v74.size.height;
    [(MFComposeSubjectView *)self trailingButtonMidlineInsetFromLayoutMargin];
    if (v49 == 0.0)
    {
      v27 = 0.0;
    }

    else
    {
      [(MFComposeSubjectView *)self trailingButtonMidlineInsetFromLayoutMargin];
      v51 = v50;
      v75.origin.x = x;
      v75.origin.y = y;
      v75.size.width = width;
      v75.size.height = height;
      v27 = v51 + CGRectGetWidth(v75) * -0.5;
      v52 = -1.0;
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v52 = 1.0;
      }

      x = x + v27 * v52;
    }

    [notifyButton setFrame:{x, y, width, height}];
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    v27 = 0.0;
  }

  [(MFComposeSubjectView *)self bounds];
  if (v53 >= v69)
  {
    v54 = v53;
  }

  else
  {
    v54 = v69;
  }

  labelView2 = [(MFComposeSubjectView *)self labelView];
  [labelView2 frame];
  v56 = CGRectGetWidth(v76);

  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  v57 = CGRectGetWidth(v77);
  preferredContentSizeCategory3 = [*v4 preferredContentSizeCategory];
  v59 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);
  v60 = v56 + 5.0;
  v61 = v27 + v57 + 5.0;

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v62 = v61;
  }

  else
  {
    v62 = v60;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v63 = v60;
  }

  else
  {
    v63 = v61;
  }

  if (v59)
  {
    v64 = 0.0;
  }

  else
  {
    v64 = v62;
  }

  if (v59)
  {
    v63 = 0.0;
  }

  [(UITextView *)self->_textView setFrame:v67 + v64, v68, v66 - (v64 + v63), v54];
  [(MFComposeSubjectView *)self _updateTextContainerInsets];
  [(MFComposeSubjectView *)self _updateExclusionPathsIfNeeded];
}

- (void)displayMetricsDidChange
{
  v4.receiver = self;
  v4.super_class = MFComposeSubjectView;
  [(MFMailComposeHeaderView *)&v4 displayMetricsDidChange];
  displayMetrics = [(MFMailComposeHeaderView *)self displayMetrics];
  [displayMetrics trailingButtonMidlineOffset];
  [(MFComposeSubjectView *)self setTrailingButtonMidlineInsetFromLayoutMargin:?];
}

- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end
{
  endCopy = end;
  managerCopy = manager;
  containerCopy = container;
  if (endCopy)
  {
    [(UITextView *)self->_textView textContainerInset];
    v11 = v10;
    v13 = v12;
    v39 = 0;
    v40 = &v39;
    v41 = 0x4010000000;
    v42 = "";
    *&v14 = -1;
    *(&v14 + 1) = -1;
    v43 = v14;
    v44 = v14;
    [managerCopy usedRectForTextContainer:containerCopy];
    *&v43 = v15;
    *(&v43 + 1) = v16;
    *&v44 = v17;
    *(&v44 + 1) = v18;
    v19 = v40;
    *(v40 + 2) = *MEMORY[0x1E695EFF8];
    v19[7] = v11;
    [(UITextView *)self->_textView bounds];
    v40[6] = v20;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    numberOfGlyphs = [managerCopy numberOfGlyphs];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__MFComposeSubjectView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke;
    v34[3] = &unk_1E806C7E8;
    v34[4] = &v35;
    v34[5] = &v39;
    [managerCopy enumerateLineFragmentsForGlyphRange:0 usingBlock:{numberOfGlyphs, v34}];
    if (v36[3])
    {
      v22 = v40;
      v23 = *(v40 + 7);
    }

    else
    {
      [managerCopy usedRectForTextContainer:containerCopy];
      v22 = v40;
      v23 = v24 + *(v40 + 7);
      *(v40 + 7) = v23;
    }

    v22[7] = v13 + v23;
    [(UITextView *)self->_textView bounds];
    if (v22[6] != v26 || v22[7] != v25)
    {
      [(UITextView *)self->_textView frame];
      v27 = v40;
      v40[4] = v28;
      v27[5] = v29;
      [(UITextView *)self->_textView setFrame:?];
      [(MFComposeSubjectView *)self bounds];
      v31 = v30;
      v32 = *(v40 + 7);
      delegate = [(MFComposeSubjectView *)self delegate];
      [delegate composeHeaderView:self didChangeSize:{v31, v32}];
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }
}

double __78__MFComposeSubjectView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  v9 = *(*(a1 + 40) + 8);
  result = a9 + *(v9 + 56);
  *(v9 + 56) = result;
  return result;
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = MFComposeSubjectView;
  [(MFComposeSubjectView *)&v6 setDelegate:delegate];
  delegate = [(MFComposeSubjectView *)self delegate];
  *(self + 552) = *(self + 552) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(self + 552) = *(self + 552) & 0xFD | v5;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  v8 = 0;
  text = [(UITextView *)self->_textView text];
  v6 = cleanupSubjectString(text, &v8);

  if (v8)
  {
    [changeCopy setText:v6];
  }

  if (*(self + 552))
  {
    delegate = [(MFComposeSubjectView *)self delegate];
    [delegate composeHeaderViewDidChangeValue:self];
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  viewCopy = view;
  textCopy = text;
  delegate = [(MFComposeSubjectView *)self delegate];
  v11 = [(MFComposeSubjectView *)self isEndEditingText:textCopy];
  if (v11)
  {
    [delegate composeHeaderViewDidConfirmValue:self];
  }

  else if ((*(self + 552) & 2) != 0)
  {
    text = [viewCopy text];
    v13 = [text length];

    if (length == v13)
    {
      [delegate composeSubjectViewWillRemoveContent:self];
    }
  }

  return !v11;
}

- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText
{
  textCopy = text;
  v7 = [(MFComposeSubjectView *)self isEndEditingText:textCopy];
  if (v7)
  {
    delegate = [(MFComposeSubjectView *)self delegate];
    [delegate composeHeaderViewDidConfirmValue:self];
  }

  return !v7;
}

- (BOOL)isEndEditingText:(id)text
{
  textCopy = text;
  if ([textCopy isEqual:@"\n"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [textCopy isEqual:@"\t"];
  }

  return v4;
}

- (void)_textInputDidChange:(id)change
{
  text = [(UITextView *)self->_textView text];
  v5 = [text length];

  if (!v5)
  {
    mf_textAlignmentForActiveInputLanguage = [(UIResponder *)self mf_textAlignmentForActiveInputLanguage];
    textView = self->_textView;

    [(UITextView *)textView setTextAlignment:mf_textAlignmentForActiveInputLanguage];
  }
}

@end