@interface TextViewWithPlaceholderText
- (TextViewWithPlaceholderText)initWithFrame:(CGRect)frame;
- (void)_updatePlaceholderVisibility;
- (void)layoutSubviews;
- (void)setText:(id)text;
@end

@implementation TextViewWithPlaceholderText

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = TextViewWithPlaceholderText;
  [(TextViewWithPlaceholderText *)&v4 setText:text];
  [(TextViewWithPlaceholderText *)self _updatePlaceholderVisibility];
}

- (void)_updatePlaceholderVisibility
{
  placeholderLabel = [(TextViewWithPlaceholderText *)self placeholderLabel];
  isHidden = [placeholderLabel isHidden];

  text = [(TextViewWithPlaceholderText *)self text];
  v6 = [text length] != 0;
  placeholderLabel2 = [(TextViewWithPlaceholderText *)self placeholderLabel];
  [placeholderLabel2 setHidden:v6];

  if (isHidden)
  {
    placeholderLabel3 = [(TextViewWithPlaceholderText *)self placeholderLabel];
    isHidden2 = [placeholderLabel3 isHidden];

    if ((isHidden2 & 1) == 0)
    {

      [(TextViewWithPlaceholderText *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = TextViewWithPlaceholderText;
  [(TextViewWithPlaceholderText *)&v32 layoutSubviews];
  placeholderLabel = [(TextViewWithPlaceholderText *)self placeholderLabel];
  isHidden = [placeholderLabel isHidden];

  if ((isHidden & 1) == 0)
  {
    placeholderLabel2 = [(TextViewWithPlaceholderText *)self placeholderLabel];
    [(TextViewWithPlaceholderText *)self bringSubviewToFront:placeholderLabel2];

    [(TextViewWithPlaceholderText *)self textContainerInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    textContainer = [(TextViewWithPlaceholderText *)self textContainer];
    [textContainer lineFragmentPadding];
    v16 = v15 + v9;

    textContainer2 = [(TextViewWithPlaceholderText *)self textContainer];
    [textContainer2 lineFragmentPadding];
    v19 = v18;

    [(TextViewWithPlaceholderText *)self bounds];
    v21 = v20 + v16;
    v23 = v22 + v7;
    v25 = v24 - (v19 + v13 + v16);
    v27 = v26 - (v7 + v11);
    placeholderLabel3 = [(TextViewWithPlaceholderText *)self placeholderLabel];
    [placeholderLabel3 sizeThatFits:{v25, 0.0}];
    v30 = v29;

    placeholderLabel4 = [(TextViewWithPlaceholderText *)self placeholderLabel];
    [placeholderLabel4 setFrame:{v21, v23, v25, fmin(v27, v30)}];
  }
}

- (TextViewWithPlaceholderText)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = TextViewWithPlaceholderText;
  v3 = [(TextViewWithPlaceholderText *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TextViewWithPlaceholderText *)v3 setBackgroundColor:v4];

    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    placeholderLabel = v3->_placeholderLabel;
    v3->_placeholderLabel = v5;

    font = [(TextViewWithPlaceholderText *)v3 font];
    [(UILabel *)v3->_placeholderLabel setFont:font];

    v8 = +[UIColor tertiaryLabelColor];
    [(UILabel *)v3->_placeholderLabel setTextColor:v8];

    [(UILabel *)v3->_placeholderLabel setContentMode:5];
    [(UILabel *)v3->_placeholderLabel setNumberOfLines:0];
    [(TextViewWithPlaceholderText *)v3 addSubview:v3->_placeholderLabel];
    if ([(TextViewWithPlaceholderText *)v3 _shouldReverseLayoutDirection])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    [(TextViewWithPlaceholderText *)v3 setTextAlignment:v9];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v3 selector:"_updatePlaceholderVisibility" name:UITextViewTextDidChangeNotification object:0];
  }

  return v3;
}

@end