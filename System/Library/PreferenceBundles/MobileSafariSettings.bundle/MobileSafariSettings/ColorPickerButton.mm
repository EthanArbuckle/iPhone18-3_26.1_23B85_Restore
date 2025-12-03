@interface ColorPickerButton
- (CGSize)intrinsicContentSize;
- (ColorPickerButton)init;
- (id)_imageForColor:(id)color selected:(BOOL)selected;
- (void)_updateButtonImage;
- (void)setColor:(id)color;
- (void)setIsOverflowColorsButton:(BOOL)button;
- (void)tintColorDidChange;
@end

@implementation ColorPickerButton

- (ColorPickerButton)init
{
  v7.receiver = self;
  v7.super_class = ColorPickerButton;
  v2 = [(ColorPickerButton *)&v7 init];
  if (v2)
  {
    v3 = +[UIColor secondaryLabelColor];
    imageView = [(ColorPickerButton *)v2 imageView];
    [imageView setTintColor:v3];

    v5 = v2;
  }

  return v2;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_color, color);
    [(ColorPickerButton *)self _updateButtonImage];
    colorCopy = v6;
  }
}

- (void)tintColorDidChange
{
  if (self->_color)
  {
    [(ColorPickerButton *)self _updateButtonImage];
  }
}

- (void)_updateButtonImage
{
  v3 = [(ColorPickerButton *)self _imageForColor:self->_color selected:1];
  [(ColorPickerButton *)self setImage:v3 forState:4];

  if (!self->_isOverflowColorsButton)
  {
    v4 = [(ColorPickerButton *)self _imageForColor:self->_color selected:0];
    [(ColorPickerButton *)self setImage:v4 forState:0];
  }
}

- (id)_imageForColor:(id)color selected:(BOOL)selected
{
  colorCopy = color;
  v7 = [UIGraphicsImageRenderer alloc];
  v8 = +[UIGraphicsImageRendererFormat defaultFormat];
  v9 = [v7 initWithBounds:v8 format:{0.0, 0.0, 50.0, 50.0}];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __45__ColorPickerButton__imageForColor_selected___block_invoke;
  v13[3] = &unk_89628;
  v14 = colorCopy;
  selfCopy = self;
  selectedCopy = selected;
  v16 = 0x4047800000000000;
  v10 = colorCopy;
  v11 = [v9 imageWithActions:v13];

  return v11;
}

void __45__ColorPickerButton__imageForColor_selected___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[UIColor clearColor];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [UIImage imageNamed:@"ColorPickerClearColorImage" inBundle:v5 compatibleWithTraitCollection:0];
    [v6 drawInRect:{7.0, 7.0, 36.0, 36.0}];
  }

  else
  {
    v5 = [UIBezierPath bezierPathWithOvalInRect:7.0, 7.0, 36.0, 36.0];
    [*(*(a1 + 40) + 16) setFill];
    [v5 fill];
  }

  if (*(a1 + 56) == 1)
  {
    v8 = [UIBezierPath bezierPathWithOvalInRect:1.5, 1.5, *(a1 + 48), *(a1 + 48)];
    [v8 setLineWidth:3.0];
    v7 = [*(a1 + 40) tintColor];
    [v7 setStroke];

    [v8 stroke];
  }
}

- (void)setIsOverflowColorsButton:(BOOL)button
{
  self->_isOverflowColorsButton = button;
  if (button)
  {
    v4 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:2];
    [(ColorPickerButton *)self setPreferredSymbolConfiguration:v4 forImageInState:0];

    v5 = [UIImage systemImageNamed:@"ellipsis"];
    [(ColorPickerButton *)self setImage:v5 forState:0];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 50.0;
  v3 = 50.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end