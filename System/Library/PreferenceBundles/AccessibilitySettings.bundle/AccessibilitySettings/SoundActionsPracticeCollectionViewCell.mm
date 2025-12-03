@interface SoundActionsPracticeCollectionViewCell
+ (BOOL)willTruncateForCellWidth:(double)width withText:(id)text;
+ (id)_colorHighlighted:(BOOL)highlighted background:(BOOL)background;
- (SoundActionsPracticeCollectionViewCell)initWithFrame:(CGRect)frame;
- (double)cornerRadius;
- (void)_configureCell;
- (void)prepareForReuse;
- (void)setCornerRadius:(double)radius;
- (void)setDetected:(BOOL)detected;
- (void)setSelected:(BOOL)selected;
- (void)setText:(id)text;
@end

@implementation SoundActionsPracticeCollectionViewCell

- (SoundActionsPracticeCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SoundActionsPracticeCollectionViewCell;
  v3 = [(SoundActionsPracticeCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SoundActionsPracticeCollectionViewCell *)v3 _configureCell];
  }

  return v4;
}

+ (BOOL)willTruncateForCellWidth:(double)width withText:(id)text
{
  v12 = NSFontAttributeName;
  textCopy = text;
  v6 = +[SoundActionsPracticeCollectionViewCell font];
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  [textCopy boundingRectWithSize:1 options:v7 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v9 = v8;

  +[SoundActionsPracticeCollectionViewCell _horizontalPadding];
  LOBYTE(v6) = v9 + v10 * 2.0 >= width;

  return v6;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SoundActionsPracticeCollectionViewCell;
  [(SoundActionsPracticeCollectionViewCell *)&v3 prepareForReuse];
  [(SoundActionsPracticeCollectionViewCell *)self _configureCell];
}

- (void)setDetected:(BOOL)detected
{
  detectedCopy = detected;
  v5 = [SoundActionsPracticeCollectionViewCell _colorHighlighted:detected background:1];
  cgColor = [v5 cgColor];
  layer = [(SoundActionsPracticeCollectionViewCell *)self layer];
  [layer setBackgroundColor:cgColor];

  v8 = [SoundActionsPracticeCollectionViewCell _colorHighlighted:detectedCopy background:0];
  [(UILabel *)self->_nameLabel setTextColor:v8];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = SoundActionsPracticeCollectionViewCell;
  [(SoundActionsPracticeCollectionViewCell *)&v6 setSelected:?];
  v5 = 1.0;
  if (selectedCopy)
  {
    v5 = 0.5;
  }

  [(SoundActionsPracticeCollectionViewCell *)self setAlpha:v5];
}

+ (id)_colorHighlighted:(BOOL)highlighted background:(BOOL)background
{
  backgroundCopy = background;
  if (highlighted)
  {
    +[UIColor systemGreenColor];
  }

  else
  {
    +[UIColor systemBlueColor];
  }
  v5 = ;
  v6 = v5;
  v7 = 0.16;
  if (!backgroundCopy)
  {
    v7 = 1.0;
  }

  v8 = [v5 colorWithAlphaComponent:v7];

  return v8;
}

- (void)_configureCell
{
  v3 = [SoundActionsPracticeCollectionViewCell _colorHighlighted:0 background:1];
  cgColor = [v3 cgColor];
  layer = [(SoundActionsPracticeCollectionViewCell *)self layer];
  [layer setBackgroundColor:cgColor];

  [(SoundActionsPracticeCollectionViewCell *)self setClipsToBounds:1];
  if (!self->_nameLabel)
  {
    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    nameLabel = self->_nameLabel;
    self->_nameLabel = v6;

    [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [SoundActionsPracticeCollectionViewCell _colorHighlighted:0 background:0];
    [(UILabel *)self->_nameLabel setTextColor:v8];

    v9 = +[UIColor clearColor];
    [(UILabel *)self->_nameLabel setBackgroundColor:v9];

    v10 = +[SoundActionsPracticeCollectionViewCell font];
    [(UILabel *)self->_nameLabel setFont:v10];

    [(UILabel *)self->_nameLabel setNumberOfLines:1];
    [(UILabel *)self->_nameLabel setTextAlignment:1];
    [(UILabel *)self->_nameLabel setAdjustsFontForContentSizeCategory:1];
    contentView = [(SoundActionsPracticeCollectionViewCell *)self contentView];
    [contentView addSubview:self->_nameLabel];

    v26 = [NSLayoutConstraint constraintWithItem:self->_nameLabel attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    v27[0] = v26;
    v12 = [NSLayoutConstraint constraintWithItem:self->_nameLabel attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    v27[1] = v12;
    v13 = self->_nameLabel;
    +[SoundActionsPracticeCollectionViewCell verticalPadding];
    v15 = [NSLayoutConstraint constraintWithItem:v13 attribute:3 relatedBy:1 toItem:self attribute:3 multiplier:1.0 constant:v14];
    v27[2] = v15;
    v16 = self->_nameLabel;
    +[SoundActionsPracticeCollectionViewCell verticalPadding];
    v18 = [NSLayoutConstraint constraintWithItem:v16 attribute:4 relatedBy:-1 toItem:self attribute:4 multiplier:1.0 constant:-v17];
    v27[3] = v18;
    v19 = self->_nameLabel;
    +[SoundActionsPracticeCollectionViewCell _horizontalPadding];
    v21 = [NSLayoutConstraint constraintWithItem:v19 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:v20];
    v27[4] = v21;
    v22 = self->_nameLabel;
    +[SoundActionsPracticeCollectionViewCell _horizontalPadding];
    v24 = [NSLayoutConstraint constraintWithItem:v22 attribute:6 relatedBy:1 toItem:self attribute:6 multiplier:1.0 constant:-v23];
    v27[5] = v24;
    v25 = [NSArray arrayWithObjects:v27 count:6];
    [NSLayoutConstraint activateConstraints:v25];
  }

  [(SoundActionsPracticeCollectionViewCell *)self setIsAccessibilityElement:1];
}

- (void)setText:(id)text
{
  nameLabel = self->_nameLabel;
  textCopy = text;
  [(UILabel *)nameLabel setText:textCopy];
  [(SoundActionsPracticeCollectionViewCell *)self setAccessibilityLabel:textCopy];
}

- (void)setCornerRadius:(double)radius
{
  layer = [(SoundActionsPracticeCollectionViewCell *)self layer];
  [layer setCornerRadius:radius];
}

- (double)cornerRadius
{
  layer = [(SoundActionsPracticeCollectionViewCell *)self layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

@end