@interface CarNavAudioTypeCell
- (CarNavAudioTypeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)axIDForAudioType:(unint64_t)type;
- (void)_setupConstraints;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setupWithNavAudioType:(unint64_t)type;
- (void)updateSelection:(BOOL)selection;
@end

@implementation CarNavAudioTypeCell

- (void)updateSelection:(BOOL)selection
{
  selectionCopy = selection;
  v5 = 0.0;
  if (selection)
  {
    v5 = 1.0;
  }

  [(UIImageView *)self->_checkmarkView setAlpha:v5];
  if (selectionCopy)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[CarPlay][VO] Selected audio mode" value:@"localized string not found" table:0];
    [(UIImageView *)self->_checkmarkView setAccessibilityLabel:v7];

    [(UIImageView *)self->_checkmarkView setAccessibilityIdentifier:@"CarNavAudioTypeCheckmark"];
    accessibilityLabel = [(UILabel *)self->_categoryLabel accessibilityLabel];
    v8 = [accessibilityLabel stringByAppendingString:{@", "}];
    accessibilityLabel2 = [(UIImageView *)self->_checkmarkView accessibilityLabel];
    v10 = [v8 stringByAppendingString:accessibilityLabel2];
    [(CarNavAudioTypeCell *)self setAccessibilityLabel:v10];
  }

  else
  {
    [(UIImageView *)self->_checkmarkView setAccessibilityLabel:&stru_1016631F0];
    [(UIImageView *)self->_checkmarkView setAccessibilityIdentifier:&stru_1016631F0];
    accessibilityLabel = [(UILabel *)self->_categoryLabel accessibilityLabel];
    [(CarNavAudioTypeCell *)self setAccessibilityLabel:?];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v11.receiver = self;
  v11.super_class = CarNavAudioTypeCell;
  [(CarNavAudioTypeCell *)&v11 setHighlighted:highlighted animated:animated];
  if (highlighted)
  {
    v6 = +[UIColor _carSystemFocusLabelColor];
    [(UIImageView *)self->_iconImageView setTintColor:v6];

    v7 = +[UIColor _carSystemFocusLabelColor];
    [(UIImageView *)self->_checkmarkView setTintColor:v7];

    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    v8 = +[UIColor _carSystemFocusColor];
    [(UIImageView *)self->_iconImageView setTintColor:v8];

    v9 = +[UIColor _carSystemFocusColor];
    [(UIImageView *)self->_checkmarkView setTintColor:v9];

    +[UIColor labelColor];
  }
  v10 = ;
  [(UILabel *)self->_categoryLabel setTextColor:v10];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CarNavAudioTypeCell;
  [(CarNavAudioTypeCell *)&v3 prepareForReuse];
  [(UIImageView *)self->_iconImageView setImage:0];
  [(UILabel *)self->_categoryLabel setText:0];
}

- (void)setupWithNavAudioType:(unint64_t)type
{
  v5 = [_TtC4Maps22NavAudioControlFactory imageForNavAudioType:?];
  [(UIImageView *)self->_iconImageView setImage:v5];

  v6 = [_TtC4Maps22NavAudioControlFactory titleForNavAudioType:type];
  [(UILabel *)self->_categoryLabel setText:v6];

  v8 = [(CarNavAudioTypeCell *)self axIDForAudioType:type];
  v7 = [@"CarAudioTypeCell." stringByAppendingString:v8];
  [(CarNavAudioTypeCell *)self setAccessibilityIdentifier:v7];
}

- (id)axIDForAudioType:(unint64_t)type
{
  v3 = @"FullAudio";
  if (type == 1)
  {
    v3 = @"AlertsOnly";
  }

  if (type == 2)
  {
    return @"None";
  }

  else
  {
    return v3;
  }
}

