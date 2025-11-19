@interface NTKZeudleComplicationBackgroundView
- (CGRect)contentFrame;
- (id)complicationColorForBlancEditMode:(int64_t)a3;
- (void)setBlancEditModePalette:(id)a3;
- (void)setPalette:(id)a3;
@end

@implementation NTKZeudleComplicationBackgroundView

- (void)setBlancEditModePalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);

  [(NTKZeudleComplicationBackgroundView *)self applyBlancEditModeStyleChange];
}

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);

  [(NTKZeudleComplicationBackgroundView *)self applyStyleChange];
}

- (id)complicationColorForBlancEditMode:(int64_t)a3
{
  v4 = [(NTKZeudleComplicationBackgroundView *)self palette];
  v5 = v4;
  if (a3 == 1)
  {
    [v4 editMode];
  }

  else
  {
    [v4 bottomComplication];
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