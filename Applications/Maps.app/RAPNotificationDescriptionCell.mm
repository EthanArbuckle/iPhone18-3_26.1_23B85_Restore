@interface RAPNotificationDescriptionCell
+ (id)identifier;
- (RAPNotificationDescriptionCell)initWithFrame:(CGRect)frame;
- (RAPNotificationDescriptionCellDelegate)delegate;
- (void)_linkButtonClick;
- (void)_setupConstraints;
- (void)_setupLinkButtonIfNeeded;
- (void)_setupViews;
- (void)setViewModel:(id)model;
@end

@implementation RAPNotificationDescriptionCell

- (RAPNotificationDescriptionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel == modelCopy)
  {
    goto LABEL_12;
  }

  v25 = modelCopy;
  objc_storeStrong(&self->_viewModel, model);
  imageName = [(RAPNotificationDescriptionViewModel *)v25 imageName];
  v7 = [imageName length];
  v8 = v7 == 0;
  if (v7)
  {
    imageBackgroundColor = [(RAPNotificationDescriptionViewModel *)v25 imageBackgroundColor];

    if (!imageBackgroundColor)
    {
      v8 = 1;
      goto LABEL_7;
    }

    imageName2 = [(RAPNotificationDescriptionViewModel *)v25 imageName];
    v11 = [UIImageSymbolConfiguration configurationWithWeight:6];
    v12 = [UIImage systemImageNamed:imageName2 withConfiguration:v11];
    statusIcon = [(RAPNotificationDescriptionCell *)self statusIcon];
    [statusIcon setImage:v12];

    imageName = [(RAPNotificationDescriptionViewModel *)v25 imageBackgroundColor];
    statusIconBackground = [(RAPNotificationDescriptionCell *)self statusIconBackground];
    [statusIconBackground setBackgroundColor:imageName];
  }

LABEL_7:
  statusIconBackground2 = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  [statusIconBackground2 setHidden:v8];

  titleText = [(RAPNotificationDescriptionViewModel *)v25 titleText];
  v17 = [titleText length];

  if (v17)
  {
    titleText2 = [(RAPNotificationDescriptionViewModel *)v25 titleText];
    titleLabel = [(RAPNotificationDescriptionCell *)self titleLabel];
    [titleLabel setText:titleText2];
  }

  [(UIStackView *)self->_descriptionTitleContainer setHidden:v17 == 0];
  descriptionText = [(RAPNotificationDescriptionViewModel *)v25 descriptionText];
  v21 = [descriptionText length];

  if (v21)
  {
    descriptionText2 = [(RAPNotificationDescriptionViewModel *)v25 descriptionText];
    descriptionLabel = [(RAPNotificationDescriptionCell *)self descriptionLabel];
    [descriptionLabel setText:descriptionText2];
  }

  descriptionLabel2 = [(RAPNotificationDescriptionCell *)self descriptionLabel];
  [descriptionLabel2 setHidden:v21 == 0];

  [(RAPNotificationDescriptionCell *)self _setupLinkButtonIfNeeded];
  modelCopy = v25;
LABEL_12:
}

- (void)_linkButtonClick
{
  delegate = [(RAPNotificationDescriptionCell *)self delegate];
  [delegate descriptionCellLinkButtonClick:self];
}

