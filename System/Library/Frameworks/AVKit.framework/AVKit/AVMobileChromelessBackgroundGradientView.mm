@interface AVMobileChromelessBackgroundGradientView
- (AVMobileChromelessBackgroundGradientView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateGradientColors;
- (void)setActive:(BOOL)active;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AVMobileChromelessBackgroundGradientView

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = AVMobileChromelessBackgroundGradientView;
  changeCopy = change;
  [(AVMobileChromelessBackgroundGradientView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(AVMobileChromelessBackgroundGradientView *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(AVMobileChromelessBackgroundGradientView *)self _updateGradientColors];
  }
}

- (void)_updateGradientColors
{
  if (self)
  {
    traitCollection = [self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    layer = [self layer];
    v6 = layer;
    v5 = &OBJC_IVAR___AVMobileChromelessBackgroundGradientView__colorsDark;
    if (userInterfaceStyle == 1)
    {
      v5 = &OBJC_IVAR___AVMobileChromelessBackgroundGradientView__colorsLight;
    }

    [layer setColors:*&self[*v5]];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = AVMobileChromelessBackgroundGradientView;
  v5 = [(AVMobileChromelessBackgroundGradientView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if ([(AVMobileChromelessBackgroundGradientView *)self isActive])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    layer = [(AVMobileChromelessBackgroundGradientView *)self layer];
    *&v6 = v5;
    [layer setOpacity:v6];
  }
}

- (AVMobileChromelessBackgroundGradientView)initWithFrame:(CGRect)frame
{
  v22[5] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AVMobileChromelessBackgroundGradientView;
  v3 = [(AVMobileChromelessBackgroundGradientView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    layer = [(AVMobileChromelessBackgroundGradientView *)v3 layer];
    [layer setLocations:&unk_1EFF12F20];
    [(AVMobileChromelessBackgroundGradientView *)v3 _updateGradientColors];
    v3->_active = 1;
  }

  return v3;
}

@end