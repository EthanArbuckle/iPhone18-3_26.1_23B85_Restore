@interface BKImageRadioButtonView
- (BKImageRadioButtonView)initWithImageName:(id)a3 title:(id)a4;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)setSelected:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation BKImageRadioButtonView

- (BKImageRadioButtonView)initWithImageName:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = BKImageRadioButtonView;
  v8 = [(BKImageRadioButtonView *)&v20 initWithFrame:100.0, 100.0, 100.0, 100.0];
  v9 = v8;
  if (v8)
  {
    [(BKImageRadioButtonView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [UIImage imageNamed:v6 inBundle:v10];
    v12 = [[UIImageView alloc] initWithImage:v11];
    imageView = v9->_imageView;
    v9->_imageView = v12;

    [(UIImageView *)v9->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKImageRadioButtonView *)v9 addSubview:v9->_imageView];
    v14 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 100.0, 44.0}];
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v14;

    [(UILabel *)v9->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = +[UIColor labelColor];
    [(UILabel *)v9->_titleLabel setTextColor:v16];

    [(UILabel *)v9->_titleLabel setText:v7];
    [(BKImageRadioButtonView *)v9 addSubview:v9->_titleLabel];
    v17 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, 30.0, 30.0}];
    checkmarkView = v9->_checkmarkView;
    v9->_checkmarkView = v17;

    [(UIImageView *)v9->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKImageRadioButtonView *)v9 addSubview:v9->_checkmarkView];
  }

  return v9;
}

- (void)updateConstraints
{
  v30 = [(UIImageView *)self->_imageView topAnchor];
  v29 = [(BKImageRadioButtonView *)self topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:16.0];
  v32[0] = v28;
  v27 = [(UIImageView *)self->_imageView bottomAnchor];
  v26 = [(UILabel *)self->_titleLabel topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:-8.0];
  v32[1] = v25;
  v24 = [(UILabel *)self->_titleLabel bottomAnchor];
  v23 = [(UIImageView *)self->_checkmarkView topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:-9.0];
  v32[2] = v22;
  v21 = [(UIImageView *)self->_checkmarkView bottomAnchor];
  v20 = [(BKImageRadioButtonView *)self bottomAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:-18.0];
  v32[3] = v19;
  v18 = [(UIImageView *)self->_checkmarkView heightAnchor];
  [(UIImageView *)self->_checkmarkView intrinsicContentSize];
  v17 = [v18 constraintEqualToConstant:v3];
  v32[4] = v17;
  v16 = [(UIImageView *)self->_imageView leadingAnchor];
  v15 = [(BKImageRadioButtonView *)self leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v32[5] = v14;
  v13 = [(UIImageView *)self->_imageView trailingAnchor];
  v4 = [(BKImageRadioButtonView *)self trailingAnchor];
  v5 = [v13 constraintEqualToAnchor:v4];
  v32[6] = v5;
  v6 = [(UILabel *)self->_titleLabel centerXAnchor];
  v7 = [(UIImageView *)self->_imageView centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v32[7] = v8;
  v9 = [(UIImageView *)self->_checkmarkView centerXAnchor];
  v10 = [(UIImageView *)self->_imageView centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v32[8] = v11;
  v12 = [NSArray arrayWithObjects:v32 count:9];
  [NSLayoutConstraint activateConstraints:v12];

  v31.receiver = self;
  v31.super_class = BKImageRadioButtonView;
  [(BKImageRadioButtonView *)&v31 updateConstraints];
}

- (void)setSelected:(BOOL)a3
{
  self->_selected = a3;
  if (a3)
  {
    v4 = @"checkmark.circle.fill";
  }

  else
  {
    v4 = @"circle";
  }

  v7 = [UIImage systemImageNamed:v4];
  v5 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:3 scale:17.0];
  v6 = [v7 imageWithConfiguration:v5];
  [(UIImageView *)self->_checkmarkView setImage:v6];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = BKImageRadioButtonView;
  v3 = [(BKImageRadioButtonView *)&v7 accessibilityTraits];
  v4 = [(BKImageRadioButtonView *)self selected];
  v5 = UIAccessibilityTraitSelected;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (id)accessibilityLabel
{
  v2 = [(BKImageRadioButtonView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

@end