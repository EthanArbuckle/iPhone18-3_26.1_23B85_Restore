@interface BKImageRadioButtonView
- (BKImageRadioButtonView)initWithImageName:(id)name title:(id)title;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)setSelected:(BOOL)selected;
- (void)updateConstraints;
@end

@implementation BKImageRadioButtonView

- (BKImageRadioButtonView)initWithImageName:(id)name title:(id)title
{
  nameCopy = name;
  titleCopy = title;
  v20.receiver = self;
  v20.super_class = BKImageRadioButtonView;
  v8 = [(BKImageRadioButtonView *)&v20 initWithFrame:100.0, 100.0, 100.0, 100.0];
  v9 = v8;
  if (v8)
  {
    [(BKImageRadioButtonView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [UIImage imageNamed:nameCopy inBundle:v10];
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

    [(UILabel *)v9->_titleLabel setText:titleCopy];
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
  topAnchor = [(UIImageView *)self->_imageView topAnchor];
  topAnchor2 = [(BKImageRadioButtonView *)self topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v32[0] = v28;
  bottomAnchor = [(UIImageView *)self->_imageView bottomAnchor];
  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-8.0];
  v32[1] = v25;
  bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
  topAnchor4 = [(UIImageView *)self->_checkmarkView topAnchor];
  v22 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4 constant:-9.0];
  v32[2] = v22;
  bottomAnchor3 = [(UIImageView *)self->_checkmarkView bottomAnchor];
  bottomAnchor4 = [(BKImageRadioButtonView *)self bottomAnchor];
  v19 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-18.0];
  v32[3] = v19;
  heightAnchor = [(UIImageView *)self->_checkmarkView heightAnchor];
  [(UIImageView *)self->_checkmarkView intrinsicContentSize];
  v17 = [heightAnchor constraintEqualToConstant:v3];
  v32[4] = v17;
  leadingAnchor = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(BKImageRadioButtonView *)self leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[5] = v14;
  trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
  trailingAnchor2 = [(BKImageRadioButtonView *)self trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[6] = v5;
  centerXAnchor = [(UILabel *)self->_titleLabel centerXAnchor];
  centerXAnchor2 = [(UIImageView *)self->_imageView centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v32[7] = v8;
  centerXAnchor3 = [(UIImageView *)self->_checkmarkView centerXAnchor];
  centerXAnchor4 = [(UIImageView *)self->_imageView centerXAnchor];
  v11 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v32[8] = v11;
  v12 = [NSArray arrayWithObjects:v32 count:9];
  [NSLayoutConstraint activateConstraints:v12];

  v31.receiver = self;
  v31.super_class = BKImageRadioButtonView;
  [(BKImageRadioButtonView *)&v31 updateConstraints];
}

- (void)setSelected:(BOOL)selected
{
  self->_selected = selected;
  if (selected)
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
  accessibilityTraits = [(BKImageRadioButtonView *)&v7 accessibilityTraits];
  selected = [(BKImageRadioButtonView *)self selected];
  v5 = UIAccessibilityTraitSelected;
  if (!selected)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (id)accessibilityLabel
{
  titleLabel = [(BKImageRadioButtonView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

@end