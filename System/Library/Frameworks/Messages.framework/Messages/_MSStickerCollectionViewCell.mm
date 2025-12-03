@interface _MSStickerCollectionViewCell
- (CALayer)borderLayer;
- (MSStickerPrivate)sticker;
- (MSStickerView)stickerView;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAnimating:(BOOL)animating;
- (void)setSticker:(id)sticker;
- (void)showCellBorder:(BOOL)border;
@end

@implementation _MSStickerCollectionViewCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _MSStickerCollectionViewCell;
  [(_MSStickerCollectionViewCell *)&v4 prepareForReuse];
  [(_MSStickerCollectionViewCell *)self setSticker:0];
  if (self->_borderLayer)
  {
    borderLayer = [(_MSStickerCollectionViewCell *)self borderLayer];
    [borderLayer setHidden:1];
  }
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = _MSStickerCollectionViewCell;
  [(_MSStickerCollectionViewCell *)&v28 layoutSubviews];
  contentView = [(_MSStickerCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v26 = v6;
  v27 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  stickerView = [(_MSStickerCollectionViewCell *)self stickerView];
  [stickerView sizeToFit];
  [stickerView sizeThatFits:{v9, v11}];
  v14 = v13;
  v16 = v15;
  [stickerView frame];
  v18 = v17;
  v20 = v19;
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  v21 = CGRectGetWidth(v29) * 0.5;
  v30.origin.x = v18;
  v30.origin.y = v20;
  v30.size.width = v14;
  v30.size.height = v16;
  v22 = v21 - CGRectGetWidth(v30) * 0.5;
  v31.origin.y = v26;
  v31.origin.x = v27;
  v31.size.width = v9;
  v31.size.height = v11;
  v23 = CGRectGetHeight(v31) * 0.5;
  v32.origin.x = v22;
  v32.origin.y = v20;
  v32.size.width = v14;
  v32.size.height = v16;
  [stickerView setFrame:{v22, v23 - CGRectGetHeight(v32) * 0.5, v14, v16}];
  if (self->_borderLayer)
  {
    borderLayer = [(_MSStickerCollectionViewCell *)self borderLayer];
    [borderLayer setBounds:{0.0, 0.0, v9, 44.0}];
    [stickerView center];
    [borderLayer setPosition:?];
    v25 = [MEMORY[0x1E69DC888] colorWithRed:0.690196097 green:0.70588237 blue:0.729411781 alpha:1.0];
    [borderLayer setBorderColor:{objc_msgSend(v25, "CGColor")}];

    [borderLayer setBorderWidth:0.5];
    [borderLayer setCornerRadius:5.0];
  }
}

- (MSStickerView)stickerView
{
  stickerView = self->_stickerView;
  if (!stickerView)
  {
    v4 = [MSStickerView alloc];
    contentView = [(_MSStickerCollectionViewCell *)self contentView];
    [contentView bounds];
    v6 = [(MSStickerView *)v4 initWithFrame:0 sticker:?];

    contentView2 = [(_MSStickerCollectionViewCell *)self contentView];
    [contentView2 addSubview:v6];

    v8 = self->_stickerView;
    self->_stickerView = v6;

    stickerView = self->_stickerView;
  }

  return stickerView;
}

- (CALayer)borderLayer
{
  borderLayer = self->_borderLayer;
  if (!borderLayer)
  {
    layer = [MEMORY[0x1E6979398] layer];
    v5 = self->_borderLayer;
    self->_borderLayer = layer;

    [(CALayer *)self->_borderLayer setHidden:1];
    layer2 = [(_MSStickerCollectionViewCell *)self layer];
    [layer2 addSublayer:self->_borderLayer];

    borderLayer = self->_borderLayer;
  }

  return borderLayer;
}

- (MSStickerPrivate)sticker
{
  stickerView = [(_MSStickerCollectionViewCell *)self stickerView];
  sticker = [stickerView sticker];

  return sticker;
}

- (void)setSticker:(id)sticker
{
  stickerCopy = sticker;
  stickerView = [(_MSStickerCollectionViewCell *)self stickerView];
  [stickerView setSticker:stickerCopy];

  [(_MSStickerCollectionViewCell *)self setNeedsLayout];
}

- (void)showCellBorder:(BOOL)border
{
  if (self->_borderLayer)
  {
    v4 = 0;
  }

  else
  {
    v4 = !border;
  }

  if (!v4)
  {
    borderCopy = border;
    borderLayer = [(_MSStickerCollectionViewCell *)self borderLayer];
    [borderLayer setHidden:!borderCopy];
  }
}

- (void)setAnimating:(BOOL)animating
{
  animatingCopy = animating;
  stickerView = [(_MSStickerCollectionViewCell *)self stickerView];
  [stickerView setAnimating:animatingCopy];
}

@end