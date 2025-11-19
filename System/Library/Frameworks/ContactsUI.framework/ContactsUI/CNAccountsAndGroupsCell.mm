@interface CNAccountsAndGroupsCell
- (BOOL)isCellEditing;
- (BOOL)isValidTitle:(id)a3;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (CNAccountsAndGroupsCellDelegate)delegate;
- (CNAccountsAndGroupsCellTextView)titleTextView;
- (double)minCellHeight;
- (double)requiredHeightForTextView:(id)a3 fittingWidth:(double)a4;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)applyAccessoryTintColor:(id)a3 leadingAccessoryTintColor:(id)a4;
- (void)applyTextFont:(id)a3;
- (void)applyTextViewPlaceholderIfNeeded;
- (void)beginEditingName;
- (void)endEditingName;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)resetTextFieldEnabled;
- (void)setItem:(id)a3;
- (void)setTextViewEnabled:(BOOL)a3;
- (void)setupTextViewConstraints;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation CNAccountsAndGroupsCell

- (CNAccountsAndGroupsCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNAccountsAndGroupsCell;
  [(CNAccountsAndGroupsCell *)&v4 prepareForReuse];
  v3 = [(CNAccountsAndGroupsCell *)self titleTextView];
  [v3 removeFromSuperview];

  [(CNAccountsAndGroupsCell *)self setTitleTextView:0];
  [(CNAccountsAndGroupsCell *)self setNeedsLayout];
}

- (BOOL)isValidTitle:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [v3 stringByTrimmingCharactersInSet:v4];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)textViewDidEndEditing:(id)a3
{
  v15 = [a3 text];
  if ([v15 length] < 0x12D)
  {
    v5 = v15;
  }

  else
  {
    v4 = [v15 substringToIndex:300];

    v5 = v4;
  }

  v16 = v5;
  if (![(CNAccountsAndGroupsCell *)self isValidTitle:v5])
  {
    v6 = [(CNAccountsAndGroupsCell *)self item];
    v7 = [v6 name];

    v8 = [(CNAccountsAndGroupsCell *)self item];
    v9 = [v8 name];
    v10 = [(CNAccountsAndGroupsCell *)self titleTextView];
    [v10 setText:v9];

    v16 = v7;
  }

  v11 = [(CNAccountsAndGroupsCell *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CNAccountsAndGroupsCell *)self delegate];
    v14 = [(CNAccountsAndGroupsCell *)self item];
    [v13 item:v14 didEndEditingWithName:v16];
  }

  [(CNAccountsAndGroupsCell *)self resetTextFieldEnabled];
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  [v4 frame];
  [(CNAccountsAndGroupsCell *)self requiredHeightForTextView:v4 fittingWidth:v5];
  v7 = v6;

  [(CNAccountsAndGroupsCell *)self titleTextViewHeight];
  if (v8 != v7)
  {
    [(CNAccountsAndGroupsCell *)self setTitleTextViewHeight:v7];
    v9 = [(CNAccountsAndGroupsCell *)self delegate];
    [v9 cellTextViewDidChangeHeight];
  }
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  v7 = a5;
  v8 = a3;
  if ([v7 isEqualToString:@"\n"])
  {
    [v8 resignFirstResponder];

    v9 = 0;
  }

  else
  {
    v10 = [v8 text];

    v11 = [v10 length];
    v12 = v11 - length + [v7 length];

    v9 = v12 < 300;
  }

  return v9;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CNAccountsAndGroupsCell_textViewDidBeginEditing___block_invoke;
  block[3] = &unk_1E74E6A88;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(CNAccountsAndGroupsCell *)self item];
  v6 = [v5 canRename];

  if (v6)
  {
    [v4 frame];
    [(CNAccountsAndGroupsCell *)self requiredHeightForTextView:v4 fittingWidth:v7];
    [(CNAccountsAndGroupsCell *)self setTitleTextViewHeight:?];
  }

  return v6;
}

- (BOOL)isCellEditing
{
  v2 = [(CNAccountsAndGroupsCell *)self titleTextView];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (void)endEditingName
{
  v3 = [(CNAccountsAndGroupsCell *)self titleTextView];
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    v5 = [(CNAccountsAndGroupsCell *)self titleTextView];
    [v5 resignFirstResponder];
  }
}

- (void)beginEditingName
{
  [(CNAccountsAndGroupsCell *)self setTextViewEnabled:1];
  v3 = [(CNAccountsAndGroupsCell *)self titleTextView];
  [v3 becomeFirstResponder];
}

