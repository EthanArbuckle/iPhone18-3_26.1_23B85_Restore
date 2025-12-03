@interface IOUIANCriticalUIView
+ (id)_createHeaderLabel;
+ (id)_createMessageLabel;
- (IOUIANCriticalUIView)initWithFrame:(CGRect)frame;
- (IOUIANCriticalUIViewDelegate)delegate;
- (NSString)buttonTitle;
- (NSString)headerText;
- (NSString)messageText;
- (UIImage)image;
- (void)handleButtonAction:(id)action;
- (void)setButtonTitle:(id)title;
- (void)setDebugViews:(BOOL)views;
- (void)setHeaderText:(id)text;
- (void)setImage:(id)image;
- (void)setImageWithSystemImageNamed:(id)named andConfiguration:(id)configuration;
- (void)setMessageText:(id)text;
- (void)updateConstraints;
@end

@implementation IOUIANCriticalUIView

- (IOUIANCriticalUIView)initWithFrame:(CGRect)frame
{
  v81.receiver = self;
  v81.super_class = IOUIANCriticalUIView;
  v3 = [(IOUIANCriticalUIView *)&v81 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIView);
    contentView = v3->_contentView;
    v3->_contentView = v4;

    [(UIView *)v3->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc_init(UIImageView);
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_contentView addSubview:v3->_imageView];
    v8 = +[IOUIANCriticalUIView _createHeaderLabel];
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v8;

    [(UIView *)v3->_contentView addSubview:v3->_headerLabel];
    v10 = +[IOUIANCriticalUIView _createMessageLabel];
    messageLabel = v3->_messageLabel;
    v3->_messageLabel = v10;

    [(UIView *)v3->_contentView addSubview:v3->_messageLabel];
    [(IOUIANCriticalUIView *)v3 addSubview:v3->_contentView];
    contentView = [(IOUIANCriticalUIView *)v3 contentView];
    centerYAnchor = [contentView centerYAnchor];
    centerYAnchor2 = [(IOUIANCriticalUIView *)v3 centerYAnchor];
    v77 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v82[0] = v77;
    contentView2 = [(IOUIANCriticalUIView *)v3 contentView];
    leadingAnchor = [contentView2 leadingAnchor];
    leadingAnchor2 = [(IOUIANCriticalUIView *)v3 leadingAnchor];
    v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v82[1] = v73;
    contentView3 = [(IOUIANCriticalUIView *)v3 contentView];
    trailingAnchor = [contentView3 trailingAnchor];
    trailingAnchor2 = [(IOUIANCriticalUIView *)v3 trailingAnchor];
    v69 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v82[2] = v69;
    contentView4 = [(IOUIANCriticalUIView *)v3 contentView];
    topAnchor = [contentView4 topAnchor];
    imageView = [(IOUIANCriticalUIView *)v3 imageView];
    topAnchor2 = [imageView topAnchor];
    v64 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v82[3] = v64;
    contentView5 = [(IOUIANCriticalUIView *)v3 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    messageLabel = [(IOUIANCriticalUIView *)v3 messageLabel];
    bottomAnchor2 = [messageLabel bottomAnchor];
    v59 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v82[4] = v59;
    imageView2 = [(IOUIANCriticalUIView *)v3 imageView];
    topAnchor3 = [imageView2 topAnchor];
    contentView6 = [(IOUIANCriticalUIView *)v3 contentView];
    topAnchor4 = [contentView6 topAnchor];
    v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v82[5] = v54;
    imageView3 = [(IOUIANCriticalUIView *)v3 imageView];
    centerXAnchor = [imageView3 centerXAnchor];
    contentView7 = [(IOUIANCriticalUIView *)v3 contentView];
    centerXAnchor2 = [contentView7 centerXAnchor];
    v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v82[6] = v49;
    headerLabel = [(IOUIANCriticalUIView *)v3 headerLabel];
    topAnchor5 = [headerLabel topAnchor];
    imageView4 = [(IOUIANCriticalUIView *)v3 imageView];
    bottomAnchor3 = [imageView4 bottomAnchor];
    v44 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:20.0];
    v82[7] = v44;
    headerLabel2 = [(IOUIANCriticalUIView *)v3 headerLabel];
    leadingAnchor3 = [headerLabel2 leadingAnchor];
    contentView8 = [(IOUIANCriticalUIView *)v3 contentView];
    leadingAnchor4 = [contentView8 leadingAnchor];
    v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v82[8] = v39;
    headerLabel3 = [(IOUIANCriticalUIView *)v3 headerLabel];
    trailingAnchor3 = [headerLabel3 trailingAnchor];
    contentView9 = [(IOUIANCriticalUIView *)v3 contentView];
    trailingAnchor4 = [contentView9 trailingAnchor];
    v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v82[9] = v34;
    messageLabel2 = [(IOUIANCriticalUIView *)v3 messageLabel];
    topAnchor6 = [messageLabel2 topAnchor];
    headerLabel4 = [(IOUIANCriticalUIView *)v3 headerLabel];
    bottomAnchor4 = [headerLabel4 bottomAnchor];
    v29 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:16.0];
    v82[10] = v29;
    messageLabel3 = [(IOUIANCriticalUIView *)v3 messageLabel];
    leadingAnchor5 = [messageLabel3 leadingAnchor];
    contentView10 = [(IOUIANCriticalUIView *)v3 contentView];
    leadingAnchor6 = [contentView10 leadingAnchor];
    v24 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v82[11] = v24;
    messageLabel4 = [(IOUIANCriticalUIView *)v3 messageLabel];
    trailingAnchor5 = [messageLabel4 trailingAnchor];
    contentView11 = [(IOUIANCriticalUIView *)v3 contentView];
    trailingAnchor6 = [contentView11 trailingAnchor];
    v14 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v82[12] = v14;
    messageLabel5 = [(IOUIANCriticalUIView *)v3 messageLabel];
    bottomAnchor5 = [messageLabel5 bottomAnchor];
    contentView12 = [(IOUIANCriticalUIView *)v3 contentView];
    bottomAnchor6 = [contentView12 bottomAnchor];
    v19 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v82[13] = v19;
    v20 = [NSArray arrayWithObjects:v82 count:14];
    [NSLayoutConstraint activateConstraints:v20];
  }

  return v3;
}