- (void)_setupLinkButtonIfNeeded
{
  viewModel = [(RAPNotificationDescriptionCell *)self viewModel];
  shouldDisplayLink = [viewModel shouldDisplayLink];

  linkButton = [(RAPNotificationDescriptionCell *)self linkButton];
  v11 = linkButton;
  if (shouldDisplayLink)
  {

    if (v11)
    {
      return;
    }

    v11 = +[UIButtonConfiguration plainButtonConfiguration];
    viewModel2 = [(RAPNotificationDescriptionCell *)self viewModel];
    linkButtonText = [viewModel2 linkButtonText];
    [v11 setTitle:linkButtonText];

    v8 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:14.0];
    v9 = [UIImage systemImageNamed:@"arrow.up.right" withConfiguration:v8];
    [v11 setImage:v9];

    [v11 setImagePlacement:8];
    [v11 setImagePadding:3.0];
    [v11 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
    v10 = [UIButton buttonWithType:1];
    [v10 setConfiguration:v11];
    [v10 setPreferredBehavioralStyle:1];
    [v10 addTarget:self action:"_linkButtonClick" forControlEvents:0x2000];
    [(UIStackView *)self->_containerView addArrangedSubview:v10];
    [(RAPNotificationDescriptionCell *)self setLinkButton:v10];
  }

  else
  {
    [linkButton removeFromSuperview];
  }
}

