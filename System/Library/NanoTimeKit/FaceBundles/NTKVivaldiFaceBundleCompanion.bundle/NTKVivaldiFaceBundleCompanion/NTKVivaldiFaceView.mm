@interface NTKVivaldiFaceView
- (NTKVivaldiFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyComplicationColor:(id)a3 slot:(id)a4;
- (void)_applyComplicationColor:(id)a3 withPalette:(id)a4 slot:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPaletteToComplications:(id)a3;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_createTimeView;
- (void)_handleLogoTap;
- (void)_loadLayoutRules;
- (void)_loadLogoView;
- (void)_loadSnapshotContentViews;
- (void)_prepareForSnapshotting;
- (void)_removeTimeView;
- (void)_removeViews;
- (void)_setupViews;
- (void)_unloadLogoView;
- (void)_unloadSnapshotContentViews;
- (void)_updateViewColorsWithPalette:(id)a3;
- (void)layoutSubviews;
@end

@implementation NTKVivaldiFaceView

- (NTKVivaldiFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v18.receiver = self;
  v18.super_class = NTKVivaldiFaceView;
  v9 = [(NTKVivaldiFaceView *)&v18 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_23C0A853C(v8, v16);
    v10 = objc_alloc(MEMORY[0x277D2C138]);
    v11 = [v10 initWithFaceView:v9 dialDiameter:v8 device:*v16];
    cornerComplicationFactory = v9->_cornerComplicationFactory;
    v9->_cornerComplicationFactory = v11;

    [(NTKWhistlerAnalogFaceViewComplicationFactory *)v9->_cornerComplicationFactory setUsesNarrowTopSlots:1];
    [(NTKVivaldiFaceView *)v9 setComplicationFactory:v9->_cornerComplicationFactory];
    v13 = [objc_alloc(MEMORY[0x277D2C080]) initWithDevice:v8];
    cornerFilterProvider = v9->_cornerFilterProvider;
    v9->_cornerFilterProvider = v13;
  }

  return v9;
}

- (void)_updateViewColorsWithPalette:(id)a3
{
  v4 = a3;
  [(NTKVivaldiFaceView *)self _applyPaletteToComplications:v4];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v5 = [(UIView *)self->_backgroundView layer];
  v6 = [v4 background];
  [v5 setBackgroundColor:{objc_msgSend(v6, "CGColor")}];

  v8 = [(NTKVivaldiFaceView *)self timeView];
  [v8 applyColorPalette:v4];
  v7 = [v4 secondaryComplication];

  [(NTKVictoryLogoButton *)self->_logoButton setTintColor:v7];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)_prepareForSnapshotting
{
  v2.receiver = self;
  v2.super_class = NTKVivaldiFaceView;
  [(NTKVivaldiFaceView *)&v2 _prepareForSnapshotting];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKVivaldiFaceView;
  [(NTKVivaldiFaceView *)&v3 _loadSnapshotContentViews];
  self->_breathScaleModifier = 1.0;
  self->_rubberBandScaleModifier = 1.0;
  [(NTKVivaldiFaceView *)self _createTimeView];
  [(NTKVivaldiFaceView *)self _setupViews];
  [(NTKVivaldiFaceView *)self _loadLogoView];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKVivaldiFaceView;
  [(NTKVivaldiFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKVivaldiFaceView *)self _removeTimeView];
  [(NTKVivaldiFaceView *)self _unloadLogoView];
  [(NTKVivaldiFaceView *)self _removeViews];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v8.receiver = self;
  v8.super_class = NTKVivaldiFaceView;
  v6 = a4;
  v7 = a3;
  [(NTKVivaldiFaceView *)&v8 _configureComplicationView:v7 forSlot:v6];
  [(NTKVivaldiFaceView *)self _applyComplicationColor:v7 slot:v6, v8.receiver, v8.super_class];
}

- (void)_applyPaletteToComplications:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23C0A76EC;
  v6[3] = &unk_278BAEBF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NTKVivaldiFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v6];
}

