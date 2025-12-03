@interface NTKUltraCubeFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_tryLoadPhoto:(id)photo animated:(BOOL)animated;
- (BOOL)_validateEditOption:(id)option forMode:(int64_t)mode;
- (CGAffineTransform)ctmForDrawingImage:(SEL)image uprightInRect:(id)rect;
- (CGRect)dateComplicationFrameForUnitBaseline:(double)baseline;
- (NTKUltraCubeFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_cloneActiveContentView;
- (id)_currentOverrideDate;
- (id)_newContentViewWithRole:(unint64_t)role;
- (id)_snapshotDateComplicationLabel;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options refreshHandler:(id)handler;
- (id)_swatchKeyForTypeface:(unint64_t)typeface pigmentName:(id)name colorEffect:(unint64_t)effect;
- (id)createFaceColorPalette;
- (id)dateComplicationFont;
- (unint64_t)colorEffect;
- (void)_applyColorEffect;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPause;
- (void)_clearDeprecationWarning;
- (void)_hideNoPhotoUI;
- (void)_loadActiveViewIfNeeded;
- (void)_loadNextPhotoAnimated:(BOOL)animated;
- (void)_loadPhoto:(id)photo animated:(BOOL)animated;
- (void)_loadSnapshotContentViews;
- (void)_newGradientViewsWithColor:(id)color timeElementUnitBaseline:(double)baseline topGradientView:(id *)view bottomGradientView:(id *)gradientView;
- (void)_prepareSwatchImagesForSelectedOptions:(id)options;
- (void)_reloadSwatches:(id)swatches;
- (void)_setDeprecationWarning;
- (void)_showNoPhotoUI;
- (void)_unloadActiveViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateContents;
- (void)_updateForResourceDirectoryChange:(id)change;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
@end

@implementation NTKUltraCubeFaceView

- (NTKUltraCubeFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = NTKUltraCubeFaceView;
  v9 = [(NTKUltraCubeFaceView *)&v19 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = +[NSMapTable strongToStrongObjectsMapTable];
    swatchRefreshHandlers = v9->_swatchRefreshHandlers;
    v9->_swatchRefreshHandlers = v10;

    v12 = objc_opt_new();
    contentViews = v9->_contentViews;
    v9->_contentViews = v12;

    v9->_typeface = 1;
    v9->_colorEffect = 0;
    v9->_isTimeLabelFront = 1;
    v9->_isPaused = 1;
    v9->_isNoPhotosViewVisible = 0;
    v14 = [[NTKUltraCubeFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    v20[0] = NTKComplicationSlotBottom;
    v20[1] = NTKComplicationSlotDate;
    v15 = [NSArray arrayWithObjects:v20 count:2];
    [(NTKUltraCubeFaceViewComplicationFactory *)v14 setSupportedComplicationSlots:v15];

    [(NTKUltraCubeFaceViewComplicationFactory *)v14 setUsesLegibility:1 faceView:v9];
    v16 = +[UIColor whiteColor];
    [(NTKUltraCubeFaceViewComplicationFactory *)v14 setForegroundColor:v16 faceView:v9];

    [(NTKUltraCubeFaceViewComplicationFactory *)v14 setAlpha:v9 faceView:1.0];
    complicationFactory = v9->_complicationFactory;
    v9->_complicationFactory = v14;
  }

  return v9;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKUltraCubeFaceView;
  [(NTKUltraCubeFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKUltraCubeFaceView *)self _loadActiveViewIfNeeded];
  self->_isContentLoaded = 1;
  [(NTKUltraCubeFaceView *)self _updateContents];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKUltraCubeFaceView;
  [(NTKUltraCubeFaceView *)&v3 _unloadSnapshotContentViews];
  self->_isContentLoaded = 0;
  [(NTKUltraCubeFaceView *)self _unloadActiveViews];
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKUltraCubeFaceView;
  [(NTKUltraCubeFaceView *)&v3 _applyFrozen];
  [(NTKUltraCubeFaceView *)self _applyPause];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  if (self->_overrideDate != dateCopy)
  {
    objc_storeStrong(&self->_overrideDate, date);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_contentViews;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          _currentOverrideDate = [(NTKUltraCubeFaceView *)self _currentOverrideDate];
          [v13 setOverrideDate:_currentOverrideDate duration:duration];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)setTimeOffset:(double)offset
{
  if (self->_timeOffset != offset)
  {
    self->_timeOffset = offset;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_contentViews;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) setTimeOffset:{self->_timeOffset, v9}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_updateForResourceDirectoryChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = NTKUltraCubeFaceView;
  [(NTKUltraCubeFaceView *)&v9 _updateForResourceDirectoryChange:changeCopy];
  resourceDirectory = [(NTKUltraCubeFaceView *)self resourceDirectory];
  v6 = NTKEqualStrings();

  if ((v6 & 1) == 0)
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      resourceDirectory2 = [(NTKUltraCubeFaceView *)self resourceDirectory];
      *buf = 138412546;
      v11 = changeCopy;
      v12 = 2112;
      v13 = resourceDirectory2;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "_updateForResourceDirectoryChange: change resource directory from %@ to %@", buf, 0x16u);
    }

    [(NTKUltraCubeFaceView *)self _updateContents];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v19.receiver = self;
  v19.super_class = NTKUltraCubeFaceView;
  [(NTKUltraCubeFaceView *)&v19 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  switch(mode)
  {
    case 10:
      goto LABEL_13;
    case 15:
      self->_colorEffect = [optionCopy colorEffect];
LABEL_13:
      [(NTKUltraCubeFaceView *)self _applyColorEffect];
      break;
    case 13:
      typeface = [optionCopy typeface];
      self->_typeface = typeface;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = self->_contentViews;
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v15 + 1) + 8 * i) setTypeface:{typeface, v15}];
          }

          v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v12);
      }

      break;
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if ((options - 12) > 3)
  {
    return 0;
  }

  else
  {
    return off_48FE0[options - 12];
  }
}

