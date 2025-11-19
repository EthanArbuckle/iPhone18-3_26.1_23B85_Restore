@interface QLOverlayPlayButton
- (QLOverlayPlayButton)init;
- (QLOverlayPlayButton)initWithFrame:(CGRect)a3;
- (void)_playButtonActivate:(id)a3;
- (void)_playButtonDeactivate:(id)a3;
- (void)_playButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)setTarget:(id)a3 action:(SEL)a4;
@end

@implementation QLOverlayPlayButton

- (QLOverlayPlayButton)init
{
  v5.receiver = self;
  v5.super_class = QLOverlayPlayButton;
  v2 = [(QLOverlayPlayButton *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(QLOverlayPlayButton *)v2 setAccessibilityIdentifier:@"QLOverlayPlayButtonDefaultAccessibilityIdentifier"];
  }

  return v3;
}

- (QLOverlayPlayButton)initWithFrame:(CGRect)a3
{
  v4 = QLFrameworkBundle();
  v5 = [MEMORY[0x277D755B8] imageNamed:@"overlay-play-inside" inBundle:v4 compatibleWithTraitCollection:0];
  if (_UISolariumEnabled())
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 imageWithRenderingMode:v6];

  v8 = objc_alloc(MEMORY[0x277D75220]);
  v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v9 setImage:v7 forState:0];
  [v9 addTarget:self action:sel__playButtonTapped_ forControlEvents:64];
  [v9 addTarget:self action:sel__playButtonActivate_ forControlEvents:1];
  [v9 addTarget:self action:sel__playButtonActivate_ forControlEvents:4];
  [v9 addTarget:self action:sel__playButtonDeactivate_ forControlEvents:8];
  [v9 sizeToFit];
  [v9 frame];
  v17.receiver = self;
  v17.super_class = QLOverlayPlayButton;
  v10 = [(QLOverlayPlayButton *)&v17 initWithFrame:?];
  objc_storeStrong(&v10->_button, v9);
  [(QLOverlayPlayButton *)v10 frame];
  [(UIButton *)v10->_button setFrame:?];
  if (_UISolariumEnabled())
  {
    v11 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UIButton *)v10->_button setTintColor:v11];

    [(UIButton *)v10->_button ql_setGlassBackground];
    [(UIButton *)v10->_button ql_setCapsuleCornerMaskingConfiguration];
    [(QLOverlayPlayButton *)v10 addSubview:v10->_button];
  }

  else
  {
    v12 = [MEMORY[0x277D755B8] imageNamed:@"overlay-play-outside" inBundle:v4 compatibleWithTraitCollection:0];
    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
    v14 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    backdropView = v10->_backdropView;
    v10->_backdropView = v14;

    [(QLOverlayPlayButton *)v10 frame];
    [(_UIBackdropView *)v10->_backdropView setFrame:?];
    [(QLOverlayPlayButton *)v10 addSubview:v10->_backdropView];
    [(UIButton *)v10->_button ql_setGlassBackground];
    [(UIButton *)v10->_button ql_setCapsuleCornerMaskingConfiguration];
    [(QLOverlayPlayButton *)v10 addSubview:v10->_button];
    [(QLOverlayPlayButton *)v10 addSubview:v13];
    [v13 _setBackdropMaskViewFlags:7];
    [v13 setAlpha:0.0];
    [(_UIBackdropView *)v10->_backdropView updateMaskViewsForView:v13];
    [(UIButton *)v10->_button _setBackdropMaskViewFlags:3];
    [(_UIBackdropView *)v10->_backdropView updateMaskViewsForView:v10->_button];
  }

  [(QLOverlayPlayButton *)v10 _playButtonDeactivate:0];
  [(QLOverlayPlayButton *)v10 setAccessibilityIdentifier:@"QLOverlayPlayButtonDefaultAccessibilityIdentifier"];

  return v10;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = QLOverlayPlayButton;
  [(QLOverlayPlayButton *)&v5 layoutSubviews];
  v3 = [(QLOverlayPlayButton *)self layer];
  [(QLOverlayPlayButton *)self bounds];
  [v3 setCornerRadius:v4 * 0.5];
}

- (void)setTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_target, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_action = v6;
}

- (void)_playButtonActivate:(id)a3
{
  v4 = _UISolariumEnabled();
  button = self->_button;
  v6 = 0.95;
  if (!v4)
  {
    v6 = 0.5;
  }

  v7 = self->_button;

  [(UIButton *)v7 setAlpha:v6];
}

- (void)_playButtonDeactivate:(id)a3
{
  v4 = _UISolariumEnabled();
  button = self->_button;
  v6 = 0.3;
  if (v4)
  {
    v6 = 1.0;
  }

  v7 = self->_button;

  [(UIButton *)v7 setAlpha:v6];
}

- (void)_playButtonTapped:(id)a3
{
  v10 = a3;
  [(QLOverlayPlayButton *)self _playButtonDeactivate:?];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (self->_action)
  {
    action = self->_action;
  }

  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_target);
    v8 = v7;
    if (self->_action)
    {
      v9 = self->_action;
    }

    else
    {
      v9 = 0;
    }

    [v7 performSelector:v9 withObject:self];
  }
}

@end