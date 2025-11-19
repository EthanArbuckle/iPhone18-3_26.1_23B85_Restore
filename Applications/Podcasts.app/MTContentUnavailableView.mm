@interface MTContentUnavailableView
+ (id)messageLabelWithFrame:(CGRect)a3;
- (MTContentUnavailableView)initWithFrame:(CGRect)a3 title:(id)a4 message:(id)a5;
- (void)_buttonClick;
- (void)_sizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setButtonText:(id)a3;
- (void)setColorTheme:(id)a3;
- (void)setMessage:(id)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation MTContentUnavailableView

+ (id)messageLabelWithFrame:(CGRect)a3
{
  v3 = [[UILabel alloc] initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  [v3 setTextAlignment:1];
  [v3 setOpaque:0];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [UIFont mt_preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 setFont:v5];

  [v3 setNumberOfLines:0];
  [v3 setAlpha:0.4];
  v6 = +[UIColor blackColor];
  [v3 setTextColor:v6];

  return v3;
}

- (MTContentUnavailableView)initWithFrame:(CGRect)a3 title:(id)a4 message:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = MTContentUnavailableView;
  v13 = [(MTContentUnavailableView *)&v21 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    [(MTContentUnavailableView *)v13 setAutoresizingMask:18];
    v15 = [UIView alloc];
    [(MTContentUnavailableView *)v14 bounds];
    v16 = [v15 initWithFrame:{0.0, 0.0, CGRectGetWidth(v22), 0.0}];
    containerView = v14->_containerView;
    v14->_containerView = v16;

    [(MTContentUnavailableView *)v14 addSubview:v14->_containerView];
    [(MTContentUnavailableView *)v14 setTitle:v11];
    [(MTContentUnavailableView *)v14 setMessage:v12];
    v18 = +[UIColor whiteColor];
    [(MTContentUnavailableView *)v14 setBackgroundColor:v18];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v14 selector:"_sizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v14;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = MTContentUnavailableView;
  [(MTContentUnavailableView *)&v4 dealloc];
}

- (void)setColorTheme:(id)a3
{
  v15 = a3;
  objc_storeStrong(&self->_colorTheme, a3);
  if (v15)
  {
    v5 = [UIColor primaryTextColorForTheme:v15];
    p_titleLabel = &self->_titleLabel;
    [(UILabel *)self->_titleLabel setTextColor:v5];

    v7 = [UIColor secondaryTextColorForTheme:v15];
    p_messageLabel = &self->_messageLabel;
    v9 = 1.0;
    v10 = &self->_messageLabel;
  }

  else
  {
    v7 = +[UIColor blackColor];
    v10 = &self->_messageLabel;
    [(UILabel *)self->_messageLabel setTextColor:v7];
    p_messageLabel = &self->_titleLabel;
    v9 = 0.400000006;
    p_titleLabel = &self->_titleLabel;
  }

  [(UILabel *)*p_messageLabel setTextColor:v7];

  [(UILabel *)*v10 setAlpha:v9];
  [(UILabel *)*p_titleLabel setAlpha:v9];
  v11 = [v15 backgroundColor];
  if (v11)
  {
    [(MTContentUnavailableView *)self setBackgroundColor:v11];
  }

  else
  {
    v12 = +[UIColor whiteColor];
    [(MTContentUnavailableView *)self setBackgroundColor:v12];
  }

  button = self->_button;
  v14 = [UIColor tintColorForTheme:v15];
  [(UIButton *)button setTitleColor:v14 forState:0];
}

- (void)setButtonText:(id)a3
{
  v12 = a3;
  if (![(NSString *)self->_buttonText isEqualToString:?])
  {
    objc_storeStrong(&self->_buttonText, a3);
    v5 = [UIButton buttonWithType:1];
    button = self->_button;
    self->_button = v5;

    [(UIButton *)self->_button setTitle:v12 forState:0];
    [(UIButton *)self->_button addTarget:self action:"_buttonClick" forControlEvents:64];
    v7 = self->_button;
    v8 = +[UIColor appTintColor];
    [(UIButton *)v7 setTitleColor:v8 forState:0];

    v9 = [UIFont mt_preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v10 = [(UIButton *)self->_button titleLabel];
    [v10 setFont:v9];

    v11 = [(UIButton *)self->_button titleLabel];
    [v11 setTextAlignment:1];

    [(UIButton *)self->_button sizeToFit];
    [(UIView *)self->_containerView addSubview:self->_button];
  }
}

- (void)setPlaceholderImage:(id)a3
{
  v7 = a3;
  if (([(UIImage *)self->_placeholderImage isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_placeholderImage, a3);
    v5 = [[UIImageView alloc] initWithImage:v7];
    imageView = self->_imageView;
    self->_imageView = v5;

    [(UIView *)self->_containerView addSubview:self->_imageView];
  }

  [(MTContentUnavailableView *)self setNeedsLayout];
}

- (void)setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v4 = [a3 copy];
    title = self->_title;
    self->_title = v4;

    v6 = self->_title;
    if (v6 && !self->_titleLabel)
    {
      v7 = [UILabel alloc];
      [(UIView *)self->_containerView bounds];
      v8 = [v7 initWithFrame:{0.0, 0.0, CGRectGetWidth(v14), 20.0}];
      titleLabel = self->_titleLabel;
      self->_titleLabel = v8;

      [(UILabel *)self->_titleLabel setTextAlignment:1];
      v10 = +[UIColor clearColor];
      [(UILabel *)self->_titleLabel setBackgroundColor:v10];

      [(UILabel *)self->_titleLabel setOpaque:0];
      v11 = [UIFont mt_preferredFontForTextStyle:UIFontTextStyleHeadline];
      [(UILabel *)self->_titleLabel setFont:v11];

      [(UILabel *)self->_titleLabel setNumberOfLines:0];
      v12 = +[UIColor blackColor];
      [(UILabel *)self->_titleLabel setTextColor:v12];

      [(UILabel *)self->_titleLabel setAlpha:0.4];
      [(UIView *)self->_containerView addSubview:self->_titleLabel];
      v6 = self->_title;
    }

    [(UILabel *)self->_titleLabel setText:v6];

    [(MTContentUnavailableView *)self setNeedsLayout];
  }
}

- (void)setMessage:(id)a3
{
  if (self->_message != a3)
  {
    v4 = [a3 copy];
    message = self->_message;
    self->_message = v4;

    v6 = self->_message;
    if (v6 && !self->_messageLabel)
    {
      v7 = objc_opt_class();
      [(UIView *)self->_containerView bounds];
      v8 = [v7 messageLabelWithFrame:{0.0, 0.0, CGRectGetWidth(v11), 20.0}];
      messageLabel = self->_messageLabel;
      self->_messageLabel = v8;

      [(UIView *)self->_containerView addSubview:self->_messageLabel];
      v6 = self->_message;
    }

    [(UILabel *)self->_messageLabel setText:v6];

    [(MTContentUnavailableView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v62.receiver = self;
  v62.super_class = MTContentUnavailableView;
  [(MTContentUnavailableView *)&v62 layoutSubviews];
  [(MTContentUnavailableView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_containerView frame];
  v12 = v11;
  v14 = v13;
  v63.origin.x = v4;
  v63.origin.y = v6;
  v63.size.width = v8;
  v63.size.height = v10;
  if (CGRectGetWidth(v63) >= 478.0)
  {
    IMRectCenteredXInRectScale();
    v12 = v17;
    v15 = v18;
    v14 = v19;
  }

  else
  {
    v64.origin.x = v4;
    v64.origin.y = v6;
    v64.size.width = v8;
    v64.size.height = v10;
    v15 = CGRectGetWidth(v64) + -30.0;
    v16 = 15.0;
  }

  v20 = v12;
  v21 = v15;
  v22 = v14;
  Width = CGRectGetWidth(*&v16);
  [(UIImageView *)self->_imageView frame];
  IMRectCenteredXInRectScale();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(UIImageView *)self->_imageView setFrame:0];
  [(UILabel *)self->_titleLabel frame];
  if (self->_imageView)
  {
    v65.origin.x = v24;
    v65.origin.y = v26;
    v65.size.width = v28;
    v65.size.height = v30;
    CGRectGetMaxY(v65);
  }

  [(UILabel *)self->_titleLabel sizeThatFits:Width, 1.79769313e308];
  IMRectCenteredXInRectScale();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [(UILabel *)self->_titleLabel setFrame:0];
  [(UILabel *)self->_messageLabel frame];
  if (self->_title)
  {
    v66.origin.x = v32;
    v66.origin.y = v34;
    v66.size.width = v36;
    v66.size.height = v38;
    CGRectGetMaxY(v66);
  }

  [(UILabel *)self->_messageLabel sizeThatFits:Width, 1.79769313e308];
  IMRectCenteredXInRectScale();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v61 = v45;
  [(UILabel *)self->_messageLabel setFrame:0];
  [(UIButton *)self->_button frame];
  v67.origin.x = v46;
  v67.origin.y = v40;
  v67.size.width = v42;
  v67.size.height = v44;
  CGRectGetMaxY(v67);
  IMRectCenteredXInRectScale();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [(UIButton *)self->_button setFrame:0];
  button = self->_button;
  v56 = v61;
  if (button)
  {
    v56 = v48;
    v57 = v50;
  }

  else
  {
    v57 = v40;
  }

  if (button)
  {
    v58 = v52;
  }

  else
  {
    v58 = v42;
  }

  if (button)
  {
    v59 = v54;
  }

  else
  {
    v59 = v44;
  }

  CGRectGetMaxY(*&v56);
  IMRectCenteredYInRectScale();
  [(UIView *)self->_containerView setFrame:0];
}

- (void)_buttonClick
{
  v3 = [(MTContentUnavailableView *)self buttonCallback];

  if (v3)
  {
    v4 = [(MTContentUnavailableView *)self buttonCallback];
    v4[2]();
  }
}

- (void)_sizeCategoryDidChange:(id)a3
{
  v4 = [UIFont mt_preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)self->_titleLabel setFont:v4];

  v5 = [UIFont mt_preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v6 = [(UIButton *)self->_button titleLabel];
  [v6 setFont:v5];

  [(UIButton *)self->_button sizeToFit];
  v7 = [UIFont mt_preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_messageLabel setFont:v7];

  [(MTContentUnavailableView *)self setNeedsLayout];
}

@end