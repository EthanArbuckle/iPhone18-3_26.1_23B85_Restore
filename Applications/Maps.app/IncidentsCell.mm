@interface IncidentsCell
+ (id)reuseIdentifier;
- (IncidentsCell)initWithFrame:(CGRect)a3;
- (NSString)title;
- (void)_setupSubviews;
- (void)setIcon:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation IncidentsCell

- (NSString)title
{
  WeakRetained = objc_loadWeakRetained(&self->_title);

  return WeakRetained;
}

- (void)setIcon:(id)a3
{
  v5 = a3;
  if (self->_icon != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_icon, a3);
    [(UIImageView *)self->_iconImageView setImage:v6];
    v5 = v6;
  }
}

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  if (self->_subtitle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_subtitle, a3);
    [(UILabel *)self->_subtitleLabel setText:v6];
    v5 = v6;
  }
}

- (void)setTitle:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_title);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_title, obj);
    [(UILabel *)self->_titleLabel setText:obj];
  }
}

- (void)_setupSubviews
{
  v3 = [(IncidentsCell *)self contentView];
  v4 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v8;

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_titleLabel setFont:v10];

  [v3 addSubview:self->_titleLabel];
  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v11;

  [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_subtitleLabel setFont:v13];

  v14 = +[UIColor systemGrayColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v14];

  [v3 addSubview:self->_subtitleLabel];
  v15 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v15;

  [(UIImageView *)self->_iconImageView setAccessibilityIdentifier:@"IconImageView"];
  v17 = [(UIImageView *)self->_iconImageView layer];
  [v17 setCornerRadius:15.0];

  [(UIImageView *)self->_iconImageView setClipsToBounds:1];
  [(UIImageView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_iconImageView];
  v48 = [v3 heightAnchor];
  v47 = [v48 constraintEqualToConstant:52.0];
  v49[0] = v47;
  v46 = [(UIImageView *)self->_iconImageView widthAnchor];
  v45 = [v46 constraintEqualToConstant:30.0];
  v49[1] = v45;
  v44 = [(UIImageView *)self->_iconImageView heightAnchor];
  v43 = [(UIImageView *)self->_iconImageView widthAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v49[2] = v42;
  v41 = [(UIImageView *)self->_iconImageView leadingAnchor];
  v40 = [v3 leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40 constant:16.0];
  v49[3] = v39;
  v38 = [(UIImageView *)self->_iconImageView centerYAnchor];
  v37 = [v3 centerYAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v49[4] = v36;
  v35 = [(UILabel *)self->_titleLabel leadingAnchor];
  v34 = [(UIImageView *)self->_iconImageView trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:10.0];
  v49[5] = v33;
  v31 = [(UILabel *)self->_titleLabel trailingAnchor];
  v30 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v49[6] = v29;
  v18 = [(UILabel *)self->_titleLabel centerYAnchor];
  v19 = v3;
  v20 = [v3 centerYAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v49[7] = v21;
  v22 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v32 = v19;
  v23 = [v19 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];
  v49[8] = v24;
  v25 = [(UILabel *)self->_subtitleLabel centerYAnchor];
  v26 = [v19 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v49[9] = v27;
  v28 = [NSArray arrayWithObjects:v49 count:10];
  [NSLayoutConstraint activateConstraints:v28];
}

- (IncidentsCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = IncidentsCell;
  v3 = [(IncidentsCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(IncidentsCell *)v3 setAccessibilityIdentifier:v5];

    [(IncidentsCell *)v3 _setupSubviews];
  }

  return v3;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end