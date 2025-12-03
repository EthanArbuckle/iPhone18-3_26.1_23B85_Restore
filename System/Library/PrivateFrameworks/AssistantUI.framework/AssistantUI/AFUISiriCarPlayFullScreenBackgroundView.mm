@interface AFUISiriCarPlayFullScreenBackgroundView
- (AFUISiriCarPlayFullScreenBackgroundView)initWithFrame:(CGRect)frame;
- (void)_setupAuraBackdropViews;
- (void)updateVisibility:(BOOL)visibility;
@end

@implementation AFUISiriCarPlayFullScreenBackgroundView

- (AFUISiriCarPlayFullScreenBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AFUISiriCarPlayFullScreenBackgroundView;
  v3 = [(AFUISiriCarPlayFullScreenBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  topAnchor = [(UIImageView *)self->_auraView topAnchor];
  topAnchor2 = [(AFUISiriCarPlayFullScreenBackgroundView *)self topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v51[0] = v45;
  leadingAnchor = [(UIImageView *)self->_auraView leadingAnchor];
  leadingAnchor2 = [(AFUISiriCarPlayFullScreenBackgroundView *)self leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v51[1] = v42;
  trailingAnchor = [(UIImageView *)self->_auraView trailingAnchor];
  trailingAnchor2 = [(AFUISiriCarPlayFullScreenBackgroundView *)self trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v51[2] = v39;
  bottomAnchor = [(UIImageView *)self->_auraView bottomAnchor];
  bottomAnchor2 = [(AFUISiriCarPlayFullScreenBackgroundView *)self bottomAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v51[3] = v36;
  topAnchor3 = [(UIView *)self->_backgroundView topAnchor];
  topAnchor4 = [(AFUISiriCarPlayFullScreenBackgroundView *)self topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v51[4] = v33;
  leadingAnchor3 = [(UIView *)self->_backgroundView leadingAnchor];
  leadingAnchor4 = [(AFUISiriCarPlayFullScreenBackgroundView *)self leadingAnchor];
  v29 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v51[5] = v29;
  trailingAnchor3 = [(UIView *)self->_backgroundView trailingAnchor];
  trailingAnchor4 = [(AFUISiriCarPlayFullScreenBackgroundView *)self trailingAnchor];
  v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v51[6] = v26;
  bottomAnchor3 = [(UIView *)self->_backgroundView bottomAnchor];
  bottomAnchor4 = [(AFUISiriCarPlayFullScreenBackgroundView *)self bottomAnchor];
  v23 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v51[7] = v23;
  topAnchor5 = [(UIVisualEffectView *)self->_effectView topAnchor];
  topAnchor6 = [(AFUISiriCarPlayFullScreenBackgroundView *)self topAnchor];
  v20 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v51[8] = v20;
  leadingAnchor5 = [(UIVisualEffectView *)self->_effectView leadingAnchor];
  leadingAnchor6 = [(AFUISiriCarPlayFullScreenBackgroundView *)self leadingAnchor];
  v12 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v51[9] = v12;
  trailingAnchor5 = [(UIVisualEffectView *)self->_effectView trailingAnchor];
  trailingAnchor6 = [(AFUISiriCarPlayFullScreenBackgroundView *)self trailingAnchor];
  v15 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v51[10] = v15;
  bottomAnchor5 = [(UIVisualEffectView *)self->_effectView bottomAnchor];
  bottomAnchor6 = [(AFUISiriCarPlayFullScreenBackgroundView *)self bottomAnchor];
  v18 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
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

- (void)updateVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  auraView = self->_auraView;
  v6 = 0.300000012;
  if (visibility)
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
  array = [MEMORY[0x277CBEB18] array];
  if (visibilityCopy)
  {
    v8 = [MEMORY[0x277D75358] colorEffectSaturate:3.0];
    [array addObject:v8];

    v9 = [MEMORY[0x277D75210] effectWithBlurRadius:22.5];
    [array addObject:v9];
  }

  [(UIVisualEffectView *)self->_effectView setBackgroundEffects:array];
}

@end