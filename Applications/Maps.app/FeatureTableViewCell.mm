@interface FeatureTableViewCell
- (FeatureTableViewCell)initWithReuseIdentifier:(id)a3;
- (void)_configureFeatureCell;
- (void)_toggleUseFeature:(id)a3;
- (void)configureFromFeature:(id)a3;
- (void)prepareForReuse;
@end

@implementation FeatureTableViewCell

- (void)configureFromFeature:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  [(UILabel *)self->_titleLabel setText:v5];

  v6 = [v4 state];
  if (v6 == 2)
  {
    [(UISwitch *)self->_useFeatureSwitch setEnabled:1];
    useFeatureSwitch = self->_useFeatureSwitch;
    v8 = 0;
  }

  else
  {
    if (v6 != 1)
    {
      if (!v6)
      {
        [(UISwitch *)self->_useFeatureSwitch setOn:0];
        [(UISwitch *)self->_useFeatureSwitch setEnabled:0];
        v9 = [(FeatureTableViewCell *)self textLabel];
        [v9 setEnabled:0];
      }

      return;
    }

    [(UISwitch *)self->_useFeatureSwitch setEnabled:1];
    useFeatureSwitch = self->_useFeatureSwitch;
    v8 = 1;
  }

  [(UISwitch *)useFeatureSwitch setOn:v8];
}

- (void)_toggleUseFeature:(id)a3
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

- (FeatureTableViewCell)initWithReuseIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = FeatureTableViewCell;
  v3 = [(FeatureTableViewCell *)&v7 initWithStyle:3 reuseIdentifier:a3];
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
  v4 = [(FeatureTableViewCell *)self detailTextLabel];
  [v4 setTextColor:v3];

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
  v9 = [(FeatureTableViewCell *)self contentView];
  [v9 addSubview:self->_useFeatureSwitch];

  v10 = [(FeatureTableViewCell *)self contentView];
  [v10 addSubview:self->_titleLabel];

  v38 = [(UILabel *)self->_titleLabel leadingAnchor];
  v37 = [(UISwitch *)self->_useFeatureSwitch trailingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 constant:8.0];
  v39[0] = v36;
  v34 = [(UILabel *)self->_titleLabel trailingAnchor];
  v35 = [(FeatureTableViewCell *)self contentView];
  v33 = [v35 trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:-8.0];
  v39[1] = v32;
  v30 = [(UILabel *)self->_titleLabel topAnchor];
  v31 = [(FeatureTableViewCell *)self contentView];
  v29 = [v31 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v39[2] = v28;
  v26 = [(UILabel *)self->_titleLabel bottomAnchor];
  v27 = [(FeatureTableViewCell *)self contentView];
  v25 = [v27 bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v39[3] = v24;
  v22 = [(UISwitch *)self->_useFeatureSwitch leadingAnchor];
  v23 = [(FeatureTableViewCell *)self contentView];
  v21 = [v23 leadingAnchor];
  v11 = [v22 constraintEqualToAnchor:v21 constant:8.0];
  v39[4] = v11;
  v12 = [(UISwitch *)self->_useFeatureSwitch topAnchor];
  v13 = [(FeatureTableViewCell *)self contentView];
  v14 = [v13 topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:8.0];
  v39[5] = v15;
  v16 = [(UISwitch *)self->_useFeatureSwitch bottomAnchor];
  v17 = [(FeatureTableViewCell *)self contentView];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:-8.0];
  v39[6] = v19;
  v20 = [NSArray arrayWithObjects:v39 count:7];
  [NSLayoutConstraint activateConstraints:v20];
}

@end