- (void)_applyComplicationColor:(id)a3 slot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKVivaldiFaceView *)self colorPalette];
  [(NTKVivaldiFaceView *)self _applyComplicationColor:v7 withPalette:v8 slot:v6];
}

- (void)_applyComplicationColor:(id)a3 withPalette:(id)a4 slot:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v17 display];
    [(NTKVivaldiFaceView *)self _applyComplicationColor:v10 withPalette:v8 slot:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cornerFilterProvider = self->_cornerFilterProvider;
      v12 = [v8 secondaryComplication];
      [(NTKMonochromeModel *)cornerFilterProvider setAccentColor:v12];

      v13 = self->_cornerFilterProvider;
      v14 = [v8 primaryComplication];
      [(NTKMonochromeModel *)v13 setNonAccentColor:v14];

      v15 = self->_cornerFilterProvider;
      v16 = [v8 background];
      [(NTKMonochromeModel *)v15 setBackgroundColor:v16];

      [v17 updateMonochromeColor];
    }
  }
}

- (void)_setupViews
{
  if (!self->_backgroundView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKVivaldiFaceView *)self bounds];
    v4 = [v3 initWithFrame:?];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v4;

    v6 = [(NTKVivaldiFaceView *)self contentView];
    [v6 addSubview:self->_backgroundView];
  }

  v7 = [(NTKVivaldiFaceView *)self contentView];
  [v7 sendSubviewToBack:self->_backgroundView];

  v9 = [(NTKVivaldiFaceView *)self contentView];
  v8 = [(NTKVivaldiFaceView *)self timeView];
  [v9 bringSubviewToFront:v8];
}

- (void)_removeViews
{
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(UIView *)backgroundView removeFromSuperview];
    v4 = self->_backgroundView;
    self->_backgroundView = 0;
  }
}

- (void)_createTimeView
{
  v3 = [(NTKVivaldiFaceView *)self timeView];

  if (!v3)
  {
    v4 = [NTKVivaldiTimeView alloc];
    v5 = [(NTKVivaldiFaceView *)self device];
    v6 = [MEMORY[0x277D75348] whiteColor];
    v8 = [(NTKVivaldiTimeView *)v4 initWithDevice:v5 color:v6];

    [(NTKVivaldiFaceView *)self setTimeView:v8];
    v7 = [(NTKVivaldiFaceView *)self contentView];
    [v7 addSubview:v8];
  }
}

- (void)_removeTimeView
{
  v3 = [(NTKVivaldiFaceView *)self timeView];
  [v3 removeFromSuperview];

  [(NTKVivaldiFaceView *)self setTimeView:0];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = NTKVivaldiFaceView;
  [(NTKVivaldiFaceView *)&v16 layoutSubviews];
  [(NTKVivaldiFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NTKVivaldiFaceView *)self timeView];
  [v11 ntk_setBoundsAndPositionFromFrame:{v4, v6, v8, v10}];

  v15 = 0.0;
  v13 = 0u;
  v14 = 0u;
  v12 = [(NTKVivaldiFaceView *)self device];
  sub_23C0A853C(v12, &v13);

  [(NTKVictoryLogoButton *)self->_logoButton setFrame:v15, *(&v14 + 1), *(&v13 + 1), *&v14];
}

