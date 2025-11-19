@interface AVTShadowView
- (AVTShadowView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AVTShadowView

- (AVTShadowView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = AVTShadowView;
  v3 = [(AVTShadowView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(AVTShadowView *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x1E6979398] layer];
    separator = v3->_separator;
    v3->_separator = v5;

    v7 = +[AVTUIColorRepository separatorColor];
    -[CALayer setBackgroundColor:](v3->_separator, "setBackgroundColor:", [v7 CGColor]);

    [(AVTShadowView *)v3 bounds];
    [(CALayer *)v3->_separator setFrame:?];
    v8 = [(AVTShadowView *)v3 layer];
    [v8 addSublayer:v3->_separator];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = AVTShadowView;
  v4 = a3;
  [(AVTShadowView *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(AVTShadowView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
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