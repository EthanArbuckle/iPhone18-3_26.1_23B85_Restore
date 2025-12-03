@interface AVTStickerRecentsButtonCollectionViewCell
- (AVTStickerRecentsButtonCollectionViewCell)initWithFrame:(CGRect)frame;
- (CGRect)circleLayerRect;
- (CGRect)contentBounds;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateWithDefaultImage;
@end

@implementation AVTStickerRecentsButtonCollectionViewCell

- (AVTStickerRecentsButtonCollectionViewCell)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = AVTStickerRecentsButtonCollectionViewCell;
  v3 = [(AVTStickerRecentsStickerCollectionViewCell *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.9];
    imageView = [(AVTStickerRecentsStickerCollectionViewCell *)v3 imageView];
    [imageView setTintColor:v4];

    v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
    circularBackgroundLayer = v3->_circularBackgroundLayer;
    v3->_circularBackgroundLayer = v6;

    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    -[CAShapeLayer setFillColor:](v3->_circularBackgroundLayer, "setFillColor:", [tertiarySystemFillColor CGColor]);

    contentView = [(AVTStickerRecentsButtonCollectionViewCell *)v3 contentView];
    [contentView bounds];
    [(CAShapeLayer *)v3->_circularBackgroundLayer setFrame:?];

    contentView2 = [(AVTStickerRecentsButtonCollectionViewCell *)v3 contentView];
    layer = [contentView2 layer];
    [layer addSublayer:v3->_circularBackgroundLayer];

    contentView3 = [(AVTStickerRecentsButtonCollectionViewCell *)v3 contentView];
    imageView2 = [(AVTStickerRecentsStickerCollectionViewCell *)v3 imageView];
    [contentView3 bringSubviewToFront:imageView2];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = AVTStickerRecentsButtonCollectionViewCell;
  changeCopy = change;
  [(AVTStickerRecentsButtonCollectionViewCell *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(AVTStickerRecentsButtonCollectionViewCell *)self traitCollection:v9.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    -[CAShapeLayer setFillColor:](self->_circularBackgroundLayer, "setFillColor:", [tertiarySystemFillColor CGColor]);
  }
}

- (CGRect)contentBounds
{
  [(AVTStickerRecentsButtonCollectionViewCell *)self circleLayerRect];

  return CGRectInset(*&v2, v4 * 0.175, v5 * 0.175);
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = AVTStickerRecentsButtonCollectionViewCell;
  [(AVTStickerRecentsStickerCollectionViewCell *)&v6 layoutSubviews];
  contentView = [(AVTStickerRecentsButtonCollectionViewCell *)self contentView];
  [contentView bounds];
  [(CAShapeLayer *)self->_circularBackgroundLayer setFrame:?];

  v4 = MEMORY[0x1E69DC728];
  [(AVTStickerRecentsButtonCollectionViewCell *)self circleLayerRect];
  v5 = [v4 bezierPathWithOvalInRect:?];
  -[CAShapeLayer setPath:](self->_circularBackgroundLayer, "setPath:", [v5 CGPath]);
}

- (CGRect)circleLayerRect
{
  contentView = [(AVTStickerRecentsButtonCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  v8 = fmin(v5, 40.0);
  v9 = fmin(v7, 40.0);
  contentView2 = [(AVTStickerRecentsButtonCollectionViewCell *)self contentView];
  [contentView2 bounds];
  v12 = floor((v11 - v8) * 0.5);

  contentView3 = [(AVTStickerRecentsButtonCollectionViewCell *)self contentView];
  [contentView3 bounds];
  v15 = floor((v14 - v9) * 0.5);

  v16 = v12;
  v17 = v15;
  v18 = v8;
  v19 = v9;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)updateWithDefaultImage
{
  imageView = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
  image = [imageView image];

  if (!image)
  {
    v6 = AVTMoreButtonImage();
    imageView2 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
    [imageView2 setImage:v6];
  }
}

@end