@interface AMSUILoadingView
- (AMSUILoadingView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setLoadingText:(id)text;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation AMSUILoadingView

- (AMSUILoadingView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = AMSUILoadingView;
  v3 = [(AMSUICommonView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicator = v3->_activityIndicator;
    v3->_activityIndicator = v4;

    [(UIActivityIndicatorView *)v3->_activityIndicator setHidesWhenStopped:0];
    [(AMSUILoadingView *)v3 addSubview:v3->_activityIndicator];
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v3->_label;
    v3->_label = v7;

    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
    [(UILabel *)v3->_label setFont:v9];

    [(UILabel *)v3->_label setTextAlignment:1];
    [(UILabel *)v3->_label setNumberOfLines:0];
    [(UILabel *)v3->_label setText:&stru_1F3921360];
    [(AMSUILoadingView *)v3 addSubview:v3->_label];
  }

  return v3;
}

- (void)setLoadingText:(id)text
{
  textCopy = &stru_1F3921360;
  if (text)
  {
    textCopy = text;
  }

  v6 = textCopy;
  textCopy2 = text;
  label = [(AMSUILoadingView *)self label];
  [label setText:v6];
}

- (void)startAnimating
{
  activityIndicator = [(AMSUILoadingView *)self activityIndicator];
  [activityIndicator startAnimating];
}

- (void)stopAnimating
{
  activityIndicator = [(AMSUILoadingView *)self activityIndicator];
  [activityIndicator stopAnimating];
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = AMSUILoadingView;
  [(AMSUILoadingView *)&v33 layoutSubviews];
  [(AMSUILoadingView *)self frame];
  v4 = v3;
  v6 = v5;
  [(AMSUILoadingView *)self safeAreaInsets];
  v9 = v4 - (v7 + v8);
  v12 = v6 - (v10 + v11);
  v13 = v9 + -30.0;
  activityIndicator = [(AMSUILoadingView *)self activityIndicator];
  [activityIndicator sizeThatFits:{v13, v12}];
  v16 = v15;
  v18 = v17;

  label = [(AMSUILoadingView *)self label];
  [label sizeThatFits:{v13, v12}];
  v21 = v20;
  v23 = v22;

  [(AMSUILoadingView *)self bounds];
  v25 = v24 * 0.5 - (v18 + v23 + 7.0) * 0.5;
  [(AMSUILoadingView *)self bounds];
  v27 = v26 * 0.5 - v16 * 0.5;
  activityIndicator2 = [(AMSUILoadingView *)self activityIndicator];
  [activityIndicator2 setFrame:{v27, v25, v16, v18}];

  v29 = v18 + 7.0 + v25;
  [(AMSUILoadingView *)self bounds];
  v31 = v30 * 0.5 - v21 * 0.5;
  label2 = [(AMSUILoadingView *)self label];
  [label2 setFrame:{v31, v29, v21, v23}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  activityIndicator = [(AMSUILoadingView *)self activityIndicator];
  [activityIndicator sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  label = [(AMSUILoadingView *)self label];
  [label sizeThatFits:{width, height}];
  v13 = v12;
  v15 = v14;

  if (v8 >= v13)
  {
    v16 = v8;
  }

  else
  {
    v16 = v13;
  }

  v17 = v10 + 7.0 + v15;
  result.height = v17;
  result.width = v16;
  return result;
}

@end