@interface NTKVivaldiTimeView
+ (id)vivaldiFontDescriptor;
+ (id)vivaldiLowerFontDescriptor;
+ (id)vivaldiLowerOutlineFontDescriptor;
+ (id)vivaldiOutlineFontDescriptor;
+ (id)vivaldiUpperFontDescriptor;
+ (id)vivaldiUpperOutlineFontDescriptor;
- (NTKVivaldiTimeView)initWithDevice:(id)device color:(id)color;
- (NTKVivaldiTimeViewDelegate)delegate;
- (id)_shadowImage;
- (void)_updateAnimating;
- (void)_updateLabels;
- (void)applyColorPalette:(id)palette;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)updateColorsForComplicationsEditingFraction:(double)fraction withColorPalette:(id)palette;
@end

@implementation NTKVivaldiTimeView

- (NTKVivaldiTimeView)initWithDevice:(id)device color:(id)color
{
  deviceCopy = device;
  colorCopy = color;
  v47.receiver = self;
  v47.super_class = NTKVivaldiTimeView;
  v9 = [(NTKVivaldiTimeView *)&v47 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    v11 = objc_opt_new();
    timeLabelsContainerView = v10->_timeLabelsContainerView;
    v10->_timeLabelsContainerView = v11;

    v13 = sub_23C0AC0AC([(NTKVivaldiTimeView *)v10 addSubview:v10->_timeLabelsContainerView], deviceCopy);
    v14 = MEMORY[0x277CBBB08];
    vivaldiUpperFontDescriptor = [objc_opt_class() vivaldiUpperFontDescriptor];
    v16 = [v14 fontWithDescriptor:vivaldiUpperFontDescriptor size:v13];
    topLabelFont = v10->_topLabelFont;
    v10->_topLabelFont = v16;

    v18 = MEMORY[0x277CBBB08];
    vivaldiLowerFontDescriptor = [objc_opt_class() vivaldiLowerFontDescriptor];
    v20 = [v18 fontWithDescriptor:vivaldiLowerFontDescriptor size:v13];
    bottomLabelFont = v10->_bottomLabelFont;
    v10->_bottomLabelFont = v20;

    v22 = MEMORY[0x277CBBB08];
    vivaldiUpperOutlineFontDescriptor = [objc_opt_class() vivaldiUpperOutlineFontDescriptor];
    v24 = [v22 fontWithDescriptor:vivaldiUpperOutlineFontDescriptor size:v13];
    topLabelOutlineFont = v10->_topLabelOutlineFont;
    v10->_topLabelOutlineFont = v24;

    v26 = MEMORY[0x277CBBB08];
    vivaldiLowerOutlineFontDescriptor = [objc_opt_class() vivaldiLowerOutlineFontDescriptor];
    v28 = [v26 fontWithDescriptor:vivaldiLowerOutlineFontDescriptor size:v13];
    bottomLabelOutlineFont = v10->_bottomLabelOutlineFont;
    v10->_bottomLabelOutlineFont = v28;

    v30 = [[NTKVivaldiTimeLabel alloc] initWithTimeComponent:0 color:colorCopy font:v10->_topLabelFont fontSize:0 outline:v13];
    topLabel = v10->_topLabel;
    v10->_topLabel = v30;

    [(NTKVivaldiTimeLabel *)v10->_topLabel setTextAlignment:1];
    [(UIView *)v10->_timeLabelsContainerView addSubview:v10->_topLabel];
    v32 = [[NTKVivaldiTimeLabel alloc] initWithTimeComponent:1 color:colorCopy font:v10->_bottomLabelFont fontSize:0 outline:v13];
    bottomLabel = v10->_bottomLabel;
    v10->_bottomLabel = v32;

    [(NTKVivaldiTimeLabel *)v10->_bottomLabel setTextAlignment:1];
    [(UIView *)v10->_timeLabelsContainerView addSubview:v10->_bottomLabel];
    _shadowImage = [(NTKVivaldiTimeView *)v10 _shadowImage];
    shadowImage = v10->_shadowImage;
    v10->_shadowImage = _shadowImage;

    v36 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v10->_shadowImage];
    shadowView = v10->_shadowView;
    v10->_shadowView = v36;

    v38 = [[NTKVivaldiGlobeView alloc] initWithDevice:v10->_device];
    globeView = v10->_globeView;
    v10->_globeView = v38;

    [(NTKVivaldiTimeView *)v10 addSubview:v10->_globeView];
    [(NTKVivaldiTimeView *)v10 addSubview:v10->_shadowView];
    [(NTKVivaldiTimeView *)v10 sendSubviewToBack:v10->_shadowView];
    [(NTKVivaldiTimeView *)v10 sendSubviewToBack:v10->_globeView];
    objc_initWeak(&location, v10);
    mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_23C0AAF68;
    v44[3] = &unk_278BAECB0;
    objc_copyWeak(&v45, &location);
    v41 = [mEMORY[0x277CBB700] startUpdatesWithUpdateFrequency:0 withHandler:v44 identificationLog:&unk_284EDE448];
    timerToken = v10->_timerToken;
    v10->_timerToken = v41;

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)dealloc
{
  mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
  [mEMORY[0x277CBB700] stopUpdatesForToken:self->_timerToken];

  v4.receiver = self;
  v4.super_class = NTKVivaldiTimeView;
  [(NTKVivaldiTimeView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3 = sub_23C0AC0AC(self, self->_device);
  v24 = v4;
  v26 = v5;
  [(NTKVivaldiTimeView *)self bounds];
  v25 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self->_timeLabelsContainerView ntk_setBoundsAndPositionFromFrame:?];
  [(NTKVivaldiTimeLabel *)self->_topLabel sizeToFit];
  [(NTKVivaldiTimeLabel *)self->_bottomLabel sizeToFit];
  [(NTKVivaldiTimeLabel *)self->_topLabel bounds];
  v14 = v13;
  v16 = v15;
  [(NTKVivaldiTimeLabel *)self->_bottomLabel bounds];
  v18 = v17;
  v20 = v19;
  [(NTKVivaldiTimeLabel *)self->_topLabel _lastLineBaseline];
  [(NTKVivaldiTimeLabel *)self->_topLabel setFrame:(v10 - v14) * 0.5, v24 - v21, v14, v16];
  [(NTKVivaldiTimeLabel *)self->_bottomLabel _lastLineBaseline];
  [(NTKVivaldiTimeLabel *)self->_bottomLabel setFrame:(v10 - v18) * 0.5, v26 - v22, v18, v20];
  [(UIImageView *)self->_shadowView setFrame:v25, v8, v10, v12];
  globeView = self->_globeView;

  [(NTKVivaldiGlobeView *)globeView setFrame:v25, v8, v10, v12];
}

- (void)_updateLabels
{
  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    faceDate = overrideDate;
  }

  else
  {
    faceDate = [MEMORY[0x277D2BFD8] faceDate];
  }

  v6 = faceDate;
  [(NTKVivaldiTimeLabel *)self->_topLabel setDate:faceDate];
  [(NTKVivaldiTimeLabel *)self->_bottomLabel setDate:v6];
  [(NTKVivaldiTimeView *)self setNeedsLayout];
  [(NTKVivaldiTimeView *)self layoutIfNeeded];
  delegate = [(NTKVivaldiTimeView *)self delegate];
  [delegate vivaldiTimeViewDidChangeTime];
}

