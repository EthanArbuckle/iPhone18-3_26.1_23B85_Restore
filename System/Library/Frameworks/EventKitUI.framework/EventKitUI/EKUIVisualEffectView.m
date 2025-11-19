@interface EKUIVisualEffectView
- (EKUITintColorUpdateDelegate)tintColorDelegate;
- (EKUIVisualEffectView)initWithFrame:(CGRect)a3;
- (void)viewTintColorDidChangeForView:(id)a3 toColor:(id)a4;
@end

@implementation EKUIVisualEffectView

- (EKUITintColorUpdateDelegate)tintColorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tintColorDelegate);

  return WeakRetained;
}

- (EKUIVisualEffectView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = EKUIVisualEffectView;
  v3 = [(EKUIVisualEffectView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [TintColorUpdateView alloc];
    v5 = [(TintColorUpdateView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    updateView = v3->_updateView;
    v3->_updateView = v5;

    [(TintColorUpdateView *)v3->_updateView setHidden:1];
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(TintColorUpdateView *)v3->_updateView setBackgroundColor:v7];

    [(TintColorUpdateView *)v3->_updateView setTintColorUpdateDelegate:v3];
    v8 = [(EKUIVisualEffectView *)v3 contentView];
    [v8 addSubview:v3->_updateView];
  }

  return v3;
}

- (void)viewTintColorDidChangeForView:(id)a3 toColor:(id)a4
{
  v7 = a4;
  v5 = [(EKUIVisualEffectView *)self tintColorDelegate];

  if (v5)
  {
    v6 = [(EKUIVisualEffectView *)self tintColorDelegate];
    [v6 viewTintColorDidChangeForView:self toColor:v7];
  }

  [(EKUIVisualEffectView *)self subTintColorUpdatedToColor:v7];
}

@end