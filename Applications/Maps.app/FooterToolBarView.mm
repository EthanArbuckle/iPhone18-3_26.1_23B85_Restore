@interface FooterToolBarView
- (FooterToolBarView)initWithFrame:(CGRect)a3;
- (id)delegate;
- (void)layoutSubviews;
- (void)setState:(unint64_t)a3;
- (void)updateTheme;
@end

@implementation FooterToolBarView

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(FooterToolBarView *)self setCanAdaptToWidth:0];

    [(FooterToolBarView *)self _updateContent];
  }
}

- (void)updateTheme
{
  v5 = [(FooterToolBarView *)self theme];
  v3 = [v5 keyColor];
  v4 = [(FooterToolBarView *)self toolBar];
  [v4 setTintColor:v3];
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

- (FooterToolBarView)initWithFrame:(CGRect)a3
{
  v44.receiver = self;
  v44.super_class = FooterToolBarView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v6 = [(FooterToolBarView *)&v44 initWithFrame:CGRectZero.origin.x, y, width, height];
  v7 = v6;
  if (v6)
  {
    [(FooterToolBarView *)v6 setAccessibilityIdentifier:@"FooterToolBarView"];
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
    v12 = [(FooterToolBarView *)v7 contentView];
    [v12 addSubview:v11];

    [(FooterToolBarView *)v7 setToolBar:v11];
    v13 = [v11 bottomAnchor];
    v14 = [(FooterToolBarView *)v7 safeAreaLayoutGuide];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];

    LODWORD(v17) = 1140457472;
    v18 = v16;
    v30 = v16;
    [v16 setPriority:v17];
    v42 = [(UIVisualEffectView *)v7->_blurView topAnchor];
    v41 = [(FooterToolBarView *)v7 topAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v45[0] = v40;
    v39 = [(UIVisualEffectView *)v7->_blurView bottomAnchor];
    v38 = [(FooterToolBarView *)v7 bottomAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v45[1] = v37;
    v36 = [(UIVisualEffectView *)v7->_blurView leadingAnchor];
    v35 = [(FooterToolBarView *)v7 leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v45[2] = v34;
    v33 = [(UIVisualEffectView *)v7->_blurView trailingAnchor];
    v32 = [(FooterToolBarView *)v7 trailingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v45[3] = v31;
    v29 = [v11 topAnchor];
    v28 = [(FooterToolBarView *)v7 topAnchor];
    v19 = [v29 constraintEqualToAnchor:v28];
    v45[4] = v19;
    v20 = [v11 leadingAnchor];
    v21 = [(FooterToolBarView *)v7 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v45[5] = v22;
    v23 = [v11 trailingAnchor];
    v24 = [(FooterToolBarView *)v7 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v45[6] = v25;
    v45[7] = v18;
    v26 = [NSArray arrayWithObjects:v45 count:8];
    [NSLayoutConstraint activateConstraints:v26];
  }

  return v7;
}

@end