@interface EKUIVisualEffectView
- (EKUITintColorUpdateDelegate)tintColorDelegate;
- (EKUIVisualEffectView)initWithFrame:(CGRect)frame;
- (void)viewTintColorDidChangeForView:(id)view toColor:(id)color;
@end

@implementation EKUIVisualEffectView

- (EKUITintColorUpdateDelegate)tintColorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tintColorDelegate);

  return WeakRetained;
}

- (EKUIVisualEffectView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = EKUIVisualEffectView;
  v3 = [(EKUIVisualEffectView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [TintColorUpdateView alloc];
    v5 = [(TintColorUpdateView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    updateView = v3->_updateView;
    v3->_updateView = v5;

    [(TintColorUpdateView *)v3->_updateView setHidden:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TintColorUpdateView *)v3->_updateView setBackgroundColor:clearColor];

    [(TintColorUpdateView *)v3->_updateView setTintColorUpdateDelegate:v3];
    contentView = [(EKUIVisualEffectView *)v3 contentView];
    [contentView addSubview:v3->_updateView];
  }

  return v3;
}

- (void)viewTintColorDidChangeForView:(id)view toColor:(id)color
{
  colorCopy = color;
  tintColorDelegate = [(EKUIVisualEffectView *)self tintColorDelegate];

  if (tintColorDelegate)
  {
    tintColorDelegate2 = [(EKUIVisualEffectView *)self tintColorDelegate];
    [tintColorDelegate2 viewTintColorDidChangeForView:self toColor:colorCopy];
  }

  [(EKUIVisualEffectView *)self subTintColorUpdatedToColor:colorCopy];
}

@end