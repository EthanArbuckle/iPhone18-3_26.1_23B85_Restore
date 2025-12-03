@interface NTKExtragalacticFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKExtragalacticFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPalette:(id)palette;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_loadSnapshotContentViews;
- (void)_prepareForSnapshotting;
- (void)_prepareSwatchImagesForSelectedOptions:(id)options;
- (void)_unloadSnapshotContentViews;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
@end

@implementation NTKExtragalacticFaceView

- (NTKExtragalacticFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = NTKExtragalacticFaceView;
  result = [(NTKExtragalacticFaceView *)&v6 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (result)
  {
    result->_backgroundAlpha = 1.0;
  }

  return result;
}

- (void)_loadSnapshotContentViews
{
  v17.receiver = self;
  v17.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v17 _loadSnapshotContentViews];
  v3 = [NTKExtragalacticContentView alloc];
  [(NTKExtragalacticFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  device = [(NTKExtragalacticFaceView *)self device];
  extragalacticPalette = [(NTKExtragalacticFaceView *)self extragalacticPalette];
  v14 = [(NTKExtragalacticContentView *)v3 initWithFrame:device device:extragalacticPalette palette:v5, v7, v9, v11];
  extragalacticContentView = self->_extragalacticContentView;
  self->_extragalacticContentView = v14;

  [(NTKExtragalacticContentView *)self->_extragalacticContentView setBackgroundAlpha:self->_backgroundAlpha];
  contentView = [(NTKExtragalacticFaceView *)self contentView];
  [contentView addSubview:self->_extragalacticContentView];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v4 _unloadSnapshotContentViews];
  [(NTKExtragalacticContentView *)self->_extragalacticContentView removeFromSuperview];
  extragalacticContentView = self->_extragalacticContentView;
  self->_extragalacticContentView = 0;
}

- (void)setBackgroundAlpha:(double)alpha
{
  if (self->_backgroundAlpha != alpha)
  {
    self->_backgroundAlpha = alpha;
    [(NTKExtragalacticContentView *)self->_extragalacticContentView setBackgroundAlpha:?];
  }
}

- (void)_prepareForSnapshotting
{
  v2.receiver = self;
  v2.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v2 _prepareForSnapshotting];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKExtragalacticFaceView;
  dateCopy = date;
  [(NTKExtragalacticFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKExtragalacticContentView *)self->_extragalacticContentView setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)setTimeOffset:(double)offset
{
  v5.receiver = self;
  v5.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v5 setTimeOffset:?];
  [(NTKExtragalacticContentView *)self->_extragalacticContentView setTimeOffset:offset];
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKExtragalacticColorPalette);

  return v2;
}

- (void)_applyPalette:(id)palette
{
  paletteCopy = palette;
  extragalacticContentView = [(NTKExtragalacticFaceView *)self extragalacticContentView];
  [extragalacticContentView setPalette:paletteCopy];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v15.receiver = self;
  v15.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v15 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slot slot:fraction];
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKExtragalacticFaceView *)self interpolatedColorPalette];
    [(NTKExtragalacticFaceView *)self _applyPalette:interpolatedColorPalette];
  }

  else if (mode == 17)
  {
    [objc_opt_class() _backgroundAlphaForOption:optionCopy];
    [objc_opt_class() _backgroundAlphaForOption:toOptionCopy];
    CLKInterpolateBetweenFloatsClipped();
    [(NTKExtragalacticFaceView *)self setBackgroundAlpha:?];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v10 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 10)
  {
    extragalacticPalette = [(NTKExtragalacticFaceView *)self extragalacticPalette];
    [(NTKExtragalacticFaceView *)self _applyPalette:extragalacticPalette];
  }

  else if (mode == 17)
  {
    -[NTKExtragalacticFaceView setBackgroundAlpha:](self, "setBackgroundAlpha:", [objc_opt_class() _backgroundAlphaForOption:optionCopy]);
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7.receiver = self;
  v7.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v7 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  [(NTKExtragalacticFaceView *)self setBreathingFraction:fraction];
  [(NTKExtragalacticFaceView *)self _applyBreathingAndRubberbanding];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7.receiver = self;
  v7.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v7 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  NTKAlphaForRubberBandingFraction();
  [(NTKExtragalacticFaceView *)self setAlpha:?];
  [(NTKExtragalacticFaceView *)self setRubberbandingFraction:fraction];
  [(NTKExtragalacticFaceView *)self _applyBreathingAndRubberbanding];
}

- (void)_applyBreathingAndRubberbanding
{
  [(NTKExtragalacticFaceView *)self breathingFraction];
  NTKLargeElementScaleForBreathingFraction();
  v4 = v3;
  [(NTKExtragalacticFaceView *)self rubberbandingFraction];
  NTKScaleForRubberBandingFraction();
  CGAffineTransformMakeScale(&v7, v4 * v5, v4 * v5);
  v6 = v7;
  [(NTKExtragalacticFaceView *)self setTransform:&v6];
}

- (void)_prepareSwatchImagesForSelectedOptions:(id)options
{
  optionsCopy = options;
  device = [(NTKExtragalacticFaceView *)self device];
  v5 = [MEMORY[0x277D2C008] numberOfOptionsForDevice:device];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [MEMORY[0x277D2C008] optionAtIndex:i forDevice:device];
      v9 = [(NTKExtragalacticFaceView *)self _swatchImageForEditOption:v8 mode:17 withSelectedOptions:optionsCopy];
    }
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 17)
  {
    return &unk_284E9BC48;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (mode == 17)
  {
    if (!qword_27E1DC2C8)
    {
      v10 = objc_opt_new();
      v11 = qword_27E1DC2C8;
      qword_27E1DC2C8 = v10;
    }

    v12 = optionCopy;
    v13 = [optionsCopy objectForKeyedSubscript:&unk_284E9BAE8];
    v14 = MEMORY[0x277CCACA8];
    identifier = [v13 identifier];
    dailySnapshotKey = [v12 dailySnapshotKey];
    v17 = [v14 stringWithFormat:@"%@-%@", identifier, dailySnapshotKey];

    v18 = [qword_27E1DC2C8 objectForKey:v17];
    if (!v18)
    {
      [(NTKExtragalacticFaceView *)self bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [NTKExtragalacticFaceView alloc];
      device = [(NTKExtragalacticFaceView *)self device];
      v29 = [(NTKExtragalacticFaceView *)v27 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

      [(NTKExtragalacticFaceView *)v29 setFrame:v20, v22, v24, v26];
      [(NTKExtragalacticFaceView *)v29 _loadSnapshotContentViews];
      v30 = NTKIdealizedDate();
      [(NTKExtragalacticFaceView *)v29 setOverrideDate:v30 duration:0.0];

      [(NTKExtragalacticFaceView *)v29 setOption:v12 forCustomEditMode:17 slot:0];
      [(NTKExtragalacticFaceView *)v29 setOption:v13 forCustomEditMode:10 slot:0];
      v34.width = v24;
      v34.height = v26;
      UIGraphicsBeginImageContextWithOptions(v34, 0, 0.0);
      [(NTKExtragalacticFaceView *)v29 drawViewHierarchyInRect:1 afterScreenUpdates:v20, v22, v24, v26];
      v18 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [qword_27E1DC2C8 setObject:v18 forKey:v17];
    }
  }

  else
  {
    v32.receiver = self;
    v32.super_class = NTKExtragalacticFaceView;
    v18 = [(NTKExtragalacticFaceView *)&v32 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v18;
}

@end