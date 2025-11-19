@interface ICSEffectPickerViewCell
- (ICSEffectPickerViewCell)initWithFrame:(CGRect)a3;
- (UIImageView)imageView;
- (void)setSelected:(BOOL)a3;
- (void)setVideoEffect:(id)a3;
@end

@implementation ICSEffectPickerViewCell

- (ICSEffectPickerViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = ICSEffectPickerViewCell;
  v3 = [(ICSEffectPickerViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(ICSEffectPickerViewCell *)v3 layer];
    [v5 setMasksToBounds:1];

    v6 = [(ICSEffectPickerViewCell *)v4 layer];
    [v6 setCornerRadius:10.0];
  }

  return v4;
}

- (void)setVideoEffect:(id)a3
{
  objc_storeStrong(&self->_videoEffect, a3);
  v5 = a3;
  v7 = [(TUVideoEffect *)self->_videoEffect thumbnailImage];

  v6 = [(ICSEffectPickerViewCell *)self imageView];
  [v6 setImage:v7];
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
    v6 = [(UIImageView *)self->_imageView layer];
    [v6 setMasksToBounds:1];

    [(ICSEffectPickerViewCell *)self addSubview:self->_imageView];
    v7 = [(UIImageView *)self->_imageView heightAnchor];
    v8 = [(ICSEffectPickerViewCell *)self heightAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:-20.0];

    v10 = [(UIImageView *)self->_imageView widthAnchor];
    v11 = [(ICSEffectPickerViewCell *)self widthAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:-20.0];

    v13 = [(UIImageView *)self->_imageView centerXAnchor];
    v14 = [(ICSEffectPickerViewCell *)self centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    v16 = [(UIImageView *)self->_imageView centerYAnchor];
    v17 = [(ICSEffectPickerViewCell *)self centerYAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

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

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = ICSEffectPickerViewCell;
  [(ICSEffectPickerViewCell *)&v11 setSelected:?];
  if (v3)
  {
    v5 = [UIColor colorWithWhite:0.0 alpha:0.3];
    v6 = [v5 CGColor];
    v7 = [(ICSEffectPickerViewCell *)self layer];
    [v7 setBorderColor:v6];

    v8 = [(ICSEffectPickerViewCell *)self layer];
    [v8 setBorderWidth:2.0];

    [UIColor colorWithWhite:0.5 alpha:0.5];
  }

  else
  {
    v9 = [(ICSEffectPickerViewCell *)self layer];
    [v9 setBorderWidth:0.0];

    +[UIColor clearColor];
  }
  v10 = ;
  [(ICSEffectPickerViewCell *)self setBackgroundColor:v10];
}

@end