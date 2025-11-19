@interface TextViewWithPlaceholderText
- (TextViewWithPlaceholderText)initWithFrame:(CGRect)a3;
- (void)_updatePlaceholderVisibility;
- (void)layoutSubviews;
- (void)setText:(id)a3;
@end

@implementation TextViewWithPlaceholderText

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = TextViewWithPlaceholderText;
  [(TextViewWithPlaceholderText *)&v4 setText:a3];
  [(TextViewWithPlaceholderText *)self _updatePlaceholderVisibility];
}

- (void)_updatePlaceholderVisibility
{
  v3 = [(TextViewWithPlaceholderText *)self placeholderLabel];
  v4 = [v3 isHidden];

  v5 = [(TextViewWithPlaceholderText *)self text];
  v6 = [v5 length] != 0;
  v7 = [(TextViewWithPlaceholderText *)self placeholderLabel];
  [v7 setHidden:v6];

  if (v4)
  {
    v8 = [(TextViewWithPlaceholderText *)self placeholderLabel];
    v9 = [v8 isHidden];

    if ((v9 & 1) == 0)
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
  v3 = [(TextViewWithPlaceholderText *)self placeholderLabel];
  v4 = [v3 isHidden];

  if ((v4 & 1) == 0)
  {
    v5 = [(TextViewWithPlaceholderText *)self placeholderLabel];
    [(TextViewWithPlaceholderText *)self bringSubviewToFront:v5];

    [(TextViewWithPlaceholderText *)self textContainerInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(TextViewWithPlaceholderText *)self textContainer];
    [v14 lineFragmentPadding];
    v16 = v15 + v9;

    v17 = [(TextViewWithPlaceholderText *)self textContainer];
    [v17 lineFragmentPadding];
    v19 = v18;

    [(TextViewWithPlaceholderText *)self bounds];
    v21 = v20 + v16;
    v23 = v22 + v7;
    v25 = v24 - (v19 + v13 + v16);
    v27 = v26 - (v7 + v11);
    v28 = [(TextViewWithPlaceholderText *)self placeholderLabel];
    [v28 sizeThatFits:{v25, 0.0}];
    v30 = v29;

    v31 = [(TextViewWithPlaceholderText *)self placeholderLabel];
    [v31 setFrame:{v21, v23, v25, fmin(v27, v30)}];
  }
}

- (TextViewWithPlaceholderText)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = TextViewWithPlaceholderText;
  v3 = [(TextViewWithPlaceholderText *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TextViewWithPlaceholderText *)v3 setBackgroundColor:v4];

    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    placeholderLabel = v3->_placeholderLabel;
    v3->_placeholderLabel = v5;

    v7 = [(TextViewWithPlaceholderText *)v3 font];
    [(UILabel *)v3->_placeholderLabel setFont:v7];

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