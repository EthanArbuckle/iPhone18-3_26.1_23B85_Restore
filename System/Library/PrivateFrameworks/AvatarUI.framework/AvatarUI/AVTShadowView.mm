@interface AVTShadowView
- (AVTShadowView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AVTShadowView

- (AVTShadowView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = AVTShadowView;
  v3 = [(AVTShadowView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AVTShadowView *)v3 setBackgroundColor:clearColor];

    layer = [MEMORY[0x1E6979398] layer];
    separator = v3->_separator;
    v3->_separator = layer;

    v7 = +[AVTUIColorRepository separatorColor];
    -[CALayer setBackgroundColor:](v3->_separator, "setBackgroundColor:", [v7 CGColor]);

    [(AVTShadowView *)v3 bounds];
    [(CALayer *)v3->_separator setFrame:?];
    layer2 = [(AVTShadowView *)v3 layer];
    [layer2 addSublayer:v3->_separator];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = AVTShadowView;
  changeCopy = change;
  [(AVTShadowView *)&v9 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(AVTShadowView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    v8 = +[AVTUIColorRepository separatorColor];
    -[CALayer setBackgroundColor:](self->_separator, "setBackgroundColor:", [v8 CGColor]);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTShadowView;
  [(AVTShadowView *)&v3 layoutSubviews];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(AVTShadowView *)self bounds];
  [(CALayer *)self->_separator setFrame:?];
  [MEMORY[0x1E6979518] commit];
}

@end