- (void)_loadLayoutRules
{
  cornerComplicationFactory = self->_cornerComplicationFactory;
  v4 = [(NTKVivaldiFaceView *)self device];
  [v4 screenBounds];
  v6 = v5;
  v7 = [(NTKVivaldiFaceView *)self device];
  [v7 screenScale];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)cornerComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v6 * v8];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23C0A7DC4;
  v19[3] = &unk_278BAEC40;
  v19[4] = self;
  v9 = MEMORY[0x23EEC6B40](v19);
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeScale(&v18, 0.9, 0.9);
  v10 = v9[2];
  v17 = v18;
  v10(v9, &v17, 0);
  v11 = v9[2];
  v17 = v18;
  v11(v9, &v17, 1);
  v12 = v9[2];
  v15 = *(MEMORY[0x277CBF2C0] + 16);
  *&v17.a = *MEMORY[0x277CBF2C0];
  v16 = *&v17.a;
  *&v17.c = v15;
  *&v17.tx = *(MEMORY[0x277CBF2C0] + 32);
  v14 = *&v17.tx;
  v12(v9, &v17, 3);
  v13 = v9[2];
  *&v17.a = v16;
  *&v17.c = v15;
  *&v17.tx = v14;
  v13(v9, &v17, 2);
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    v7 = [(NTKVivaldiFaceView *)self colorPalette:a3];
    [(NTKVivaldiFaceView *)self _updateViewColorsWithPalette:v7];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v11 = a5;
  if (a6 == 10)
  {
    [(NTKVivaldiFaceView *)self _applyTransitionFraction:v12 fromColor:v11 toColor:a3];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5
{
  v6 = [(NTKVivaldiFaceView *)self interpolatedColorPalette:a4];
  [(NTKVivaldiFaceView *)self _updateViewColorsWithPalette:v6];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7.receiver = self;
  v7.super_class = NTKVivaldiFaceView;
  [(NTKVivaldiFaceView *)&v7 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  NTKLargeElementScaleForBreathingFraction();
  self->_breathScaleModifier = v6;
  [(NTKVivaldiFaceView *)self _applyScaleToTimeView];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKVivaldiFaceView;
  [(NTKVivaldiFaceView *)&v8 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKScaleForRubberBandingFraction();
    self->_rubberBandScaleModifier = v7;
    [(NTKVivaldiFaceView *)self _applyScaleToTimeView];
    NTKAlphaForRubberBandingFraction();
    [(NTKVivaldiFaceView *)self setAlpha:?];
  }
}

- (void)_loadLogoView
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NTKVivaldiFaceView *)self device];
  sub_23C0A853C(v3, &v14);

  v4 = *(&v14 + 1);
  v5 = *&v15;
  v6 = [MEMORY[0x277D2C130] buttonWithType:0];
  logoButton = self->_logoButton;
  self->_logoButton = v6;

  v8 = self->_logoButton;
  v9 = [(NTKFaceBundle *)NTKVivaldiFaceBundle imageWithName:@"logo"];
  v10 = [v9 imageWithRenderingMode:2];
  [(NTKVictoryLogoButton *)v8 setBackgroundImage:v10 forState:0];

  [(NTKVictoryLogoButton *)self->_logoButton setBounds:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v4, v5];
  [(NTKVictoryLogoButton *)self->_logoButton addTarget:self action:sel__handleLogoTap forControlEvents:64];
  v11 = self->_logoButton;
  v12 = [(NTKFaceBundle *)NTKVivaldiFaceBundle localizedStringForKey:@"VIVALDI_LOGO_BUTTON_ACCESSIBILITY_LABEL" comment:@"Accessibility label for logo button"];
  [(NTKVictoryLogoButton *)v11 setAccessibilityLabel:v12];

  [(NTKVivaldiFaceView *)self addSubview:self->_logoButton];
  v13 = self->_logoButton;

  [(NTKVivaldiFaceView *)self bringSubviewToFront:v13];
}

- (void)_handleLogoTap
{
  v3 = MEMORY[0x277D2C128];
  v4 = [(NTKVivaldiFaceView *)self delegate];
  [v3 attemptLaunchWithDelegate:v4];

  logoButton = self->_logoButton;
  [(NTKVictoryLogoButton *)logoButton bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(NTKVivaldiFaceView *)self contentView];
  [(NTKVictoryLogoButton *)logoButton convertRect:v14 toView:v7, v9, v11, v13];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(NTKVivaldiFaceView *)self delegate];
  [v23 faceViewRequestedLaunchFromRect:{v16, v18, v20, v22}];
}

- (void)_unloadLogoView
{
  [(NTKVictoryLogoButton *)self->_logoButton removeFromSuperview];
  logoButton = self->_logoButton;
  self->_logoButton = 0;
}

- (id)createFaceColorPalette
{
  v2 = [(NTKFaceColorPalette *)[NTKVivaldiFaceColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

@end