- (void)_setupConstraints
{
  heightAnchor = [(UIView *)self->_iconImageContainerView heightAnchor];
  v43 = [heightAnchor constraintEqualToConstant:29.0];
  v45[0] = v43;
  widthAnchor = [(UIView *)self->_iconImageContainerView widthAnchor];
  v41 = [widthAnchor constraintEqualToConstant:29.0];
  v45[1] = v41;
  leadingAnchor = [(UIView *)self->_iconImageContainerView leadingAnchor];
  leadingAnchor2 = [(CarNavAudioTypeCell *)self leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
  v45[2] = v38;
  centerYAnchor = [(UIView *)self->_iconImageContainerView centerYAnchor];
  centerYAnchor2 = [(CarNavAudioTypeCell *)self centerYAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v45[3] = v35;
  topAnchor = [(UIImageView *)self->_iconImageView topAnchor];
  topAnchor2 = [(UIView *)self->_iconImageContainerView topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
  v45[4] = v32;
  bottomAnchor = [(UIImageView *)self->_iconImageView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_iconImageContainerView bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
  v45[5] = v29;
  centerXAnchor = [(UIImageView *)self->_iconImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_iconImageContainerView centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v45[6] = v26;
  leadingAnchor3 = [(UILabel *)self->_categoryLabel leadingAnchor];
  trailingAnchor = [(UIView *)self->_iconImageContainerView trailingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
  v45[7] = v23;
  topAnchor3 = [(UILabel *)self->_categoryLabel topAnchor];
  topAnchor4 = [(CarNavAudioTypeCell *)self topAnchor];
  v20 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:6.0];
  v45[8] = v20;
  bottomAnchor3 = [(UILabel *)self->_categoryLabel bottomAnchor];
  bottomAnchor4 = [(CarNavAudioTypeCell *)self bottomAnchor];
  v17 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-6.0];
  v45[9] = v17;
  trailingAnchor2 = [(UILabel *)self->_categoryLabel trailingAnchor];
  leadingAnchor4 = [(UIImageView *)self->_checkmarkView leadingAnchor];
  v14 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];
  v45[10] = v14;
  trailingAnchor3 = [(UIImageView *)self->_checkmarkView trailingAnchor];
  trailingAnchor4 = [(CarNavAudioTypeCell *)self trailingAnchor];
  v4 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-6.0];
  v45[11] = v4;
  centerYAnchor3 = [(UIImageView *)self->_checkmarkView centerYAnchor];
  centerYAnchor4 = [(CarNavAudioTypeCell *)self centerYAnchor];
  v7 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v45[12] = v7;
  widthAnchor2 = [(UIImageView *)self->_checkmarkView widthAnchor];
  v9 = [widthAnchor2 constraintEqualToConstant:14.6666667];
  v45[13] = v9;
  heightAnchor2 = [(UIImageView *)self->_checkmarkView heightAnchor];
  v11 = [heightAnchor2 constraintEqualToConstant:14.6666667];
  v45[14] = v11;
  v12 = [NSArray arrayWithObjects:v45 count:15];
  [NSLayoutConstraint activateConstraints:v12];
}

- (CarNavAudioTypeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34.receiver = self;
  v34.super_class = CarNavAudioTypeCell;
  v4 = [(CarNavAudioTypeCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconImageContainerView = v4->_iconImageContainerView;
    v4->_iconImageContainerView = v9;

    [(UIView *)v4->_iconImageContainerView setAccessibilityIdentifier:@"CarNavAudioTypeIconContainer"];
    [(UIView *)v4->_iconImageContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v11) = 1148846080;
    [(UIView *)v4->_iconImageContainerView setContentCompressionResistancePriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UIView *)v4->_iconImageContainerView setContentCompressionResistancePriority:0 forAxis:v12];
    [(UIView *)v4->_iconImageContainerView setContentMode:1];
    layer = [(UIView *)v4->_iconImageContainerView layer];
    [layer setMasksToBounds:1];

    [(UIView *)v4->_iconImageContainerView _setCornerRadius:14.5];
    v14 = v4->_iconImageContainerView;
    v15 = +[UIColor quaternaryLabelColor];
    [(UIView *)v14 setBackgroundColor:v15];

    contentView = [(CarNavAudioTypeCell *)v4 contentView];
    [contentView addSubview:v4->_iconImageContainerView];

    v17 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v17;

    [(UIImageView *)v4->_iconImageView setAccessibilityIdentifier:@"CarNavAudioTypeIcon"];
    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(UIImageView *)v4->_iconImageView setContentCompressionResistancePriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UIImageView *)v4->_iconImageView setContentCompressionResistancePriority:0 forAxis:v20];
    [(UIImageView *)v4->_iconImageView setContentMode:1];
    [(UIView *)v4->_iconImageContainerView addSubview:v4->_iconImageView];
    v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    categoryLabel = v4->_categoryLabel;
    v4->_categoryLabel = v21;

    [(UILabel *)v4->_categoryLabel setAccessibilityIdentifier:@"CarNavAudioTypeLabel"];
    [(UILabel *)v4->_categoryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v23) = 1148846080;
    [(UILabel *)v4->_categoryLabel setContentCompressionResistancePriority:1 forAxis:v23];
    LODWORD(v24) = 1144750080;
    [(UILabel *)v4->_categoryLabel setContentCompressionResistancePriority:0 forAxis:v24];
    [(UILabel *)v4->_categoryLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v4->_categoryLabel setNumberOfLines:1];
    traitCollection = [(CarNavAudioTypeCell *)v4 traitCollection];
    v26 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:traitCollection];
    [(UILabel *)v4->_categoryLabel setFont:v26];

    contentView2 = [(CarNavAudioTypeCell *)v4 contentView];
    [contentView2 addSubview:v4->_categoryLabel];

    v28 = [UIImageView alloc];
    v29 = [UIImage systemImageNamed:@"checkmark"];
    v30 = [v28 initWithImage:v29];
    checkmarkView = v4->_checkmarkView;
    v4->_checkmarkView = v30;

    [(UIImageView *)v4->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(CarNavAudioTypeCell *)v4 contentView];
    [contentView3 addSubview:v4->_checkmarkView];

    [(CarNavAudioTypeCell *)v4 _setupConstraints];
    [(CarNavAudioTypeCell *)v4 updateSelection:0];
  }

  return v4;
}

@end