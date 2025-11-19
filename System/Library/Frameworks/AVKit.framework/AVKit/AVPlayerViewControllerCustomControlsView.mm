@interface AVPlayerViewControllerCustomControlsView
- (AVPlayerViewControllerCustomControlsView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setAreTransportControlsVisible:(BOOL)a3;
- (void)setAreVolumeControlsVisible:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation AVPlayerViewControllerCustomControlsView

- (void)updateConstraints
{
  if (self->_needsInitialConstraints)
  {
    self->_needsInitialConstraints = 0;
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredTopAreaLayoutGuideProvidingView];
    v5 = [v4 leadingAnchor];
    v6 = [(AVPlayerViewControllerCustomControlsView *)self displayModeControlsAreaLayoutGuideProvidingView];
    v7 = [v6 trailingAnchor];
    v8 = [v5 constraintEqualToAnchor:v7 constant:6.0];
    [v3 addObject:v8];

    v9 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredTopAreaLayoutGuideProvidingView];
    v10 = [v9 trailingAnchor];
    v11 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    v12 = [v11 leadingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:-6.0];
    [v3 addObject:v13];

    v14 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredTopAreaLayoutGuideProvidingView];
    v15 = [v14 topAnchor];
    v16 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    v17 = [v16 topAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:0.0];
    [v3 addObject:v18];

    v19 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredTopAreaLayoutGuideProvidingView];
    v20 = [v19 bottomAnchor];
    v21 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 constant:0.0];
    [v3 addObject:v23];

    v24 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    v25 = [v24 leadingAnchor];
    v26 = [(AVPlayerViewControllerCustomControlsView *)self displayModeControlsAreaLayoutGuideProvidingView];
    v27 = [v26 leadingAnchor];
    LODWORD(v28) = 1148846080;
    v29 = [v25 avkit_constraintGreaterThanOrEqualToAnchor:v27 constant:0.0 priority:v28];
    [v3 addObject:v29];

    v30 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    v31 = [v30 trailingAnchor];
    v32 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    v33 = [v32 trailingAnchor];
    LODWORD(v34) = 1148846080;
    v35 = [v31 avkit_constraintLessThanOrEqualToAnchor:v33 constant:0.0 priority:v34];
    [v3 addObject:v35];

    v36 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    v37 = [v36 leadingAnchor];
    v38 = [(AVPlayerViewControllerCustomControlsView *)self safeAreaLayoutGuide];
    v39 = [v38 leadingAnchor];
    v40 = [v37 constraintGreaterThanOrEqualToAnchor:v39 constant:0.0];
    [v3 addObject:v40];

    v41 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    v42 = [v41 trailingAnchor];
    v43 = [(AVPlayerViewControllerCustomControlsView *)self safeAreaLayoutGuide];
    v44 = [v43 trailingAnchor];
    v45 = [v42 constraintLessThanOrEqualToAnchor:v44 constant:0.0];
    [v3 addObject:v45];

    v46 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    v47 = [v46 topAnchor];
    v48 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    v49 = [v48 bottomAnchor];
    v50 = [v47 constraintEqualToAnchor:v49 constant:6.0];
    [v3 addObject:v50];

    v51 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    v52 = [v51 bottomAnchor];
    v53 = [(AVPlayerViewControllerCustomControlsView *)self transportControlsAreaLayoutGuideProvidingView];
    v54 = [v53 topAnchor];
    v55 = [v52 constraintEqualToAnchor:v54 constant:-6.0];
    [v3 addObject:v55];

    v56 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    v57 = [v56 leadingAnchor];
    v58 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    v59 = [v58 leadingAnchor];
    v60 = [v57 constraintEqualToAnchor:v59 constant:0.0];
    [v3 addObject:v60];

    v61 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    v62 = [v61 trailingAnchor];
    v63 = [(AVPlayerViewControllerCustomControlsView *)self unobscuredCenterAreaLayoutGuideProvidingView];
    v64 = [v63 trailingAnchor];
    v65 = [v62 constraintEqualToAnchor:v64 constant:0.0];
    [v3 addObject:v65];

    [MEMORY[0x1E696ACD8] activateConstraints:v3];
    v66 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    v67 = [v66 topAnchor];
    v68 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    v69 = [v68 topAnchor];
    v70 = [v67 constraintEqualToAnchor:v69 constant:0.0];
    volumeControlsHiddenConstraint = self->_volumeControlsHiddenConstraint;
    self->_volumeControlsHiddenConstraint = v70;

    v72 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    v73 = [v72 topAnchor];
    v74 = [(AVPlayerViewControllerCustomControlsView *)self volumeControlsAreaLayoutGuideProvidingView];
    v75 = [v74 bottomAnchor];
    v76 = [v73 constraintEqualToAnchor:v75 constant:6.0];
    volumeControlsVisibleConstraint = self->_volumeControlsVisibleConstraint;
    self->_volumeControlsVisibleConstraint = v76;

    v78 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    v79 = [v78 bottomAnchor];
    v80 = [(AVPlayerViewControllerCustomControlsView *)self transportControlsAreaLayoutGuideProvidingView];
    v81 = [v80 bottomAnchor];
    v82 = [v79 constraintEqualToAnchor:v81];
    transportControlsHiddenConstraint = self->_transportControlsHiddenConstraint;
    self->_transportControlsHiddenConstraint = v82;

    v84 = [(AVPlayerViewControllerCustomControlsView *)self animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    v85 = [v84 bottomAnchor];
    v86 = [(AVPlayerViewControllerCustomControlsView *)self transportControlsAreaLayoutGuideProvidingView];
    v87 = [v86 topAnchor];
    v88 = [v85 constraintEqualToAnchor:v87 constant:-6.0];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVPlayerViewControllerCustomControlsView;
  v5 = [(AVPlayerViewControllerCustomControlsView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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

- (void)setAreTransportControlsVisible:(BOOL)a3
{
  if (self->_areTransportControlsVisible != a3)
  {
    self->_areTransportControlsVisible = a3;
    [(AVPlayerViewControllerCustomControlsView *)self setNeedsUpdateConstraints];
  }
}

- (void)setAreVolumeControlsVisible:(BOOL)a3
{
  if (self->_areVolumeControlsVisible != a3)
  {
    self->_areVolumeControlsVisible = a3;
    [(AVPlayerViewControllerCustomControlsView *)self setNeedsUpdateConstraints];
  }
}

- (AVPlayerViewControllerCustomControlsView)initWithFrame:(CGRect)a3
{
  v35.receiver = self;
  v35.super_class = AVPlayerViewControllerCustomControlsView;
  v3 = [(AVPlayerViewControllerCustomControlsView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v12 = [(UIView *)v4->_transportControlsAreaLayoutGuideProvidingView layoutMarginsGuide];
    transportControlsAreaLayoutGuide = v4->_transportControlsAreaLayoutGuide;
    v4->_transportControlsAreaLayoutGuide = v12;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_transportControlsAreaLayoutGuideProvidingView];
    v14 = [[AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc] initWithFrame:v6, v7, v8, v9];
    displayModeControlsAreaLayoutGuideProvidingView = v4->_displayModeControlsAreaLayoutGuideProvidingView;
    v4->_displayModeControlsAreaLayoutGuideProvidingView = &v14->super;

    v16 = [(UIView *)v4->_displayModeControlsAreaLayoutGuideProvidingView layoutMarginsGuide];
    displayModeControlsAreaLayoutGuide = v4->_displayModeControlsAreaLayoutGuide;
    v4->_displayModeControlsAreaLayoutGuide = v16;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_displayModeControlsAreaLayoutGuideProvidingView];
    v18 = [[AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc] initWithFrame:v6, v7, v8, v9];
    volumeControlsAreaLayoutGuideProvidingView = v4->_volumeControlsAreaLayoutGuideProvidingView;
    v4->_volumeControlsAreaLayoutGuideProvidingView = &v18->super;

    v20 = [(UIView *)v4->_volumeControlsAreaLayoutGuideProvidingView layoutMarginsGuide];
    volumeControlsAreaLayoutGuide = v4->_volumeControlsAreaLayoutGuide;
    v4->_volumeControlsAreaLayoutGuide = v20;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_volumeControlsAreaLayoutGuideProvidingView];
    v22 = [[AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc] initWithFrame:v6, v7, v8, v9];
    unobscuredCenterAreaLayoutGuideProvidingView = v4->_unobscuredCenterAreaLayoutGuideProvidingView;
    v4->_unobscuredCenterAreaLayoutGuideProvidingView = &v22->super;

    v24 = [(UIView *)v4->_unobscuredCenterAreaLayoutGuideProvidingView layoutMarginsGuide];
    unobscuredCenterAreaLayoutGuide = v4->_unobscuredCenterAreaLayoutGuide;
    v4->_unobscuredCenterAreaLayoutGuide = v24;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_unobscuredCenterAreaLayoutGuideProvidingView];
    v26 = [[AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc] initWithFrame:v6, v7, v8, v9];
    animatedUnobscuredCenterAreaLayoutGuideProvidingView = v4->_animatedUnobscuredCenterAreaLayoutGuideProvidingView;
    v4->_animatedUnobscuredCenterAreaLayoutGuideProvidingView = &v26->super;

    v28 = [(UIView *)v4->_animatedUnobscuredCenterAreaLayoutGuideProvidingView layoutMarginsGuide];
    animatedUnobscuredCenterAreaLayoutGuide = v4->_animatedUnobscuredCenterAreaLayoutGuide;
    v4->_animatedUnobscuredCenterAreaLayoutGuide = v28;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_animatedUnobscuredCenterAreaLayoutGuideProvidingView];
    v30 = [[AVPlayerViewControllerCustomControlsViewLayoutMarginsGuideProvidingView alloc] initWithFrame:v6, v7, v8, v9];
    unobscuredTopAreaLayoutGuideProvidingView = v4->_unobscuredTopAreaLayoutGuideProvidingView;
    v4->_unobscuredTopAreaLayoutGuideProvidingView = &v30->super;

    v32 = [(UIView *)v4->_unobscuredTopAreaLayoutGuideProvidingView layoutMarginsGuide];
    unobscuredTopAreaLayoutGuide = v4->_unobscuredTopAreaLayoutGuide;
    v4->_unobscuredTopAreaLayoutGuide = v32;

    [(AVPlayerViewControllerCustomControlsView *)v4 addSubview:v4->_unobscuredTopAreaLayoutGuideProvidingView];
  }

  return v4;
}

@end