- (void)applyColorPalette:(id)palette
{
  v4 = MEMORY[0x277CD9FF0];
  paletteCopy = palette;
  [v4 setDisableActions:1];
  shadowView = self->_shadowView;
  numeralsShadow = [paletteCopy numeralsShadow];
  [(UIImageView *)shadowView setTintColor:numeralsShadow];

  [(NTKVivaldiTimeView *)self updateColorsForComplicationsEditingFraction:paletteCopy withColorPalette:0.0];
  v8 = MEMORY[0x277CD9FF0];

  [v8 setDisableActions:0];
}

- (void)updateColorsForComplicationsEditingFraction:(double)fraction withColorPalette:(id)palette
{
  topLabel = self->_topLabel;
  paletteCopy = palette;
  [(NTKVivaldiTimeLabel *)topLabel updateColorsForComplicationsEditingFraction:paletteCopy withColorPalette:fraction];
  [(NTKVivaldiTimeLabel *)self->_bottomLabel updateColorsForComplicationsEditingFraction:paletteCopy withColorPalette:fraction];
  [(UIImageView *)self->_shadowView setAlpha:1.0 - fraction];
  [(NTKVivaldiGlobeView *)self->_globeView updateColorsForComplicationsEditingFraction:paletteCopy withColorPalette:fraction];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  objc_storeStrong(&self->_overrideDate, date);
  dateCopy = date;
  [(NTKVivaldiTimeView *)self _updateLabels];
  [(NTKVivaldiGlobeView *)self->_globeView setDate:dateCopy];
}

- (void)_updateAnimating
{
  globeView = self->_globeView;
  if (!self->_frozen)
  {
    faceDataMode = self->_faceDataMode;
  }

  MEMORY[0x2821F9670](globeView, sel_setAnimating_);
}

- (id)_shadowImage
{
  v2 = [(NTKFaceBundle *)NTKVivaldiFaceBundle imageWithName:@"Shadow"];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

+ (id)vivaldiUpperFontDescriptor
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C0AB5E4;
  block[3] = &unk_278BAEDB8;
  block[4] = self;
  if (qword_27E1EE6F0 != -1)
  {
    dispatch_once(&qword_27E1EE6F0, block);
  }

  v2 = qword_27E1EE6E8;

  return v2;
}

+ (id)vivaldiLowerFontDescriptor
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C0AB7D0;
  block[3] = &unk_278BAEDB8;
  block[4] = self;
  if (qword_27E1EE700 != -1)
  {
    dispatch_once(&qword_27E1EE700, block);
  }

  v2 = qword_27E1EE6F8;

  return v2;
}

+ (id)vivaldiUpperOutlineFontDescriptor
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C0AB9BC;
  block[3] = &unk_278BAEDB8;
  block[4] = self;
  if (qword_27E1EE710 != -1)
  {
    dispatch_once(&qword_27E1EE710, block);
  }

  v2 = qword_27E1EE708;

  return v2;
}

+ (id)vivaldiLowerOutlineFontDescriptor
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C0ABC10;
  block[3] = &unk_278BAEDB8;
  block[4] = self;
  if (qword_27E1EE720 != -1)
  {
    dispatch_once(&qword_27E1EE720, block);
  }

  v2 = qword_27E1EE718;

  return v2;
}

+ (id)vivaldiFontDescriptor
{
  if (qword_27E1EE730 != -1)
  {
    sub_23C0AC8C4();
  }

  v3 = qword_27E1EE728;

  return v3;
}

+ (id)vivaldiOutlineFontDescriptor
{
  if (qword_27E1EE740 != -1)
  {
    sub_23C0AC8D8();
  }

  v3 = qword_27E1EE738;

  return v3;
}

- (NTKVivaldiTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end