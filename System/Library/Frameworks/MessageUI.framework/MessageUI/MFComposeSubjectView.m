@interface MFComposeSubjectView
- (BOOL)becomeFirstResponder;
- (BOOL)isEndEditingText:(id)a3;
- (BOOL)isNotifyOptionSelected;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)separatorHidden;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (MFComposeSubjectView)initWithFrame:(CGRect)a3;
- (id)_textContainerExclusionPathsWithNotifyButton:(BOOL)a3;
- (void)_configureNotifyGlyphs;
- (void)_showNotifyButtonIfNeeded;
- (void)_textInputDidChange:(id)a3;
- (void)_updateExclusionPathsIfNeeded;
- (void)_updateTextContainerInsets;
- (void)dealloc;
- (void)displayMetricsDidChange;
- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5;
- (void)layoutSubviews;
- (void)refreshPreferredContentSize;
- (void)setAllowsNotifyOption:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setNotifyOptionSelected:(BOOL)a3;
- (void)setSeparatorHidden:(BOOL)a3;
- (void)setTrailingButtonMidlineInsetFromLayoutMargin:(double)a3;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MFComposeSubjectView

- (MFComposeSubjectView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v19.receiver = self;
  v19.super_class = MFComposeSubjectView;
  v5 = [(MFComposeSubjectView *)&v19 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    [(MFComposeSubjectView *)v5 setNeedsInputAssistantItemUpdate:1];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SUBJECT" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeSubjectView *)v6 setLabel:v8];

    v9 = [objc_opt_class() defaultFont];
    v10 = [MFComposeSubjectTextView alloc];
    v11 = [(MFComposeSubjectTextView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), width - *MEMORY[0x1E695F058], floor(height)];
    textView = v6->_textView;
    v6->_textView = v11;

    v13 = [(UITextView *)v6->_textView textContainer];
    [v13 setLineFragmentPadding:0.0];

    [(UITextView *)v6->_textView setFont:v9];
    [(UITextView *)v6->_textView setDelegate:v6];
    v14 = [(UITextView *)v6->_textView layoutManager];
    [v14 setDelegate:v6];

    v15 = v6->_textView;
    v16 = [MEMORY[0x1E69DC888] mailComposeTextViewBackgroundColor];
    [(UITextView *)v15 setBackgroundColor:v16];

    [(UITextView *)v6->_textView setAccessibilityIdentifier:@"subjectField"];
    [(UITextView *)v6->_textView setScrollsToTop:0];
    [(MFComposeSubjectView *)v6 addSubview:v6->_textView];
    v6->_needsExclusionPathUpdate = 1;
    [(MFComposeSubjectView *)v6 _updateTextContainerInsets];
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v6 selector:sel__textInputDidChange_ name:*MEMORY[0x1E69DE6B8] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
    v10 = [(MFComposeSubjectView *)self allowsNotifyOption];
    v11 = self->_notifyButton;

    [(MFDimmableButton *)v11 setHidden:v10];
  }
}

- (void)_configureNotifyGlyphs
{
  v8 = [(MFComposeSubjectView *)self notifyButton];
  v2 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  v3 = __46__MFComposeSubjectView__configureNotifyGlyphs__block_invoke(v2, @"bell.fill", v2);

  [v8 setImage:v3 forState:65540];
  v4 = [MEMORY[0x1E69DC888] systemBlueColor];
  v5 = __46__MFComposeSubjectView__configureNotifyGlyphs__block_invoke(v4, @"bell.fill", v4);

  [v8 setImage:v5 forState:4];
  v6 = [MEMORY[0x1E69DC888] systemBlueColor];
  v7 = __46__MFComposeSubjectView__configureNotifyGlyphs__block_invoke(v6, @"bell", v6);

  [v8 setImage:v7 forState:0];
}

id __46__MFComposeSubjectView__configureNotifyGlyphs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:a2 forView:14];
  v6 = [v5 imageWithTintColor:v4];
  v7 = [v6 imageWithRenderingMode:1];

  return v7;
}

- (void)setAllowsNotifyOption:(BOOL)a3
{
  v3 = a3;
  self->_allowsNotifyOption = a3;
  v4 = [(MFComposeSubjectView *)self notifyButton];
  [v4 setHidden:!v3];
}

- (BOOL)isNotifyOptionSelected
{
  v2 = [(MFComposeSubjectView *)self notifyButton];
  v3 = [v2 isSelected];

  return v3;
}