- (void)applyAccessoryTintColor:(id)a3 leadingAccessoryTintColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAccountsAndGroupsCell *)self accessories];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __77__CNAccountsAndGroupsCell_applyAccessoryTintColor_leadingAccessoryTintColor___block_invoke;
  v15 = &unk_1E74E6398;
  v16 = v7;
  v17 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 _cn_map:&v12];

  [(CNAccountsAndGroupsCell *)self setAccessories:v11, v12, v13, v14, v15];
}

id __77__CNAccountsAndGroupsCell_applyAccessoryTintColor_leadingAccessoryTintColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    v5 = v3;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = [v7 placement];
      v9 = 40;
      if (!v8)
      {
        v9 = 32;
      }

      v10 = *(a1 + v9);
      v11 = [v7 customView];
      [v11 setTintColor:v10];

      v5 = v7;
    }

    else
    {
      [v5 setTintColor:*(a1 + 40)];
    }

    v12 = v5;
  }

  return v3;
}

- (void)applyTextFont:(id)a3
{
  v4 = a3;
  v5 = [(CNAccountsAndGroupsCell *)self titleTextView];
  [v5 setFont:v4];
}

- (void)applyTextViewPlaceholderIfNeeded
{
  v3 = [(CNAccountsAndGroupsCell *)self item];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"groupPlaceholderIdentifier"];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = CNContactsUIBundle();
    v7 = [v10 localizedStringForKey:@"NEW_GROUP_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
    v8 = [v6 initWithString:v7];
    v9 = [(CNAccountsAndGroupsCell *)self titleTextView];
    [v9 setAttributedPlaceholder:v8];
  }
}

- (double)requiredHeightForTextView:(id)a3 fittingWidth:(double)a4
{
  [a3 sizeThatFits:{a4, 1.79769313e308}];
  v5 = v4;
  return ceilf(v5);
}

- (CNAccountsAndGroupsCellTextView)titleTextView
{
  titleTextView = self->_titleTextView;
  if (!titleTextView)
  {
    v4 = [CNAccountsAndGroupsCellTextView alloc];
    v5 = [(CNAccountsAndGroupsCellTextView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_titleTextView;
    self->_titleTextView = v5;

    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setDelegate:self];
    v7 = [(CNAccountsAndGroupsCell *)self contentView];
    v8 = [v7 backgroundColor];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setBackgroundColor:v8];

    v9 = [MEMORY[0x1E69DCC28] accompaniedSidebarCellConfiguration];
    v10 = [v9 textProperties];
    v11 = [v10 font];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setFont:v11];

    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setTextAlignment:2 * ([(CNAccountsAndGroupsCell *)self effectiveUserInterfaceLayoutDirection]== 1)];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setBounces:0];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setAutocorrectionType:1];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setScrollEnabled:0];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setReturnKeyType:9];
    v12 = [MEMORY[0x1E69966E8] currentEnvironment];
    v13 = [v12 featureFlags];
    LODWORD(v11) = [v13 isFeatureEnabled:29];

    if (v11)
    {
      [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
      v14 = [(CNAccountsAndGroupsCellTextView *)self->_titleTextView textContainer];
      [v14 setLineFragmentPadding:0.0];
    }

    else
    {
      v15 = [(CNAccountsAndGroupsCell *)self contentView];
      v16 = [v15 effectiveUserInterfaceLayoutDirection];

      if (v16 == 1)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      if (v16 == 1)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setTextContainerInset:11.0, v17, 11.0, v18];
    }

    [(CNAccountsAndGroupsCell *)self setupTextViewConstraints];
    titleTextView = self->_titleTextView;
  }

  return titleTextView;
}

- (void)setTextViewEnabled:(BOOL)a3
{
  v3 = a3;
  v7 = [(CNAccountsAndGroupsCell *)self item];
  v5 = [v7 canRename];
  v6 = [(CNAccountsAndGroupsCell *)self titleTextView];
  [v6 setUserInteractionEnabled:v5 & v3];
}

- (void)resetTextFieldEnabled
{
  v3 = [(CNAccountsAndGroupsCell *)self delegate];
  -[CNAccountsAndGroupsCell setTextViewEnabled:](self, "setTextViewEnabled:", [v3 isCollectionViewEditing]);
}

- (void)setItem:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_item, a3);
  if (v8)
  {
    v5 = [v8 name];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CNAccountsAndGroupsCell *)self titleTextView];
  [v6 setText:v5];

  v7 = v8;
  if (v8)
  {

    v7 = v8;
  }
}

