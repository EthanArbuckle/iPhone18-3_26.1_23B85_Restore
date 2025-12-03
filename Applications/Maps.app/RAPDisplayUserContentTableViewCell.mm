@interface RAPDisplayUserContentTableViewCell
- (RAPDisplayUserContentTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_configureViews;
- (void)_retrieveUserInformation;
@end

@implementation RAPDisplayUserContentTableViewCell

- (void)_retrieveUserInformation
{
  v7 = +[GEOUserAccountInfo primaryICloudAccount];
  v3 = +[UserInformationManager sharedInstance];
  if (v7)
  {
    userName = [v3 userName];
    [(UILabel *)self->_userNameLabel setText:userName];

    userEmail = [v3 userEmail];
    [(UILabel *)self->_userEmailLabel setText:userEmail];

    userIcon = [v3 userIcon];
    [(UIImageView *)self->_userImageView setImage:userIcon];
  }
}

- (void)_configureViews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  userNameLabel = self->_userNameLabel;
  self->_userNameLabel = v7;

  [(UILabel *)self->_userNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_userNameLabel setNumberOfLines:1];
  v9 = +[RAPFontManager userInfoTableViewCellPrimaryLabelFont];
  [(UILabel *)self->_userNameLabel setFont:v9];

  v10 = +[UIColor labelColor];
  [(UILabel *)self->_userNameLabel setTextColor:v10];

  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  userEmailLabel = self->_userEmailLabel;
  self->_userEmailLabel = v11;

  [(UILabel *)self->_userEmailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_userEmailLabel setNumberOfLines:1];
  v13 = +[RAPFontManager userInfoTableViewCellSecondaryLabelFont];
  [(UILabel *)self->_userEmailLabel setFont:v13];

  v14 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_userEmailLabel setTextColor:v14];

  v15 = [UIStackView alloc];
  v16 = self->_userEmailLabel;
  v49[0] = self->_userNameLabel;
  v49[1] = v16;
  v17 = [NSArray arrayWithObjects:v49 count:2];
  v18 = [v15 initWithArrangedSubviews:v17];
  labelsStackView = self->_labelsStackView;
  self->_labelsStackView = v18;

  [(UIStackView *)self->_labelsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_labelsStackView setAxis:1];
  [(UIStackView *)self->_labelsStackView setSpacing:0.0];
  v20 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  userImageView = self->_userImageView;
  self->_userImageView = v20;

  [(UIImageView *)self->_userImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(RAPDisplayUserContentTableViewCell *)self contentView];
  [contentView addSubview:self->_labelsStackView];
  [contentView addSubview:self->_userImageView];
  if (sub_10000FA08(self) == 5)
  {
    v23 = +[UIColor systemBackgroundColor];
    [contentView setBackgroundColor:v23];
  }

  widthAnchor = [(UIImageView *)self->_userImageView widthAnchor];
  v46 = [widthAnchor constraintEqualToConstant:36.0];
  v48[0] = v46;
  heightAnchor = [(UIImageView *)self->_userImageView heightAnchor];
  widthAnchor2 = [(UIImageView *)self->_userImageView widthAnchor];
  v43 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v48[1] = v43;
  centerYAnchor = [(UIImageView *)self->_userImageView centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v48[2] = v40;
  leadingAnchor = [(UIImageView *)self->_userImageView leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  v48[3] = v37;
  leadingAnchor3 = [(UIStackView *)self->_labelsStackView leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_userImageView trailingAnchor];
  v34 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
  v48[4] = v34;
  trailingAnchor2 = [(UIStackView *)self->_labelsStackView trailingAnchor];
  trailingAnchor3 = [contentView trailingAnchor];
  v24 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-15.0];
  v48[5] = v24;
  topAnchor = [(UIStackView *)self->_labelsStackView topAnchor];
  topAnchor2 = [contentView topAnchor];
  v27 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:15.0];
  v48[6] = v27;
  bottomAnchor = [(UIStackView *)self->_labelsStackView bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-15.0];
  v48[7] = v30;
  v31 = [NSArray arrayWithObjects:v48 count:8];
  [NSLayoutConstraint activateConstraints:v31];

  [(RAPDisplayUserContentTableViewCell *)self setSelectionStyle:0];
}

- (RAPDisplayUserContentTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = RAPDisplayUserContentTableViewCell;
  v4 = [(RAPDisplayUserContentTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(RAPDisplayUserContentTableViewCell *)v4 _configureViews];
    [(RAPDisplayUserContentTableViewCell *)v5 _retrieveUserInformation];
  }

  return v5;
}

@end