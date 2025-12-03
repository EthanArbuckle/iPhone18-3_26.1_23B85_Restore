@interface AKColorPaletteButton
- (void)setColor:(id)color;
@end

@implementation AKColorPaletteButton

- (void)setColor:(id)color
{
  colorCopy = color;
  color = self->_color;
  if (color != colorCopy)
  {
    v8 = colorCopy;
    if (![(UIColor *)color akIsEqualToColor:colorCopy])
    {
      objc_storeStrong(&self->_color, color);
      v7 = [MEMORY[0x277D755B8] ak_colorSwatchToolbarButtonImageWithColor:v8 size:1 selected:{19.0, 19.0}];
      [(AKColorPaletteButton *)self setImage:v7 forState:0];
    }
  }

  MEMORY[0x2821F96F8]();
}

@end