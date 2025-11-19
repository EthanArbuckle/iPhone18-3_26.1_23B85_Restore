@interface CNSharingProfilePhotoPickerItemCell
- (CGSize)originalSize;
- (CNSharingProfilePhotoPickerItemCell)initWithFrame:(CGRect)a3;
- (id)selectionBezierPath;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPickerItem:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNSharingProfilePhotoPickerItemCell;
  v4 = a3;
  [(CNSharingProfilePhotoPickerItemCell *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(CNSharingProfilePhotoPickerItemCell *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    v8 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    -[CAShapeLayer setStrokeColor:](self->_selectionStrokeLayer, "setStrokeColor:", [v8 CGColor]);
  }
}

- (void)setPickerItem:(id)a3
{
  v5 = a3;
  if (self->_pickerItem != v5)
  {
    v18 = v5;
    objc_storeStrong(&self->_pickerItem, a3);
    v6 = [(CNSharingProfilePhotoPickerItem *)self->_pickerItem avatarItem];

    imageView = self->_imageView;
    if (v6)
    {
      [(UIImageView *)imageView setContentMode:1];
      pickerItem = self->_pickerItem;
      [(CNSharingProfilePhotoPickerItemCell *)self bounds];
      v11 = [(CNSharingProfilePhotoPickerItem *)pickerItem compositeImageWithSize:v9, v10];
      [(CNSharingProfilePhotoPickerItemCell *)self updateWithImage:v11];
    }

    else
    {
      [(UIImageView *)imageView setContentMode:4];
      v11 = [MEMORY[0x1E69DC888] systemBlueColor];
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
      v15 = [(CNSharingProfilePhotoPickerItem *)self->_pickerItem symbolImageName];
      v16 = [v14 systemImageNamed:v15 withConfiguration:v13];

      v17 = [v16 imageWithTintColor:v11 renderingMode:1];

      [(UIImageView *)self->_imageView setImage:v17];
    }

    v5 = v18;
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
  v5 = [(CNSharingProfilePhotoPickerItemCell *)self _screen];
  [v5 scale];
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

  v11 = [(UIImageView *)self->_imageView layer];
  [v11 setCornerRadius:v10];

  [(CNSharingProfilePhotoPickerItemCell *)self bounds];
  [(CAShapeLayer *)self->_selectionStrokeLayer setFrame:?];
  v12 = [(CNSharingProfilePhotoPickerItemCell *)self selectionBezierPath];
  -[CAShapeLayer setPath:](self->_selectionStrokeLayer, "setPath:", [v12 CGPath]);
}

- (CNSharingProfilePhotoPickerItemCell)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = CNSharingProfilePhotoPickerItemCell;
  v3 = [(CNSharingProfilePhotoPickerItemCell *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CNSharingProfilePhotoPickerItemCell *)v3 contentView];
    [v5 setClipsToBounds:0];

    [(CNSharingProfilePhotoPickerItemCell *)v4 bounds];
    v4->_originalSize.width = v6;
    v4->_originalSize.height = v7;
    v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    imageView = v4->_imageView;
    v4->_imageView = v9;

    v11 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [(UIImageView *)v4->_imageView setBackgroundColor:v11];

    [(UIImageView *)v4->_imageView setClipsToBounds:1];
    v12 = [(CNSharingProfilePhotoPickerItemCell *)v4 contentView];
    [v12 addSubview:v4->_imageView];

    v13 = [MEMORY[0x1E69794A0] layer];
    selectionStrokeLayer = v4->_selectionStrokeLayer;
    v4->_selectionStrokeLayer = v13;

    [(CNSharingProfilePhotoPickerItemCell *)v4 bounds];
    [(CAShapeLayer *)v4->_selectionStrokeLayer setFrame:?];
    v15 = [(CNSharingProfilePhotoPickerItemCell *)v4 selectionBezierPath];
    -[CAShapeLayer setPath:](v4->_selectionStrokeLayer, "setPath:", [v15 CGPath]);

    v16 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    -[CAShapeLayer setStrokeColor:](v4->_selectionStrokeLayer, "setStrokeColor:", [v16 CGColor]);

    v17 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v4->_selectionStrokeLayer, "setFillColor:", [v17 CGColor]);

    [(CAShapeLayer *)v4->_selectionStrokeLayer setLineWidth:3.0];
    [(CAShapeLayer *)v4->_selectionStrokeLayer setHidden:1];
    v18 = [(CNSharingProfilePhotoPickerItemCell *)v4 contentView];
    v19 = [v18 layer];
    [v19 addSublayer:v4->_selectionStrokeLayer];

    v20 = v4;
  }

  return v4;
}

@end