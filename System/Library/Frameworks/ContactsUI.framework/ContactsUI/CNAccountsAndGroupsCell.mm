@interface CNAccountsAndGroupsCell
- (BOOL)isCellEditing;
- (BOOL)isValidTitle:(id)title;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (CNAccountsAndGroupsCellDelegate)delegate;
- (CNAccountsAndGroupsCellTextView)titleTextView;
- (double)minCellHeight;
- (double)requiredHeightForTextView:(id)view fittingWidth:(double)width;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)applyAccessoryTintColor:(id)color leadingAccessoryTintColor:(id)tintColor;
- (void)applyTextFont:(id)font;
- (void)applyTextViewPlaceholderIfNeeded;
- (void)beginEditingName;
- (void)endEditingName;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)resetTextFieldEnabled;
- (void)setItem:(id)item;
- (void)setTextViewEnabled:(BOOL)enabled;
- (void)setupTextViewConstraints;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
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
  titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
  [titleTextView removeFromSuperview];

  [(CNAccountsAndGroupsCell *)self setTitleTextView:0];
  [(CNAccountsAndGroupsCell *)self setNeedsLayout];
}

- (BOOL)isValidTitle:(id)title
{
  titleCopy = title;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [titleCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)textViewDidEndEditing:(id)editing
{
  text = [editing text];
  if ([text length] < 0x12D)
  {
    v5 = text;
  }

  else
  {
    v4 = [text substringToIndex:300];

    v5 = v4;
  }

  v16 = v5;
  if (![(CNAccountsAndGroupsCell *)self isValidTitle:v5])
  {
    item = [(CNAccountsAndGroupsCell *)self item];
    name = [item name];

    item2 = [(CNAccountsAndGroupsCell *)self item];
    name2 = [item2 name];
    titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
    [titleTextView setText:name2];

    v16 = name;
  }

  delegate = [(CNAccountsAndGroupsCell *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(CNAccountsAndGroupsCell *)self delegate];
    item3 = [(CNAccountsAndGroupsCell *)self item];
    [delegate2 item:item3 didEndEditingWithName:v16];
  }

  [(CNAccountsAndGroupsCell *)self resetTextFieldEnabled];
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  [changeCopy frame];
  [(CNAccountsAndGroupsCell *)self requiredHeightForTextView:changeCopy fittingWidth:v5];
  v7 = v6;

  [(CNAccountsAndGroupsCell *)self titleTextViewHeight];
  if (v8 != v7)
  {
    [(CNAccountsAndGroupsCell *)self setTitleTextViewHeight:v7];
    delegate = [(CNAccountsAndGroupsCell *)self delegate];
    [delegate cellTextViewDidChangeHeight];
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  textCopy = text;
  viewCopy = view;
  if ([textCopy isEqualToString:@"\n"])
  {
    [viewCopy resignFirstResponder];

    v9 = 0;
  }

  else
  {
    text = [viewCopy text];

    v11 = [text length];
    v12 = v11 - length + [textCopy length];

    v9 = v12 < 300;
  }

  return v9;
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CNAccountsAndGroupsCell_textViewDidBeginEditing___block_invoke;
  block[3] = &unk_1E74E6A88;
  v6 = editingCopy;
  v4 = editingCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  item = [(CNAccountsAndGroupsCell *)self item];
  canRename = [item canRename];

  if (canRename)
  {
    [editingCopy frame];
    [(CNAccountsAndGroupsCell *)self requiredHeightForTextView:editingCopy fittingWidth:v7];
    [(CNAccountsAndGroupsCell *)self setTitleTextViewHeight:?];
  }

  return canRename;
}

- (BOOL)isCellEditing
{
  titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
  isFirstResponder = [titleTextView isFirstResponder];

  return isFirstResponder;
}

- (void)endEditingName
{
  titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
  isFirstResponder = [titleTextView isFirstResponder];

  if (isFirstResponder)
  {
    titleTextView2 = [(CNAccountsAndGroupsCell *)self titleTextView];
    [titleTextView2 resignFirstResponder];
  }
}

- (void)beginEditingName
{
  [(CNAccountsAndGroupsCell *)self setTextViewEnabled:1];
  titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
  [titleTextView becomeFirstResponder];
}

- (void)applyAccessoryTintColor:(id)color leadingAccessoryTintColor:(id)tintColor
{
  colorCopy = color;
  tintColorCopy = tintColor;
  accessories = [(CNAccountsAndGroupsCell *)self accessories];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __77__CNAccountsAndGroupsCell_applyAccessoryTintColor_leadingAccessoryTintColor___block_invoke;
  v15 = &unk_1E74E6398;
  v16 = tintColorCopy;
  v17 = colorCopy;
  v9 = colorCopy;
  v10 = tintColorCopy;
  v11 = [accessories _cn_map:&v12];

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

- (void)applyTextFont:(id)font
{
  fontCopy = font;
  titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
  [titleTextView setFont:fontCopy];
}

- (void)applyTextViewPlaceholderIfNeeded
{
  item = [(CNAccountsAndGroupsCell *)self item];
  identifier = [item identifier];
  v5 = [identifier isEqualToString:@"groupPlaceholderIdentifier"];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = CNContactsUIBundle();
    v7 = [v10 localizedStringForKey:@"NEW_GROUP_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
    v8 = [v6 initWithString:v7];
    titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
    [titleTextView setAttributedPlaceholder:v8];
  }
}

- (double)requiredHeightForTextView:(id)view fittingWidth:(double)width
{
  [view sizeThatFits:{width, 1.79769313e308}];
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
    contentView = [(CNAccountsAndGroupsCell *)self contentView];
    backgroundColor = [contentView backgroundColor];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setBackgroundColor:backgroundColor];

    accompaniedSidebarCellConfiguration = [MEMORY[0x1E69DCC28] accompaniedSidebarCellConfiguration];
    textProperties = [accompaniedSidebarCellConfiguration textProperties];
    font = [textProperties font];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setFont:font];

    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setTextAlignment:2 * ([(CNAccountsAndGroupsCell *)self effectiveUserInterfaceLayoutDirection]== 1)];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setBounces:0];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setAutocorrectionType:1];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setScrollEnabled:0];
    [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setReturnKeyType:9];
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    LODWORD(font) = [featureFlags isFeatureEnabled:29];

    if (font)
    {
      [(CNAccountsAndGroupsCellTextView *)self->_titleTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
      textContainer = [(CNAccountsAndGroupsCellTextView *)self->_titleTextView textContainer];
      [textContainer setLineFragmentPadding:0.0];
    }

    else
    {
      contentView2 = [(CNAccountsAndGroupsCell *)self contentView];
      effectiveUserInterfaceLayoutDirection = [contentView2 effectiveUserInterfaceLayoutDirection];

      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      if (effectiveUserInterfaceLayoutDirection == 1)
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

- (void)setTextViewEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  item = [(CNAccountsAndGroupsCell *)self item];
  canRename = [item canRename];
  titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
  [titleTextView setUserInteractionEnabled:canRename & enabledCopy];
}

- (void)resetTextFieldEnabled
{
  delegate = [(CNAccountsAndGroupsCell *)self delegate];
  -[CNAccountsAndGroupsCell setTextViewEnabled:](self, "setTextViewEnabled:", [delegate isCollectionViewEditing]);
}

- (void)setItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_item, item);
  if (itemCopy)
  {
    name = [itemCopy name];
  }

  else
  {
    name = 0;
  }

  titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
  [titleTextView setText:name];

  v7 = itemCopy;
  if (itemCopy)
  {

    v7 = itemCopy;
  }
}

