@interface HODiscoverConnectionIssueOverlayView
- (HODiscoverConnectionIssueOverlayView)initWithFrame:(CGRect)frame withDelegate:(id)delegate;
- (HODiscoverConnectionIssueOverlayViewDelegate)delegate;
- (void)_retryButtonPressed:(id)pressed;
- (void)_setupCommonViewAppearance;
- (void)setConnectionIssueType:(unint64_t)type;
- (void)updateConstraints;
@end

@implementation HODiscoverConnectionIssueOverlayView

- (HODiscoverConnectionIssueOverlayView)initWithFrame:(CGRect)frame withDelegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = HODiscoverConnectionIssueOverlayView;
  height = [(HODiscoverConnectionIssueOverlayView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_delegate, delegateCopy);
    [(HODiscoverConnectionIssueOverlayView *)v11 _setupCommonViewAppearance];
  }

  return v11;
}

- (void)_setupCommonViewAppearance
{
  v3 = [HUIconView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:4 contentMode:{CGRectZero.origin.x, y, width, height}];
  networkIconView = self->_networkIconView;
  self->_networkIconView = v7;

  v9 = +[UIColor systemGrayColor];
  [(HUIconView *)self->_networkIconView setTintColor:v9];

  [(HUIconView *)self->_networkIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HODiscoverConnectionIssueOverlayView *)self addSubview:self->_networkIconView];
  v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v10;

  v12 = +[UIColor systemGrayColor];
  [(UILabel *)self->_descriptionLabel setTextColor:v12];

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_descriptionLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  [(UILabel *)self->_descriptionLabel setLineBreakMode:0];
  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_descriptionLabel setFont:v13];

  [(UILabel *)self->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
  [(HODiscoverConnectionIssueOverlayView *)self addSubview:self->_descriptionLabel];
  v14 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  retryButton = self->_retryButton;
  self->_retryButton = v14;

  [(UIButton *)self->_retryButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = self->_retryButton;
  v17 = sub_1000134E8(@"HODiscoverConnectionIssueOverlayViewRetryButtonTitle");
  [(UIButton *)v16 setTitle:v17 forState:0];

  v18 = self->_retryButton;
  v19 = +[UIColor systemOrangeColor];
  [(UIButton *)v18 setTitleColor:v19 forState:0];

  [(UIButton *)self->_retryButton sizeToFit];
  v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  titleLabel = [(UIButton *)self->_retryButton titleLabel];
  [titleLabel setFont:v20];

  titleLabel2 = [(UIButton *)self->_retryButton titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  titleLabel3 = [(UIButton *)self->_retryButton titleLabel];
  [titleLabel3 setAdjustsFontSizeToFitWidth:1];

  [(UIButton *)self->_retryButton addTarget:self action:"_retryButtonPressed:" forEvents:64];
  [(HODiscoverConnectionIssueOverlayView *)self addSubview:self->_retryButton];
  v24 = +[UIColor clearColor];
  [(HODiscoverConnectionIssueOverlayView *)self setBackgroundColor:v24];
}

- (void)updateConstraints
{
  layoutConstraints = [(HODiscoverConnectionIssueOverlayView *)self layoutConstraints];

  if (!layoutConstraints)
  {
    v4 = +[NSMutableArray array];
    networkIconView = [(HODiscoverConnectionIssueOverlayView *)self networkIconView];
    bottomAnchor = [networkIconView bottomAnchor];
    descriptionLabel = [(HODiscoverConnectionIssueOverlayView *)self descriptionLabel];
    topAnchor = [descriptionLabel topAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-12.0];
    [v4 addObject:v9];

    networkIconView2 = [(HODiscoverConnectionIssueOverlayView *)self networkIconView];
    centerXAnchor = [networkIconView2 centerXAnchor];
    centerXAnchor2 = [(HODiscoverConnectionIssueOverlayView *)self centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v4 addObject:v13];

    networkIconView3 = [(HODiscoverConnectionIssueOverlayView *)self networkIconView];
    widthAnchor = [networkIconView3 widthAnchor];
    v16 = [widthAnchor constraintEqualToConstant:50.0];
    [v4 addObject:v16];

    networkIconView4 = [(HODiscoverConnectionIssueOverlayView *)self networkIconView];
    heightAnchor = [networkIconView4 heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:50.0];
    [v4 addObject:v19];

    descriptionLabel2 = [(HODiscoverConnectionIssueOverlayView *)self descriptionLabel];
    centerXAnchor3 = [descriptionLabel2 centerXAnchor];
    centerXAnchor4 = [(HODiscoverConnectionIssueOverlayView *)self centerXAnchor];
    v23 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v4 addObject:v23];

    descriptionLabel3 = [(HODiscoverConnectionIssueOverlayView *)self descriptionLabel];
    centerYAnchor = [descriptionLabel3 centerYAnchor];
    centerYAnchor2 = [(HODiscoverConnectionIssueOverlayView *)self centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v4 addObject:v27];

    descriptionLabel4 = [(HODiscoverConnectionIssueOverlayView *)self descriptionLabel];
    leadingAnchor = [descriptionLabel4 leadingAnchor];
    leadingAnchor2 = [(HODiscoverConnectionIssueOverlayView *)self leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    [v4 addObject:v31];

    descriptionLabel5 = [(HODiscoverConnectionIssueOverlayView *)self descriptionLabel];
    trailingAnchor = [descriptionLabel5 trailingAnchor];
    trailingAnchor2 = [(HODiscoverConnectionIssueOverlayView *)self trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    [v4 addObject:v35];

    retryButton = [(HODiscoverConnectionIssueOverlayView *)self retryButton];
    topAnchor2 = [retryButton topAnchor];
    descriptionLabel6 = [(HODiscoverConnectionIssueOverlayView *)self descriptionLabel];
    bottomAnchor2 = [descriptionLabel6 bottomAnchor];
    v40 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
    [v4 addObject:v40];

    retryButton2 = [(HODiscoverConnectionIssueOverlayView *)self retryButton];
    centerXAnchor5 = [retryButton2 centerXAnchor];
    centerXAnchor6 = [(HODiscoverConnectionIssueOverlayView *)self centerXAnchor];
    v44 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v4 addObject:v44];

    [NSLayoutConstraint activateConstraints:v4];
    [(HODiscoverConnectionIssueOverlayView *)self setLayoutConstraints:v4];
  }

  v45.receiver = self;
  v45.super_class = HODiscoverConnectionIssueOverlayView;
  [(HODiscoverConnectionIssueOverlayView *)&v45 updateConstraints];
}

- (void)setConnectionIssueType:(unint64_t)type
{
  if (self->_connectionIssueType == type)
  {
    return;
  }

  self->_connectionIssueType = type;
  v15 = [UIImageSymbolConfiguration configurationWithPointSize:50.0];
  if (type < 2)
  {
    networkIconView = [(HODiscoverConnectionIssueOverlayView *)self networkIconView];
    v7 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"wifi.slash" configuration:v15];
    [networkIconView updateWithIconDescriptor:v7 displayStyle:1 animated:0];

    retryButton = [(HODiscoverConnectionIssueOverlayView *)self retryButton];
    [retryButton setHidden:1];

    if (+[HFUtilities useWLANInsteadOfWiFi])
    {
      v9 = @"HODiscoverConnectionIssueNetworkUnavailableDescription_WLAN";
    }

    else
    {
      v9 = @"HODiscoverConnectionIssueNetworkUnavailableDescription_WIFI";
    }

    goto LABEL_8;
  }

  if (type == 2)
  {
    networkIconView2 = [(HODiscoverConnectionIssueOverlayView *)self networkIconView];
    v11 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"exclamationmark.icloud.fill" configuration:v15];
    [networkIconView2 updateWithIconDescriptor:v11 displayStyle:1 animated:0];

    retryButton2 = [(HODiscoverConnectionIssueOverlayView *)self retryButton];
    [retryButton2 setHidden:0];

    v9 = @"HODiscoverConnectionIssueServerUnavailableDescription";
LABEL_8:
    v13 = sub_1000134E8(v9);
    descriptionLabel = [(HODiscoverConnectionIssueOverlayView *)self descriptionLabel];
    [descriptionLabel setText:v13];
  }

  [(HODiscoverConnectionIssueOverlayView *)self setNeedsUpdateConstraints];
}

- (void)_retryButtonPressed:(id)pressed
{
  delegate = [(HODiscoverConnectionIssueOverlayView *)self delegate];

  if (delegate)
  {
    delegate2 = [(HODiscoverConnectionIssueOverlayView *)self delegate];
    [delegate2 connectionIssueOverlayRetryButtonPressed];
  }
}

- (HODiscoverConnectionIssueOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end