- (BOOL)_validateEditOption:(id)option forMode:(int64_t)mode
{
  optionCopy = option;
  if (mode == 15 || mode == 13 || mode == 10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)_swatchKeyForTypeface:(unint64_t)typeface pigmentName:(id)name colorEffect:(unint64_t)effect
{
  photoSnapshotIdentifier = self->_photoSnapshotIdentifier;
  nameCopy = name;
  v9 = [NSNumber numberWithUnsignedInteger:typeface];
  v10 = [NSNumber numberWithUnsignedInteger:effect];
  v11 = [NSString stringWithFormat:@"%@-%@-%@-%@", photoSnapshotIdentifier, v9, nameCopy, v10];

  return v11;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options refreshHandler:(id)handler
{
  optionCopy = option;
  optionsCopy = options;
  handlerCopy = handler;
  if (![(NTKUltraCubeFaceView *)self _needCustomSwatchImageForEditMode:mode])
  {
    v46.receiver = self;
    v46.super_class = NTKUltraCubeFaceView;
    [(NTKUltraCubeFaceView *)&v46 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy refreshHandler:handlerCopy];
    v15 = LABEL_9:;
    goto LABEL_10;
  }

  if (![(NTKUltraCubeFaceView *)self _validateEditOption:optionCopy forMode:mode])
  {
    v45.receiver = self;
    v45.super_class = NTKUltraCubeFaceView;
    [(NTKUltraCubeFaceView *)&v45 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy refreshHandler:handlerCopy];
    goto LABEL_9;
  }

  resourceDirectory = [(NTKUltraCubeFaceView *)self resourceDirectory];

  if (!resourceDirectory)
  {
    v44.receiver = self;
    v44.super_class = NTKUltraCubeFaceView;
    [(NTKUltraCubeFaceView *)&v44 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy refreshHandler:handlerCopy];
    goto LABEL_9;
  }

  if (mode == 13)
  {
    typeface = [optionCopy typeface];
LABEL_15:
    colorEffect = self->_colorEffect;
    goto LABEL_16;
  }

  typeface = self->_typeface;
  if (mode != 15)
  {
    goto LABEL_15;
  }

  colorEffect = [optionCopy colorEffect];
LABEL_16:
  colorPalette = [(NTKUltraCubeFaceView *)self colorPalette];
  pigmentEditOption = [colorPalette pigmentEditOption];
  optionName = [pigmentEditOption optionName];

  colorPalette2 = [(NTKUltraCubeFaceView *)self colorPalette];
  if (mode == 10)
  {
    pigmentEditOption2 = [optionCopy pigmentEditOption];
    optionName2 = [pigmentEditOption2 optionName];

    v24 = [colorPalette2 copyWithOption:pigmentEditOption2];
    colorPalette2 = v24;
    optionName = optionName2;
  }

  v41 = typeface;
  v25 = [(NTKUltraCubeFaceView *)self _swatchKeyForTypeface:typeface pigmentName:optionName colorEffect:colorEffect];
  if (handlerCopy)
  {
    swatchRefreshHandlers = self->_swatchRefreshHandlers;
    v26 = [handlerCopy copy];
    v27 = optionName;
    v28 = colorPalette2;
    v29 = colorEffect;
    v30 = objc_retainBlock(v26);
    [(NSMapTable *)swatchRefreshHandlers setObject:v30 forKey:v25];

    colorEffect = v29;
    colorPalette2 = v28;
    optionName = v27;
  }

  v31 = [NTKSwatchRenderer cachedSwatchForKey:v25];
  v15 = v31;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v40 = [NTKUltraCubeContentEffect contentEffectWithColorEffect:colorEffect colorPalette:colorPalette2];
    _cloneActiveContentView = [(NTKUltraCubeFaceView *)self _cloneActiveContentView];
    [_cloneActiveContentView setTypeface:v41];
    [_cloneActiveContentView setContentEffect:v40];
    [_cloneActiveContentView invalidateDigitalTimeLabelStyle];
    [_cloneActiveContentView layoutIfNeeded];
    [_cloneActiveContentView setNeedsDisplay];
    [NTKEditOption sizeForSwatchStyle:3];
    v35 = v34;
    v37 = v36;
    device = [(NTKUltraCubeFaceView *)self device];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_D440;
    v42[3] = &unk_48F80;
    v43 = handlerCopy;
    [NTKSwatchRenderer renderSwatchForView:_cloneActiveContentView size:device device:v25 key:0 method:v42 completion:v35, v37];
  }

LABEL_10:

  return v15;
}

- (void)_prepareSwatchImagesForSelectedOptions:(id)options
{
  optionsCopy = options;
  context = self->_typeface;
  colorEffect = self->_colorEffect;
  colorPalette = [(NTKUltraCubeFaceView *)self colorPalette];
  selfCopy = self;
  colorPalette2 = [(NTKUltraCubeFaceView *)self colorPalette];
  pigmentEditOption = [colorPalette2 pigmentEditOption];
  optionName = [pigmentEditOption optionName];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v8 = optionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v76 objects:v85 count:16];
  v58 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = *v77;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v77 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v76 + 1) + 8 * i);
        integerValue = [v13 integerValue];
        v15 = [v8 objectForKeyedSubscript:v13];
        v16 = v15;
        if (integerValue == &dword_8 + 2)
        {
          pigmentEditOption2 = [v15 pigmentEditOption];
          optionName2 = [pigmentEditOption2 optionName];

          v19 = [colorPalette copyWithOption:pigmentEditOption2];
          v8 = v58;

          optionName = optionName2;
          colorPalette = v19;
        }

        else if (integerValue == &dword_C + 3)
        {
          colorEffect = [v15 colorEffect];
        }

        else if (integerValue == &dword_C + 1)
        {
          context = [v15 typeface];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v10);
  }

  v20 = +[NSMutableDictionary dictionary];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v21 = [&off_4B558 countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v73;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v73 != v23)
        {
          objc_enumerationMutation(&off_4B558);
        }

        unsignedIntegerValue = [*(*(&v72 + 1) + 8 * j) unsignedIntegerValue];
        v26 = [(NTKUltraCubeFaceView *)selfCopy _swatchKeyForTypeface:unsignedIntegerValue pigmentName:optionName colorEffect:colorEffect];
        v27 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
        v83[0] = v27;
        v28 = [NSNumber numberWithUnsignedInteger:colorEffect];
        v83[1] = v28;
        v29 = [NSArray arrayWithObjects:v83 count:2];
        [v20 setObject:v29 forKeyedSubscript:v26];
      }

      v22 = [&off_4B558 countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v22);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v30 = [&off_4B570 countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v69;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v69 != v32)
        {
          objc_enumerationMutation(&off_4B570);
        }

        unsignedIntegerValue2 = [*(*(&v68 + 1) + 8 * k) unsignedIntegerValue];
        v35 = [(NTKUltraCubeFaceView *)selfCopy _swatchKeyForTypeface:context pigmentName:optionName colorEffect:unsignedIntegerValue2];
        v36 = [NSNumber numberWithUnsignedInteger:context];
        v81[0] = v36;
        v37 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue2];
        v81[1] = v37;
        v38 = [NSArray arrayWithObjects:v81 count:2];
        [v20 setObject:v38 forKeyedSubscript:v35];
      }

      v31 = [&off_4B570 countByEnumeratingWithState:&v68 objects:v82 count:16];
    }

    while (v31);
  }

  [NTKEditOption sizeForSwatchStyle:3];
  v40 = v39;
  v42 = v41;
  contexta = objc_autoreleasePoolPush();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v43 = v20;
  v44 = [v43 countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v65;
    do
    {
      for (m = 0; m != v45; m = m + 1)
      {
        if (*v65 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v64 + 1) + 8 * m);
        if (([NTKSwatchRenderer containsSwatchForKey:v48]& 1) == 0)
        {
          v49 = [v43 objectForKeyedSubscript:v48];
          firstObject = [v49 firstObject];
          unsignedIntegerValue3 = [firstObject unsignedIntegerValue];

          lastObject = [v49 lastObject];
          unsignedIntegerValue4 = [lastObject unsignedIntegerValue];

          v54 = [NTKUltraCubeContentEffect contentEffectWithColorEffect:unsignedIntegerValue4 colorPalette:colorPalette];
          _cloneActiveContentView = [(NTKUltraCubeFaceView *)selfCopy _cloneActiveContentView];
          [_cloneActiveContentView setTypeface:unsignedIntegerValue3];
          [_cloneActiveContentView setContentEffect:v54];
          [_cloneActiveContentView invalidateDigitalTimeLabelStyle];
          [_cloneActiveContentView layoutIfNeeded];
          [_cloneActiveContentView setNeedsDisplay];
          device = [(NTKUltraCubeFaceView *)selfCopy device];
          v57 = [NTKSwatchRenderer renderSwatchForView:_cloneActiveContentView size:device device:v48 key:0 method:v40, v42];
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v64 objects:v80 count:16];
    }

    while (v45);
  }

  objc_autoreleasePoolPop(contexta);
}

