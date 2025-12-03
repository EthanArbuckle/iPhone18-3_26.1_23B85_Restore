@interface ASExchangeIdView
- (ASExchangeIdView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
- (id)_accessibilityLabels;
- (id)_generateExchangeIdLabel;
- (id)_generateExchangeIdText;
- (void)handleLongPressGesture:(id)gesture;
- (void)layoutSubviews;
- (void)setTextForExchangeId:(id)id;
@end

@implementation ASExchangeIdView

- (id)_generateExchangeIdLabel
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v3 setFont:v4];

  v5 = +[UIColor grayColor];
  [v3 setTextColor:v5];

  v6 = +[UIColor clearColor];
  [v3 setBackgroundColor:v6];

  [(ASExchangeIdView *)self addSubview:v3];

  return v3;
}

- (id)_generateExchangeIdText
{
  v3 = [[ASExchangeIdTextView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [(ASExchangeIdTextView *)v3 setFont:v4];

  v5 = +[UIColor grayColor];
  [(ASExchangeIdTextView *)v3 setTextColor:v5];

  v6 = +[UIColor clearColor];
  [(ASExchangeIdTextView *)v3 setBackgroundColor:v6];

  [(ASExchangeIdTextView *)v3 setUserInteractionEnabled:1];
  [(ASExchangeIdTextView *)v3 setNumberOfLines:0];
  v7 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleLongPressGesture:"];
  [(ASExchangeIdTextView *)v3 addGestureRecognizer:v7];
  [(ASExchangeIdView *)self addSubview:v3];

  return v3;
}

- (void)handleLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == &dword_0 + 1)
  {
    view = [gestureCopy view];
    becomeFirstResponder = [view becomeFirstResponder];

    if (becomeFirstResponder)
    {
      v5 = +[UIMenuController sharedMenuController];
      view2 = [gestureCopy view];
      [view2 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      view3 = [gestureCopy view];
      superview = [view3 superview];
      [v5 setTargetRect:superview inView:{v8, v10, v12, v14}];

      [v5 setMenuVisible:1 animated:1];
    }
  }
}

- (void)setTextForExchangeId:(id)id
{
  v4 = [id propertyForKey:@"ASExchangeIdKey"];
  idTextView = [(ASExchangeIdView *)self idTextView];
  [idTextView setText:v4];

  [(ASExchangeIdView *)self setSized:0.0];
  [(ASExchangeIdView *)self setLabelTopPadding:0.0];
  [(ASExchangeIdView *)self setTextViewTopPadding:0.0];

  [(ASExchangeIdView *)self setNeedsLayout];
}

- (ASExchangeIdView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = ASExchangeIdView;
  v5 = [(ASExchangeIdView *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    _generateExchangeIdLabel = [(ASExchangeIdView *)v5 _generateExchangeIdLabel];
    label = v6->_label;
    v6->_label = _generateExchangeIdLabel;

    _generateExchangeIdText = [(ASExchangeIdView *)v6 _generateExchangeIdText];
    idTextView = v6->_idTextView;
    v6->_idTextView = _generateExchangeIdText;

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"DEVICE_ID_DESCRIPTION" value:&stru_30C98 table:@"ASAccountSetup"];
    [(UILabel *)v6->_label setText:v12];

    [(UILabel *)v6->_label setTextAlignment:1];
    [(ASExchangeIdTextView *)v6->_idTextView setTextAlignment:1];
    [(ASExchangeIdView *)v6 setTextForExchangeId:specifierCopy];
    v13 = +[UIColor clearColor];
    [(ASExchangeIdView *)v6 setBackgroundColor:v13];
  }

  return v6;
}

- (double)preferredHeightForWidth:(double)width
{
  [(ASExchangeIdView *)self sized];
  if (v5 == 0.0)
  {
    [(ASExchangeIdView *)self setLabelTopPadding:2.0];
    [(ASExchangeIdView *)self setTextViewTopPadding:10.0];
    label = [(ASExchangeIdView *)self label];
    [label sizeToFit];

    [(ASExchangeIdView *)self labelTopPadding];
    v8 = v7;
    label2 = [(ASExchangeIdView *)self label];
    v10 = sub_15184(label2, width);
    v12 = v8 + v11 * 2.0;
    [(ASExchangeIdView *)self sized];
    [(ASExchangeIdView *)self setSized:v13 + v12];

    idTextView = [(ASExchangeIdView *)self idTextView];
    [idTextView sizeToFit];

    [(ASExchangeIdView *)self textViewTopPadding];
    v16 = v15;
    idTextView2 = [(ASExchangeIdView *)self idTextView];
    v18 = sub_15184(idTextView2, width);
    v20 = v16 + v19 * 2.0;
    [(ASExchangeIdView *)self sized];
    [(ASExchangeIdView *)self setSized:v21 + v20];
  }

  [(ASExchangeIdView *)self sized];
  return result;
}

- (void)layoutSubviews
{
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  [(ASExchangeIdView *)self sized];
  if (v6 == 0.0)
  {
    [(ASExchangeIdView *)self bounds];
    [(ASExchangeIdView *)self preferredHeightForWidth:v7];
  }

  label = [(ASExchangeIdView *)self label];
  [label frame];

  label2 = [(ASExchangeIdView *)self label];
  [(ASExchangeIdView *)self bounds];
  v11 = sub_15184(label2, v10);
  v13 = v12;

  [(ASExchangeIdView *)self bounds];
  v15 = round((v14 - v11) * 0.5);
  [(ASExchangeIdView *)self labelTopPadding];
  v17 = v16;
  v32.origin.x = CGRectZero.origin.x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v18 = v17 + CGRectGetMaxY(v32);
  label3 = [(ASExchangeIdView *)self label];
  [label3 setFrame:{v15, v18, v11, v13}];

  [(ASExchangeIdTextView *)self->_idTextView frame];
  idTextView = self->_idTextView;
  [(ASExchangeIdView *)self bounds];
  v22 = sub_15184(idTextView, v21);
  v24 = v23;
  [(ASExchangeIdView *)self bounds];
  v26 = round((v25 - v22) * 0.5);
  [(ASExchangeIdView *)self textViewTopPadding];
  v28 = v27;
  v33.origin.x = v15;
  v33.origin.y = v18;
  v33.size.width = v11;
  v33.size.height = v13;
  v29 = v28 + CGRectGetMaxY(v33);
  idTextView = [(ASExchangeIdView *)self idTextView];
  [idTextView setFrame:{v26, v29, v22, v24}];
}

- (id)_accessibilityLabels
{
  label = [(ASExchangeIdView *)self label];
  v3 = [NSArray arrayWithObjects:label, 0];

  return v3;
}

@end