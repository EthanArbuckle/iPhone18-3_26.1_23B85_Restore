@interface CarNavAudioTypeCell
- (CarNavAudioTypeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)axIDForAudioType:(unint64_t)a3;
- (void)_setupConstraints;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setupWithNavAudioType:(unint64_t)a3;
- (void)updateSelection:(BOOL)a3;
@end

@implementation CarNavAudioTypeCell

- (void)updateSelection:(BOOL)a3
{
  v3 = a3;
  v5 = 0.0;
  if (a3)
  {
    v5 = 1.0;
  }

  [(UIImageView *)self->_checkmarkView setAlpha:v5];
  if (v3)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[CarPlay][VO] Selected audio mode" value:@"localized string not found" table:0];
    [(UIImageView *)self->_checkmarkView setAccessibilityLabel:v7];

    [(UIImageView *)self->_checkmarkView setAccessibilityIdentifier:@"CarNavAudioTypeCheckmark"];
    v11 = [(UILabel *)self->_categoryLabel accessibilityLabel];
    v8 = [v11 stringByAppendingString:{@", "}];
    v9 = [(UIImageView *)self->_checkmarkView accessibilityLabel];
    v10 = [v8 stringByAppendingString:v9];
    [(CarNavAudioTypeCell *)self setAccessibilityLabel:v10];
  }

  else
  {
    [(UIImageView *)self->_checkmarkView setAccessibilityLabel:&stru_1016631F0];
    [(UIImageView *)self->_checkmarkView setAccessibilityIdentifier:&stru_1016631F0];
    v11 = [(UILabel *)self->_categoryLabel accessibilityLabel];
    [(CarNavAudioTypeCell *)self setAccessibilityLabel:?];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v11.receiver = self;
  v11.super_class = CarNavAudioTypeCell;
  [(CarNavAudioTypeCell *)&v11 setHighlighted:a3 animated:a4];
  if (a3)
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

- (void)setupWithNavAudioType:(unint64_t)a3
{
  v5 = [_TtC4Maps22NavAudioControlFactory imageForNavAudioType:?];
  [(UIImageView *)self->_iconImageView setImage:v5];

  v6 = [_TtC4Maps22NavAudioControlFactory titleForNavAudioType:a3];
  [(UILabel *)self->_categoryLabel setText:v6];

  v8 = [(CarNavAudioTypeCell *)self axIDForAudioType:a3];
  v7 = [@"CarAudioTypeCell." stringByAppendingString:v8];
  [(CarNavAudioTypeCell *)self setAccessibilityIdentifier:v7];
}

- (id)axIDForAudioType:(unint64_t)a3
{
  v3 = @"FullAudio";
  if (a3 == 1)
  {
    v3 = @"AlertsOnly";
  }

  if (a3 == 2)
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
  v44 = [(UIView *)self->_iconImageContainerView heightAnchor];
  v43 = [v44 constraintEqualToConstant:29.0];
  v45[0] = v43;
  v42 = [(UIView *)self->_iconImageContainerView widthAnchor];
  v41 = [v42 constraintEqualToConstant:29.0];
  v45[1] = v41;
  v40 = [(UIView *)self->_iconImageContainerView leadingAnchor];
  v39 = [(CarNavAudioTypeCell *)self leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:6.0];
  v45[2] = v38;
  v37 = [(UIView *)self->_iconImageContainerView centerYAnchor];
  v36 = [(CarNavAudioTypeCell *)self centerYAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v45[3] = v35;
  v34 = [(UIImageView *)self->_iconImageView topAnchor];
  v33 = [(UIView *)self->_iconImageContainerView topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:4.0];
  v45[4] = v32;
  v31 = [(UIImageView *)self->_iconImageView bottomAnchor];
  v30 = [(UIView *)self->_iconImageContainerView bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:-4.0];
  v45[5] = v29;
  v28 = [(UIImageView *)self->_iconImageView centerXAnchor];
  v27 = [(UIView *)self->_iconImageContainerView centerXAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v45[6] = v26;
  v25 = [(UILabel *)self->_categoryLabel leadingAnchor];
  v24 = [(UIView *)self->_iconImageContainerView trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:6.0];
  v45[7] = v23;
  v22 = [(UILabel *)self->_categoryLabel topAnchor];
  v21 = [(CarNavAudioTypeCell *)self topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:6.0];
  v45[8] = v20;
  v19 = [(UILabel *)self->_categoryLabel bottomAnchor];
  v18 = [(CarNavAudioTypeCell *)self bottomAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 constant:-6.0];
  v45[9] = v17;
  v16 = [(UILabel *)self->_categoryLabel trailingAnchor];
  v15 = [(UIImageView *)self->_checkmarkView leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v45[10] = v14;
  v13 = [(UIImageView *)self->_checkmarkView trailingAnchor];
  v3 = [(CarNavAudioTypeCell *)self trailingAnchor];
  v4 = [v13 constraintEqualToAnchor:v3 constant:-6.0];
  v45[11] = v4;
  v5 = [(UIImageView *)self->_checkmarkView centerYAnchor];
  v6 = [(CarNavAudioTypeCell *)self centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v45[12] = v7;
  v8 = [(UIImageView *)self->_checkmarkView widthAnchor];
  v9 = [v8 constraintEqualToConstant:14.6666667];
  v45[13] = v9;
  v10 = [(UIImageView *)self->_checkmarkView heightAnchor];
  v11 = [v10 constraintEqualToConstant:14.6666667];
  v45[14] = v11;
  v12 = [NSArray arrayWithObjects:v45 count:15];
  [NSLayoutConstraint activateConstraints:v12];
}

- (CarNavAudioTypeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v34.receiver = self;
  v34.super_class = CarNavAudioTypeCell;
  v4 = [(CarNavAudioTypeCell *)&v34 initWithStyle:a3 reuseIdentifier:a4];
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
    v13 = [(UIView *)v4->_iconImageContainerView layer];
    [v13 setMasksToBounds:1];

    [(UIView *)v4->_iconImageContainerView _setCornerRadius:14.5];
    v14 = v4->_iconImageContainerView;
    v15 = +[UIColor quaternaryLabelColor];
    [(UIView *)v14 setBackgroundColor:v15];

    v16 = [(CarNavAudioTypeCell *)v4 contentView];
    [v16 addSubview:v4->_iconImageContainerView];

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
    v25 = [(CarNavAudioTypeCell *)v4 traitCollection];
    v26 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v25];
    [(UILabel *)v4->_categoryLabel setFont:v26];

    v27 = [(CarNavAudioTypeCell *)v4 contentView];
    [v27 addSubview:v4->_categoryLabel];

    v28 = [UIImageView alloc];
    v29 = [UIImage systemImageNamed:@"checkmark"];
    v30 = [v28 initWithImage:v29];
    checkmarkView = v4->_checkmarkView;
    v4->_checkmarkView = v30;

    [(UIImageView *)v4->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [(CarNavAudioTypeCell *)v4 contentView];
    [v32 addSubview:v4->_checkmarkView];

    [(CarNavAudioTypeCell *)v4 _setupConstraints];
    [(CarNavAudioTypeCell *)v4 updateSelection:0];
  }

  return v4;
}

@end