- (void)_applyColorEffect
{
  colorEffect = [(NTKUltraCubeFaceView *)self colorEffect];
  colorPalette = [(NTKUltraCubeFaceView *)self colorPalette];
  v5 = [NTKUltraCubeContentEffect contentEffectWithColorEffect:colorEffect colorPalette:colorPalette];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_contentViews;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setContentEffect:{v5, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)createFaceColorPalette
{
  v2 = [[NTKUltraCubeColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (unint64_t)colorEffect
{
  device = [(NTKUltraCubeFaceView *)self device];
  v4 = [NTKUltraCubeFace isColorEffectFeatureEnabledForDevice:device];

  if (v4)
  {
    return self->_colorEffect;
  }

  else
  {
    return 0;
  }
}

- (void)_newGradientViewsWithColor:(id)color timeElementUnitBaseline:(double)baseline topGradientView:(id *)view bottomGradientView:(id *)gradientView
{
  colorCopy = color;
  if (colorCopy)
  {
    v30 = colorCopy;
    v11 = NTKImageNamed();
    [(NTKUltraCubeFaceView *)self bounds];
    v13 = v12;
    v15 = v14;
    [(NTKUltraCubeFaceView *)self dateComplicationFrameForUnitBaseline:baseline];
    v18 = v16;
    v19 = round(v15 * 0.0307692308);
    if (baseline >= 0.5)
    {
      cGImage = [v11 CGImage];
      [v11 scale];
      v23 = [UIImage imageWithCGImage:cGImage scale:5 orientation:?];

      v20 = 0;
      v24 = v15 - v18 + v19;
    }

    else
    {
      v20 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, v13, v16 + v17 + v19}];
      v21 = [v11 imageWithRenderingMode:2];
      [v20 setImage:v21];

      [v20 setTintColor:v30];
      cGImage2 = [v11 CGImage];
      [v11 scale];
      v23 = [UIImage imageWithCGImage:cGImage2 scale:5 orientation:?];

      v24 = v15 - (round(v15 * 0.91025641) - round(v15 * 0.0461538462) - v19);
    }

    v26 = [[UIImageView alloc] initWithFrame:{0.0, v15 - v24, v13, v24}];
    v27 = [v23 imageWithRenderingMode:2];
    [v26 setImage:v27];

    [v26 setTintColor:v30];
    v28 = v20;
    *view = v20;
    v29 = v26;
    *gradientView = v26;

    colorCopy = v30;
  }
}

- (id)_newContentViewWithRole:(unint64_t)role
{
  [(NTKUltraCubeFaceView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKUltraCubeFaceView *)self device];
  v14 = [[NTKUltraCubeContentView alloc] initWithFrame:role role:self->_typeface typeface:device device:v6, v8, v10, v12];
  _currentOverrideDate = [(NTKUltraCubeFaceView *)self _currentOverrideDate];
  [(NTKUltraCubeContentView *)v14 setOverrideDate:_currentOverrideDate duration:0.0];

  [(NTKUltraCubeContentView *)v14 setTimeOffset:self->_timeOffset];
  return v14;
}

- (id)_cloneActiveContentView
{
  v3 = self->_contentActiveView;
  v4 = [(NTKUltraCubeFaceView *)self _newContentViewWithRole:0];
  gradientColor = self->_gradientColor;
  [(NTKUltraCubeContentView *)v3 timeElementUnitBaseline];
  v13 = 0;
  v14 = 0;
  [(NTKUltraCubeFaceView *)self _newGradientViewsWithColor:gradientColor timeElementUnitBaseline:&v14 topGradientView:&v13 bottomGradientView:?];
  v6 = v14;
  v7 = v13;
  [(NTKUltraCubeContentView *)v3 timeElementUnitHeight];
  [v4 setTimeElementUnitHeight:?];
  [(NTKUltraCubeContentView *)v3 timeElementUnitBaseline];
  [v4 setTimeElementUnitBaseline:?];
  [v4 setForegroundContentScale:self->_foregroundImageScale];
  [v4 setBackgroundContentScale:self->_backgroundImageScale];
  foregroundImage = [(NTKUltraCubeContentView *)v3 foregroundImage];
  backgroundImage = [(NTKUltraCubeContentView *)v3 backgroundImage];
  timeElementShadowColor = [(NTKUltraCubeContentView *)v3 timeElementShadowColor];
  [v4 updateForegroundImage:foregroundImage backgroundImage:backgroundImage timeElementShadowColor:timeElementShadowColor topGradientView:v6 bottomGradientView:v7 isTimeElementFront:{-[NTKUltraCubeContentView isTimeElementFront](v3, "isTimeElementFront")}];

  [v4 copyFiltersFromContentView:v3];
  contentEffect = [(NTKUltraCubeContentView *)v3 contentEffect];

  [v4 setContentEffect:contentEffect];
  [v4 invalidateDigitalTimeLabelStyle];

  return v4;
}

- (id)_currentOverrideDate
{
  specifierDate = self->_specifierDate;
  if (specifierDate || (specifierDate = self->_overrideDate) != 0)
  {
    v4 = specifierDate;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_tryLoadPhoto:(id)photo animated:(BOOL)animated
{
  photoCopy = photo;
  if (photoCopy)
  {
    [(NTKUltraCubeFaceView *)self bounds];
    v8 = v7;
    v10 = v9;
    baseImageURL = [photoCopy baseImageURL];
    v12 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [baseImageURL fileSystemRepresentation], 4);

    v13 = [UIImage imageWithContentsOfFile:v12];
    if (!v13)
    {
      v18 = 0;
LABEL_47:

      goto LABEL_48;
    }

    maskImageURL = [photoCopy maskImageURL];

    if (maskImageURL)
    {
      maskImageURL2 = [photoCopy maskImageURL];
      v16 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [maskImageURL2 fileSystemRepresentation], 4);

      v17 = [UIImage imageWithContentsOfFile:v16];
    }

    else
    {
      v17 = 0;
    }

    backgroundImageURL = [photoCopy backgroundImageURL];

    if (backgroundImageURL)
    {
      backgroundImageURL2 = [photoCopy backgroundImageURL];
      v21 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [backgroundImageURL2 fileSystemRepresentation], 4);

      v22 = [UIImage imageWithContentsOfFile:v21];

      v123 = v22;
      if ((v17 == 0) != (v22 != 0))
      {
        v109 = v12;
        if (v17)
        {
          device = [(NTKUltraCubeFaceView *)self device];
          [device screenScale];
          v24 = v23;
          v25 = v13;
          v26 = (v8 * v23);
          animatedCopy = animated;
          v28 = (v10 * v23);
          imagea = [v25 CGImage];
          v110 = v17;
          cGImage = [v17 CGImage];
          v30 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
          v31 = 1;
          v112 = photoCopy;
          v32 = CGBitmapContextCreate(0, v26, v28, 8uLL, 4 * v26, v30, 1u);
          CGColorSpaceRelease(v30);
          v33 = v26;
          v13 = v25;
          v34 = v28;
          animated = animatedCopy;
          memset(&keyExistsAndHasValidFormat, 0, sizeof(keyExistsAndHasValidFormat));
          [(NTKUltraCubeFaceView *)self ctmForDrawingImage:v25 uprightInRect:0.0, 0.0, v33, v34];
          transform = keyExistsAndHasValidFormat;
          CGContextConcatCTM(v32, &transform);
          v132 = keyExistsAndHasValidFormat;
          CGAffineTransformInvert(&transform, &v132);
          v137.origin.x = 0.0;
          v137.origin.y = 0.0;
          v137.size.width = v33;
          v137.size.height = v34;
          v138 = CGRectApplyAffineTransform(v137, &transform);
          x = v138.origin.x;
          y = v138.origin.y;
          width = v138.size.width;
          v38 = v10;
          height = v138.size.height;
          v40 = cGImage;
          v17 = v110;
          CGContextClipToMask(v32, v138, v40);
          CGContextSetInterpolationQuality(v32, kCGInterpolationHigh);
          v139.origin.x = x;
          v139.origin.y = y;
          v139.size.width = width;
          v139.size.height = height;
          v10 = v38;
          CGContextDrawImage(v32, v139, imagea);
          v41 = CGBitmapContextCreateImage(v32);
          v42 = v32;
          photoCopy = v112;
          CGContextRelease(v42);
          image = [UIImage imageWithCGImage:v41 scale:0 orientation:v24];
          CGImageRelease(v41);

          goto LABEL_16;
        }

LABEL_15:
        image = v13;
        v31 = 0;
LABEL_16:
        isParallaxFlat = [photoCopy isParallaxFlat];
        self->_isParallaxFlat = isParallaxFlat;
        self->_isParallax3Layer = v31;
        v111 = v17;
        if (v31)
        {
          [photoCopy maskedImageZorder];
          v45 = v44;
          [photoCopy timeElementZorder];
          v47 = v45 < v46;
        }

        else
        {
          v47 = 1;
        }

        v117 = v47;
        self->_isTimeLabelFront = v47;
        v130 = xmmword_42C70;
        v131 = unk_42C80;
        if (NTKInternalBuild())
        {
          v48 = 0;
          v49 = NTKFacePreferencesDomain;
          do
          {
            LOBYTE(keyExistsAndHasValidFormat.a) = 0;
            AppIntegerValue = CFPreferencesGetAppIntegerValue(off_48FA0[v48], v49, &keyExistsAndHasValidFormat);
            if (LOBYTE(keyExistsAndHasValidFormat.a))
            {
              *(&v130 + v48) = AppIntegerValue / 10.0;
            }

            ++v48;
          }

          while (v48 != 8);
        }

        if (isParallaxFlat)
        {
          self->_foregroundMotionScale = 1.0;
          v51 = 1.075;
          self->_foregroundImageScale = 1.075;
          self->_backgroundMotionScale = 1.0;
          goto LABEL_32;
        }

        if (v117)
        {
          if (!v31)
          {
            self->_foregroundMotionScale = 1.0;
            self->_foregroundImageScale = 1.075;
            self->_backgroundMotionScale = 0.0;
            v51 = 1.0;
LABEL_32:
            self->_backgroundImageScale = v51;
            [photoCopy timeElementUnitHeight];
            v59 = v58;
            [photoCopy timeElementUnitBaseline];
            v61 = v60;
            [(NTKUltraCubeFaceView *)self dateComplicationFrameForUnitBaseline:?];
            obj = v63;
            v116 = v62;
            v106 = v64;
            v66 = v65;
            v67 = v62 / v8;
            v68 = v64 / v10;
            v69 = v63 / v8;
            v70 = v65 / v10;
            v71 = v13;
            v72 = v13;
            cGImage2 = [v72 CGImage];
            v74 = CGImageGetWidth(cGImage2);
            v75 = CGImageGetHeight(cGImage2);
            v76.i64[0] = v74;
            v76.i64[1] = v75;
            v119 = vcvtq_f64_u64(v76);
            keyExistsAndHasValidFormat.a = round(v67 * v119.f64[0]);
            keyExistsAndHasValidFormat.b = round(vmuld_lane_f64(v68, v119, 1));
            keyExistsAndHasValidFormat.c = round(v69 * v119.f64[0]);
            keyExistsAndHasValidFormat.d = round(vmuld_lane_f64(v70, v119, 1));
            v77 = [NSValue valueWithBytes:&keyExistsAndHasValidFormat objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
            v136[0] = v77;
            transform.a = round((1.0 - 0.7) * 0.5 * v119.f64[0]);
            transform.b = round(vmuld_lane_f64(v61 - v59, v119, 1));
            transform.c = round(0.7 * v119.f64[0]);
            transform.d = round(vmuld_lane_f64(v59, v119, 1));
            v78 = [NSValue valueWithBytes:&transform objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
            v136[1] = v78;
            *&v132.a = vrndaq_f64(vmulq_f64(v119, xmmword_42C60));
            *&v132.c = vrndaq_f64(vmulq_f64(v119, xmmword_42C50));
            v79 = [NSValue valueWithBytes:&v132 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
            v136[2] = v79;
            v80 = [NSArray arrayWithObjects:v136 count:3];

            v81 = NTKAnalyzePhoto();

            [v81 shadowHue];
            v83 = v82;
            [v81 shadowSaturation];
            v85 = v84;
            [v81 shadowBrightness];
            v120 = [UIColor colorWithHue:v83 saturation:v85 brightness:v86 alpha:1.0];
            [NTKUltraCubeFaceViewComplicationFactory setShadowColor:"setShadowColor:faceView:" faceView:?];
            [(NTKUltraCubeFaceViewComplicationFactory *)self->_complicationFactory dateComplicationFrame];
            v141.origin.x = v116;
            v141.origin.y = v106;
            v141.size.width = obj;
            v141.size.height = v66;
            if (!CGRectEqualToRect(v140, v141))
            {
              [(NTKUltraCubeFaceViewComplicationFactory *)self->_complicationFactory setDateComplicationFrame:v116, v106, obj, v66];
              if (!animated)
              {
                [(NTKUltraCubeFaceView *)self invalidateComplicationLayout];
              }
            }

            v113 = photoCopy;
            v108 = v13;
            v107 = v81;
            if ([v81 isComplexBackground])
            {
              [v81 bgHue];
              v88 = v87;
              [v81 bgSaturation];
              v90 = v89;
              [v81 bgBrightness];
              v92 = [UIColor colorWithHue:v88 saturation:v90 brightness:v91 alpha:0.7];
            }

            else
            {
              v92 = 0;
            }

            gradientColor = self->_gradientColor;
            self->_gradientColor = v92;

            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            obja = self->_contentViews;
            v94 = [(NSMutableArray *)obja countByEnumeratingWithState:&v126 objects:v135 count:16];
            if (v94)
            {
              v95 = v94;
              v96 = *v127;
              do
              {
                for (i = 0; i != v95; i = i + 1)
                {
                  if (*v127 != v96)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v98 = *(*(&v126 + 1) + 8 * i);
                  v99 = self->_gradientColor;
                  v124 = 0;
                  v125 = 0;
                  [(NTKUltraCubeFaceView *)self _newGradientViewsWithColor:v99 timeElementUnitBaseline:&v125 topGradientView:&v124 bottomGradientView:v61];
                  v100 = v125;
                  v101 = v124;
                  [v98 setForegroundContentScale:self->_foregroundImageScale];
                  [v98 setBackgroundContentScale:self->_backgroundImageScale];
                  [v98 setTimeElementUnitHeight:v59];
                  [v98 setTimeElementUnitBaseline:v61];
                  [v98 updateForegroundImage:image backgroundImage:v123 timeElementShadowColor:v120 topGradientView:v100 bottomGradientView:v101 isTimeElementFront:v117];
                  colorEffect = [(NTKUltraCubeFaceView *)self colorEffect];
                  colorPalette = [(NTKUltraCubeFaceView *)self colorPalette];
                  v104 = [NTKUltraCubeContentEffect contentEffectWithColorEffect:colorEffect colorPalette:colorPalette];

                  [v98 setContentEffect:v104];
                }

                v95 = [(NSMutableArray *)obja countByEnumeratingWithState:&v126 objects:v135 count:16];
              }

              while (v95);
            }

            v18 = 1;
            v17 = v111;
            photoCopy = v113;
            v13 = v108;
            v12 = v109;
            goto LABEL_46;
          }

          v52 = *(&v130 + 1);
          LODWORD(self->_foregroundMotionScale) = v130;
          v53 = 1.075 + -1.0;
          v54 = 1.0;
          self->_foregroundImageScale = (1.075 + -1.0) * v52 + 1.0;
          v56 = *(&v130 + 3);
          v55 = *(&v130 + 2);
        }

        else
        {
          v57 = *(&v131 + 1);
          LODWORD(self->_foregroundMotionScale) = v131;
          v53 = 1.075 + -1.0;
          v54 = 1.0;
          self->_foregroundImageScale = (1.075 + -1.0) * v57 + 1.0;
          v56 = *(&v131 + 3);
          v55 = *(&v131 + 2);
        }

        self->_backgroundMotionScale = v55;
        v51 = v54 + v53 * v56;
        goto LABEL_32;
      }
    }

    else
    {
      v123 = 0;
      if (!v17)
      {
        v109 = v12;
        goto LABEL_15;
      }
    }

    v18 = 0;
LABEL_46:

    goto LABEL_47;
  }

  v18 = 0;
LABEL_48:

  return v18;
}

- (void)_loadPhoto:(id)photo animated:(BOOL)animated
{
  animatedCopy = animated;
  photoCopy = photo;
  uniqueIdentifier = [photoCopy uniqueIdentifier];
  v8 = NTKEqualObjects();
  if (![(NTKUltraCubeFaceView *)self _tryLoadPhoto:photoCopy animated:animatedCopy])
  {
    v29 = v8;
    v30 = uniqueIdentifier;
    self->_isTimeLabelFront = 1;
    self->_isParallaxFlat = 0;
    self->_foregroundMotionScale = 1.0;
    self->_foregroundImageScale = 1.075;
    self->_backgroundMotionScale = 0.0;
    self->_backgroundImageScale = 1.0;
    v9 = +[NTKPhotoAnalysis defaultAnalysis];
    [v9 shadowHue];
    v11 = v10;
    [v9 shadowSaturation];
    v13 = v12;
    v28 = v9;
    [v9 shadowBrightness];
    v15 = [UIColor colorWithHue:v11 saturation:v13 brightness:v14 alpha:1.0];
    gradientColor = self->_gradientColor;
    self->_gradientColor = 0;

    [(NTKUltraCubeFaceViewComplicationFactory *)self->_complicationFactory setShadowColor:v15 faceView:self];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = self->_contentViews;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          [v22 setForegroundContentScale:self->_foregroundImageScale];
          [v22 setBackgroundContentScale:self->_backgroundImageScale];
          [v22 setTimeElementUnitHeight:0.241116751];
          [v22 setTimeElementUnitBaseline:0.328125];
          [v22 updateForegroundImage:0 backgroundImage:0 timeElementShadowColor:v15 topGradientView:0 bottomGradientView:0 isTimeElementFront:1];
          [v22 setContentEffect:0];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v19);
    }

    uniqueIdentifier = v30;
    v8 = v29;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = self->_contentViews;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v31 + 1) + 8 * j) invalidateDigitalTimeLabelStyle];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

  if ((v8 & 1) == 0)
  {
    [(NTKUltraCubeFaceView *)self _reloadSwatches:uniqueIdentifier];
  }
}

