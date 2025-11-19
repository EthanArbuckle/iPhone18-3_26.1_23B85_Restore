@interface PHVideoOverlayContentViewMessage
- (PHVideoOverlayContentViewMessage)initWithTitle:(id)a3 message:(id)a4;
- (void)resetView;
- (void)setupViewWithTitle:(id)a3 message:(id)a4;
- (void)updateConstraints;
@end

@implementation PHVideoOverlayContentViewMessage

- (PHVideoOverlayContentViewMessage)initWithTitle:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PHVideoOverlayContentViewMessage;
  v8 = [(PHVideoOverlayContentViewMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PHVideoOverlayContentViewMessage *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHVideoOverlayContentViewMessage *)v9 setupViewWithTitle:v6 message:v7];
  }

  return v9;
}

- (void)setupViewWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(UILabel);
  [(PHVideoOverlayContentViewMessage *)self setTitleLabel:v8];

  v9 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [v9 setText:v7];

  v10 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  v11 = +[UIColor whiteColor];
  [v10 setTextColor:v11];

  v12 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [(PHVideoOverlayContentView *)self titleFontSize];
  v13 = [UIFont systemFontOfSize:?];
  [v12 setFont:v13];

  v14 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [v14 setTextAlignment:1];

  v15 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [v16 setAdjustsFontSizeToFitWidth:1];

  v17 = objc_alloc_init(UILabel);
  [(PHVideoOverlayContentViewMessage *)self setMessageLabel:v17];

  v18 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [v18 setText:v6];

  v19 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v20 = +[UIColor whiteColor];
  [v19 setTextColor:v20];

  v21 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [(PHVideoOverlayContentView *)self textFontSize];
  v22 = [UIFont systemFontOfSize:?];
  [v21 setFont:v22];

  v23 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [v23 setTextAlignment:1];

  v24 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [v24 setNumberOfLines:4];

  v25 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [v26 setAdjustsFontSizeToFitWidth:1];

  v27 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [(PHVideoOverlayContentViewMessage *)self addSubview:v27];

  v28 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [(PHVideoOverlayContentViewMessage *)self addSubview:v28];
}

- (void)updateConstraints
{
  v18.receiver = self;
  v18.super_class = PHVideoOverlayContentViewMessage;
  [(PHVideoOverlayContentViewMessage *)&v18 updateConstraints];
  v3 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  v4 = [NSLayoutConstraint constraintWithItem:v3 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v4];

  v5 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  v6 = [NSLayoutConstraint constraintWithItem:v5 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v6];

  v7 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  v8 = [NSLayoutConstraint constraintWithItem:v7 attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v8];

  v9 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v10 = [NSLayoutConstraint constraintWithItem:v9 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v10];

  v11 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v12 = [NSLayoutConstraint constraintWithItem:v11 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v12];

  v13 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v14 = [NSLayoutConstraint constraintWithItem:v13 attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v14];

  v15 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  v16 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v17 = [NSLayoutConstraint constraintWithItem:v15 attribute:4 relatedBy:0 toItem:v16 attribute:3 multiplier:1.0 constant:-6.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v17];
}

- (void)resetView
{
  v3 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  v4 = [v3 text];

  v5 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v6 = [v5 text];

  v7.receiver = self;
  v7.super_class = PHVideoOverlayContentViewMessage;
  [(PHVideoOverlayContentView *)&v7 resetView];
  [(PHVideoOverlayContentViewMessage *)self setupViewWithTitle:v4 message:v6];
}

@end