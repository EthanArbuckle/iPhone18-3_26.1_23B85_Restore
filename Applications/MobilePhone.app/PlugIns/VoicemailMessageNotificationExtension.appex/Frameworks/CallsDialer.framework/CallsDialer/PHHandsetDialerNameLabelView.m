@interface PHHandsetDialerNameLabelView
- (CGSize)intrinsicContentSize;
- (PHHandsetDialerNameLabelView)initWithFrame:(CGRect)a3;
- (void)setFontSize:(double)a3;
- (void)showName:(id)a3 label:(id)a4 animated:(BOOL)a5;
@end

@implementation PHHandsetDialerNameLabelView

- (PHHandsetDialerNameLabelView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = PHHandsetDialerNameLabelView;
  v3 = [(PHHandsetDialerNameLabelView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHHandsetDialerNameLabelView *)v3 setFontSize:11.0];
    v5 = +[UIColor clearColor];
    [(PHHandsetDialerNameLabelView *)v4 setBackgroundColor:v5];

    v6 = objc_alloc_init(UILabel);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setText:&stru_50D80];
    v7 = +[UIColor clearColor];
    [v6 setBackgroundColor:v7];

    [v6 setOpaque:0];
    v8 = [(PHHandsetDialerNameLabelView *)v4 textColor];
    [v6 setTextColor:v8];

    [v6 setTextAlignment:1];
    [(PHHandsetDialerNameLabelView *)v4 fontSize];
    v9 = [UIFont systemFontOfSize:?];
    [v6 setFont:v9];

    [v6 setAlpha:0.0];
    LODWORD(v10) = 1148846080;
    [v6 setContentCompressionResistancePriority:0 forAxis:v10];
    [(PHHandsetDialerNameLabelView *)v4 addSubview:v6];
    [(PHHandsetDialerNameLabelView *)v4 setNameAndLabelLabel:v6];
    v17 = @"nameAndLabelLabel";
    v11 = [(PHHandsetDialerNameLabelView *)v4 nameAndLabelLabel];
    v18 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    v13 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[nameAndLabelLabel]|" options:0 metrics:0 views:v12];
    [(PHHandsetDialerNameLabelView *)v4 addConstraints:v13];

    v14 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[nameAndLabelLabel]|" options:0 metrics:0 views:v12];
    [(PHHandsetDialerNameLabelView *)v4 addConstraints:v14];

    [(PHHandsetDialerNameLabelView *)v4 invalidateIntrinsicContentSize];
  }

  return v4;
}

- (void)setFontSize:(double)a3
{
  self->_fontSize = a3;
  v5 = [(PHHandsetDialerNameLabelView *)self displayedName];
  v4 = [(PHHandsetDialerNameLabelView *)self displayedLabel];
  [(PHHandsetDialerNameLabelView *)self showName:v5 label:v4 animated:0];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_nameAndLabelLabel intrinsicContentSize];
  v3 = 25.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)showName:(id)a3 label:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
    v11 = [NSString stringWithFormat:@" %@", v9];
  }

  else
  {
    v11 = &stru_50D80;
  }

  [(PHHandsetDialerNameLabelView *)self setDisplayedName:v8];
  [(PHHandsetDialerNameLabelView *)self setDisplayedLabel:v11];
  v12 = [NSMutableAttributedString alloc];
  v13 = [NSString stringWithFormat:@"%@ %@", v8, v11];
  v14 = [v12 initWithString:v13];

  [(PHHandsetDialerNameLabelView *)self fontSize];
  v15 = [UIFont systemFontOfSize:?];
  [(PHHandsetDialerNameLabelView *)self fontSize];
  v16 = [UIFont boldSystemFontOfSize:?];
  [v14 addAttribute:NSFontAttributeName value:v15 range:{0, objc_msgSend(v8, "length")}];
  [v14 addAttribute:NSFontAttributeName value:v16 range:{objc_msgSend(v14, "length") - -[__CFString length](v11, "length"), -[__CFString length](v11, "length")}];
  if (![v8 length])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke_2;
    v22[3] = &unk_4C668;
    v22[4] = self;
    v18 = objc_retainBlock(v22);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke_3;
    v20[3] = &unk_4C690;
    v20[4] = self;
    v21 = v14;
    v19 = objc_retainBlock(v20);

    if (v5)
    {
      goto LABEL_6;
    }

LABEL_8:
    (v18[2])(v18);
    goto LABEL_9;
  }

  v17 = [(PHHandsetDialerNameLabelView *)self nameAndLabelLabel];
  [v17 setAttributedText:v14];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke;
  v23[3] = &unk_4C668;
  v23[4] = self;
  v18 = objc_retainBlock(v23);
  v19 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  [UIView animateWithDuration:v18 animations:v19 completion:0.200000003];
LABEL_9:
  [(PHHandsetDialerNameLabelView *)self invalidateIntrinsicContentSize];
}

void __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) nameAndLabelLabel];
  [v1 setAlpha:1.0];
}

void __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) nameAndLabelLabel];
  [v1 setAlpha:0.0];
}

void __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) nameAndLabelLabel];
  [v2 setAttributedText:v1];
}

@end