- (void)_loadNextPhotoAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = (self->_readerIndex + 1) % [(NTKUltraCubePhotosReader *)self->_reader count];
  self->_readerIndex = v5;
  v6 = [(NTKUltraCubePhotosReader *)self->_reader objectAtIndexedSubscript:v5];
  [(NTKUltraCubeFaceView *)self _loadPhoto:v6 animated:animatedCopy];
}

- (void)_reloadSwatches:(id)swatches
{
  v4 = [swatches copy];
  photoSnapshotIdentifier = self->_photoSnapshotIdentifier;
  self->_photoSnapshotIdentifier = v4;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_swatchRefreshHandlers objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_updateContents
{
  if (!self->_isContentLoaded)
  {
    return;
  }

  resourceDirectory = [(NTKUltraCubeFaceView *)self resourceDirectory];
  v4 = [NTKUltraCubePhotosReader readerForResourceDirectory:resourceDirectory];
  reader = self->_reader;
  self->_reader = v4;

  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NTKUltraCubePhotosReader *)self->_reader count];
    resourceDirectory2 = [(NTKUltraCubeFaceView *)self resourceDirectory];
    v15 = 134218242;
    v16 = v7;
    v17 = 2112;
    v18 = resourceDirectory2;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "_updateContents: created NTKUltraCubePhotosReader with %ld photos for %@", &v15, 0x16u);
  }

  if ([(NTKUltraCubePhotosReader *)self->_reader count])
  {
    self->_readerIndex = 0;
    v9 = [(NTKUltraCubePhotosReader *)self->_reader objectAtIndexedSubscript:0];
  }

  else
  {
    v9 = 0;
  }

  resourceDirectory3 = [(NTKUltraCubePhotosReader *)self->_reader resourceDirectory];
  if (resourceDirectory3 && ![(NTKUltraCubePhotosReader *)self->_reader count])
  {
    version = [(NTKUltraCubePhotosReader *)self->_reader version];

    if (version < 2)
    {
      v12 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        resourceDirectory4 = [(NTKUltraCubePhotosReader *)self->_reader resourceDirectory];
        version2 = [(NTKUltraCubePhotosReader *)self->_reader version];
        v15 = 138412546;
        v16 = resourceDirectory4;
        v17 = 2048;
        v18 = version2;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "resource directory %@ is outdated, version == %ld", &v15, 0x16u);
      }

      [(NTKUltraCubeFaceView *)self _setDeprecationWarning];
      goto LABEL_11;
    }
  }

  else
  {
  }

  [(NTKUltraCubeFaceView *)self _clearDeprecationWarning];
