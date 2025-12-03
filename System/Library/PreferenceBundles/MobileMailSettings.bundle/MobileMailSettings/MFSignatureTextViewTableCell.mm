@interface MFSignatureTextViewTableCell
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)resignFirstResponder;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MFSignatureTextViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)styleString;
- (void)_updateInterfaceColorForTextView:(id)view;
- (void)cellRemovedFromView;
- (void)layoutSubviews;
- (void)setTextView:(id)view;
- (void)setValue:(id)value;
- (void)textContentViewDidChange:(id)change;
- (void)textContentViewDidEndEditing:(id)editing;
@end

@implementation MFSignatureTextViewTableCell

- (MFSignatureTextViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  identifierCopy = identifier;
  specifierCopy = specifier;
  v27.receiver = self;
  v27.super_class = MFSignatureTextViewTableCell;
  v10 = [(MFSignatureTextViewTableCell *)&v27 initWithStyle:style reuseIdentifier:identifierCopy specifier:specifierCopy];
  v11 = v10;
  if (v10)
  {
    [(MFSignatureTextViewTableCell *)v10 setSelectionStyle:0];
    [(MFSignatureTextViewTableCell *)v11 setAccessoryType:0];
    [(MFSignatureTextViewTableCell *)v11 bounds];
    v13 = v12;
    v15 = v14;
    v16 = [MFSignatureWebDocumentView alloc];
    styleString = [(MFSignatureTextViewTableCell *)v11 styleString];
    v18 = +[MFSignatureWebDocumentView standardTextViewPreferences];
    v19 = [(MFSignatureWebDocumentView *)v16 initSimpleHTMLDocumentWithStyle:styleString frame:v18 preferences:0 groupName:0.0, 0.0, v13, v15];

    [v19 setUserInteractionEnabled:0];
    [v19 setIgnoresFocusingMouse:1];
    [v19 setLoadsSynchronously:1];
    v20 = [[MFSignatureTextView alloc] initWithFrame:v19 webView:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v21 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
    v22 = [UIFont fontWithDescriptor:v21 size:0.0];
    [(MFSignatureTextView *)v20 setFont:v22];

    [(MFSignatureTextView *)v20 setTextLoupeVisibility:2];
    [(MFSignatureTextView *)v20 setAcceptsEmoji:1];
    [(MFSignatureTextView *)v20 setAllowsEditingTextAttributes:1];
    [(MFSignatureTextView *)v20 setCell:v11];
    WeakRetained = objc_loadWeakRetained(&specifierCopy[OBJC_IVAR___PSSpecifier_target]);
    if (*&specifierCopy[OBJC_IVAR___PSSpecifier_getter] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      performGetter = [specifierCopy performGetter];
      [(MFSignatureTextViewTableCell *)v11 setValue:performGetter];
    }

    if (*&specifierCopy[OBJC_IVAR___PSSpecifier_setter] && *&specifierCopy[OBJC_IVAR___PSSpecifier_getter])
    {
      [MFSignatureTextViewTableCell setValueChangedTarget:v11 action:"setValueChangedTarget:action:specifier:" specifier:WeakRetained];
    }

    v25 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
    [specifierCopy setProperty:v25 forKey:PSTableCellHeightKey];

    [(MFSignatureTextViewTableCell *)v11 _updateInterfaceColorForTextView:v11->_textView];
    [(MFSignatureTextViewTableCell *)v11 setTextView:v20];
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  specifier = [(MFSignatureTextViewTableCell *)self specifier];
  textView = [(MFSignatureTextViewTableCell *)self textView];
  v8 = [specifier propertyForKey:PSTextViewBottomMarginKey];
  if (v8)
  {
    text = [textView text];
    PSTextViewInsets();
    v11 = v10;
    v13 = v12;
    webView = [textView webView];
    [webView frame];
    v15 = CGRectGetHeight(v25);
    [v8 floatValue];
    height = v13 + v11 + v15 + v16;

    *&v17 = height;
    v18 = [NSNumber numberWithFloat:v17];
    v19 = PSTableCellHeightKey;
    v20 = [specifier propertyForKey:PSTableCellHeightKey];
    v21 = [v20 isEqual:v18];

    if ((v21 & 1) == 0)
    {
      [specifier setProperty:v18 forKey:v19];
    }
  }

  v22 = width;
  v23 = height;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MFSignatureTextViewTableCell;
  [(MFSignatureTextViewTableCell *)&v4 layoutSubviews];
  textView = [(MFSignatureTextViewTableCell *)self textView];
  [(MFSignatureTextViewTableCell *)self _updateInterfaceColorForTextView:textView];
}

- (void)cellRemovedFromView
{
  specifier = [(MFSignatureTextViewTableCell *)self specifier];
  v7.receiver = self;
  v7.super_class = MFSignatureTextViewTableCell;
  [(MFSignatureTextViewTableCell *)&v7 cellRemovedFromView];
  textView = [(MFSignatureTextViewTableCell *)self textView];
  isEditing = [textView isEditing];
  if (specifier)
  {
    v6 = isEditing;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    [(MFSignatureTextViewTableCell *)self setSpecifier:specifier];
  }
}

- (void)setValue:(id)value
{
  valueCopy = value;
  textView = [(MFSignatureTextViewTableCell *)self textView];
  [textView setContentToHTMLString:valueCopy];
}

- (BOOL)becomeFirstResponder
{
  textView = [(MFSignatureTextViewTableCell *)self textView];
  becomeFirstResponder = [textView becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)canBecomeFirstResponder
{
  textView = [(MFSignatureTextViewTableCell *)self textView];
  canBecomeFirstResponder = [textView canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v7.receiver = self;
  v7.super_class = MFSignatureTextViewTableCell;
  if ([(MFSignatureTextViewTableCell *)&v7 isFirstResponder])
  {
    v6.receiver = self;
    v6.super_class = MFSignatureTextViewTableCell;
    return [(MFSignatureTextViewTableCell *)&v6 resignFirstResponder];
  }

  else
  {
    textView = [(MFSignatureTextViewTableCell *)self textView];
    resignFirstResponder = [textView resignFirstResponder];
  }

  return resignFirstResponder;
}

- (void)setTextView:(id)view
{
  viewCopy = view;
  if (self->_textView != viewCopy)
  {
    contentView = [(MFSignatureTextViewTableCell *)self contentView];
    [contentView addSubview:viewCopy];

    textView = self->_textView;
    if (textView)
    {
      [(MFSignatureTextView *)textView removeFromSuperview];
    }

    objc_storeStrong(&self->_textView, view);
    [(MFSignatureTextView *)self->_textView setDelegate:self];
  }
}

- (void)_updateInterfaceColorForTextView:(id)view
{
  viewCopy = view;
  traitCollection = [(MFSignatureTextViewTableCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v6 = +[UIColor tableCellGroupedBackgroundColor];
  [viewCopy setBackgroundColor:v6];

  if (userInterfaceStyle == &dword_0 + 2)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v7 = ;
  [viewCopy setTextColor:v7];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("paste:" == action)
  {
    v7 = +[UIPasteboard generalPasteboard];
    LODWORD(self) = [v7 hasImages] ^ 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MFSignatureTextViewTableCell;
    LOBYTE(self) = [(MFSignatureTextViewTableCell *)&v9 canPerformAction:action withSender:senderCopy];
  }

  return self;
}

- (id)styleString
{
  v2 = [UIFont systemFontOfSize:12.0];
  markupDescription = [v2 markupDescription];
  v4 = [NSMutableString stringWithFormat:@"margin-top: %dpx %@; color: rgba(%d, %d, %d, %d); word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;", 8, markupDescription, 0, 0, 0, 1];;

  return v4;
}

- (void)textContentViewDidChange:(id)change
{
  changeCopy = change;
  specifier = [(MFSignatureTextViewTableCell *)self specifier];
  v5 = [specifier propertyForKey:PSTableCellHeightKey];
  [changeCopy frame];
  [(MFSignatureTextViewTableCell *)self sizeThatFits:v6, v7];
  v9 = v8;
  [v5 floatValue];
  if (v9 != v10)
  {
    target = [specifier target];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      table = [target table];
    }

    else
    {
      table = 0;
    }

    v13 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:0];
    [table beginUpdates];
    [table endUpdates];
    [UIView setAnimationsEnabled:v13];
  }
}

- (void)textContentViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  cellTarget = [(MFSignatureTextViewTableCell *)self cellTarget];
  if (cellTarget)
  {
    specifier = [(MFSignatureTextViewTableCell *)self specifier];

    if (specifier)
    {
      [(MFSignatureTextViewTableCell *)self cellAction];
      cellTarget2 = [(MFSignatureTextViewTableCell *)self cellTarget];
      contentAsHTMLString = [editingCopy contentAsHTMLString];
      specifier2 = [(MFSignatureTextViewTableCell *)self specifier];
      v9 = SFPerformSelector2();
    }
  }
}

@end