@interface CNSharingProfilePhotoPickerItemCell
- (CGSize)originalSize;
- (CNSharingProfilePhotoPickerItemCell)initWithFrame:(CGRect)frame;
- (id)selectionBezierPath;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPickerItem:(id)item;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CNSharingProfilePhotoPickerItemCell

- (CGSize)originalSize
{
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)prepareForReuse
{
  [(UIImageView *)self->_imageView setImage:0];
  [(CAShapeLayer *)self->_selectionStrokeLayer setHidden:1];
  v3.receiver = self;
  v3.super_class = CNSharingProfilePhotoPickerItemCell;
  [(CNSharingProfilePhotoPickerItemCell *)&v3 prepareForReuse];
}

- (id)selectionBezierPath
{
  v2 = MEMORY[0x1E69DC728];
  [(CNSharingProfilePhotoPickerItemCell *)self bounds];
  v6 = CGRectInset(v5, 3.0, 3.0);

  return [v2 bezierPathWithOvalInRect:{v6.origin.x, v6.origin.y, v6.size.width, v6.size.height}];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = CNSharingProfilePhotoPickerItemCell;
  changeCopy = change;
  [(CNSharingProfilePhotoPickerItemCell *)&v9 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(CNSharingProfilePhotoPickerItemCell *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    -[CAShapeLayer setStrokeColor:](self->_selectionStrokeLayer, "setStrokeColor:", [tertiaryLabelColor CGColor]);
  }
}

- (void)setPickerItem:(id)item
{
  itemCopy = item;
  if (self->_pickerItem != itemCopy)
  {
    v18 = itemCopy;
    objc_storeStrong(&self->_pickerItem, item);
    avatarItem = [(CNSharingProfilePhotoPickerItem *)self->_pickerItem avatarItem];

    imageView = self->_imageView;
    if (avatarItem)
    {
      [(UIImageView *)imageView setContentMode:1];
      pickerItem = self->_pickerItem;
      [(CNSharingProfilePhotoPickerItemCell *)self bounds];
      systemBlueColor = [(CNSharingProfilePhotoPickerItem *)pickerItem compositeImageWithSize:v9, v10];
      [(CNSharingProfilePhotoPickerItemCell *)self updateWithImage:systemBlueColor];
    }

    else
    {
      [(UIImageView *)imageView setContentMode:4];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      if (self->_isSmallScreen)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      v13 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58] scale:v12];
      v14 = MEMORY[0x1E69DCAB8];
      symbolImageName = [(CNSharingProfilePhotoPickerItem *)self->_pickerItem symbolImageName];
      v16 = [v14 systemImageNamed:symbolImageName withConfiguration:v13];

      v17 = [v16 imageWithTintColor:systemBlueColor renderingMode:1];

      [(UIImageView *)self->_imageView setImage:v17];
    }

    itemCopy = v18;
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CNSharingProfilePhotoPickerItemCell;
  [(CNSharingProfilePhotoPickerItemCell *)&v13 layoutSubviews];
  [(CNSharingProfilePhotoPickerItemCell *)self bounds];
  v15 = CGRectInset(v14, 8.0, 8.0);
  [(UIImageView *)self->_imageView setFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
  [(UIImageView *)self->_imageView bounds];
  v4 = v3 * 0.5;
  _screen = [(CNSharingProfilePhotoPickerItemCell *)self _screen];
  [_screen scale];
  if (v6 == 0.0)
  {
    if (RoundToScale_onceToken != -1)
    {
      dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
    }

    v6 = *&RoundToScale___s;
  }

  v7 = v6 == 1.0;
  v8 = round(v6 * v4) / v6;
  v9 = round(v4);
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  layer = [(UIImageView *)self->_imageView layer];
  [layer setCornerRadius:v10];

  [(CNSharingProfilePhotoPickerItemCell *)self bounds];
  [(CAShapeLayer *)self->_selectionStrokeLayer setFrame:?];
  selectionBezierPath = [(CNSharingProfilePhotoPickerItemCell *)self selectionBezierPath];
  -[CAShapeLayer setPath:](self->_selectionStrokeLayer, "setPath:", [selectionBezierPath CGPath]);
}

- (CNSharingProfilePhotoPickerItemCell)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = CNSharingProfilePhotoPickerItemCell;
  v3 = [(CNSharingProfilePhotoPickerItemCell *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(CNSharingProfilePhotoPickerItemCell *)v3 contentView];
    [contentView setClipsToBounds:0];

    [(CNSharingProfilePhotoPickerItemCell *)v4 bounds];
    v4->_originalSize.width = v6;
    v4->_originalSize.height = v7;
    v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    imageView = v4->_imageView;
    v4->_imageView = v9;

    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [(UIImageView *)v4->_imageView setBackgroundColor:tertiarySystemFillColor];

    [(UIImageView *)v4->_imageView setClipsToBounds:1];
    contentView2 = [(CNSharingProfilePhotoPickerItemCell *)v4 contentView];
    [contentView2 addSubview:v4->_imageView];

    layer = [MEMORY[0x1E69794A0] layer];
    selectionStrokeLayer = v4->_selectionStrokeLayer;
    v4->_selectionStrokeLayer = layer;

    [(CNSharingProfilePhotoPickerItemCell *)v4 bounds];
    [(CAShapeLayer *)v4->_selectionStrokeLayer setFrame:?];
    selectionBezierPath = [(CNSharingProfilePhotoPickerItemCell *)v4 selectionBezierPath];
    -[CAShapeLayer setPath:](v4->_selectionStrokeLayer, "setPath:", [selectionBezierPath CGPath]);

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    -[CAShapeLayer setStrokeColor:](v4->_selectionStrokeLayer, "setStrokeColor:", [tertiaryLabelColor CGColor]);

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v4->_selectionStrokeLayer, "setFillColor:", [clearColor CGColor]);

    [(CAShapeLayer *)v4->_selectionStrokeLayer setLineWidth:3.0];
    [(CAShapeLayer *)v4->_selectionStrokeLayer setHidden:1];
    contentView3 = [(CNSharingProfilePhotoPickerItemCell *)v4 contentView];
    layer2 = [contentView3 layer];
    [layer2 addSublayer:v4->_selectionStrokeLayer];

    v20 = v4;
  }

  return v4;
}

@end