LABEL_11:
  [(NTKUltraCubeFaceView *)self _loadPhoto:v9 animated:0];
  if (v9)
  {
    [(NTKUltraCubeFaceView *)self _hideNoPhotoUI];
  }

  else
  {
    [(NTKUltraCubeFaceView *)self _showNoPhotoUI];
  }
}

- (void)_applyPause
{
  isPaused = self->_isPaused;
  isFrozen = [(NTKUltraCubeFaceView *)self isFrozen];
  self->_isPaused = isFrozen;
  if (isPaused != isFrozen)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_contentViews;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) setPaused:{self->_isPaused, v10}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setDeprecationWarning
{
  if (NTKInternalBuild())
  {
    if (!self->_deprecationWarningLabel)
    {
      [(NTKUltraCubeFaceView *)self bounds];
      v5 = [[UILabel alloc] initWithFrame:{0.0, v3 * 0.4, v4, v3 * 0.5}];
      deprecationWarningLabel = self->_deprecationWarningLabel;
      self->_deprecationWarningLabel = v5;

      [(UILabel *)self->_deprecationWarningLabel setNumberOfLines:0];
      v7 = self->_deprecationWarningLabel;
      v8 = +[UIColor redColor];
      [(UILabel *)v7 setTextColor:v8];

      contentView = [(NTKUltraCubeFaceView *)self contentView];
      [contentView addSubview:self->_deprecationWarningLabel];
      [contentView bringSubviewToFront:self->_deprecationWarningLabel];
    }

    v10 = [NSString stringWithFormat:@"Data is v%ld and expected is v%ld. Delete this face.", [(NTKUltraCubePhotosReader *)self->_reader version], 2];
    [(UILabel *)self->_deprecationWarningLabel setText:v10];
  }
}

