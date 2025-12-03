@interface RPHighFidelityVideoOverlayButton
- (RPHighFidelityVideoOverlayButton)initWithStyle:(int64_t)style;
- (id)target;
- (void)_playButtonTapped:(id)tapped;
@end

@implementation RPHighFidelityVideoOverlayButton

- (RPHighFidelityVideoOverlayButton)initWithStyle:(int64_t)style
{
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [UIImage imageNamed:@"RPVideoOverlayGlyphMask" inBundle:v5];
  v7 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v7 setImage:v6 forState:0];
  [v7 sizeToFit];
  [v7 frame];
  v15.receiver = self;
  v15.super_class = RPHighFidelityVideoOverlayButton;
  v8 = [(RPHighFidelityVideoOverlayButton *)&v15 initWithFrame:?];
  v9 = v8;
  if (v8)
  {
    v8->_style = style;
    objc_storeStrong(&v8->_button, v7);
    [v7 addTarget:v9 action:"_playButtonTapped:" forControlEvents:64];
    [v7 addTarget:v9 action:"_playButtonActivate:" forControlEvents:64];
    [v7 addTarget:v9 action:"_playButtonActivate:" forControlEvents:4];
    [v7 addTarget:v9 action:"_playButtonDeactivate:" forControlEvents:8];
    [v7 setDeliversTouchesForGesturesToSuperview:0];
    [(RPHighFidelityVideoOverlayButton *)v9 addSubview:v9->_button];
    [(RPHighFidelityVideoOverlayButton *)v9 setAutoresizingMask:45];
    if (!style)
    {
      v10 = [UIImage imageNamed:@"RPVideoOverlayBackgroundMask" inBundle:v5];
      v11 = [[UIImageView alloc] initWithImage:v10];
      v12 = [[_UIBackdropView alloc] initWithPrivateStyle:2010];
      backdropView = v9->_backdropView;
      v9->_backdropView = v12;

      [(RPHighFidelityVideoOverlayButton *)v9 insertSubview:v9->_backdropView belowSubview:v9->_button];
      [(RPHighFidelityVideoOverlayButton *)v9 addSubview:v11];
      [v11 _setBackdropMaskViewFlags:7];
      [v11 setAlpha:0.0];
      [(_UIBackdropView *)v9->_backdropView updateMaskViewsForView:v11];
      [(UIButton *)v9->_button _setBackdropMaskViewFlags:3];
      [(_UIBackdropView *)v9->_backdropView updateMaskViewsForView:v9->_button];
    }
  }

  [(RPHighFidelityVideoOverlayButton *)v9 _playButtonDeactivate:0];

  return v9;
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