@interface RPHighFidelityVideoOverlayButton
- (RPHighFidelityVideoOverlayButton)initWithStyle:(int64_t)style;
- (id)target;
- (void)_playButtonTapped:(id)tapped;
@end

@implementation RPHighFidelityVideoOverlayButton

- (RPHighFidelityVideoOverlayButton)initWithStyle:(int64_t)style
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277D755B8] imageNamed:@"RPVideoOverlayGlyphMask" inBundle:v5];
  v7 = objc_alloc(MEMORY[0x277D75220]);
  v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v8 setImage:v6 forState:0];
  [v8 sizeToFit];
  [v8 frame];
  v16.receiver = self;
  v16.super_class = RPHighFidelityVideoOverlayButton;
  v9 = [(RPHighFidelityVideoOverlayButton *)&v16 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    v9->_style = style;
    objc_storeStrong(&v9->_button, v8);
    [v8 addTarget:v10 action:sel__playButtonTapped_ forControlEvents:64];
    [v8 addTarget:v10 action:sel__playButtonActivate_ forControlEvents:64];
    [v8 addTarget:v10 action:sel__playButtonActivate_ forControlEvents:4];
    [v8 addTarget:v10 action:sel__playButtonDeactivate_ forControlEvents:8];
    [v8 setDeliversTouchesForGesturesToSuperview:0];
    [(RPHighFidelityVideoOverlayButton *)v10 addSubview:v10->_button];
    [(RPHighFidelityVideoOverlayButton *)v10 setAutoresizingMask:45];
    if (!style)
    {
      v11 = [MEMORY[0x277D755B8] imageNamed:@"RPVideoOverlayBackgroundMask" inBundle:v5];
      v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
      v13 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
      backdropView = v10->_backdropView;
      v10->_backdropView = v13;

      [(RPHighFidelityVideoOverlayButton *)v10 insertSubview:v10->_backdropView belowSubview:v10->_button];
      [(RPHighFidelityVideoOverlayButton *)v10 addSubview:v12];
      [v12 _setBackdropMaskViewFlags:7];
      [v12 setAlpha:0.0];
      [(_UIBackdropView *)v10->_backdropView updateMaskViewsForView:v12];
      [(UIButton *)v10->_button _setBackdropMaskViewFlags:3];
      [(_UIBackdropView *)v10->_backdropView updateMaskViewsForView:v10->_button];
    }
  }

  [(RPHighFidelityVideoOverlayButton *)v10 _playButtonDeactivate:0];

  return v10;
}

- (void)_playButtonTapped:(id)tapped
{
  [(RPHighFidelityVideoOverlayButton *)self _playButtonDeactivate:tapped];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  action = self->_action;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_target);
    [v7 performSelector:self->_action withObject:self];
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end