- (void)_clearDeprecationWarning
{
  deprecationWarningLabel = self->_deprecationWarningLabel;
  if (deprecationWarningLabel)
  {
    [(UILabel *)deprecationWarningLabel removeFromSuperview];
    v4 = self->_deprecationWarningLabel;
    self->_deprecationWarningLabel = 0;
  }
}

- (void)_showNoPhotoUI
{
  if (!self->_isNoPhotosViewVisible && (!NTKInternalBuild() || !self->_deprecationWarningLabel))
  {
    v3 = [NTKAlbumEmptyView alloc];
    device = [(NTKUltraCubeFaceView *)self device];
    v5 = [v3 initForDevice:device];
    noPhotosView = self->_noPhotosView;
    self->_noPhotosView = v5;

    v7 = self->_noPhotosView;
    [(NTKUltraCubeFaceView *)self bounds];
    [(NTKAlbumEmptyView *)v7 setFrame:?];
    v8 = self->_noPhotosView;
    v9 = [NTKUltraCubeFaceBundle localizedStringForKey:@"NO_PORTRAIT_PHOTOS" comment:&stru_49630];
    [(NTKAlbumEmptyView *)v8 setBodyLabelText:v9];

    contentView = [(NTKUltraCubeFaceView *)self contentView];
    [contentView addSubview:self->_noPhotosView];

    complicationContainerView = [(NTKUltraCubeFaceView *)self complicationContainerView];
    [complicationContainerView setHidden:1];

    self->_isNoPhotosViewVisible = 1;
  }
}

