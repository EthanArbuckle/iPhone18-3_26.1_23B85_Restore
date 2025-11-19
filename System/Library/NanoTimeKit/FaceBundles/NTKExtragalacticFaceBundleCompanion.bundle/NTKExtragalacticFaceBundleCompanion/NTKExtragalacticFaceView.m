@interface NTKExtragalacticFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NTKExtragalacticFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPalette:(id)a3;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_loadSnapshotContentViews;
- (void)_prepareForSnapshotting;
- (void)_prepareSwatchImagesForSelectedOptions:(id)a3;
- (void)_unloadSnapshotContentViews;
- (void)setBackgroundAlpha:(double)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setTimeOffset:(double)a3;
@end

@implementation NTKExtragalacticFaceView

- (NTKExtragalacticFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = NTKExtragalacticFaceView;
  result = [(NTKExtragalacticFaceView *)&v6 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
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
  v12 = [(NTKExtragalacticFaceView *)self device];
  v13 = [(NTKExtragalacticFaceView *)self extragalacticPalette];
  v14 = [(NTKExtragalacticContentView *)v3 initWithFrame:v12 device:v13 palette:v5, v7, v9, v11];
  extragalacticContentView = self->_extragalacticContentView;
  self->_extragalacticContentView = v14;

  [(NTKExtragalacticContentView *)self->_extragalacticContentView setBackgroundAlpha:self->_backgroundAlpha];
  v16 = [(NTKExtragalacticFaceView *)self contentView];
  [v16 addSubview:self->_extragalacticContentView];
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

- (void)setBackgroundAlpha:(double)a3
{
  if (self->_backgroundAlpha != a3)
  {
    self->_backgroundAlpha = a3;
    [(NTKExtragalacticContentView *)self->_extragalacticContentView setBackgroundAlpha:?];
  }
}

- (void)_prepareForSnapshotting
{
  v2.receiver = self;
  v2.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v2 _prepareForSnapshotting];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKExtragalacticFaceView;
  v6 = a3;
  [(NTKExtragalacticFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKExtragalacticContentView *)self->_extragalacticContentView setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
}

- (void)setTimeOffset:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v5 setTimeOffset:?];
  [(NTKExtragalacticContentView *)self->_extragalacticContentView setTimeOffset:a3];
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKExtragalacticColorPalette);

  return v2;
}

- (void)_applyPalette:(id)a3
{
  v4 = a3;
  v5 = [(NTKExtragalacticFaceView *)self extragalacticContentView];
  [v5 setPalette:v4];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v15.receiver = self;
  v15.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v15 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  if (a6 == 10)
  {
    v14 = [(NTKExtragalacticFaceView *)self interpolatedColorPalette];
    [(NTKExtragalacticFaceView *)self _applyPalette:v14];
  }

  else if (a6 == 17)
  {
    [objc_opt_class() _backgroundAlphaForOption:v12];
    [objc_opt_class() _backgroundAlphaForOption:v13];
    CLKInterpolateBetweenFloatsClipped();
    [(NTKExtragalacticFaceView *)self setBackgroundAlpha:?];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v10 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  if (a4 == 10)
  {
    v9 = [(NTKExtragalacticFaceView *)self extragalacticPalette];
    [(NTKExtragalacticFaceView *)self _applyPalette:v9];
  }

  else if (a4 == 17)
  {
    -[NTKExtragalacticFaceView setBackgroundAlpha:](self, "setBackgroundAlpha:", [objc_opt_class() _backgroundAlphaForOption:v8]);
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7.receiver = self;
  v7.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v7 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  [(NTKExtragalacticFaceView *)self setBreathingFraction:a3];
  [(NTKExtragalacticFaceView *)self _applyBreathingAndRubberbanding];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7.receiver = self;
  v7.super_class = NTKExtragalacticFaceView;
  [(NTKExtragalacticFaceView *)&v7 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  NTKAlphaForRubberBandingFraction();
  [(NTKExtragalacticFaceView *)self setAlpha:?];
  [(NTKExtragalacticFaceView *)self setRubberbandingFraction:a3];
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

- (void)_prepareSwatchImagesForSelectedOptions:(id)a3
{
  v10 = a3;
  v4 = [(NTKExtragalacticFaceView *)self device];
  v5 = [MEMORY[0x277D2C008] numberOfOptionsForDevice:v4];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [MEMORY[0x277D2C008] optionAtIndex:i forDevice:v4];
      v9 = [(NTKExtragalacticFaceView *)self _swatchImageForEditOption:v8 mode:17 withSelectedOptions:v10];
    }
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 17)
  {
    return &unk_284E9BC48;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 17)
  {
    if (!qword_27E1DC2C8)
    {
      v10 = objc_opt_new();
      v11 = qword_27E1DC2C8;
      qword_27E1DC2C8 = v10;
    }

    v12 = v8;
    v13 = [v9 objectForKeyedSubscript:&unk_284E9BAE8];
    v14 = MEMORY[0x277CCACA8];
    v15 = [v13 identifier];
    v16 = [v12 dailySnapshotKey];
    v17 = [v14 stringWithFormat:@"%@-%@", v15, v16];

    v18 = [qword_27E1DC2C8 objectForKey:v17];
    if (!v18)
    {
      [(NTKExtragalacticFaceView *)self bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [NTKExtragalacticFaceView alloc];
      v28 = [(NTKExtragalacticFaceView *)self device];
      v29 = [(NTKExtragalacticFaceView *)v27 initWithFaceStyle:44 forDevice:v28 clientIdentifier:0];

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
    v18 = [(NTKExtragalacticFaceView *)&v32 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v18;
}

@end