- (double)minCellHeight
{
  v3 = [(CNAccountsAndGroupsCell *)self traitCollection];
  v4 = [v3 _splitViewControllerContext];

  if (v4 == 2)
  {
    [MEMORY[0x1E69DCC28] accompaniedSidebarCellConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DCC28] cellConfiguration];
  }
  v5 = ;
  v6 = [(CNAccountsAndGroupsCell *)self traitCollection];
  [v5 _minimumHeightForTraitCollection:v6];
  v8 = v7;

  return v8;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [(CNAccountsAndGroupsCell *)self setNeedsLayout];
  [(CNAccountsAndGroupsCell *)self layoutIfNeeded];
  v18.receiver = self;
  v18.super_class = CNAccountsAndGroupsCell;
  v5 = [(CNAccountsAndGroupsCell *)&v18 preferredLayoutAttributesFittingAttributes:v4];

  v6 = [(CNAccountsAndGroupsCell *)self contentView];
  [v6 bounds];
  v8 = v7;
  v9 = [(CNAccountsAndGroupsCell *)self contentView];
  [v9 layoutMargins];
  v11 = v8 - v10;
  v12 = [(CNAccountsAndGroupsCell *)self contentView];
  [v12 layoutMargins];
  v14 = v11 - v13 + -1.0;
  v15 = floorf(v14);

  v16 = [(CNAccountsAndGroupsCell *)self titleTextView];
  [(CNAccountsAndGroupsCell *)self requiredHeightForTextView:v16 fittingWidth:v15];

  [(CNAccountsAndGroupsCell *)self minCellHeight];
  [v5 size];
  [v5 setSize:?];

  return v5;
}

- (void)setupTextViewConstraints
{
  v46[6] = *MEMORY[0x1E69E9840];
  v3 = [(CNAccountsAndGroupsCell *)self titleTextView];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(CNAccountsAndGroupsCell *)self contentView];
    v6 = [(CNAccountsAndGroupsCell *)self titleTextView];
    [v5 addSubview:v6];

    v45 = [(CNAccountsAndGroupsCell *)self titleTextView];
    v43 = [v45 leadingAnchor];
    v44 = [(CNAccountsAndGroupsCell *)self contentView];
    v42 = [v44 layoutMarginsGuide];
    v41 = [v42 leadingAnchor];
    v40 = [v43 constraintEqualToAnchor:v41];
    v46[0] = v40;
    v39 = [(CNAccountsAndGroupsCell *)self titleTextView];
    v37 = [v39 trailingAnchor];
    v38 = [(CNAccountsAndGroupsCell *)self contentView];
    v36 = [v38 layoutMarginsGuide];
    v35 = [v36 trailingAnchor];
    v34 = [v37 constraintEqualToAnchor:v35];
    v46[1] = v34;
    v33 = [(CNAccountsAndGroupsCell *)self titleTextView];
    v31 = [v33 centerYAnchor];
    v32 = [(CNAccountsAndGroupsCell *)self contentView];
    v30 = [v32 safeAreaLayoutGuide];
    v29 = [v30 centerYAnchor];
    v28 = [v31 constraintEqualToAnchor:v29];
    v46[2] = v28;
    v27 = [(CNAccountsAndGroupsCell *)self titleTextView];
    v25 = [v27 topAnchor];
    v26 = [(CNAccountsAndGroupsCell *)self contentView];
    v24 = [v26 safeAreaLayoutGuide];
    v22 = [v24 topAnchor];
    v21 = [v25 constraintGreaterThanOrEqualToAnchor:v22];
    v46[3] = v21;
    v20 = [(CNAccountsAndGroupsCell *)self titleTextView];
    v18 = [v20 bottomAnchor];
    v19 = [(CNAccountsAndGroupsCell *)self contentView];
    v7 = [v19 safeAreaLayoutGuide];
    v8 = [v7 bottomAnchor];
    v9 = [v18 constraintLessThanOrEqualToAnchor:v8];
    v46[4] = v9;
    v10 = [(CNAccountsAndGroupsCell *)self separatorLayoutGuide];
    v11 = [v10 leadingAnchor];
    v12 = [(CNAccountsAndGroupsCell *)self titleTextView];
    v13 = [v12 leadingAnchor];
    v14 = [(CNAccountsAndGroupsCell *)self titleTextView];
    v15 = [v14 textContainer];
    [v15 lineFragmentPadding];
    v17 = [v11 constraintEqualToAnchor:v13 constant:v16 + 1.0];
    v46[5] = v17;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:6];

    [MEMORY[0x1E696ACD8] activateConstraints:v23];
  }
}

- (void)prepareForDisplay
{
  [(CNAccountsAndGroupsCell *)self resetTextFieldEnabled];

  [(CNAccountsAndGroupsCell *)self applyTextViewPlaceholderIfNeeded];
}

@end