- (double)minCellHeight
{
  traitCollection = [(CNAccountsAndGroupsCell *)self traitCollection];
  _splitViewControllerContext = [traitCollection _splitViewControllerContext];

  if (_splitViewControllerContext == 2)
  {
    [MEMORY[0x1E69DCC28] accompaniedSidebarCellConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DCC28] cellConfiguration];
  }
  v5 = ;
  traitCollection2 = [(CNAccountsAndGroupsCell *)self traitCollection];
  [v5 _minimumHeightForTraitCollection:traitCollection2];
  v8 = v7;

  return v8;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(CNAccountsAndGroupsCell *)self setNeedsLayout];
  [(CNAccountsAndGroupsCell *)self layoutIfNeeded];
  v18.receiver = self;
  v18.super_class = CNAccountsAndGroupsCell;
  v5 = [(CNAccountsAndGroupsCell *)&v18 preferredLayoutAttributesFittingAttributes:attributesCopy];

  contentView = [(CNAccountsAndGroupsCell *)self contentView];
  [contentView bounds];
  v8 = v7;
  contentView2 = [(CNAccountsAndGroupsCell *)self contentView];
  [contentView2 layoutMargins];
  v11 = v8 - v10;
  contentView3 = [(CNAccountsAndGroupsCell *)self contentView];
  [contentView3 layoutMargins];
  v14 = v11 - v13 + -1.0;
  v15 = floorf(v14);

  titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
  [(CNAccountsAndGroupsCell *)self requiredHeightForTextView:titleTextView fittingWidth:v15];

  [(CNAccountsAndGroupsCell *)self minCellHeight];
  [v5 size];
  [v5 setSize:?];

  return v5;
}

