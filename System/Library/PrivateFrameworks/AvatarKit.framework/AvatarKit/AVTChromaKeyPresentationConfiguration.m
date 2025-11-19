@interface AVTChromaKeyPresentationConfiguration
- (AVTChromaKeyPresentationConfiguration)init;
- (void)setKeyColor:(id)a3;
@end

@implementation AVTChromaKeyPresentationConfiguration

- (AVTChromaKeyPresentationConfiguration)init
{
  v2 = [(AVTPresentationConfiguration *)self _initWithStyle:3];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] greenColor];
    [(AVTChromaKeyPresentationConfiguration *)v2 setKeyColor:v3];
  }

  return v2;
}

- (void)setKeyColor:(id)a3
{
  v5 = a3;
  if (self->_keyColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_keyColor, a3);
    v6 = AVTGetColorComponentsMetal(self->_keyColor);
    v5 = v7;
    *self->_shadableKeyColorComponents = v6;
  }
}

@end