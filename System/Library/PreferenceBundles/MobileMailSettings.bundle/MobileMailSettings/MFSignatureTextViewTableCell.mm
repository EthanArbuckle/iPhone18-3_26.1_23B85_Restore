@interface MFSignatureTextViewTableCell
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)resignFirstResponder;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MFSignatureTextViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)styleString;
- (void)_updateInterfaceColorForTextView:(id)a3;
- (void)cellRemovedFromView;
- (void)layoutSubviews;
- (void)setTextView:(id)a3;
- (void)setValue:(id)a3;
- (void)textContentViewDidChange:(id)a3;
- (void)textContentViewDidEndEditing:(id)a3;
@end

@implementation MFSignatureTextViewTableCell

- (MFSignatureTextViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v27.receiver = self;
  v27.super_class = MFSignatureTextViewTableCell;
  v10 = [(MFSignatureTextViewTableCell *)&v27 initWithStyle:a3 reuseIdentifier:v8 specifier:v9];
  v11 = v10;
  if (v10)
  {
    [(MFSignatureTextViewTableCell *)v10 setSelectionStyle:0];
    [(MFSignatureTextViewTableCell *)v11 setAccessoryType:0];
    [(MFSignatureTextViewTableCell *)v11 bounds];
    v13 = v12;
    v15 = v14;
    v16 = [MFSignatureWebDocumentView alloc];
    v17 = [(MFSignatureTextViewTableCell *)v11 styleString];
    v18 = +[MFSignatureWebDocumentView standardTextViewPreferences];
    v19 = [(MFSignatureWebDocumentView *)v16 initSimpleHTMLDocumentWithStyle:v17 frame:v18 preferences:0 groupName:0.0, 0.0, v13, v15];

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
    WeakRetained = objc_loadWeakRetained(&v9[OBJC_IVAR___PSSpecifier_target]);
    if (*&v9[OBJC_IVAR___PSSpecifier_getter] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v24 = [v9 performGetter];
      [(MFSignatureTextViewTableCell *)v11 setValue:v24];
    }

    if (*&v9[OBJC_IVAR___PSSpecifier_setter] && *&v9[OBJC_IVAR___PSSpecifier_getter])
    {
      [MFSignatureTextViewTableCell setValueChangedTarget:v11 action:"setValueChangedTarget:action:specifier:" specifier:WeakRetained];
    }

    v25 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
    [v9 setProperty:v25 forKey:PSTableCellHeightKey];

    [(MFSignatureTextViewTableCell *)v11 _updateInterfaceColorForTextView:v11->_textView];
    [(MFSignatureTextViewTableCell *)v11 setTextView:v20];
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MFSignatureTextViewTableCell *)self specifier];
  v7 = [(MFSignatureTextViewTableCell *)self textView];
  v8 = [v6 propertyForKey:PSTextViewBottomMarginKey];
  if (v8)
  {
    v9 = [v7 text];
    PSTextViewInsets();
    v11 = v10;
    v13 = v12;
    v14 = [v7 webView];
    [v14 frame];
    v15 = CGRectGetHeight(v25);
    [v8 floatValue];
    height = v13 + v11 + v15 + v16;

    *&v17 = height;
    v18 = [NSNumber numberWithFloat:v17];
    v19 = PSTableCellHeightKey;
    v20 = [v6 propertyForKey:PSTableCellHeightKey];
    v21 = [v20 isEqual:v18];

    if ((v21 & 1) == 0)
    {
      [v6 setProperty:v18 forKey:v19];
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
  v3 = [(MFSignatureTextViewTableCell *)self textView];
  [(MFSignatureTextViewTableCell *)self _updateInterfaceColorForTextView:v3];
}

- (void)cellRemovedFromView
{
  v3 = [(MFSignatureTextViewTableCell *)self specifier];
  v7.receiver = self;
  v7.super_class = MFSignatureTextViewTableCell;
  [(MFSignatureTextViewTableCell *)&v7 cellRemovedFromView];
  v4 = [(MFSignatureTextViewTableCell *)self textView];
  v5 = [v4 isEditing];
  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    [(MFSignatureTextViewTableCell *)self setSpecifier:v3];
  }
}

- (void)setValue:(id)a3
{
  v5 = a3;
  v4 = [(MFSignatureTextViewTableCell *)self textView];
  [v4 setContentToHTMLString:v5];
}

- (BOOL)becomeFirstResponder
{
  v2 = [(MFSignatureTextViewTableCell *)self textView];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(MFSignatureTextViewTableCell *)self textView];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
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
    v4 = [(MFSignatureTextViewTableCell *)self textView];
    v3 = [v4 resignFirstResponder];
  }

  return v3;
}

- (void)setTextView:(id)a3
{
  v7 = a3;
  if (self->_textView != v7)
  {
    v5 = [(MFSignatureTextViewTableCell *)self contentView];
    [v5 addSubview:v7];

    textView = self->_textView;
    if (textView)
    {
      [(MFSignatureTextView *)textView removeFromSuperview];
    }

    objc_storeStrong(&self->_textView, a3);
    [(MFSignatureTextView *)self->_textView setDelegate:self];
  }
}

- (void)_updateInterfaceColorForTextView:(id)a3
{
  v8 = a3;
  v4 = [(MFSignatureTextViewTableCell *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = +[UIColor tableCellGroupedBackgroundColor];
  [v8 setBackgroundColor:v6];

  if (v5 == &dword_0 + 2)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v7 = ;
  [v8 setTextColor:v7];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("paste:" == a3)
  {
    v7 = +[UIPasteboard generalPasteboard];
    LODWORD(self) = [v7 hasImages] ^ 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MFSignatureTextViewTableCell;
    LOBYTE(self) = [(MFSignatureTextViewTableCell *)&v9 canPerformAction:a3 withSender:v6];
  }

  return self;
}

- (id)styleString
{
  v2 = [UIFont systemFontOfSize:12.0];
  v3 = [v2 markupDescription];
  v4 = [NSMutableString stringWithFormat:@"margin-top: %dpx %@; color: rgba(%d, %d, %d, %d); word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;", 8, v3, 0, 0, 0, 1];;

  return v4;
}

- (void)textContentViewDidChange:(id)a3
{
  v14 = a3;
  v4 = [(MFSignatureTextViewTableCell *)self specifier];
  v5 = [v4 propertyForKey:PSTableCellHeightKey];
  [v14 frame];
  [(MFSignatureTextViewTableCell *)self sizeThatFits:v6, v7];
  v9 = v8;
  [v5 floatValue];
  if (v9 != v10)
  {
    v11 = [v4 target];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 table];
    }

    else
    {
      v12 = 0;
    }

    v13 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:0];
    [v12 beginUpdates];
    [v12 endUpdates];
    [UIView setAnimationsEnabled:v13];
  }
}

- (void)textContentViewDidEndEditing:(id)a3
{
  v10 = a3;
  v4 = [(MFSignatureTextViewTableCell *)self cellTarget];
  if (v4)
  {
    v5 = [(MFSignatureTextViewTableCell *)self specifier];

    if (v5)
    {
      [(MFSignatureTextViewTableCell *)self cellAction];
      v6 = [(MFSignatureTextViewTableCell *)self cellTarget];
      v7 = [v10 contentAsHTMLString];
      v8 = [(MFSignatureTextViewTableCell *)self specifier];
      v9 = SFPerformSelector2();
    }
  }
}

@end