- (void)setupTextViewConstraints
{
  v46[6] = *MEMORY[0x1E69E9840];
  titleTextView = [(CNAccountsAndGroupsCell *)self titleTextView];
  superview = [titleTextView superview];

  if (!superview)
  {
    contentView = [(CNAccountsAndGroupsCell *)self contentView];
    titleTextView2 = [(CNAccountsAndGroupsCell *)self titleTextView];
    [contentView addSubview:titleTextView2];

    titleTextView3 = [(CNAccountsAndGroupsCell *)self titleTextView];
    leadingAnchor = [titleTextView3 leadingAnchor];
    contentView2 = [(CNAccountsAndGroupsCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v46[0] = v40;
    titleTextView4 = [(CNAccountsAndGroupsCell *)self titleTextView];
    trailingAnchor = [titleTextView4 trailingAnchor];
    contentView3 = [(CNAccountsAndGroupsCell *)self contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v46[1] = v34;
    titleTextView5 = [(CNAccountsAndGroupsCell *)self titleTextView];
    centerYAnchor = [titleTextView5 centerYAnchor];
    contentView4 = [(CNAccountsAndGroupsCell *)self contentView];
    safeAreaLayoutGuide = [contentView4 safeAreaLayoutGuide];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v46[2] = v28;
    titleTextView6 = [(CNAccountsAndGroupsCell *)self titleTextView];
    topAnchor = [titleTextView6 topAnchor];
    contentView5 = [(CNAccountsAndGroupsCell *)self contentView];
    safeAreaLayoutGuide2 = [contentView5 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
    v21 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v46[3] = v21;
    titleTextView7 = [(CNAccountsAndGroupsCell *)self titleTextView];
    bottomAnchor = [titleTextView7 bottomAnchor];
    contentView6 = [(CNAccountsAndGroupsCell *)self contentView];
    safeAreaLayoutGuide3 = [contentView6 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide3 bottomAnchor];
    v9 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v46[4] = v9;
    separatorLayoutGuide = [(CNAccountsAndGroupsCell *)self separatorLayoutGuide];
    leadingAnchor3 = [separatorLayoutGuide leadingAnchor];
    titleTextView8 = [(CNAccountsAndGroupsCell *)self titleTextView];
    leadingAnchor4 = [titleTextView8 leadingAnchor];
    titleTextView9 = [(CNAccountsAndGroupsCell *)self titleTextView];
    textContainer = [titleTextView9 textContainer];
    [textContainer lineFragmentPadding];
    v17 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v16 + 1.0];
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