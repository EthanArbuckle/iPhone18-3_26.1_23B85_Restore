@interface AFUISiriCarPlayFullScreenBackgroundView
- (AFUISiriCarPlayFullScreenBackgroundView)initWithFrame:(CGRect)a3;
- (void)_setupAuraBackdropViews;
- (void)updateVisibility:(BOOL)a3;
@end

@implementation AFUISiriCarPlayFullScreenBackgroundView

- (AFUISiriCarPlayFullScreenBackgroundView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AFUISiriCarPlayFullScreenBackgroundView;
  v3 = [(AFUISiriCarPlayFullScreenBackgroundView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AFUISiriCarPlayFullScreenBackgroundView *)v3 _setupAuraBackdropViews];
  }

  return v4;
}

- (void)_setupAuraBackdropViews
{
  v51[12] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v50 = [v3 pathForResource:@"auraLight" ofType:@"png"];

  v49 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v50];
  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v49];
  auraView = self->_auraView;
  self->_auraView = v4;

  [(UIImageView *)self->_auraView setAlpha:0.0];
  [(UIImageView *)self->_auraView setContentMode:2];
  [(UIImageView *)self->_auraView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AFUISiriCarPlayFullScreenBackgroundView *)self addSubview:self->_auraView];
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v6;

  v48 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_12];
  [(UIView *)self->_backgroundView setBackgroundColor:v48];
  [(UIView *)self->_backgroundView setAlpha:0.0];
  [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AFUISiriCarPlayFullScreenBackgroundView *)self addSubview:self->_backgroundView];
  v8 = objc_alloc_init(MEMORY[0x277D75D68]);
  effectView = self->_effectView;
  self->_effectView = v8;

  [(UIVisualEffectView *)self->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AFUISiriCarPlayFullScreenBackgroundView *)self addSubview:self->_effectView];
  v32 = MEMORY[0x277CCAAD0];
  v47 = [(UIImageView *)self->_auraView topAnchor];
  v46 = [(AFUISiriCarPlayFullScreenBackgroundView *)self topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v51[0] = v45;
  v44 = [(UIImageView *)self->_auraView leadingAnchor];
  v43 = [(AFUISiriCarPlayFullScreenBackgroundView *)self leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v51[1] = v42;
  v41 = [(UIImageView *)self->_auraView trailingAnchor];
  v40 = [(AFUISiriCarPlayFullScreenBackgroundView *)self trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v51[2] = v39;
  v38 = [(UIImageView *)self->_auraView bottomAnchor];
  v37 = [(AFUISiriCarPlayFullScreenBackgroundView *)self bottomAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v51[3] = v36;
  v35 = [(UIView *)self->_backgroundView topAnchor];
  v34 = [(AFUISiriCarPlayFullScreenBackgroundView *)self topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v51[4] = v33;
  v31 = [(UIView *)self->_backgroundView leadingAnchor];
  v30 = [(AFUISiriCarPlayFullScreenBackgroundView *)self leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v51[5] = v29;
  v28 = [(UIView *)self->_backgroundView trailingAnchor];
  v27 = [(AFUISiriCarPlayFullScreenBackgroundView *)self trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v51[6] = v26;
  v25 = [(UIView *)self->_backgroundView bottomAnchor];
  v24 = [(AFUISiriCarPlayFullScreenBackgroundView *)self bottomAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v51[7] = v23;
  v22 = [(UIVisualEffectView *)self->_effectView topAnchor];
  v21 = [(AFUISiriCarPlayFullScreenBackgroundView *)self topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v51[8] = v20;
  v10 = [(UIVisualEffectView *)self->_effectView leadingAnchor];
  v11 = [(AFUISiriCarPlayFullScreenBackgroundView *)self leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v51[9] = v12;
  v13 = [(UIVisualEffectView *)self->_effectView trailingAnchor];
  v14 = [(AFUISiriCarPlayFullScreenBackgroundView *)self trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v51[10] = v15;
  v16 = [(UIVisualEffectView *)self->_effectView bottomAnchor];
  v17 = [(AFUISiriCarPlayFullScreenBackgroundView *)self bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v51[11] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:12];
  [v32 activateConstraints:v19];
}

id __66__AFUISiriCarPlayFullScreenBackgroundView__setupAuraBackdropViews__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 1)
  {
    [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.550000012];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithRed:0.104699999 green:0.104699999 blue:0.104699999 alpha:0.5];
  }
  v2 = ;

  return v2;
}

- (void)updateVisibility:(BOOL)a3
{
  v3 = a3;
  auraView = self->_auraView;
  v6 = 0.300000012;
  if (a3)
  {
    v7 = 1.0;
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  [(UIImageView *)auraView setAlpha:v6];
  [(UIView *)self->_backgroundView setAlpha:v7];
  v10 = [MEMORY[0x277CBEB18] array];
  if (v3)
  {
    v8 = [MEMORY[0x277D75358] colorEffectSaturate:3.0];
    [v10 addObject:v8];

    v9 = [MEMORY[0x277D75210] effectWithBlurRadius:22.5];
    [v10 addObject:v9];
  }

  [(UIVisualEffectView *)self->_effectView setBackgroundEffects:v10];
}

@end