@interface ColorCollectionViewCell
- (ColorCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setColor:(id)color;
@end

@implementation ColorCollectionViewCell

- (ColorCollectionViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = ColorCollectionViewCell;
  v3 = [(ColorCollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(ColorCollectionViewCell *)v3 contentView];
    v6 = objc_alloc_init(ColorPickerButton);
    colorPickerButton = v4->_colorPickerButton;
    v4->_colorPickerButton = v6;

    [(ColorPickerButton *)v4->_colorPickerButton setContentMode:4];
    [(ColorPickerButton *)v4->_colorPickerButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ColorPickerButton *)v4->_colorPickerButton setColor:v4->_color];
    [(ColorPickerButton *)v4->_colorPickerButton setUserInteractionEnabled:0];
    [contentView addSubview:v4->_colorPickerButton];
    v8 = [NSLayoutConstraint safari_constraintsMatchingFrameOfView:v4->_colorPickerButton withFrameOfView:contentView edgeInsets:5.0, 5.0, 5.0, 5.0];
    [NSLayoutConstraint activateConstraints:v8];

    v9 = v4;
  }

  return v4;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_color] & 1) == 0)
  {
    objc_storeStrong(&self->_color, color);
    [(ColorPickerButton *)self->_colorPickerButton setColor:colorCopy];
  }
}

@end