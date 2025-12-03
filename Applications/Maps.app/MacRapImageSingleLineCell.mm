@interface MacRapImageSingleLineCell
- (MacRapImageSingleLineCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_contentSizeChanged;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateConstraints;
- (void)_updateFonts;
- (void)setImage:(id)image;
@end

@implementation MacRapImageSingleLineCell

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  [(UIImageView *)self->_imageView setImage:imageCopy];
}

- (void)_updateConstraints
{
  font = [(UILabel *)self->_textLabel font];
  [font _scaledValueForValue:23.0];
  [(NSLayoutConstraint *)self->_topToFirstBaselineConstraint setConstant:?];

  font2 = [(UILabel *)self->_textLabel font];
  [font2 _scaledValueForValue:-12.0];
  [(NSLayoutConstraint *)self->_lastBaselineToBottomConstraint setConstant:?];
}

- (void)_updateFonts
{
  v3 = +[RAPFontManager regularTitleFont];
  [(UILabel *)self->_textLabel setFont:v3];
}

- (void)_contentSizeChanged
{
  [(MacRapImageSingleLineCell *)self _updateFonts];

  [(MacRapImageSingleLineCell *)self _updateConstraints];
}

- (void)_setupConstraints
{
  contentView = [(MacRapImageSingleLineCell *)self contentView];
  firstBaselineAnchor = [(UILabel *)self->_textLabel firstBaselineAnchor];
  topAnchor = [contentView topAnchor];
  font = [(UILabel *)self->_textLabel font];
  [font _scaledValueForValue:23.0];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  topToFirstBaselineConstraint = self->_topToFirstBaselineConstraint;
  self->_topToFirstBaselineConstraint = v7;

  lastBaselineAnchor = [(UILabel *)self->_textLabel lastBaselineAnchor];
  bottomAnchor = [contentView bottomAnchor];
  font2 = [(UILabel *)self->_textLabel font];
  [font2 _scaledValueForValue:-12.0];
  v12 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  lastBaselineToBottomConstraint = self->_lastBaselineToBottomConstraint;
  self->_lastBaselineToBottomConstraint = v12;

  leadingAnchor = [(UILabel *)self->_textLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:15.0];
  v34[0] = v31;
  trailingAnchor2 = [(UILabel *)self->_textLabel trailingAnchor];
  trailingAnchor3 = [contentView trailingAnchor];
  v28 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-30.0];
  v14 = self->_topToFirstBaselineConstraint;
  v34[1] = v28;
  v34[2] = v14;
  v34[3] = self->_lastBaselineToBottomConstraint;
  leadingAnchor2 = [(UIImageView *)self->_imageView leadingAnchor];
  v27 = contentView;
  leadingAnchor3 = [contentView leadingAnchor];
  v15 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:30.0];
  v34[4] = v15;
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v34[5] = v18;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v20 = [widthAnchor constraintEqualToConstant:20.0];
  v34[6] = v20;
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  widthAnchor2 = [(UIImageView *)self->_imageView widthAnchor];
  v23 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v34[7] = v23;
  v24 = [NSArray arrayWithObjects:v34 count:8];
  [NSLayoutConstraint activateConstraints:v24];
}

- (void)_setupSubviews
{
  [(UILabel *)self->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_textLabel setNumberOfLines:0];
  [(UILabel *)self->_textLabel setAccessibilityIdentifier:@"TextLabel"];
  contentView = [(MacRapImageSingleLineCell *)self contentView];
  [contentView addSubview:self->_textLabel];

  [(MacRapImageSingleLineCell *)self _updateFonts];
  v4 = objc_alloc_init(UIImageView);
  imageView = self->_imageView;
  self->_imageView = v4;

  [(UIImageView *)self->_imageView setAccessibilityIdentifier:@"ImageView"];
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor systemBlueColor];
  [(UIImageView *)self->_imageView setTintColor:v6];

  contentView2 = [(MacRapImageSingleLineCell *)self contentView];
  [contentView2 addSubview:self->_imageView];
}

- (MacRapImageSingleLineCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = MacRapImageSingleLineCell;
  v4 = [(MacRapImageSingleLineCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(MacRapImageSingleLineCell *)v4 setAccessibilityIdentifier:v6];

    v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    textLabel = v4->_textLabel;
    v4->_textLabel = v7;

    [(MacRapImageSingleLineCell *)v4 _setupSubviews];
    [(MacRapImageSingleLineCell *)v4 _setupConstraints];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v4 selector:"_contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

@end