- (void)_setupConstraints
{
  topAnchor = [(UIStackView *)self->_containerView topAnchor];
  contentView = [(RAPNotificationDescriptionCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v46[0] = v42;
  leadingAnchor = [(UIStackView *)self->_containerView leadingAnchor];
  contentView2 = [(RAPNotificationDescriptionCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v46[1] = v38;
  trailingAnchor = [(UIStackView *)self->_containerView trailingAnchor];
  contentView3 = [(RAPNotificationDescriptionCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v46[2] = v34;
  bottomAnchor = [(UIStackView *)self->_containerView bottomAnchor];
  contentView4 = [(RAPNotificationDescriptionCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  v46[3] = v30;
  statusIconBackground = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  heightAnchor = [statusIconBackground heightAnchor];
  statusIconBackground2 = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  widthAnchor = [statusIconBackground2 widthAnchor];
  v25 = [heightAnchor constraintEqualToAnchor:widthAnchor];
  v46[4] = v25;
  statusIconBackground3 = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  heightAnchor2 = [statusIconBackground3 heightAnchor];
  v22 = [heightAnchor2 constraintEqualToConstant:24.0];
  v46[5] = v22;
  statusIcon = [(RAPNotificationDescriptionCell *)self statusIcon];
  centerXAnchor = [statusIcon centerXAnchor];
  statusIconBackground4 = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  centerXAnchor2 = [statusIconBackground4 centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v46[6] = v17;
  statusIcon2 = [(RAPNotificationDescriptionCell *)self statusIcon];
  centerYAnchor = [statusIcon2 centerYAnchor];
  statusIconBackground5 = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  centerYAnchor2 = [statusIconBackground5 centerYAnchor];
  v3 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v46[7] = v3;
  statusIcon3 = [(RAPNotificationDescriptionCell *)self statusIcon];
  widthAnchor2 = [statusIcon3 widthAnchor];
  statusIcon4 = [(RAPNotificationDescriptionCell *)self statusIcon];
  heightAnchor3 = [statusIcon4 heightAnchor];
  v8 = [widthAnchor2 constraintEqualToAnchor:heightAnchor3];
  v46[8] = v8;
  statusIcon5 = [(RAPNotificationDescriptionCell *)self statusIcon];
  heightAnchor4 = [statusIcon5 heightAnchor];
  v11 = [heightAnchor4 constraintEqualToConstant:16.0];
  v46[9] = v11;
  v12 = [NSArray arrayWithObjects:v46 count:10];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  v3 = [UIStackView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  containerView = self->_containerView;
  self->_containerView = v7;

  [(UIStackView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(RAPNotificationDescriptionCell *)self contentView];
  [contentView addSubview:self->_containerView];

  v10 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  descriptionTitleContainer = self->_descriptionTitleContainer;
  self->_descriptionTitleContainer = v10;

  [(UIStackView *)self->_descriptionTitleContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_descriptionTitleContainer setAxis:0];
  [(UIStackView *)self->_descriptionTitleContainer setSpacing:8.0];
  [(UIStackView *)self->_descriptionTitleContainer setAlignment:3];
  v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(RAPNotificationDescriptionCell *)self setStatusIconBackground:v12];

  statusIconBackground = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  [statusIconBackground setTranslatesAutoresizingMaskIntoConstraints:0];

  statusIconBackground2 = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  layer = [statusIconBackground2 layer];
  [layer setCornerRadius:12.0];

  v16 = +[UIColor clearColor];
  statusIconBackground3 = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  [statusIconBackground3 setBackgroundColor:v16];

  v18 = self->_descriptionTitleContainer;
  statusIconBackground4 = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  [(UIStackView *)v18 addArrangedSubview:statusIconBackground4];

  v20 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(RAPNotificationDescriptionCell *)self setStatusIcon:v20];

  statusIcon = [(RAPNotificationDescriptionCell *)self statusIcon];
  [statusIcon setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = +[UIColor clearColor];
  statusIcon2 = [(RAPNotificationDescriptionCell *)self statusIcon];
  [statusIcon2 setBackgroundColor:v22];

  v24 = +[UIColor systemWhiteColor];
  statusIcon3 = [(RAPNotificationDescriptionCell *)self statusIcon];
  [statusIcon3 setTintColor:v24];

  statusIconBackground5 = [(RAPNotificationDescriptionCell *)self statusIconBackground];
  statusIcon4 = [(RAPNotificationDescriptionCell *)self statusIcon];
  [statusIconBackground5 addSubview:statusIcon4];

  v28 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(RAPNotificationDescriptionCell *)self setTitleLabel:v28];

  titleLabel = [(RAPNotificationDescriptionCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(RAPNotificationDescriptionCell *)self titleLabel];
  [titleLabel2 setNumberOfLines:0];

  v31 = +[UIColor labelColor];
  titleLabel3 = [(RAPNotificationDescriptionCell *)self titleLabel];
  [titleLabel3 setTextColor:v31];

  v33 = sub_10000FA08(self);
  titleLabel4 = [(RAPNotificationDescriptionCell *)self titleLabel];
  if (v33 == 5)
  {
    v35 = &stru_10165DA88;
  }

  else
  {
    v35 = &stru_10165D888;
  }

  [DynamicTypeWizard autorefreshLabel:titleLabel4 withFontProvider:v35];

  v36 = self->_descriptionTitleContainer;
  titleLabel5 = [(RAPNotificationDescriptionCell *)self titleLabel];
  [(UIStackView *)v36 addArrangedSubview:titleLabel5];

  v38 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(RAPNotificationDescriptionCell *)self setDescriptionLabel:v38];

  descriptionLabel = [(RAPNotificationDescriptionCell *)self descriptionLabel];
  [descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  descriptionLabel2 = [(RAPNotificationDescriptionCell *)self descriptionLabel];
  [descriptionLabel2 setNumberOfLines:0];

  v41 = +[UIColor labelColor];
  descriptionLabel3 = [(RAPNotificationDescriptionCell *)self descriptionLabel];
  [descriptionLabel3 setTextColor:v41];

  descriptionLabel4 = [(RAPNotificationDescriptionCell *)self descriptionLabel];
  [DynamicTypeWizard autorefreshLabel:descriptionLabel4 withFontProvider:&stru_10165D8C8];

  [(UIStackView *)self->_containerView addArrangedSubview:self->_descriptionTitleContainer];
  v44 = self->_containerView;
  descriptionLabel5 = [(RAPNotificationDescriptionCell *)self descriptionLabel];
  [(UIStackView *)v44 addArrangedSubview:descriptionLabel5];

  [(UIStackView *)self->_containerView setAxis:1];
  [(UIStackView *)self->_containerView setSpacing:10.0];
  v46 = self->_containerView;

  [(UIStackView *)v46 setAlignment:1];
}

- (RAPNotificationDescriptionCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RAPNotificationDescriptionCell;
  v3 = [(RAPNotificationDescriptionCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RAPNotificationDescriptionCell *)v3 _setupViews];
    [(RAPNotificationDescriptionCell *)v4 _setupConstraints];
  }

  return v4;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end