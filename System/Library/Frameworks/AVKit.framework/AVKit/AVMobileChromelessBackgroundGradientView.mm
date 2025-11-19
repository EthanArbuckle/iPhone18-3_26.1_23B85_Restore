@interface AVMobileChromelessBackgroundGradientView
- (AVMobileChromelessBackgroundGradientView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateGradientColors;
- (void)setActive:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AVMobileChromelessBackgroundGradientView

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVMobileChromelessBackgroundGradientView;
  v4 = a3;
  [(AVMobileChromelessBackgroundGradientView *)&v8 traitCollectionDidChange:v4];
  v5 = [(AVMobileChromelessBackgroundGradientView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(AVMobileChromelessBackgroundGradientView *)self _updateGradientColors];
  }
}

- (void)_updateGradientColors
{
  if (a1)
  {
    v2 = [a1 traitCollection];
    v3 = [v2 userInterfaceStyle];

    v4 = [a1 layer];
    v6 = v4;
    v5 = &OBJC_IVAR___AVMobileChromelessBackgroundGradientView__colorsDark;
    if (v3 == 1)
    {
      v5 = &OBJC_IVAR___AVMobileChromelessBackgroundGradientView__colorsLight;
    }

    [v4 setColors:*&a1[*v5]];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = AVMobileChromelessBackgroundGradientView;
  v5 = [(AVMobileChromelessBackgroundGradientView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if ([(AVMobileChromelessBackgroundGradientView *)self isActive])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    v7 = [(AVMobileChromelessBackgroundGradientView *)self layer];
    *&v6 = v5;
    [v7 setOpacity:v6];
  }
}

- (AVMobileChromelessBackgroundGradientView)initWithFrame:(CGRect)a3
{
  v22[5] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AVMobileChromelessBackgroundGradientView;
  v3 = [(AVMobileChromelessBackgroundGradientView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    v22[0] = [v4 CGColor];
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
    v22[1] = [v5 CGColor];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
    v22[2] = [v6 CGColor];
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    v22[3] = [v7 CGColor];
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
    v22[4] = [v8 CGColor];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
    colorsDark = v3->_colorsDark;
    v3->_colorsDark = v9;

    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.25];
    v21[0] = [v11 CGColor];
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
    v21[1] = [v12 CGColor];
    v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
    v21[2] = [v13 CGColor];
    v14 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.25];
    v21[3] = [v14 CGColor];
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
    v21[4] = [v15 CGColor];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:5];
    colorsLight = v3->_colorsLight;
    v3->_colorsLight = v16;

    v18 = [(AVMobileChromelessBackgroundGradientView *)v3 layer];
    [v18 setLocations:&unk_1EFF12F20];
    [(AVMobileChromelessBackgroundGradientView *)v3 _updateGradientColors];
    v3->_active = 1;
  }

  return v3;
}

@end