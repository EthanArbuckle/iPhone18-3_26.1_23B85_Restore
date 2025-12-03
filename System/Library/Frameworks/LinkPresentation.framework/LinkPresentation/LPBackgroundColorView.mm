@interface LPBackgroundColorView
- (LPBackgroundColorView)initWithColor:(id)color;
- (void)setColor:(id)color;
- (void)updateColor;
@end

@implementation LPBackgroundColorView

- (LPBackgroundColorView)initWithColor:(id)color
{
  colorCopy = color;
  v10.receiver = self;
  v10.super_class = LPBackgroundColorView;
  v6 = [(LPBackgroundColorView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
    [(LPBackgroundColorView *)v7 updateColor];
    v8 = v7;
  }

  return v7;
}

- (void)updateColor
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__LPBackgroundColorView_updateColor__block_invoke;
  aBlock[3] = &unk_1E7A35450;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v2[2]();
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);

  [(LPBackgroundColorView *)self updateColor];
}

@end