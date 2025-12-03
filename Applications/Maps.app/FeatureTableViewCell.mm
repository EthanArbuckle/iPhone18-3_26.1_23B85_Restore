@interface FeatureTableViewCell
- (FeatureTableViewCell)initWithReuseIdentifier:(id)identifier;
- (void)_configureFeatureCell;
- (void)_toggleUseFeature:(id)feature;
- (void)configureFromFeature:(id)feature;
- (void)prepareForReuse;
@end

@implementation FeatureTableViewCell

- (void)configureFromFeature:(id)feature
{
  featureCopy = feature;
  name = [featureCopy name];
  [(UILabel *)self->_titleLabel setText:name];

  state = [featureCopy state];
  if (state == 2)
  {
    [(UISwitch *)self->_useFeatureSwitch setEnabled:1];
    useFeatureSwitch = self->_useFeatureSwitch;
    v8 = 0;
  }

  else
  {
    if (state != 1)
    {
      if (!state)
      {
        [(UISwitch *)self->_useFeatureSwitch setOn:0];
        [(UISwitch *)self->_useFeatureSwitch setEnabled:0];
        textLabel = [(FeatureTableViewCell *)self textLabel];
        [textLabel setEnabled:0];
      }

      return;
    }

    [(UISwitch *)self->_useFeatureSwitch setEnabled:1];
    useFeatureSwitch = self->_useFeatureSwitch;
    v8 = 1;
  }

  [(UISwitch *)useFeatureSwitch setOn:v8];
}

- (void)_toggleUseFeature:(id)feature
{
  toggleFeatureBlock = self->_toggleFeatureBlock;
  if (toggleFeatureBlock)
  {
    toggleFeatureBlock[2]();
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = FeatureTableViewCell;
  [(FeatureTableViewCell *)&v4 prepareForReuse];
  [(UILabel *)self->_titleLabel setText:&stru_1016631F0];
  toggleFeatureBlock = self->_toggleFeatureBlock;
  self->_toggleFeatureBlock = 0;
}

- (FeatureTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = FeatureTableViewCell;
  v3 = [(FeatureTableViewCell *)&v7 initWithStyle:3 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(FeatureTableViewCell *)v3 _configureFeatureCell];
    v5 = v4;
  }

  return v4;
}

- (void)_configureFeatureCell
{
  v3 = +[UIColor tertiaryLabelColor];
  detailTextLabel = [(FeatureTableViewCell *)self detailTextLabel];
  [detailTextLabel setTextColor:v3];

  [(FeatureTableViewCell *)self setSelectionStyle:0];
  v5 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v5;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  useFeatureSwitch = self->_useFeatureSwitch;
  self->_useFeatureSwitch = v7;

  [(UISwitch *)self->_useFeatureSwitch setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UISwitch *)self->_useFeatureSwitch addTarget:self action:"_toggleUseFeature:" forControlEvents:4096];
  contentView = [(FeatureTableViewCell *)self contentView];
  [contentView addSubview:self->_useFeatureSwitch];

  contentView2 = [(FeatureTableViewCell *)self contentView];
  [contentView2 addSubview:self->_titleLabel];

  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  trailingAnchor = [(UISwitch *)self->_useFeatureSwitch trailingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:8.0];
  v39[0] = v36;
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  contentView3 = [(FeatureTableViewCell *)self contentView];
  trailingAnchor3 = [contentView3 trailingAnchor];
  v32 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-8.0];
  v39[1] = v32;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  contentView4 = [(FeatureTableViewCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[2] = v28;
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  contentView5 = [(FeatureTableViewCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v39[3] = v24;
  leadingAnchor2 = [(UISwitch *)self->_useFeatureSwitch leadingAnchor];
  contentView6 = [(FeatureTableViewCell *)self contentView];
  leadingAnchor3 = [contentView6 leadingAnchor];
  v11 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:8.0];
  v39[4] = v11;
  topAnchor3 = [(UISwitch *)self->_useFeatureSwitch topAnchor];
  contentView7 = [(FeatureTableViewCell *)self contentView];
  topAnchor4 = [contentView7 topAnchor];
  v15 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
  v39[5] = v15;
  bottomAnchor3 = [(UISwitch *)self->_useFeatureSwitch bottomAnchor];
  contentView8 = [(FeatureTableViewCell *)self contentView];
  bottomAnchor4 = [contentView8 bottomAnchor];
  v19 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
  v39[6] = v19;
  v20 = [NSArray arrayWithObjects:v39 count:7];
  [NSLayoutConstraint activateConstraints:v20];
}

@end