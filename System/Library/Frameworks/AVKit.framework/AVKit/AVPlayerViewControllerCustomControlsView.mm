@interface AVPlayerViewControllerCustomControlsView
- (AVPlayerViewControllerCustomControlsView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setAreTransportControlsVisible:(BOOL)visible;
- (void)setAreVolumeControlsVisible:(BOOL)visible;
- (void)updateConstraints;
@end

@implementation AVPlayerViewControllerCustomControlsView

- (void)updateConstraints
{
  if (self->_needsInitialConstraints)
  {
    self->_needsInitialConstraints = 0;
    array = [MEMORY[0x1E695DF70] array];
    unobscuredTopAreaLayoutGuideProvidingView = [(AVPlayerViewControllerCustomControlsView *)self unobscuredTopAreaLayoutGuideProvidingView];
    leadingAnchor = [unobscuredTopAreaLayoutGuideProvidingView leadingAnchor];
    displayModeControlsAreaLayoutGuideProvidingView = [(AVPlayerViewControllerCustomControlsView *)self displayModeControlsAreaLayoutGuideProvidingView];
    trailingAnchor = [displayModeControlsAreaLayoutGuideProvidingView trailingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:6.0];
    [array addObject:v8];

    unobscuredTopAreaLayoutGuideProvidingView2 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredTopAreaLayoutGuideProvidingView];
    trailingAnchor2 = [unobscuredTopAreaLayoutGuideProvidingView2 trailingAnchor];
    volumeControlsAreaLayoutGuideProvidingView = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    leadingAnchor2 = [volumeControlsAreaLayoutGuideProvidingView leadingAnchor];
    v13 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor2 constant:-6.0];
    [array addObject:v13];

    unobscuredTopAreaLayoutGuideProvidingView3 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredTopAreaLayoutGuideProvidingView];
    topAnchor = [unobscuredTopAreaLayoutGuideProvidingView3 topAnchor];
    volumeControlsAreaLayoutGuideProvidingView2 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    topAnchor2 = [volumeControlsAreaLayoutGuideProvidingView2 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    [array addObject:v18];

    unobscuredTopAreaLayoutGuideProvidingView4 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredTopAreaLayoutGuideProvidingView];
    bottomAnchor = [unobscuredTopAreaLayoutGuideProvidingView4 bottomAnchor];
    volumeControlsAreaLayoutGuideProvidingView3 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    bottomAnchor2 = [volumeControlsAreaLayoutGuideProvidingView3 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    [array addObject:v23];

    unobscuredCenterAreaLayoutGuideProvidingView = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    leadingAnchor3 = [unobscuredCenterAreaLayoutGuideProvidingView leadingAnchor];
    displayModeControlsAreaLayoutGuideProvidingView2 = [(AVPlayerViewControllerCustomControlsView *)self displayModeControlsAreaLayoutGuideProvidingView];
    leadingAnchor4 = [displayModeControlsAreaLayoutGuideProvidingView2 leadingAnchor];
    LODWORD(v28) = 1148846080;
    v29 = [leadingAnchor3 avkit_constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:0.0 priority:v28];
    [array addObject:v29];

    unobscuredCenterAreaLayoutGuideProvidingView2 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    trailingAnchor3 = [unobscuredCenterAreaLayoutGuideProvidingView2 trailingAnchor];
    volumeControlsAreaLayoutGuideProvidingView4 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    trailingAnchor4 = [volumeControlsAreaLayoutGuideProvidingView4 trailingAnchor];
    LODWORD(v34) = 1148846080;
    v35 = [trailingAnchor3 avkit_constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:0.0 priority:v34];
    [array addObject:v35];

    unobscuredCenterAreaLayoutGuideProvidingView3 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    leadingAnchor5 = [unobscuredCenterAreaLayoutGuideProvidingView3 leadingAnchor];
    safeAreaLayoutGuide = [(AVPlayerViewControllerCustomControlsView *)self safeAreaLayoutGuide];
    leadingAnchor6 = [safeAreaLayoutGuide leadingAnchor];
    v40 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6 constant:0.0];
    [array addObject:v40];

    unobscuredCenterAreaLayoutGuideProvidingView4 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    trailingAnchor5 = [unobscuredCenterAreaLayoutGuideProvidingView4 trailingAnchor];
    safeAreaLayoutGuide2 = [(AVPlayerViewControllerCustomControlsView *)self safeAreaLayoutGuide];
    trailingAnchor6 = [safeAreaLayoutGuide2 trailingAnchor];
    v45 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6 constant:0.0];
    [array addObject:v45];

    unobscuredCenterAreaLayoutGuideProvidingView5 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    topAnchor3 = [unobscuredCenterAreaLayoutGuideProvidingView5 topAnchor];
    volumeControlsAreaLayoutGuideProvidingView5 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    bottomAnchor3 = [volumeControlsAreaLayoutGuideProvidingView5 bottomAnchor];
    v50 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:6.0];
    [array addObject:v50];

    unobscuredCenterAreaLayoutGuideProvidingView6 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    bottomAnchor4 = [unobscuredCenterAreaLayoutGuideProvidingView6 bottomAnchor];
    transportControlsAreaLayoutGuideProvidingView = [(AVPlayerViewControllerCustomControlsView *)self transportControlsAreaLayoutGuideProvidingView];
    topAnchor4 = [transportControlsAreaLayoutGuideProvidingView topAnchor];
    v55 = [bottomAnchor4 constraintEqualToAnchor:topAnchor4 constant:-6.0];
    [array addObject:v55];

    animatedUnobscuredCenterAreaLayoutGuideProvidingView = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    leadingAnchor7 = [animatedUnobscuredCenterAreaLayoutGuideProvidingView leadingAnchor];
    unobscuredCenterAreaLayoutGuideProvidingView7 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    leadingAnchor8 = [unobscuredCenterAreaLayoutGuideProvidingView7 leadingAnchor];
    v60 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:0.0];
    [array addObject:v60];

    animatedUnobscuredCenterAreaLayoutGuideProvidingView2 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    trailingAnchor7 = [animatedUnobscuredCenterAreaLayoutGuideProvidingView2 trailingAnchor];
    unobscuredCenterAreaLayoutGuideProvidingView8 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    trailingAnchor8 = [unobscuredCenterAreaLayoutGuideProvidingView8 trailingAnchor];
    v65 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:0.0];
    [array addObject:v65];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
    animatedUnobscuredCenterAreaLayoutGuideProvidingView3 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    topAnchor5 = [animatedUnobscuredCenterAreaLayoutGuideProvidingView3 topAnchor];
    volumeControlsAreaLayoutGuideProvidingView6 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    topAnchor6 = [volumeControlsAreaLayoutGuideProvidingView6 topAnchor];
    v70 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:0.0];
    volumeControlsHiddenConstraint = self->_volumeControlsHiddenConstraint;
    self->_volumeControlsHiddenConstraint = v70;

    animatedUnobscuredCenterAreaLayoutGuideProvidingView4 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    topAnchor7 = [animatedUnobscuredCenterAreaLayoutGuideProvidingView4 topAnchor];
    volumeControlsAreaLayoutGuideProvidingView7 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    bottomAnchor5 = [volumeControlsAreaLayoutGuideProvidingView7 bottomAnchor];
    v76 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:6.0];
    volumeControlsVisibleConstraint = self->_volumeControlsVisibleConstraint;
    self->_volumeControlsVisibleConstraint = v76;

    animatedUnobscuredCenterAreaLayoutGuideProvidingView5 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    bottomAnchor6 = [animatedUnobscuredCenterAreaLayoutGuideProvidingView5 bottomAnchor];
    transportControlsAreaLayoutGuideProvidingView2 = [(AVPlayerViewControllerCustomControlsView *)self transportControlsAreaLayoutGuideProvidingView];
    bottomAnchor7 = [transportControlsAreaLayoutGuideProvidingView2 bottomAnchor];
    v82 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    transportControlsHiddenConstraint = self->_transportControlsHiddenConstraint;
    self->_transportControlsHiddenConstraint = v82;

    animatedUnobscuredCenterAreaLayoutGuideProvidingView6 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    bottomAnchor8 = [animatedUnobscuredCenterAreaLayoutGuideProvidingView6 bottomAnchor];
    transportControlsAreaLayoutGuideProvidingView3 = [(AVPlayerViewControllerCustomControlsView *)self transportControlsAreaLayoutGuideProvidingView];
    topAnchor8 = [transportControlsAreaLayoutGuideProvidingView3 topAnchor];
    v88 = [bottomAnchor8 constraintEqualToAnchor:topAnchor8 constant:-6.0];
    transportControlsVisibleConstraint = self->_transportControlsVisibleConstraint;
    self->_transportControlsVisibleConstraint = v88;
  }

  [(NSLayoutConstraint *)self->_volumeControlsHiddenConstraint setActive:[(AVPlayerViewControllerCustomControlsView *)self areVolumeControlsVisible]^ 1];
  [(NSLayoutConstraint *)self->_volumeControlsVisibleConstraint setActive:[(AVPlayerViewControllerCustomControlsView *)self areVolumeControlsVisible]];
  [(NSLayoutConstraint *)self->_transportControlsHiddenConstraint setActive:[(AVPlayerViewControllerCustomControlsView *)self areTransportControlsVisible]^ 1];
  [(NSLayoutConstraint *)self->_transportControlsVisibleConstraint setActive:[(AVPlayerViewControllerCustomControlsView *)self areTransportControlsVisible]];
  v90.receiver = self;
  v90.super_class = AVPlayerViewControllerCustomControlsView;
  [(AVPlayerViewControllerCustomControlsView *)&v90 updateConstraints];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = AVPlayerViewControllerCustomControlsView;
  v5 = [(AVPlayerViewControllerCustomControlsView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)setAreTransportControlsVisible:(BOOL)visible
{
  if (self->_areTransportControlsVisible != visible)
  {
    self->_areTransportControlsVisible = visible;
    [(AVPlayerViewControllerCustomControlsView *)self setNeedsUpdateConstraints];
  }
}

- (void)setAreVolumeControlsVisible:(BOOL)visible
{
  if (self->_areVolumeControlsVisible != visible)
  {
    self->_areVolumeControlsVisible = visible;
    [(AVPlayerViewControllerCustomControlsView *)self setNeedsUpdateConstraints];
  }
}

- (AVPlayerViewControllerCustomControlsView)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = AVPlayerViewControllerCustomControlsView;
  v3 = [(AVPlayerViewControllerCustomControlsView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_needsInitialConstraints = 1;
    v5 = [AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    transportControlsAreaLayoutGuideProvidingView = v4->_transportControlsAreaLayoutGuideProvidingView;
    v4->_transportControlsAreaLayoutGuideProvidingView = v10;

    layoutMarginsGuide = [(UIView *)v4->_transportControlsAreaLayoutGuideProvidingView layoutMarginsGuide];
    transportControlsAreaLayoutGuide = v4->_transportControlsAreaLayoutGuide;
    v4->_transportControlsAreaLayoutGuide = layoutMarginsGuide;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_transportControlsAreaLayoutGuideProvidingView];
    v14 = [[AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc] initWithFrame:v6, v7, v8, v9];
    displayModeControlsAreaLayoutGuideProvidingView = v4->_displayModeControlsAreaLayoutGuideProvidingView;
    v4->_displayModeControlsAreaLayoutGuideProvidingView = &v14->super;

    layoutMarginsGuide2 = [(UIView *)v4->_displayModeControlsAreaLayoutGuideProvidingView layoutMarginsGuide];
    displayModeControlsAreaLayoutGuide = v4->_displayModeControlsAreaLayoutGuide;
    v4->_displayModeControlsAreaLayoutGuide = layoutMarginsGuide2;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_displayModeControlsAreaLayoutGuideProvidingView];
    v18 = [[AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc] initWithFrame:v6, v7, v8, v9];
    volumeControlsAreaLayoutGuideProvidingView = v4->_volumeControlsAreaLayoutGuideProvidingView;
    v4->_volumeControlsAreaLayoutGuideProvidingView = &v18->super;

    layoutMarginsGuide3 = [(UIView *)v4->_volumeControlsAreaLayoutGuideProvidingView layoutMarginsGuide];
    volumeControlsAreaLayoutGuide = v4->_volumeControlsAreaLayoutGuide;
    v4->_volumeControlsAreaLayoutGuide = layoutMarginsGuide3;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_volumeControlsAreaLayoutGuideProvidingView];
    v22 = [[AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc] initWithFrame:v6, v7, v8, v9];
    unobscuredCenterAreaLayoutGuideProvidingView = v4->_unobscuredCenterAreaLayoutGuideProvidingView;
    v4->_unobscuredCenterAreaLayoutGuideProvidingView = &v22->super;

    layoutMarginsGuide4 = [(UIView *)v4->_unobscuredCenterAreaLayoutGuideProvidingView layoutMarginsGuide];
    unobscuredCenterAreaLayoutGuide = v4->_unobscuredCenterAreaLayoutGuide;
    v4->_unobscuredCenterAreaLayoutGuide = layoutMarginsGuide4;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_unobscuredCenterAreaLayoutGuideProvidingView];
    v26 = [[AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc] initWithFrame:v6, v7, v8, v9];
    animatedUnobscuredCenterAreaLayoutGuideProvidingView = v4->_animatedUnobscuredCenterAreaLayoutGuideProvidingView;
    v4->_animatedUnobscuredCenterAreaLayoutGuideProvidingView = &v26->super;

    layoutMarginsGuide5 = [(UIView *)v4->_animatedUnobscuredCenterAreaLayoutGuideProvidingView layoutMarginsGuide];
    animatedUnobscuredCenterAreaLayoutGuide = v4->_animatedUnobscuredCenterAreaLayoutGuide;
    v4->_animatedUnobscuredCenterAreaLayoutGuide = layoutMarginsGuide5;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    v30 = [[AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc] initWithFrame:v6, v7, v8, v9];
    unobscuredTopAreaLayoutGuideProvidingView = v4->_unobscuredTopAreaLayoutGuideProvidingView;
    v4->_unobscuredTopAreaLayoutGuideProvidingView = &v30->super;

    layoutMarginsGuide6 = [(UIView *)v4->_unobscuredTopAreaLayoutGuideProvidingView layoutMarginsGuide];
    unobscuredTopAreaLayoutGuide = v4->_unobscuredTopAreaLayoutGuide;
    v4->_unobscuredTopAreaLayoutGuide = layoutMarginsGuide6;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_unobscuredTopAreaLayoutGuideProvidingView];
  }

  return v4;
}

@end