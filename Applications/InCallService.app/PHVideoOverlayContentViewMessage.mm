@interface PHVideoOverlayContentViewMessage
- (PHVideoOverlayContentViewMessage)initWithTitle:(id)title message:(id)message;
- (void)resetView;
- (void)setupViewWithTitle:(id)title message:(id)message;
- (void)updateConstraints;
@end

@implementation PHVideoOverlayContentViewMessage

- (PHVideoOverlayContentViewMessage)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = PHVideoOverlayContentViewMessage;
  v8 = [(PHVideoOverlayContentViewMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PHVideoOverlayContentViewMessage *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHVideoOverlayContentViewMessage *)v9 setupViewWithTitle:titleCopy message:messageCopy];
  }

  return v9;
}

- (void)setupViewWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v8 = objc_alloc_init(UILabel);
  [(PHVideoOverlayContentViewMessage *)self setTitleLabel:v8];

  titleLabel = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [titleLabel setText:titleCopy];

  titleLabel2 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  v11 = +[UIColor whiteColor];
  [titleLabel2 setTextColor:v11];

  titleLabel3 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [(PHVideoOverlayContentView *)self titleFontSize];
  v13 = [UIFont systemFontOfSize:?];
  [titleLabel3 setFont:v13];

  titleLabel4 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [titleLabel4 setTextAlignment:1];

  titleLabel5 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel6 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [titleLabel6 setAdjustsFontSizeToFitWidth:1];

  v17 = objc_alloc_init(UILabel);
  [(PHVideoOverlayContentViewMessage *)self setMessageLabel:v17];

  messageLabel = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [messageLabel setText:messageCopy];

  messageLabel2 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v20 = +[UIColor whiteColor];
  [messageLabel2 setTextColor:v20];

  messageLabel3 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [(PHVideoOverlayContentView *)self textFontSize];
  v22 = [UIFont systemFontOfSize:?];
  [messageLabel3 setFont:v22];

  messageLabel4 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [messageLabel4 setTextAlignment:1];

  messageLabel5 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [messageLabel5 setNumberOfLines:4];

  messageLabel6 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [messageLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

  messageLabel7 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [messageLabel7 setAdjustsFontSizeToFitWidth:1];

  titleLabel7 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  [(PHVideoOverlayContentViewMessage *)self addSubview:titleLabel7];

  messageLabel8 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  [(PHVideoOverlayContentViewMessage *)self addSubview:messageLabel8];
}

- (void)updateConstraints
{
  v18.receiver = self;
  v18.super_class = PHVideoOverlayContentViewMessage;
  [(PHVideoOverlayContentViewMessage *)&v18 updateConstraints];
  titleLabel = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  v4 = [NSLayoutConstraint constraintWithItem:titleLabel attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v4];

  titleLabel2 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  v6 = [NSLayoutConstraint constraintWithItem:titleLabel2 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v6];

  titleLabel3 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  v8 = [NSLayoutConstraint constraintWithItem:titleLabel3 attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v8];

  messageLabel = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v10 = [NSLayoutConstraint constraintWithItem:messageLabel attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v10];

  messageLabel2 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v12 = [NSLayoutConstraint constraintWithItem:messageLabel2 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v12];

  messageLabel3 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v14 = [NSLayoutConstraint constraintWithItem:messageLabel3 attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v14];

  titleLabel4 = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  messageLabel4 = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  v17 = [NSLayoutConstraint constraintWithItem:titleLabel4 attribute:4 relatedBy:0 toItem:messageLabel4 attribute:3 multiplier:1.0 constant:-6.0];
  [(PHVideoOverlayContentViewMessage *)self addConstraint:v17];
}

- (void)resetView
{
  titleLabel = [(PHVideoOverlayContentViewMessage *)self titleLabel];
  text = [titleLabel text];

  messageLabel = [(PHVideoOverlayContentViewMessage *)self messageLabel];
  text2 = [messageLabel text];

  v7.receiver = self;
  v7.super_class = PHVideoOverlayContentViewMessage;
  [(PHVideoOverlayContentView *)&v7 resetView];
  [(PHVideoOverlayContentViewMessage *)self setupViewWithTitle:text message:text2];
}

@end