@interface SettingsProfileCell
- (SettingsProfileCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SettingsProfileCell

- (SettingsProfileCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v55.receiver = self;
  v55.super_class = SettingsProfileCell;
  v4 = [(SettingsProfileCell *)&v55 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SettingsProfileCell *)v4 contentView];
    v7 = objc_alloc_init(UIImageView);
    imageView = v5->_imageView;
    v5->_imageView = v7;

    [(UIImageView *)v5->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v5->_imageView setContentMode:4];
    [v6 addSubview:v5->_imageView];
    v9 = objc_alloc_init(UILabel);
    textLabel = v5->_textLabel;
    v5->_textLabel = v9;

    [(UILabel *)v5->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [(UILabel *)v5->_textLabel setFont:v11];

    v12 = objc_alloc_init(UILabel);
    detailTextLabel = v5->_detailTextLabel;
    v5->_detailTextLabel = v12;

    [(UILabel *)v5->_detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v5->_detailTextLabel setFont:v14];

    v15 = [UIStackView alloc];
    v57[0] = v5->_textLabel;
    v57[1] = v5->_detailTextLabel;
    v16 = [NSArray arrayWithObjects:v57 count:2];
    v17 = [v15 initWithArrangedSubviews:v16];

    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 setAxis:1];
    v18 = v17;
    [v6 addSubview:v17];
    v54 = [(UIImageView *)v5->_imageView widthAnchor];
    v53 = [v54 constraintEqualToConstant:38.0];
    v56[0] = v53;
    v52 = [(UIImageView *)v5->_imageView heightAnchor];
    v51 = [v52 constraintEqualToConstant:38.0];
    v56[1] = v51;
    v50 = [(UIImageView *)v5->_imageView leadingAnchor];
    v19 = v6;
    v49 = [v6 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49 constant:17.0];
    v56[2] = v48;
    v47 = [(UIImageView *)v5->_imageView centerYAnchor];
    v46 = [v6 centerYAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v56[3] = v45;
    v44 = [(UIImageView *)v5->_imageView topAnchor];
    v43 = [v6 topAnchor];
    v42 = [v44 constraintGreaterThanOrEqualToAnchor:v43 constant:5.0];
    v56[4] = v42;
    v41 = [v6 bottomAnchor];
    v40 = [(UIImageView *)v5->_imageView bottomAnchor];
    v39 = [v41 constraintGreaterThanOrEqualToAnchor:v40 constant:5.0];
    v56[5] = v39;
    v38 = [v18 leadingAnchor];
    v36 = [(UIImageView *)v5->_imageView trailingAnchor];
    v35 = [v38 constraintEqualToAnchor:v36 constant:10.0];
    v56[6] = v35;
    v34 = [v18 topAnchor];
    v33 = [v6 topAnchor];
    v32 = [v34 constraintGreaterThanOrEqualToAnchor:v33 constant:5.0];
    v56[7] = v32;
    v31 = [v18 centerYAnchor];
    v30 = [v6 centerYAnchor];
    v20 = [v31 constraintEqualToAnchor:v30];
    v56[8] = v20;
    v21 = [v19 trailingAnchor];
    v22 = v18;
    v37 = v18;
    v23 = [v18 trailingAnchor];
    v24 = [v21 constraintGreaterThanOrEqualToAnchor:v23 constant:17.0];
    v56[9] = v24;
    v25 = [v19 bottomAnchor];
    v26 = [v22 bottomAnchor];
    v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26 constant:5.0];
    v56[10] = v27;
    v28 = [NSArray arrayWithObjects:v56 count:11];
    [NSLayoutConstraint activateConstraints:v28];
  }

  return v5;
}

@end