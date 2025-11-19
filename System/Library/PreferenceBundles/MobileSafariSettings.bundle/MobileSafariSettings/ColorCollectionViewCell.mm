@interface ColorCollectionViewCell
- (ColorCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)setColor:(id)a3;
@end

@implementation ColorCollectionViewCell

- (ColorCollectionViewCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = ColorCollectionViewCell;
  v3 = [(ColorCollectionViewCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(ColorCollectionViewCell *)v3 contentView];
    v6 = objc_alloc_init(ColorPickerButton);
    colorPickerButton = v4->_colorPickerButton;
    v4->_colorPickerButton = v6;

    [(ColorPickerButton *)v4->_colorPickerButton setContentMode:4];
    [(ColorPickerButton *)v4->_colorPickerButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ColorPickerButton *)v4->_colorPickerButton setColor:v4->_color];
    [(ColorPickerButton *)v4->_colorPickerButton setUserInteractionEnabled:0];
    [v5 addSubview:v4->_colorPickerButton];
    v8 = [NSLayoutConstraint safari_constraintsMatchingFrameOfView:v4->_colorPickerButton withFrameOfView:v5 edgeInsets:5.0, 5.0, 5.0, 5.0];
    [NSLayoutConstraint activateConstraints:v8];

    v9 = v4;
  }

  return v4;
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_color] & 1) == 0)
  {
    objc_storeStrong(&self->_color, a3);
    [(ColorPickerButton *)self->_colorPickerButton setColor:v5];
  }
}

@end