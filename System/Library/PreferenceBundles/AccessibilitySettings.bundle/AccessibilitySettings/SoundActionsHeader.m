@interface SoundActionsHeader
- (SoundActionsHeader)initWithFrame:(CGRect)a3;
- (void)_setupVisualizerView;
@end

@implementation SoundActionsHeader

- (SoundActionsHeader)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SoundActionsHeader;
  v3 = [(SoundActionsHeader *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SoundActionsHeader *)v3 _setupVisualizerView];
  }

  return v4;
}

- (void)_setupVisualizerView
{
  visualizerView = self->_visualizerView;
  if (visualizerView)
  {
    [(SoundActionsPracticeVisualizerView *)visualizerView removeFromSuperview];
  }

  v4 = objc_alloc_init(SoundActionsPracticeVisualizerView);
  v5 = self->_visualizerView;
  self->_visualizerView = v4;

  [(SoundActionsPracticeVisualizerView *)self->_visualizerView setIsAccessibilityElement:1];
  v6 = settingsLocString(@"SOUND_ACTION_PRACTICE_PAGE_HINT", @"Accessibility");
  [(SoundActionsPracticeVisualizerView *)self->_visualizerView setAccessibilityHint:v6];

  v7 = self->_visualizerView;
  v8 = [(SoundActionsPracticeVisualizerView *)v7 accessibilityTraits];
  [(SoundActionsPracticeVisualizerView *)v7 setAccessibilityTraits:UIAccessibilityTraitImage | v8];
  [(SoundActionsPracticeVisualizerView *)self->_visualizerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SoundActionsHeader *)self addSubview:self->_visualizerView];
  v9 = [NSLayoutConstraint constraintWithItem:self->_visualizerView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:20.0];
  v14[0] = v9;
  v10 = [NSLayoutConstraint constraintWithItem:self->_visualizerView attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:-40.0];
  v14[1] = v10;
  v11 = [NSLayoutConstraint constraintWithItem:self->_visualizerView attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:20.0];
  v14[2] = v11;
  v12 = [NSLayoutConstraint constraintWithItem:self->_visualizerView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-20.0];
  v14[3] = v12;
  v13 = [NSArray arrayWithObjects:v14 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

@end