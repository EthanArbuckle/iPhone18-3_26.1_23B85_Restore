@interface AKColorPaletteButton
- (void)setColor:(id)a3;
@end

@implementation AKColorPaletteButton

- (void)setColor:(id)a3
{
  v5 = a3;
  color = self->_color;
  if (color != v5)
  {
    v8 = v5;
    if (![(UIColor *)color akIsEqualToColor:v5])
    {
      objc_storeStrong(&self->_color, a3);
      v7 = [MEMORY[0x277D755B8] ak_colorSwatchToolbarButtonImageWithColor:v8 size:1 selected:{19.0, 19.0}];
      [(AKColorPaletteButton *)self setImage:v7 forState:0];
    }
  }

  MEMORY[0x2821F96F8]();
}

@end