- (void)_hideNoPhotoUI
{
  if (self->_isNoPhotosViewVisible)
  {
    complicationContainerView = [(NTKUltraCubeFaceView *)self complicationContainerView];
    [complicationContainerView setHidden:0];

    [(NTKAlbumEmptyView *)self->_noPhotosView removeFromSuperview];
    noPhotosView = self->_noPhotosView;
    self->_noPhotosView = 0;

    self->_isNoPhotosViewVisible = 0;
  }
}

- (id)dateComplicationFont
{
  device = [(NTKUltraCubeFaceView *)self device];
  v3 = sub_F9DC(device);

  return [CLKFont systemFontOfSize:v3 weight:UIFontWeightMedium];
}

- (CGRect)dateComplicationFrameForUnitBaseline:(double)baseline
{
  [(NTKUltraCubeFaceView *)self bounds];
  device = [(NTKUltraCubeFaceView *)self device];
  dateComplicationFont = [(NTKUltraCubeFaceView *)self dateComplicationFont];
  [dateComplicationFont ascender];
  [dateComplicationFont descender];
  CLKRoundForDevice();
  v7 = v6;
  CLKRoundForDevice();
  v9 = v8;
  CLKRoundForDevice();
  v11 = v10;
  CLKRoundForDevice();
  v13 = v12;

  v14 = v13;
  v15 = v11;
  v16 = v9;
  v17 = v7;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_snapshotDateComplicationLabel
{
  v3 = [UIView alloc];
  [(NTKUltraCubeFaceView *)self bounds];
  v4 = [v3 initWithFrame:?];
  v5 = [(NTKUltraCubeFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  v6 = [v5 snapshotViewAfterScreenUpdates:0];
  [v5 frame];
  [v6 setFrame:?];
  [v4 addSubview:v6];

  return v4;
}

- (void)_loadActiveViewIfNeeded
{
  if (!self->_contentActiveView)
  {
    v3 = [(NTKUltraCubeFaceView *)self _newContentViewWithRole:0];
    contentActiveView = self->_contentActiveView;
    self->_contentActiveView = v3;

    [(NSMutableArray *)self->_contentViews addObject:self->_contentActiveView];
    contentView = [(NTKUltraCubeFaceView *)self contentView];
    [contentView addSubview:self->_contentActiveView];
    [contentView bringSubviewToFront:self->_contentActiveView];
  }
}

- (void)_unloadActiveViews
{
  [(NSMutableArray *)self->_contentViews removeObject:self->_contentActiveView];
  [(NTKUltraCubeContentView *)self->_contentActiveView removeFromSuperview];
  contentActiveView = self->_contentActiveView;
  self->_contentActiveView = 0;
}

- (CGAffineTransform)ctmForDrawingImage:(SEL)image uprightInRect:(id)rect
{
  height = a5.size.height;
  [rect imageOrientation];
  sub_1939C();
  memset(&v18, 0, sizeof(v18));
  NTKImagePresentationTransform();
  v7 = *&CGAffineTransformIdentity.a;
  v8 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v8;
  v9 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v9;
  *&t1.a = v7;
  *&t1.c = v8;
  *&t1.tx = v9;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.a = 1.0;
  *&t2.d = xmmword_42BF0;
  t2.ty = height;
  CGAffineTransformConcat(retstr, &t1, &t2);
  v10 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v10;
  *&t2.tx = *&retstr->tx;
  v15 = v18;
  CGAffineTransformConcat(&t1, &t2, &v15);
  v11 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v11;
  *&retstr->tx = *&t1.tx;
  v12 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v12;
  *&t2.tx = *&retstr->tx;
  v15.b = 0.0;
  v15.c = 0.0;
  v15.a = 1.0;
  *&v15.d = xmmword_42BF0;
  v15.ty = height;
  result = CGAffineTransformConcat(&t1, &t2, &v15);
  v14 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v14;
  *&retstr->tx = *&t1.tx;
  return result;
}

@end