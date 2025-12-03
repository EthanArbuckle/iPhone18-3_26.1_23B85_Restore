@interface AVTChromaKeyPresentationConfiguration
- (AVTChromaKeyPresentationConfiguration)init;
- (void)setKeyColor:(id)color;
@end

@implementation AVTChromaKeyPresentationConfiguration

- (AVTChromaKeyPresentationConfiguration)init
{
  v2 = [(AVTPresentationConfiguration *)self _initWithStyle:3];
  if (v2)
  {
    greenColor = [MEMORY[0x1E69DC888] greenColor];
    [(AVTChromaKeyPresentationConfiguration *)v2 setKeyColor:greenColor];
  }

  return v2;
}

- (void)setKeyColor:(id)color
{
  colorCopy = color;
  if (self->_keyColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_keyColor, color);
    v6 = AVTGetColorComponentsMetal(self->_keyColor);
    colorCopy = v7;
    *self->_shadableKeyColorComponents = v6;
  }
}

@end