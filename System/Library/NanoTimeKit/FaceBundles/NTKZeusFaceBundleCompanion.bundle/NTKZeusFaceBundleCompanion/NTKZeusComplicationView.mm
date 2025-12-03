@interface NTKZeusComplicationView
+ (id)viewForComplicationType:(unint64_t)type backgroundView:(id)view;
- (CDComplicationDisplayObserver)displayObserver;
- (CGRect)contentFrame;
- (NTKZeusComplicationView)initWithBackgroundView:(id)view;
- (void)applyPalette:(id)palette;
- (void)blancEditModeApplyPalette:(id)palette;
- (void)layoutSubviews;
- (void)setLegibilityEnabled:(BOOL)enabled;
@end

@implementation NTKZeusComplicationView

+ (id)viewForComplicationType:(unint64_t)type backgroundView:(id)view
{
  viewCopy = view;
  if (type <= 0xB && ((0x833u >> type) & 1) != 0)
  {
    v6 = objc_opt_class();
  }

  else
  {
    v6 = 0;
  }

  v7 = [[v6 alloc] initWithBackgroundView:viewCopy];

  return v7;
}

- (NTKZeusComplicationView)initWithBackgroundView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = NTKZeusComplicationView;
  v6 = [(NTKZeusComplicationView *)&v11 init];
  if (v6)
  {
    v7 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    device = [v7 device];
    device = v6->_device;
    v6->_device = device;

    objc_storeStrong(&v6->_backgroundView, view);
    if (viewCopy)
    {
      [viewCopy setDevice:v6->_device];
      [(NTKZeusComplicationView *)v6 addSubview:viewCopy];
    }
  }

  return v6;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKZeusComplicationView;
  [(NTKZeusComplicationView *)&v4 layoutSubviews];
  backgroundView = self->_backgroundView;
  [(NTKZeusComplicationView *)self contentFrame];
  [(NTKZeusComplicationView *)self padContentFrame:?];
  [(NTKZeudleComplicationBackgroundView *)backgroundView setContentFrame:?];
  [(NTKZeudleComplicationBackgroundView *)self->_backgroundView layoutSubviews];
}

- (CGRect)contentFrame
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setLegibilityEnabled:(BOOL)enabled
{
  if (self->_legibilityEnabled != enabled)
  {
    self->_legibilityEnabled = enabled;
    [(NTKZeusComplicationView *)self _updateLegibility];
  }
}

- (void)applyPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  [(NTKZeudleComplicationBackgroundView *)self->_backgroundView setPalette:paletteCopy];
}

- (void)blancEditModeApplyPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  [(NTKZeudleComplicationBackgroundView *)self->_backgroundView setBlancEditModePalette:paletteCopy];
}

- (CDComplicationDisplayObserver)displayObserver
{
  WeakRetained = objc_loadWeakRetained(&self->displayObserver);

  return WeakRetained;
}

@end