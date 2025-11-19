@interface COSSoftwareUpdateCellFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (COSSoftwareUpdateCellFooterView)initWithSpecifier:(id)a3;
- (PSSpecifier)specifier;
- (double)preferredHeightForWidth:(double)a3;
- (void)layoutSubviews;
@end

@implementation COSSoftwareUpdateCellFooterView

- (COSSoftwareUpdateCellFooterView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(COSSoftwareUpdateCellFooterView *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_specifier, v4);
    v7 = objc_alloc_init(UITextView);
    textView = v6->_textView;
    v6->_textView = v7;

    v9 = +[UIColor clearColor];
    [(UITextView *)v6->_textView setBackgroundColor:v9];

    [(UITextView *)v6->_textView setShowsVerticalScrollIndicator:0];
    [(UITextView *)v6->_textView setEditable:0];
    [(UITextView *)v6->_textView setSelectable:0];
    [(UITextView *)v6->_textView setScrollEnabled:0];
    v10 = BPSTextColor();
    [(UITextView *)v6->_textView setTextColor:v10];

    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [(UITextView *)v6->_textView setFont:v11];

    [(COSSoftwareUpdateCellFooterView *)v6 addSubview:v6->_textView];
  }

  return v6;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = COSSoftwareUpdateCellFooterView;
  [(COSSoftwareUpdateCellFooterView *)&v25 layoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_specifier);
  v4 = [WeakRetained propertyForKey:PSFooterTextGroupKey];
  text = self->_text;
  self->_text = v4;

  [(UITextView *)self->_textView setText:self->_text];
  PSTextViewInsets();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  PSTableSectionFooterTopPad();
  v13 = v12 - v7;
  PreferencesTableViewCellLeftPad();
  v15 = v14 - v9;
  PSTableSectionFooterBottomPad();
  PreferencesTableViewCellRightPad();
  v17 = v16 - v11;
  [(COSSoftwareUpdateCellFooterView *)self bounds];
  v19 = v15 + v18;
  v21 = v13 + v20;
  v23 = v22 - (v15 + v17);
  [(UITextView *)self->_textView frame];
  [(UITextView *)self->_textView sizeThatFits:v23, 1.79769313e308];
  [(UITextView *)self->_textView setFrame:v19, v21, v23, v24];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(COSSoftwareUpdateCellFooterView *)self text:a3.width];
  v6 = [v5 length];

  if (v6)
  {
    PreferencesTableViewCellLeftPad();
    v8 = v7;
    PreferencesTableViewCellRightPad();
    v10 = (v8 + v9);
    PSTableSectionFooterTopPad();
    v12 = v11;
    PSTableSectionFooterBottomPad();
    v14 = v12 + v13;
    v15 = width - v10;
    [(UITextView *)self->_textView sizeThatFits:v15, 1.79769313e308];
    v16 = v15 + v10;
    height = v14 + v17;
  }

  else
  {
    v16 = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = v16;
  return result;
}

- (double)preferredHeightForWidth:(double)a3
{
  [(COSSoftwareUpdateCellFooterView *)self layoutIfNeeded];
  [(COSSoftwareUpdateCellFooterView *)self sizeThatFits:a3, 1.79769313e308];
  return v5;
}

- (PSSpecifier)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_specifier);

  return WeakRetained;
}

@end