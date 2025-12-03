@interface ICSEffectPickerViewCell
- (ICSEffectPickerViewCell)initWithFrame:(CGRect)frame;
- (UIImageView)imageView;
- (void)setSelected:(BOOL)selected;
- (void)setVideoEffect:(id)effect;
@end

@implementation ICSEffectPickerViewCell

- (ICSEffectPickerViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = ICSEffectPickerViewCell;
  v3 = [(ICSEffectPickerViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(ICSEffectPickerViewCell *)v3 layer];
    [layer setMasksToBounds:1];

    layer2 = [(ICSEffectPickerViewCell *)v4 layer];
    [layer2 setCornerRadius:10.0];
  }

  return v4;
}

- (void)setVideoEffect:(id)effect
{
  objc_storeStrong(&self->_videoEffect, effect);
  effectCopy = effect;
  thumbnailImage = [(TUVideoEffect *)self->_videoEffect thumbnailImage];

  imageView = [(ICSEffectPickerViewCell *)self imageView];
  [imageView setImage:thumbnailImage];
}

- (UIImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_alloc_init(UIImageView);
    v5 = self->_imageView;
    self->_imageView = v4;

    [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIImageView *)self->_imageView layer];
    [layer setMasksToBounds:1];

    [(ICSEffectPickerViewCell *)self addSubview:self->_imageView];
    heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
    heightAnchor2 = [(ICSEffectPickerViewCell *)self heightAnchor];
    v9 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:-20.0];

    widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
    widthAnchor2 = [(ICSEffectPickerViewCell *)self widthAnchor];
    v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-20.0];

    centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
    centerXAnchor2 = [(ICSEffectPickerViewCell *)self centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
    centerYAnchor2 = [(ICSEffectPickerViewCell *)self centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    v21[0] = v9;
    v21[1] = v12;
    v21[2] = v15;
    v21[3] = v18;
    v19 = [NSArray arrayWithObjects:v21 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    imageView = self->_imageView;
  }

  return imageView;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v11.receiver = self;
  v11.super_class = ICSEffectPickerViewCell;
  [(ICSEffectPickerViewCell *)&v11 setSelected:?];
  if (selectedCopy)
  {
    v5 = [UIColor colorWithWhite:0.0 alpha:0.3];
    cGColor = [v5 CGColor];
    layer = [(ICSEffectPickerViewCell *)self layer];
    [layer setBorderColor:cGColor];

    layer2 = [(ICSEffectPickerViewCell *)self layer];
    [layer2 setBorderWidth:2.0];

    [UIColor colorWithWhite:0.5 alpha:0.5];
  }

  else
  {
    layer3 = [(ICSEffectPickerViewCell *)self layer];
    [layer3 setBorderWidth:0.0];

    +[UIColor clearColor];
  }
  v10 = ;
  [(ICSEffectPickerViewCell *)self setBackgroundColor:v10];
}

@end