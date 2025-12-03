@interface NTKVivaldiFaceView
- (NTKVivaldiFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyComplicationColor:(id)color slot:(id)slot;
- (void)_applyComplicationColor:(id)color withPalette:(id)palette slot:(id)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPaletteToComplications:(id)complications;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
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
- (void)_updateViewColorsWithPalette:(id)palette;
- (void)layoutSubviews;
@end

@implementation NTKVivaldiFaceView

- (NTKVivaldiFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = NTKVivaldiFaceView;
  v9 = [(NTKVivaldiFaceView *)&v18 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_23C0A853C(deviceCopy, v16);
    v10 = objc_alloc(MEMORY[0x277D2C138]);
    v11 = [v10 initWithFaceView:v9 dialDiameter:deviceCopy device:*v16];
    cornerComplicationFactory = v9->_cornerComplicationFactory;
    v9->_cornerComplicationFactory = v11;

    [(NTKWhistlerAnalogFaceViewComplicationFactory *)v9->_cornerComplicationFactory setUsesNarrowTopSlots:1];
    [(NTKVivaldiFaceView *)v9 setComplicationFactory:v9->_cornerComplicationFactory];
    v13 = [objc_alloc(MEMORY[0x277D2C080]) initWithDevice:deviceCopy];
    cornerFilterProvider = v9->_cornerFilterProvider;
    v9->_cornerFilterProvider = v13;
  }

  return v9;
}

- (void)_updateViewColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  [(NTKVivaldiFaceView *)self _applyPaletteToComplications:paletteCopy];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  layer = [(UIView *)self->_backgroundView layer];
  background = [paletteCopy background];
  [layer setBackgroundColor:{objc_msgSend(background, "CGColor")}];

  timeView = [(NTKVivaldiFaceView *)self timeView];
  [timeView applyColorPalette:paletteCopy];
  secondaryComplication = [paletteCopy secondaryComplication];

  [(NTKVictoryLogoButton *)self->_logoButton setTintColor:secondaryComplication];
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

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKVivaldiFaceView;
  slotCopy = slot;
  viewCopy = view;
  [(NTKVivaldiFaceView *)&v8 _configureComplicationView:viewCopy forSlot:slotCopy];
  [(NTKVivaldiFaceView *)self _applyComplicationColor:viewCopy slot:slotCopy, v8.receiver, v8.super_class];
}

- (void)_applyPaletteToComplications:(id)complications
{
  complicationsCopy = complications;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23C0A76EC;
  v6[3] = &unk_278BAEBF0;
  v6[4] = self;
  v7 = complicationsCopy;
  v5 = complicationsCopy;
  [(NTKVivaldiFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v6];
}

- (void)_applyComplicationColor:(id)color slot:(id)slot
{
  slotCopy = slot;
  colorCopy = color;
  colorPalette = [(NTKVivaldiFaceView *)self colorPalette];
  [(NTKVivaldiFaceView *)self _applyComplicationColor:colorCopy withPalette:colorPalette slot:slotCopy];
}

- (void)_applyComplicationColor:(id)color withPalette:(id)palette slot:(id)slot
{
  colorCopy = color;
  paletteCopy = palette;
  slotCopy = slot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    display = [colorCopy display];
    [(NTKVivaldiFaceView *)self _applyComplicationColor:display withPalette:paletteCopy slot:slotCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cornerFilterProvider = self->_cornerFilterProvider;
      secondaryComplication = [paletteCopy secondaryComplication];
      [(NTKMonochromeModel *)cornerFilterProvider setAccentColor:secondaryComplication];

      v13 = self->_cornerFilterProvider;
      primaryComplication = [paletteCopy primaryComplication];
      [(NTKMonochromeModel *)v13 setNonAccentColor:primaryComplication];

      v15 = self->_cornerFilterProvider;
      background = [paletteCopy background];
      [(NTKMonochromeModel *)v15 setBackgroundColor:background];

      [colorCopy updateMonochromeColor];
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

    contentView = [(NTKVivaldiFaceView *)self contentView];
    [contentView addSubview:self->_backgroundView];
  }

  contentView2 = [(NTKVivaldiFaceView *)self contentView];
  [contentView2 sendSubviewToBack:self->_backgroundView];

  contentView3 = [(NTKVivaldiFaceView *)self contentView];
  timeView = [(NTKVivaldiFaceView *)self timeView];
  [contentView3 bringSubviewToFront:timeView];
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
  timeView = [(NTKVivaldiFaceView *)self timeView];

  if (!timeView)
  {
    v4 = [NTKVivaldiTimeView alloc];
    device = [(NTKVivaldiFaceView *)self device];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v8 = [(NTKVivaldiTimeView *)v4 initWithDevice:device color:whiteColor];

    [(NTKVivaldiFaceView *)self setTimeView:v8];
    contentView = [(NTKVivaldiFaceView *)self contentView];
    [contentView addSubview:v8];
  }
}

- (void)_removeTimeView
{
  timeView = [(NTKVivaldiFaceView *)self timeView];
  [timeView removeFromSuperview];

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
  timeView = [(NTKVivaldiFaceView *)self timeView];
  [timeView ntk_setBoundsAndPositionFromFrame:{v4, v6, v8, v10}];

  v15 = 0.0;
  v13 = 0u;
  v14 = 0u;
  device = [(NTKVivaldiFaceView *)self device];
  sub_23C0A853C(device, &v13);

  [(NTKVictoryLogoButton *)self->_logoButton setFrame:v15, *(&v14 + 1), *(&v13 + 1), *&v14];
}

- (void)_loadLayoutRules
{
  cornerComplicationFactory = self->_cornerComplicationFactory;
  device = [(NTKVivaldiFaceView *)self device];
  [device screenBounds];
  v6 = v5;
  device2 = [(NTKVivaldiFaceView *)self device];
  [device2 screenScale];
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

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v7 = [(NTKVivaldiFaceView *)self colorPalette:option];
    [(NTKVivaldiFaceView *)self _updateViewColorsWithPalette:v7];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  if (mode == 10)
  {
    [(NTKVivaldiFaceView *)self _applyTransitionFraction:optionCopy fromColor:toOptionCopy toColor:fraction];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor
{
  v6 = [(NTKVivaldiFaceView *)self interpolatedColorPalette:color];
  [(NTKVivaldiFaceView *)self _updateViewColorsWithPalette:v6];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7.receiver = self;
  v7.super_class = NTKVivaldiFaceView;
  [(NTKVivaldiFaceView *)&v7 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  NTKLargeElementScaleForBreathingFraction();
  self->_breathScaleModifier = v6;
  [(NTKVivaldiFaceView *)self _applyScaleToTimeView];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKVivaldiFaceView;
  [(NTKVivaldiFaceView *)&v8 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
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
  device = [(NTKVivaldiFaceView *)self device];
  sub_23C0A853C(device, &v14);

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
  delegate = [(NTKVivaldiFaceView *)self delegate];
  [v3 attemptLaunchWithDelegate:delegate];

  logoButton = self->_logoButton;
  [(NTKVictoryLogoButton *)logoButton bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  contentView = [(NTKVivaldiFaceView *)self contentView];
  [(NTKVictoryLogoButton *)logoButton convertRect:contentView toView:v7, v9, v11, v13];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  delegate2 = [(NTKVivaldiFaceView *)self delegate];
  [delegate2 faceViewRequestedLaunchFromRect:{v16, v18, v20, v22}];
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