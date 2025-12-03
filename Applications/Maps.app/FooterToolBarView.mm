@interface FooterToolBarView
- (FooterToolBarView)initWithFrame:(CGRect)frame;
- (id)delegate;
- (void)layoutSubviews;
- (void)setState:(unint64_t)state;
- (void)updateTheme;
@end

@implementation FooterToolBarView

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(FooterToolBarView *)self setCanAdaptToWidth:0];

    [(FooterToolBarView *)self _updateContent];
  }
}

- (void)updateTheme
{
  theme = [(FooterToolBarView *)self theme];
  keyColor = [theme keyColor];
  toolBar = [(FooterToolBarView *)self toolBar];
  [toolBar setTintColor:keyColor];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FooterToolBarView;
  [(FooterToolBarView *)&v3 layoutSubviews];
  if ([(FooterToolBarView *)self canAdaptToWidth])
  {
    [(FooterToolBarView *)self _updateContent];
  }
}

- (FooterToolBarView)initWithFrame:(CGRect)frame
{
  v44.receiver = self;
  v44.super_class = FooterToolBarView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(FooterToolBarView *)&v44 initWithFrame:CGRectZero.origin.x, y, width, height];
  v7 = height;
  if (height)
  {
    [(FooterToolBarView *)height setAccessibilityIdentifier:@"FooterToolBarView"];
    v8 = [MapsTheme visualEffectViewAllowingBlur:1];
    blurView = v7->_blurView;
    v7->_blurView = v8;

    [(UIVisualEffectView *)v7->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FooterToolBarView *)v7 addSubview:v7->_blurView];
    v10 = [(FooterToolBarView *)v7 _maps_addHairlineAtTopWithMargin:0.0];
    v11 = [[UIToolbar alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v43 = objc_alloc_init(UIToolbarAppearance);
    [v43 setBackgroundEffect:0];
    [v11 setStandardAppearance:v43];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setTintAdjustmentMode:1];
    [v11 setAccessibilityIdentifier:@"FooterToolBar"];
    contentView = [(FooterToolBarView *)v7 contentView];
    [contentView addSubview:v11];

    [(FooterToolBarView *)v7 setToolBar:v11];
    bottomAnchor = [v11 bottomAnchor];
    safeAreaLayoutGuide = [(FooterToolBarView *)v7 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    LODWORD(v17) = 1140457472;
    v18 = v16;
    v30 = v16;
    [v16 setPriority:v17];
    topAnchor = [(UIVisualEffectView *)v7->_blurView topAnchor];
    topAnchor2 = [(FooterToolBarView *)v7 topAnchor];
    v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v45[0] = v40;
    bottomAnchor3 = [(UIVisualEffectView *)v7->_blurView bottomAnchor];
    bottomAnchor4 = [(FooterToolBarView *)v7 bottomAnchor];
    v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v45[1] = v37;
    leadingAnchor = [(UIVisualEffectView *)v7->_blurView leadingAnchor];
    leadingAnchor2 = [(FooterToolBarView *)v7 leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v45[2] = v34;
    trailingAnchor = [(UIVisualEffectView *)v7->_blurView trailingAnchor];
    trailingAnchor2 = [(FooterToolBarView *)v7 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v45[3] = v31;
    topAnchor3 = [v11 topAnchor];
    topAnchor4 = [(FooterToolBarView *)v7 topAnchor];
    v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v45[4] = v19;
    leadingAnchor3 = [v11 leadingAnchor];
    leadingAnchor4 = [(FooterToolBarView *)v7 leadingAnchor];
    v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v45[5] = v22;
    trailingAnchor3 = [v11 trailingAnchor];
    trailingAnchor4 = [(FooterToolBarView *)v7 trailingAnchor];
    v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v45[6] = v25;
    v45[7] = v18;
    v26 = [NSArray arrayWithObjects:v45 count:8];
    [NSLayoutConstraint activateConstraints:v26];
  }

  return v7;
}

@end