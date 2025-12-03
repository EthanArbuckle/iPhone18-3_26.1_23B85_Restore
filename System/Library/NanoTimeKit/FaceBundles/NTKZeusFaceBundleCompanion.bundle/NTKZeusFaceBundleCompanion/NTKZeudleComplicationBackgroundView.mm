@interface NTKZeudleComplicationBackgroundView
- (CGRect)contentFrame;
- (id)complicationColorForBlancEditMode:(int64_t)mode;
- (void)setBlancEditModePalette:(id)palette;
- (void)setPalette:(id)palette;
@end

@implementation NTKZeudleComplicationBackgroundView

- (void)setBlancEditModePalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);

  [(NTKZeudleComplicationBackgroundView *)self applyBlancEditModeStyleChange];
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);

  [(NTKZeudleComplicationBackgroundView *)self applyStyleChange];
}

- (id)complicationColorForBlancEditMode:(int64_t)mode
{
  palette = [(NTKZeudleComplicationBackgroundView *)self palette];
  v5 = palette;
  if (mode == 1)
  {
    [palette editMode];
  }

  else
  {
    [palette bottomComplication];
  }
  v6 = ;

  return v6;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end