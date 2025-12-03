@interface MacRAPLookAroundImageCell
- (MacRAPLookAroundImageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)setLookAroundImage:(id)image;
@end

@implementation MacRAPLookAroundImageCell

- (void)_setupConstraints
{
  lookAroundImageView = [(MacRAPLookAroundImageCell *)self lookAroundImageView];
  topAnchor = [lookAroundImageView topAnchor];
  contentView = [(MacRAPLookAroundImageCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v22;
  lookAroundImageView2 = [(MacRAPLookAroundImageCell *)self lookAroundImageView];
  bottomAnchor = [lookAroundImageView2 bottomAnchor];
  contentView2 = [(MacRAPLookAroundImageCell *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[1] = v17;
  lookAroundImageView3 = [(MacRAPLookAroundImageCell *)self lookAroundImageView];
  leadingAnchor = [lookAroundImageView3 leadingAnchor];
  contentView3 = [(MacRAPLookAroundImageCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v3 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[2] = v3;
  lookAroundImageView4 = [(MacRAPLookAroundImageCell *)self lookAroundImageView];
  trailingAnchor = [lookAroundImageView4 trailingAnchor];
  contentView4 = [(MacRAPLookAroundImageCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[3] = v8;
  lookAroundImageView5 = [(MacRAPLookAroundImageCell *)self lookAroundImageView];
  heightAnchor = [lookAroundImageView5 heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:235.0];
  v27[4] = v11;
  v12 = [NSArray arrayWithObjects:v27 count:5];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupSubviews
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(MacRAPLookAroundImageCell *)self setLookAroundImageView:v3];

  lookAroundImageView = [(MacRAPLookAroundImageCell *)self lookAroundImageView];
  [lookAroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  lookAroundImageView2 = [(MacRAPLookAroundImageCell *)self lookAroundImageView];
  [lookAroundImageView2 setContentMode:2];

  lookAroundImageView3 = [(MacRAPLookAroundImageCell *)self lookAroundImageView];
  [lookAroundImageView3 setClipsToBounds:1];

  contentView = [(MacRAPLookAroundImageCell *)self contentView];
  lookAroundImageView4 = [(MacRAPLookAroundImageCell *)self lookAroundImageView];
  [contentView addSubview:lookAroundImageView4];
}

- (void)setLookAroundImage:(id)image
{
  imageCopy = image;
  if (self->_lookAroundImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_lookAroundImage, image);
    lookAroundImageView = [(MacRAPLookAroundImageCell *)self lookAroundImageView];
    [lookAroundImageView setImage:v7];

    imageCopy = v7;
  }
}

- (MacRAPLookAroundImageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MacRAPLookAroundImageCell;
  v4 = [(MacRAPLookAroundImageCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MacRAPLookAroundImageCell *)v4 _setupSubviews];
    [(MacRAPLookAroundImageCell *)v5 _setupConstraints];
    [(MacRAPLookAroundImageCell *)v5 setSelectionStyle:0];
  }

  return v5;
}

@end