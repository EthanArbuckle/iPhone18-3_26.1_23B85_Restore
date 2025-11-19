@interface AVTStickerRecentsButtonCollectionViewCell
- (AVTStickerRecentsButtonCollectionViewCell)initWithFrame:(CGRect)a3;
- (CGRect)circleLayerRect;
- (CGRect)contentBounds;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateWithDefaultImage;
@end

@implementation AVTStickerRecentsButtonCollectionViewCell

- (AVTStickerRecentsButtonCollectionViewCell)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = AVTStickerRecentsButtonCollectionViewCell;
  v3 = [(AVTStickerRecentsStickerCollectionViewCell *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.9];
    v5 = [(AVTStickerRecentsStickerCollectionViewCell *)v3 imageView];
    [v5 setTintColor:v4];

    v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
    circularBackgroundLayer = v3->_circularBackgroundLayer;
    v3->_circularBackgroundLayer = v6;

    v8 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    -[CAShapeLayer setFillColor:](v3->_circularBackgroundLayer, "setFillColor:", [v8 CGColor]);

    v9 = [(AVTStickerRecentsButtonCollectionViewCell *)v3 contentView];
    [v9 bounds];
    [(CAShapeLayer *)v3->_circularBackgroundLayer setFrame:?];

    v10 = [(AVTStickerRecentsButtonCollectionViewCell *)v3 contentView];
    v11 = [v10 layer];
    [v11 addSublayer:v3->_circularBackgroundLayer];

    v12 = [(AVTStickerRecentsButtonCollectionViewCell *)v3 contentView];
    v13 = [(AVTStickerRecentsStickerCollectionViewCell *)v3 imageView];
    [v12 bringSubviewToFront:v13];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = AVTStickerRecentsButtonCollectionViewCell;
  v4 = a3;
  [(AVTStickerRecentsButtonCollectionViewCell *)&v9 traitCollectionDidChange:v4];
  v5 = [(AVTStickerRecentsButtonCollectionViewCell *)self traitCollection:v9.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    -[CAShapeLayer setFillColor:](self->_circularBackgroundLayer, "setFillColor:", [v8 CGColor]);
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
  v3 = [(AVTStickerRecentsButtonCollectionViewCell *)self contentView];
  [v3 bounds];
  [(CAShapeLayer *)self->_circularBackgroundLayer setFrame:?];

  v4 = MEMORY[0x1E69DC728];
  [(AVTStickerRecentsButtonCollectionViewCell *)self circleLayerRect];
  v5 = [v4 bezierPathWithOvalInRect:?];
  -[CAShapeLayer setPath:](self->_circularBackgroundLayer, "setPath:", [v5 CGPath]);
}

- (CGRect)circleLayerRect
{
  v3 = [(AVTStickerRecentsButtonCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = fmin(v5, 40.0);
  v9 = fmin(v7, 40.0);
  v10 = [(AVTStickerRecentsButtonCollectionViewCell *)self contentView];
  [v10 bounds];
  v12 = floor((v11 - v8) * 0.5);

  v13 = [(AVTStickerRecentsButtonCollectionViewCell *)self contentView];
  [v13 bounds];
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
  v3 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
  v4 = [v3 image];

  if (!v4)
  {
    v6 = AVTMoreButtonImage();
    v5 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
    [v5 setImage:v6];
  }
}

@end