- (void)setNotifyOptionSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(MFComposeSubjectView *)self notifyButton];
  [v4 setSelected:v3];
}

- (void)setTrailingButtonMidlineInsetFromLayoutMargin:(double)a3
{
  if (self->_trailingButtonMidlineInsetFromLayoutMargin != a3)
  {
    self->_trailingButtonMidlineInsetFromLayoutMargin = a3;
    [(MFComposeSubjectView *)self setNeedsLayout];
  }
}

- (void)setSeparatorHidden:(BOOL)a3
{
  if (self->_separatorHidden != a3)
  {
    v3 = a3;
    self->_separatorHidden = a3;
    v4 = [(MFComposeSubjectView *)self separator];
    [v4 setHidden:v3];
  }
}

- (BOOL)separatorHidden
{
  v2 = [(MFComposeSubjectView *)self separator];
  v3 = [v2 isHidden];

  return v3;
}

- (void)_updateExclusionPathsIfNeeded
{
  if (self->_needsExclusionPathUpdate)
  {
    self->_needsExclusionPathUpdate = 0;
    v6 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

    if (IsAccessibilityCategory)
    {
      v7 = [(MFComposeSubjectView *)self notifyButton];
      v4 = -[MFComposeSubjectView _textContainerExclusionPathsWithNotifyButton:](self, "_textContainerExclusionPathsWithNotifyButton:", [v7 isHidden] ^ 1);

      v8 = v4;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v5 = [(UITextView *)self->_textView textContainer];
    [v5 setExclusionPaths:v8];
  }
}

- (BOOL)becomeFirstResponder
{
  if ([(MFComposeSubjectView *)self needsInputAssistantItemUpdate])
  {
    v3 = [(MFComposeSubjectView *)self inputAssistantItem];
    [v3 _setShowsBarButtonItemsInline:0];

    [(MFComposeSubjectView *)self setNeedsInputAssistantItemUpdate:0];
  }

  textView = self->_textView;

  return [(UITextView *)textView becomeFirstResponder];
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = [(MFComposeSubjectView *)self notifyButton];
  [v4 setDimmed:1];

  v5 = [(MFComposeSubjectView *)self delegate];
  [v5 composeSubjectViewTextFieldDidResignFirstResponder:self];
}

- (void)textViewDidBeginEditing:(id)a3
{
  [(MFComposeSubjectView *)self _showNotifyButtonIfNeeded];
  v4 = [(MFComposeSubjectView *)self notifyButton];
  [v4 setDimmed:0];

  [(MFComposeSubjectView *)self setNeedsExclusionPathUpdate];
  v5 = [(MFComposeSubjectView *)self delegate];
  [v5 composeSubjectViewTextFieldDidBecomeFirstResponder:self];
}

- (void)refreshPreferredContentSize
{
  v5.receiver = self;
  v5.super_class = MFComposeSubjectView;
  [(MFComposeSubjectView *)&v5 refreshPreferredContentSize];
  textView = self->_textView;
  v4 = [objc_opt_class() defaultFont];
  [(UITextView *)textView setFont:v4];

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

- (id)_textContainerExclusionPathsWithNotifyButton:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v30.receiver = self;
  v30.super_class = MFComposeSubjectView;
  [(MFComposeSubjectView *)&v30 layoutIfNeeded];
  v7 = [(MFComposeSubjectView *)self labelView];
  if (v6 == 1)
  {
    v8 = 8;
  }

  else
  {
    v8 = 2;
  }

  [(MFComposeSubjectView *)self _exclusionRectForView:v7 alongEdge:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(MFComposeSubjectView *)self convertRect:self->_textView toView:v10, v12, v14, v16];
  v17 = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
  [v5 addObject:v17];
  if (v3)
  {
    v18 = [(MFComposeSubjectView *)self notifyButton];
    if (v6 == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = 8;
    }

    [(MFComposeSubjectView *)self _exclusionRectForView:v18 alongEdge:v19];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [(MFComposeSubjectView *)self convertRect:self->_textView toView:v21, v23, v25, v27];
    v28 = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
    [v5 addObject:v28];
  }

  return v5;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFComposeSubjectView;
  [(MFMailComposeHeaderView *)&v8 traitCollectionDidChange:v4];
  v5 = [(MFComposeSubjectView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
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
  v3 = [(UITextView *)self->_textView layoutManager];
  v4 = MEMORY[0x1E69DDA98];
  v5 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  v7 = 0.0;
  v8 = 1.0;
  if (!IsAccessibilityCategory)
  {
    v8 = 0.0;
  }

  [v3 setHyphenationFactor:v8];

  v9 = [(MFComposeSubjectView *)self effectiveUserInterfaceLayoutDirection];
  if ([(MFComposeSubjectView *)self allowsNotifyOption])
  {
    v10 = [(MFComposeSubjectView *)self notifyButton];
    v7 = 2.0;
    [v10 sizeToFit];
  }

  else
  {
    v10 = 0;
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
  if (v10)
  {
    [v10 frame];
    v19 = v12;
    v20 = v14;
    v21 = v16;
    v22 = v18;
    if (v9 == 1)
    {
      CGRectGetMinX(*&v19);
    }

    else
    {
      CGRectGetMaxX(*&v19);
    }

    [(MFComposeSubjectView *)self bounds];
    v28 = [*v4 preferredContentSizeCategory];
    v29 = UIContentSizeCategoryIsAccessibilityCategory(v28);

    if (v29)
    {
      v30 = [(MFComposeSubjectView *)self labelView];
      [v30 frame];
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

    v39 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v39 scale];
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
      if (v9 == 1)
      {
        v52 = 1.0;
      }

      x = x + v27 * v52;
    }

    [v10 setFrame:{x, y, width, height}];
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

  v55 = [(MFComposeSubjectView *)self labelView];
  [v55 frame];
  v56 = CGRectGetWidth(v76);

  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  v57 = CGRectGetWidth(v77);
  v58 = [*v4 preferredContentSizeCategory];
  v59 = UIContentSizeCategoryIsAccessibilityCategory(v58);
  v60 = v56 + 5.0;
  v61 = v27 + v57 + 5.0;

  if (v9 == 1)
  {
    v62 = v61;
  }

  else
  {
    v62 = v60;
  }

  if (v9 == 1)
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
  v3 = [(MFMailComposeHeaderView *)self displayMetrics];
  [v3 trailingButtonMidlineOffset];
  [(MFComposeSubjectView *)self setTrailingButtonMidlineInsetFromLayoutMargin:?];
}

- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
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
    [v8 usedRectForTextContainer:v9];
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
    v21 = [v8 numberOfGlyphs];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__MFComposeSubjectView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke;
    v34[3] = &unk_1E806C7E8;
    v34[4] = &v35;
    v34[5] = &v39;
    [v8 enumerateLineFragmentsForGlyphRange:0 usingBlock:{v21, v34}];
    if (v36[3])
    {
      v22 = v40;
      v23 = *(v40 + 7);
    }

    else
    {
      [v8 usedRectForTextContainer:v9];
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
      v33 = [(MFComposeSubjectView *)self delegate];
      [v33 composeHeaderView:self didChangeSize:{v31, v32}];
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

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = MFComposeSubjectView;
  [(MFComposeSubjectView *)&v6 setDelegate:a3];
  v4 = [(MFComposeSubjectView *)self delegate];
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

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(UITextView *)self->_textView text];
  v6 = cleanupSubjectString(v5, &v8);

  if (v8)
  {
    [v4 setText:v6];
  }

  if (*(self + 552))
  {
    v7 = [(MFComposeSubjectView *)self delegate];
    [v7 composeHeaderViewDidChangeValue:self];
  }
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  v8 = a3;
  v9 = a5;
  v10 = [(MFComposeSubjectView *)self delegate];
  v11 = [(MFComposeSubjectView *)self isEndEditingText:v9];
  if (v11)
  {
    [v10 composeHeaderViewDidConfirmValue:self];
  }

  else if ((*(self + 552) & 2) != 0)
  {
    v12 = [v8 text];
    v13 = [v12 length];

    if (length == v13)
    {
      [v10 composeSubjectViewWillRemoveContent:self];
    }
  }

  return !v11;
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v6 = a4;
  v7 = [(MFComposeSubjectView *)self isEndEditingText:v6];
  if (v7)
  {
    v8 = [(MFComposeSubjectView *)self delegate];
    [v8 composeHeaderViewDidConfirmValue:self];
  }

  return !v7;
}

- (BOOL)isEndEditingText:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"\n"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqual:@"\t"];
  }

  return v4;
}

- (void)_textInputDidChange:(id)a3
{
  v4 = [(UITextView *)self->_textView text];
  v5 = [v4 length];

  if (!v5)
  {
    v6 = [(UIResponder *)self mf_textAlignmentForActiveInputLanguage];
    textView = self->_textView;

    [(UITextView *)textView setTextAlignment:v6];
  }
}

@end