- (void)setDebugViews:(BOOL)views
{
  self->_debugViews = views;
  if (views)
  {
    v4 = +[UIColor blueColor];
    [(IOUIANCriticalUIView *)self setBackgroundColor:v4];

    contentView2 = +[UIColor redColor];
    contentView = [(IOUIANCriticalUIView *)self contentView];
    [contentView setBackgroundColor:contentView2];
  }

  else
  {
    [(IOUIANCriticalUIView *)self setBackgroundColor:0];
    contentView2 = [(IOUIANCriticalUIView *)self contentView];
    [contentView2 setBackgroundColor:0];
  }
}

- (void)updateConstraints
{
  button = [(IOUIANCriticalUIView *)self button];

  if (button)
  {
    button2 = [(IOUIANCriticalUIView *)self button];
    centerXAnchor = [button2 centerXAnchor];
    centerXAnchor2 = [(IOUIANCriticalUIView *)self centerXAnchor];
    v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v14[0] = v7;
    button3 = [(IOUIANCriticalUIView *)self button];
    bottomAnchor = [button3 bottomAnchor];
    bottomAnchor2 = [(IOUIANCriticalUIView *)self bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-24.0];
    v14[1] = v11;
    v12 = [NSArray arrayWithObjects:v14 count:2];
    [NSLayoutConstraint activateConstraints:v12];
  }

  v13.receiver = self;
  v13.super_class = IOUIANCriticalUIView;
  [(IOUIANCriticalUIView *)&v13 updateConstraints];
}

- (UIImage)image
{
  imageView = [(IOUIANCriticalUIView *)self imageView];
  image = [imageView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(IOUIANCriticalUIView *)self imageView];
  [imageView setImage:imageCopy];
}

- (void)setImageWithSystemImageNamed:(id)named andConfiguration:(id)configuration
{
  v5 = [UIImage systemImageNamed:named withConfiguration:configuration];
  [(IOUIANCriticalUIView *)self setImage:v5];
}

- (NSString)headerText
{
  headerLabel = [(IOUIANCriticalUIView *)self headerLabel];
  text = [headerLabel text];

  return text;
}

- (void)setHeaderText:(id)text
{
  textCopy = text;
  headerLabel = [(IOUIANCriticalUIView *)self headerLabel];
  [headerLabel setText:textCopy];
}

- (NSString)messageText
{
  messageLabel = [(IOUIANCriticalUIView *)self messageLabel];
  text = [messageLabel text];

  return text;
}

- (void)setMessageText:(id)text
{
  textCopy = text;
  messageLabel = [(IOUIANCriticalUIView *)self messageLabel];
  [messageLabel setText:textCopy];
}

- (NSString)buttonTitle
{
  button = [(IOUIANCriticalUIView *)self button];
  titleLabel = [button titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  button = [(IOUIANCriticalUIView *)self button];
  if (titleCopy)
  {

    if (!button)
    {
      v5 = +[IOUIANCriticalUIButton button];
      [(IOUIANCriticalUIView *)self setButton:v5];

      button2 = [(IOUIANCriticalUIView *)self button];
      [button2 setTranslatesAutoresizingMaskIntoConstraints:0];

      button3 = [(IOUIANCriticalUIView *)self button];
      [button3 setDelegate:self];

      button4 = [(IOUIANCriticalUIView *)self button];
      [(IOUIANCriticalUIView *)self addSubview:button4];

      [(IOUIANCriticalUIView *)self setNeedsUpdateConstraints];
    }

    button5 = [(IOUIANCriticalUIView *)self button];
    [button5 setTitle:titleCopy forState:0];
  }

  else
  {

    if (button)
    {
      button6 = [(IOUIANCriticalUIView *)self button];
      [button6 removeFromSuperview];

      [(IOUIANCriticalUIView *)self setButton:0];
      [(IOUIANCriticalUIView *)self setNeedsUpdateConstraints];
    }
  }
}

+ (id)_createHeaderLabel
{
  v2 = objc_opt_new();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setTextAlignment:1];
  v3 = sub_100002CA0(UIFontTextStyleLargeTitle, UIContentSizeCategoryAccessibilityMedium);
  [v2 setFont:v3];

  v4 = +[UIColor whiteColor];
  [v2 setTextColor:v4];

  [v2 setNumberOfLines:2];
  [v2 setAdjustsFontSizeToFitWidth:1];
  [v2 setContentMode:5];

  return v2;
}

+ (id)_createMessageLabel
{
  v2 = objc_opt_new();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setTextAlignment:1];
  v3 = sub_100002CA0(UIFontTextStyleTitle2, UIContentSizeCategoryAccessibilityMedium);
  [v2 setFont:v3];

  v4 = +[UIColor whiteColor];
  [v2 setTextColor:v4];

  [v2 setNumberOfLines:10];
  [v2 setAdjustsFontSizeToFitWidth:1];
  [v2 setContentMode:5];

  return v2;
}

- (void)handleButtonAction:(id)action
{
  delegate = [(IOUIANCriticalUIView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(IOUIANCriticalUIView *)self delegate];
    [delegate2 handleButtonAction:self];
  }
}

- (IOUIANCriticalUIViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end