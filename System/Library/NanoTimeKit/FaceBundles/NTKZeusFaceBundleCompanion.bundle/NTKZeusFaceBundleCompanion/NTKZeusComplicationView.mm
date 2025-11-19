@interface NTKZeusComplicationView
+ (id)viewForComplicationType:(unint64_t)a3 backgroundView:(id)a4;
- (CDComplicationDisplayObserver)displayObserver;
- (CGRect)contentFrame;
- (NTKZeusComplicationView)initWithBackgroundView:(id)a3;
- (void)applyPalette:(id)a3;
- (void)blancEditModeApplyPalette:(id)a3;
- (void)layoutSubviews;
- (void)setLegibilityEnabled:(BOOL)a3;
@end

@implementation NTKZeusComplicationView

+ (id)viewForComplicationType:(unint64_t)a3 backgroundView:(id)a4
{
  v5 = a4;
  if (a3 <= 0xB && ((0x833u >> a3) & 1) != 0)
  {
    v6 = objc_opt_class();
  }

  else
  {
    v6 = 0;
  }

  v7 = [[v6 alloc] initWithBackgroundView:v5];

  return v7;
}

- (NTKZeusComplicationView)initWithBackgroundView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NTKZeusComplicationView;
  v6 = [(NTKZeusComplicationView *)&v11 init];
  if (v6)
  {
    v7 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    v8 = [v7 device];
    device = v6->_device;
    v6->_device = v8;

    objc_storeStrong(&v6->_backgroundView, a3);
    if (v5)
    {
      [v5 setDevice:v6->_device];
      [(NTKZeusComplicationView *)v6 addSubview:v5];
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

- (void)setLegibilityEnabled:(BOOL)a3
{
  if (self->_legibilityEnabled != a3)
  {
    self->_legibilityEnabled = a3;
    [(NTKZeusComplicationView *)self _updateLegibility];
  }
}

- (void)applyPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);
  v5 = a3;
  [(NTKZeudleComplicationBackgroundView *)self->_backgroundView setPalette:v5];
}

- (void)blancEditModeApplyPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);
  v5 = a3;
  [(NTKZeudleComplicationBackgroundView *)self->_backgroundView setBlancEditModePalette:v5];
}

- (CDComplicationDisplayObserver)displayObserver
{
  WeakRetained = objc_loadWeakRetained(&self->displayObserver);

  return WeakRetained;
}

@end