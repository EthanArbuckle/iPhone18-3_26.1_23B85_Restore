@interface NTKWhistlerDigitalFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NSArray)digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
- (NSCache)swatchesCache;
- (NTKFace)swatchesFace;
- (NTKFaceViewController)swatchesFaceViewController;
- (NTKWhistlerDigitalFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_keylineCornerRadiusForComplicationSlot:(id)slot;
- (double)_minimumBreathingScaleForComplicationSlot:(id)slot;
- (double)_nonTimeLabelViewAlphaForEditMode:(int64_t)mode;
- (double)_verticalPaddingForStatusBar;
- (id)_digitalTimeLabelFont;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds;
- (id)_filterProviderForSlot:(id)slot;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_paletteApplyingTritiumFractionToPalette:(id)palette;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (int64_t)complicationFamilyForSlot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyColorsFromPalette:(id)palette;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadLayoutRulesForState:(int64_t)state withTopGap:(double)gap largeModuleHeight:(double)height;
- (void)_loadSnapshotContentViews;
- (void)_setNumerals:(unint64_t)numerals;
- (void)_unloadSnapshotContentViews;
- (void)_updateLocale;
- (void)dealloc;
- (void)invalidateDigitalTimeLabelStyle;
- (void)loadComplicationPlaceholderViews;
- (void)rectangularViewDidBecomeInteractive:(id)interactive;
- (void)rectangularViewDidEndInteractive:(id)interactive;
- (void)sensitiveUIStateChanged;
@end

@implementation NTKWhistlerDigitalFaceView

- (NTKWhistlerDigitalFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceCopy = device;
  v10 = [[NTKMonochromeModel alloc] initWithDevice:deviceCopy];
  topFilterProvider = self->_topFilterProvider;
  self->_topFilterProvider = v10;

  v12 = [[NTKMonochromeModel alloc] initWithDevice:deviceCopy];
  centerFilterProvider = self->_centerFilterProvider;
  self->_centerFilterProvider = v12;

  v14 = [[NTKMonochromeModel alloc] initWithDevice:deviceCopy];
  bottomFilterProvider = self->_bottomFilterProvider;
  self->_bottomFilterProvider = v14;

  self->_numberSystem = -1;
  v18.receiver = self;
  v18.super_class = NTKWhistlerDigitalFaceView;
  v16 = [(NTKWhistlerDigitalFaceView *)&v18 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifierCopy];

  return v16;
}

- (id)createFaceColorPalette
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1148;
  v11[3] = &unk_105C8;
  v11[4] = self;
  device = [(NTKWhistlerDigitalFaceView *)self device];
  v4 = sub_1148(v11, device);
  v6 = v5;
  v8 = v7;

  v9 = objc_alloc_init(NTKGossamerColorPalette);
  [v9 setApproximateComplicationPositions:{v4, v6, v8}];
  [v9 setBackgroundStyle:self->_backgroundStyle];

  return v9;
}

- (id)_paletteApplyingTritiumFractionToPalette:(id)palette
{
  paletteCopy = palette;
  v5 = paletteCopy;
  paletteTritiumFraction = self->_paletteTritiumFraction;
  if (paletteTritiumFraction == 1.0)
  {
    tritiumPalette = [paletteCopy tritiumPalette];
  }

  else if (paletteTritiumFraction == 0.0)
  {
    tritiumPalette = paletteCopy;
  }

  else
  {
    tritiumPalette = [paletteCopy tritiumPaletteWithProgress:?];
  }

  v8 = tritiumPalette;

  return v8;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = NTKWhistlerDigitalFaceView;
  [(NTKWhistlerDigitalFaceView *)&v4 dealloc];
}

- (NSArray)digitalTimeLabelFontScaleFactorForNumberSystemOverrides
{
  digitalTimeLabelFontScaleFactorForNumberSystemOverrides = self->_digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
  if (!digitalTimeLabelFontScaleFactorForNumberSystemOverrides)
  {
    self->_digitalTimeLabelFontScaleFactorForNumberSystemOverrides = &off_11748;

    digitalTimeLabelFontScaleFactorForNumberSystemOverrides = self->_digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
  }

  return digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _digitalTimeLabelFont = [(NTKWhistlerDigitalFaceView *)self _digitalTimeLabelFont];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(NTKWhistlerDigitalFaceView *)self device:0];
  sub_4ACC(v10, &v15);

  v11 = v16;
  device = [(NTKWhistlerDigitalFaceView *)self device];
  v13 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:_digitalTimeLabelFont applyAdvanceFudge:device withBaselineY:x withFont:y forDevice:width, height, v11];

  return v13;
}

- (id)_digitalTimeLabelFont
{
  device = [(NTKWhistlerDigitalFaceView *)self device];
  sub_4ACC(device, v13);
  v4 = *&v13[31];

  device2 = [(NTKWhistlerDigitalFaceView *)self device];
  v6 = NTKShowIndicScriptNumerals();

  if (v6)
  {
    if (self->_numberSystem != -1)
    {
      digitalTimeLabelFontScaleFactorForNumberSystemOverrides = [(NTKWhistlerDigitalFaceView *)self digitalTimeLabelFontScaleFactorForNumberSystemOverrides];
      v8 = [digitalTimeLabelFontScaleFactorForNumberSystemOverrides objectAtIndexedSubscript:self->_numberSystem];
      [v8 doubleValue];

      device3 = [(NTKWhistlerDigitalFaceView *)self device];
      CLKRoundForDevice();
      v4 = v10;
    }

    v11 = [NTKSFCompactFont numericRoundedFontOfSize:v4 weight:UIFontWeightRegular];
  }

  else
  {
    v11 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v4 design:UIFontWeightRegular];
  }

  return v11;
}

- (double)_verticalPaddingForStatusBar
{
  v8.receiver = self;
  v8.super_class = NTKWhistlerDigitalFaceView;
  [(NTKWhistlerDigitalFaceView *)&v8 _verticalPaddingForStatusBar];
  v4 = v3;
  if (self->_backgroundStyle == 1)
  {
    device = [(NTKWhistlerDigitalFaceView *)self device];
    sub_4ACC(device, v7);
    v4 = v4 + v7[41];
  }

  return v4;
}

- (void)_loadSnapshotContentViews
{
  v8.receiver = self;
  v8.super_class = NTKWhistlerDigitalFaceView;
  [(NTKWhistlerDigitalFaceView *)&v8 _loadSnapshotContentViews];
  device = [(NTKWhistlerDigitalFaceView *)self device];
  if (!self->_composedView && NTKShowGossamerUI())
  {
    rootContainerView = [(NTKWhistlerDigitalFaceView *)self rootContainerView];
    [rootContainerView removeFromSuperview];
    v5 = [[NTKGradientComposedView alloc] initWithDevice:device];
    composedView = self->_composedView;
    self->_composedView = v5;

    [(NTKGradientComposedView *)self->_composedView setRootContainerView:rootContainerView];
    [(NTKWhistlerDigitalFaceView *)self addSubview:self->_composedView];
  }

  [(NTKWhistlerDigitalFaceView *)self _updateLocale];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_updateLocale" name:NSCurrentLocaleDidChangeNotification object:0];
}

- (void)invalidateDigitalTimeLabelStyle
{
  v4.receiver = self;
  v4.super_class = NTKWhistlerDigitalFaceView;
  [(NTKWhistlerDigitalFaceView *)&v4 invalidateDigitalTimeLabelStyle];
  timeView = [(NTKWhistlerDigitalFaceView *)self timeView];
  [timeView setForcedNumberSystem:self->_numberSystem];
}

- (void)_unloadSnapshotContentViews
{
  v8.receiver = self;
  v8.super_class = NTKWhistlerDigitalFaceView;
  [(NTKWhistlerDigitalFaceView *)&v8 _unloadSnapshotContentViews];
  composedView = self->_composedView;
  if (composedView)
  {
    [(NTKGradientComposedView *)composedView removeFromSuperview];
    v4 = self->_composedView;
    self->_composedView = 0;

    rootContainerView = [(NTKWhistlerDigitalFaceView *)self rootContainerView];
    [rootContainerView removeFromSuperview];
    timeView = [(NTKWhistlerDigitalFaceView *)self timeView];
    [(NTKWhistlerDigitalFaceView *)self insertSubview:rootContainerView aboveSubview:timeView];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationCopy = complication;
  if ([slot isEqualToString:NTKComplicationSlotDate])
  {
    if ([complicationCopy complicationType])
    {
      v9 = [NTKDateComplicationLabel alloc];
      device = [(NTKWhistlerDigitalFaceView *)self device];
      v11 = [v9 initWithSizeStyle:1 accentType:1 forDevice:device];

      device2 = [(NTKWhistlerDigitalFaceView *)self device];
      sub_4ACC(device2, v27);
      v13 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v28 design:UIFontWeightSemibold];

      [v11 setFont:v13];
      [v11 setTextAlignment:2];
      device3 = [(NTKWhistlerDigitalFaceView *)self device];
      v15 = NTKShowGossamerUI();

      faceColorPalette = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
      v17 = faceColorPalette;
      if (v15)
      {
        dateLabelTextColor = [faceColorPalette dateLabelTextColor];
        dateLabelAccentColor = [v17 dateLabelAccentColor];
      }

      else
      {
        isMulticolor = [faceColorPalette isMulticolor];

        if (isMulticolor)
        {
          dateLabelTextColor = [(NTKWhistlerDigitalFaceView *)self _defaultDateTextColor];
        }

        else
        {
          faceColorPalette2 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
          dateLabelTextColor = [faceColorPalette2 primaryColor];
        }

        dateLabelAccentColor = [(NTKWhistlerDigitalFaceView *)self _defaultDateAccentColor];
      }

      [v11 setTextColor:dateLabelTextColor];
      [v11 setAccentColor:dateLabelAccentColor];
      device4 = [(NTKWhistlerDigitalFaceView *)self device];
      sub_4ACC(device4, v26);
      [v11 setTouchEdgeInsets:{v26[32], v26[33], v26[34], v26[35]}];
    }

    else
    {
      v11 = objc_alloc_init(NTKUtilityComplicationView);
      device5 = [(NTKWhistlerDigitalFaceView *)self device];
      sub_4ACC(device5, v29);
      [v11 setMinimumWidth:v30];

      [v11 setHidden:1];
    }
  }

  else
  {
    if (family == 10)
    {
      v20 = NTKRichComplicationCircularBaseView;
    }

    else
    {
      if (family != 11)
      {
        v11 = 0;
        goto LABEL_17;
      }

      v20 = NTKRichComplicationRectangularBaseView;
    }

    v11 = [v20 viewWithLegacyComplicationType:{objc_msgSend(complicationCopy, "complicationType")}];
  }

LABEL_17:

  return v11;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy setDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewCopy;
    [v5 transitThemeFromTheme:1 toTheme:1 fraction:1.0];
    device = [(NTKWhistlerDigitalFaceView *)self device];
    v7 = NTKShowGossamerUI();

    if (v7)
    {
      if ([v5 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationCircularView])
      {
        v8 = +[UIColor clearColor];
        [v5 setPlatterColor:v8];
      }

      if ([v5 conformsToProtocol:&OBJC_PROTOCOL___CDRichComplicationTintedPlatterColorOverridable])
      {
        [v5 setTintedFraction:self->_tintedFraction];
      }

      monochromeFraction = self->_monochromeFraction;
    }

    else
    {
      if (![(NTKWhistlerDigitalFaceView *)self monochromeRichComplicationsEnabled])
      {
        goto LABEL_15;
      }

      faceColorPalette = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
      isMulticolor = [faceColorPalette isMulticolor];

      if ((isMulticolor & 1) == 0)
      {
        [v5 updateMonochromeColor];
        goto LABEL_15;
      }

      monochromeFraction = 0.0;
    }

    [v5 transitionToMonochromeWithFraction:monochromeFraction];
LABEL_15:
  }
}

- (id)_filterProviderForSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKWhistlerDigitalFaceView *)self device];
  v6 = NTKShowGossamerUI();

  if (v6)
  {
    if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft])
    {
      v7 = &OBJC_IVAR___NTKWhistlerDigitalFaceView__topFilterProvider;
LABEL_10:
      self = *&self->NTKDigitalFaceView_opaque[*v7];
      goto LABEL_11;
    }

    if ([slotCopy isEqualToString:NTKComplicationSlotCenter])
    {
      v7 = &OBJC_IVAR___NTKWhistlerDigitalFaceView__centerFilterProvider;
      goto LABEL_10;
    }

    if (([slotCopy isEqualToString:NTKComplicationSlotBottomLeft] & 1) != 0 || (objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottomCenter) & 1) != 0 || objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottomRight))
    {
      v7 = &OBJC_IVAR___NTKWhistlerDigitalFaceView__bottomFilterProvider;
      goto LABEL_10;
    }
  }

LABEL_11:
  selfCopy = self;

  return self;
}

- (void)_loadLayoutRulesForState:(int64_t)state withTopGap:(double)gap largeModuleHeight:(double)height
{
  [(NTKWhistlerDigitalFaceView *)self bounds];
  v8 = v7;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  device = [(NTKWhistlerDigitalFaceView *)self device];
  sub_4ACC(device, &v63);

  v59 = *(&v75 + 1);
  v60 = *&v75;
  v57 = *(&v76 + 1);
  v58 = *&v76;
  v10 = *(&v64 + 1);
  v50 = *&v63;
  v51 = *&v64;
  v11 = 0.0;
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v11 = *(&v64 + 1);
  }

  v53 = v11;
  if ((state & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v10 = *(&v63 + 1);
  }

  v56 = v10;
  v12 = v69;
  v13 = v71;
  v14 = v77;
  v15 = v8 - *&v77 - *&v69;
  v16 = v72;
  device2 = [(NTKWhistlerDigitalFaceView *)self device];
  v18 = [NTKComplicationLayoutRule layoutRuleForDevice:device2 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v15 keylinePadding:*(&v12 + 1), v14, v13, v16];

  v19 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotDate];
  [v19 setDefaultLayoutRule:v18 forState:state];

  v20 = *(&v67 + 1);
  v21 = *(&v65 + 1);
  v22 = *&v66;
  device3 = [(NTKWhistlerDigitalFaceView *)self device];
  v52 = v20;
  v24 = [NTKComplicationLayoutRule layoutRuleForDevice:device3 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v20 keylinePadding:gap - v53, v21, v22, v60, v59, v58, v57];

  v25 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotTopLeft];
  [v25 setDefaultLayoutRule:v24 forState:state];

  v26 = v81;
  v27 = v82;
  device4 = [(NTKWhistlerDigitalFaceView *)self device];
  [device4 screenBounds];
  v29 = *(&v66 + 1);
  v31 = (v30 - *(&v66 + 1)) * 0.5;

  v84.origin.x = v31;
  v84.origin.y = gap - v53;
  v55 = v22;
  v84.size.width = v21;
  v84.size.height = v22;
  v32 = v56 + CGRectGetMaxY(v84);
  device5 = [(NTKWhistlerDigitalFaceView *)self device];
  v34 = [NTKComplicationLayoutRule layoutRuleForDevice:device5 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v31 keylinePadding:v32, v29, height, v26, v27];

  if (state == 3)
  {
    CGAffineTransformMakeScale(&v62, 0.9, 0.9);
    v61 = v62;
    [v34 setEditingTransform:&v61];
  }

  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v35 = v51;
  }

  else
  {
    v35 = v50;
  }

  v36 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotCenter];
  [v36 setDefaultLayoutRule:v34 forState:state];

  v85.origin.x = v52;
  v85.origin.y = v32;
  v85.size.width = v29;
  v85.size.height = height;
  v37 = v56 + CGRectGetMaxY(v85);
  device6 = [(NTKWhistlerDigitalFaceView *)self device];
  v39 = [NTKComplicationLayoutRule layoutRuleForDevice:device6 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v52 keylinePadding:v37, v21, v55, v60, v59, v58, v57];

  v40 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomLeft];
  [v40 setDefaultLayoutRule:v39 forState:state];

  v86.origin.x = v52;
  v86.origin.y = v37;
  v86.size.width = v21;
  v86.size.height = v55;
  v41 = v35 + CGRectGetMaxX(v86);
  device7 = [(NTKWhistlerDigitalFaceView *)self device];
  v43 = [NTKComplicationLayoutRule layoutRuleForDevice:device7 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v41 keylinePadding:v37, v21, v55, v60, v59, v58, v57];

  v44 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomCenter];
  [v44 setDefaultLayoutRule:v43 forState:state];

  v87.origin.x = v41;
  v87.origin.y = v37;
  v87.size.width = v21;
  v87.size.height = v55;
  v45 = v35 + CGRectGetMaxX(v87);
  device8 = [(NTKWhistlerDigitalFaceView *)self device];
  v47 = [NTKComplicationLayoutRule layoutRuleForDevice:device8 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v45 keylinePadding:v37, v21, v55, v60, v59, v58, v57];

  v48 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomRight];
  [v48 setDefaultLayoutRule:v47 forState:state];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  device = [(NTKWhistlerDigitalFaceView *)self device];
  v8 = NTKShowGossamerUI();

  if (v8)
  {
    faceColorPalette = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
    faceColorPalette2 = faceColorPalette;
    if (self->_complicationPlaceholderViews)
    {
      [faceColorPalette setIsSwatchPreview:1];
    }

    switch(mode)
    {
      case 10:
        [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:faceColorPalette2];
        break;
      case 19:
        -[NTKWhistlerDigitalFaceView _setNumerals:](self, "_setNumerals:", [optionCopy numeralOption]);
        break;
      case 17:
        backgroundStyle = [optionCopy backgroundStyle];
        [faceColorPalette2 setBackgroundStyle:backgroundStyle];
        [(NTKWhistlerDigitalFaceView *)self setBackgroundStyle:backgroundStyle];
        [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:faceColorPalette2];
        delegate = [(NTKWhistlerDigitalFaceView *)self delegate];
        [delegate faceViewWantsComplicationKeylineFramesReloaded];

        delegate2 = [(NTKWhistlerDigitalFaceView *)self delegate];
        [delegate2 faceViewDidChangeWantsStatusBarIconShadow];

        delegate3 = [(NTKWhistlerDigitalFaceView *)self delegate];
        [delegate3 faceViewDidChangePaddingForStatusBar];

        break;
    }
  }

  else
  {
    if (mode == 19)
    {
      -[NTKWhistlerDigitalFaceView _setNumerals:](self, "_setNumerals:", [optionCopy numeralOption]);
      goto LABEL_15;
    }

    if (mode != 10)
    {
      goto LABEL_15;
    }

    faceColorPalette2 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
    [(NTKWhistlerDigitalFaceView *)self updateWithColorPalette:faceColorPalette2];
  }

LABEL_15:
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  device = [(NTKWhistlerDigitalFaceView *)self device];
  v14 = NTKShowGossamerUI();

  if (v14)
  {
    interpolatedColorPalette = [(NTKWhistlerDigitalFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    toPalette = [interpolatedColorPalette toPalette];
    if (self->_complicationPlaceholderViews)
    {
      [fromPalette setIsSwatchPreview:1];
      [toPalette setIsSwatchPreview:1];
    }

    switch(mode)
    {
      case 10:
        backgroundStyle = [(NTKWhistlerDigitalFaceView *)self backgroundStyle];
        [fromPalette setBackgroundStyle:backgroundStyle];
        [toPalette setBackgroundStyle:backgroundStyle];
        [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:interpolatedColorPalette];
        break;
      case 19:
        numeralOption = [optionCopy numeralOption];
        numeralOption2 = [toOptionCopy numeralOption];
        if (numeralOption == numeralOption2)
        {
          [(NTKWhistlerDigitalFaceView *)self _setNumerals:numeralOption];
        }

        else
        {
          if (fraction >= 0.5)
          {
            v28 = numeralOption2;
            CLKMapFractionIntoRange();
            v27 = v29;
            numeralOption = v28;
          }

          else
          {
            CLKMapFractionIntoRange();
            v27 = v26;
          }

          CLKMapFractionIntoRange();
          memset(&v35, 0, sizeof(v35));
          CGAffineTransformMakeScale(&v35, v30, v30);
          [(NTKWhistlerDigitalFaceView *)self _setNumerals:numeralOption];
          timeView = [(NTKWhistlerDigitalFaceView *)self timeView];
          [timeView setAlpha:v27];

          v34 = v35;
          timeView2 = [(NTKWhistlerDigitalFaceView *)self timeView];
          v33 = v34;
          [timeView2 setTransform:&v33];
        }

        break;
      case 17:
        backgroundStyle2 = [optionCopy backgroundStyle];
        backgroundStyle3 = [toOptionCopy backgroundStyle];
        faceColorPalette = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
        pigmentEditOption = [faceColorPalette pigmentEditOption];

        [fromPalette setPigmentEditOption:pigmentEditOption];
        [fromPalette setBackgroundStyle:backgroundStyle2];
        [toPalette setPigmentEditOption:pigmentEditOption];
        [toPalette setBackgroundStyle:backgroundStyle3];
        [interpolatedColorPalette setTransitionFraction:fraction];
        [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:interpolatedColorPalette];

        break;
    }

    goto LABEL_17;
  }

  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKWhistlerDigitalFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    toPalette = [(NTKWhistlerDigitalFaceView *)self interpolatedColorPalette];
    v17ToPalette = [toPalette toPalette];
    [(NTKWhistlerDigitalFaceView *)self _applyTransitionFraction:fromPalette fromColorPalette:v17ToPalette toColorPalette:fraction];

LABEL_17:
  }
}

- (void)_configureForEditMode:(int64_t)mode
{
  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (mode == 1)
  {
    if (!editingComplicationsPalette)
    {
      faceColorPalette = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
      v7 = [faceColorPalette copy];
      [v7 setIsEditingComplications:1];
      v8 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:faceColorPalette toPalette:v7];
      v9 = self->_editingComplicationsPalette;
      self->_editingComplicationsPalette = v8;

      editingComplicationsPalette = self->_editingComplicationsPalette;
    }

    [(NTKInterpolatedColorPalette *)editingComplicationsPalette setTransitionFraction:1.0];
    [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:self->_editingComplicationsPalette];
  }

  else if (editingComplicationsPalette)
  {
    self->_editingComplicationsPalette = 0;

    faceColorPalette2 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
    [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:faceColorPalette2];
  }

  [(NTKWhistlerDigitalFaceView *)self _nonTimeLabelViewAlphaForEditMode:mode];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2C40;
  v12[3] = &unk_10610;
  v12[4] = v11;
  [(NTKWhistlerDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (mode == 1 || editMode == 1)
  {
    if (!editingComplicationsPalette)
    {
      faceColorPalette = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
      v11 = [faceColorPalette copy];
      [v11 setIsEditingComplications:1];
      v12 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:faceColorPalette toPalette:v11];
      v13 = self->_editingComplicationsPalette;
      self->_editingComplicationsPalette = v12;
    }

    CLKInterpolateBetweenFloatsClipped();
    [(NTKInterpolatedColorPalette *)self->_editingComplicationsPalette setTransitionFraction:?];
    [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:self->_editingComplicationsPalette];
  }

  else if (editingComplicationsPalette)
  {
    self->_editingComplicationsPalette = 0;

    faceColorPalette2 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
    [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:faceColorPalette2];
  }

  if (mode == 19 || editMode == 19)
  {
    [(NTKWhistlerDigitalFaceView *)self _nonTimeLabelViewAlphaForEditMode:mode, fraction];
    [(NTKWhistlerDigitalFaceView *)self _nonTimeLabelViewAlphaForEditMode:editMode];
    CLKInterpolateBetweenFloatsClipped();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_2E40;
    v15[3] = &unk_10610;
    v15[4] = v14;
    [(NTKWhistlerDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v15];
  }
}

- (void)_applyColorsFromPalette:(id)palette
{
  paletteCopy = palette;
  scaleFactor = [paletteCopy scaleFactor];
  [scaleFactor doubleValue];
  v7 = v6;

  memset(&v50, 0, sizeof(v50));
  CGAffineTransformMakeScale(&v50, v7, v7);
  rootContainerView = [(NTKWhistlerDigitalFaceView *)self rootContainerView];
  v49 = v50;
  [rootContainerView setTransform:&v49];

  [(NTKGradientComposedView *)self->_composedView applyGossamerColorPalette:paletteCopy];
  dateLabelTextColor = [paletteCopy dateLabelTextColor];
  dateLabelAccentColor = [paletteCopy dateLabelAccentColor];
  timeView = [(NTKWhistlerDigitalFaceView *)self timeView];
  timeLabelColor = [paletteCopy timeLabelColor];
  [timeView setTextColor:timeLabelColor];

  foregroundColor = [paletteCopy foregroundColor];
  topFilterProvider = self->_topFilterProvider;
  topAccentColor = [paletteCopy topAccentColor];
  [(NTKMonochromeModel *)topFilterProvider setAccentColor:topAccentColor];

  [(NTKMonochromeModel *)self->_topFilterProvider setNonAccentColor:foregroundColor];
  v16 = self->_topFilterProvider;
  topApproximateBackgroundColor = [paletteCopy topApproximateBackgroundColor];
  [(NTKMonochromeModel *)v16 setBackgroundColor:topApproximateBackgroundColor];

  centerFilterProvider = self->_centerFilterProvider;
  centerAccentColor = [paletteCopy centerAccentColor];
  [(NTKMonochromeModel *)centerFilterProvider setAccentColor:centerAccentColor];

  [(NTKMonochromeModel *)self->_centerFilterProvider setNonAccentColor:foregroundColor];
  v20 = self->_centerFilterProvider;
  centerApproximateBackgroundColor = [paletteCopy centerApproximateBackgroundColor];
  [(NTKMonochromeModel *)v20 setBackgroundColor:centerApproximateBackgroundColor];

  bottomFilterProvider = self->_bottomFilterProvider;
  bottomAccentColor = [paletteCopy bottomAccentColor];
  [(NTKMonochromeModel *)bottomFilterProvider setAccentColor:bottomAccentColor];

  [(NTKMonochromeModel *)self->_bottomFilterProvider setNonAccentColor:foregroundColor];
  v24 = self->_bottomFilterProvider;
  bottomApproximateBackgroundColor = [paletteCopy bottomApproximateBackgroundColor];
  [(NTKMonochromeModel *)v24 setBackgroundColor:bottomApproximateBackgroundColor];

  monochromeFraction = [paletteCopy monochromeFraction];
  [monochromeFraction doubleValue];
  self->_monochromeFraction = v27;

  tintedFraction = [paletteCopy tintedFraction];
  [tintedFraction doubleValue];
  self->_tintedFraction = v29;

  monochromeFraction = self->_monochromeFraction;
  tintedFraction = self->_tintedFraction;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_3294;
  v44[3] = &unk_10638;
  v47 = tintedFraction;
  v48 = monochromeFraction;
  v32 = dateLabelTextColor;
  v45 = v32;
  v33 = dateLabelAccentColor;
  v46 = v33;
  [(NTKWhistlerDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v44];
  if (self->_complicationPlaceholderViews)
  {
    swatchComplicationPlaceholderColor = [paletteCopy swatchComplicationPlaceholderColor];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v35 = self->_complicationPlaceholderViews;
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v41;
      do
      {
        v39 = 0;
        do
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(v35);
          }

          [*(*(&v40 + 1) + 8 * v39) setBackgroundColor:{swatchComplicationPlaceholderColor, v40}];
          v39 = v39 + 1;
        }

        while (v37 != v39);
        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v37);
    }
  }
}

- (double)_nonTimeLabelViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 19)
  {
    return 1.0;
  }

  return result;
}

- (void)loadComplicationPlaceholderViews
{
  if (!self->_complicationPlaceholderViews)
  {
    v3 = [(NTKWhistlerDigitalFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotTopLeft];
    v4 = [(NTKWhistlerDigitalFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBottomLeft];
    v5 = [(NTKWhistlerDigitalFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBottomCenter];
    v6 = [(NTKWhistlerDigitalFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBottomRight];
    [v4 bounds];
    v8 = v7 * 0.5;
    [v4 frame];
    MinX = CGRectGetMinX(v51);
    [v6 frame];
    MaxX = CGRectGetMaxX(v52);
    [v5 frame];
    v11 = CGRectGetMinX(v53);
    [v4 frame];
    v12 = v11 - CGRectGetMaxX(v54);
    [v4 frame];
    MinY = CGRectGetMinY(v55);
    [v3 frame];
    v14 = MinY - CGRectGetMaxY(v56) + v12 * -2.0;
    [v3 frame];
    v15 = v12 + CGRectGetMaxY(v57);
    v16 = [UIView alloc];
    v44 = v3;
    [v3 frame];
    v17 = [v16 initWithFrame:?];
    v18 = [UIView alloc];
    v43 = v4;
    [v4 frame];
    v19 = [v18 initWithFrame:?];
    v20 = [UIView alloc];
    v42 = v5;
    [v5 frame];
    v21 = [v20 initWithFrame:?];
    v22 = [UIView alloc];
    v41 = v6;
    [v6 frame];
    v23 = [v22 initWithFrame:?];
    layer = [v17 layer];
    [layer setCornerRadius:v8];

    layer2 = [v19 layer];
    [layer2 setCornerRadius:v8];

    layer3 = [v21 layer];
    [layer3 setCornerRadius:v8];

    layer4 = [v23 layer];
    [layer4 setCornerRadius:v8];

    v28 = [[UIView alloc] initWithFrame:{MinX, v15, MaxX - MinX, v14}];
    layer5 = [v28 layer];
    [layer5 setCornerRadius:8.0];

    v39 = v19;
    v40 = v17;
    v50[0] = v17;
    v50[1] = v28;
    v50[2] = v19;
    v50[3] = v21;
    v50[4] = v23;
    v30 = [NSArray arrayWithObjects:v50 count:5];
    complicationPlaceholderViews = self->_complicationPlaceholderViews;
    self->_complicationPlaceholderViews = v30;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = self->_complicationPlaceholderViews;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v46;
      do
      {
        v36 = 0;
        do
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v45 + 1) + 8 * v36);
          complicationContainerView = [(NTKWhistlerDigitalFaceView *)self complicationContainerView];
          [complicationContainerView addSubview:v37];

          v36 = v36 + 1;
        }

        while (v34 != v36);
        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v34);
    }
  }
}

- (void)_applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette
{
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  primaryColor = [paletteCopy primaryColor];
  primaryColor2 = [colorPaletteCopy primaryColor];
  v12 = NTKInterpolateBetweenColors();
  [(NTKWhistlerDigitalFaceView *)self setInterpolatedComplicationColor:v12];
  if (([paletteCopy isMulticolor] & 1) != 0 || objc_msgSend(colorPaletteCopy, "isMulticolor"))
  {
    if ([colorPaletteCopy isMulticolor] && !objc_msgSend(paletteCopy, "isMulticolor"))
    {
      fraction = 1.0 - fraction;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if ([colorPaletteCopy isMulticolor])
  {
    v14 = primaryColor;
  }

  else
  {
    v14 = primaryColor2;
  }

  [(NTKWhistlerDigitalFaceView *)self setComplicationColor:v14];
  if ([(NTKWhistlerDigitalFaceView *)self monochromeRichComplicationsEnabled])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_38F4;
    v15[3] = &unk_10660;
    v15[4] = self;
    v16 = v13;
    *&v15[5] = fraction;
    [(NTKWhistlerDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v15];
  }
}

- (void)_setNumerals:(unint64_t)numerals
{
  v4 = CLKLocaleNumberSystemFromNumeralOption();
  if (self->_numberSystem != v4)
  {
    v5 = v4;
    self->_numberSystem = v4;
    device = [(NTKWhistlerDigitalFaceView *)self device];
    v7 = NTKShowIndicScriptNumerals();

    if (v7)
    {
      timeView = [(NTKWhistlerDigitalFaceView *)self timeView];
      [timeView setForcedNumberSystem:v5];

      [(NTKWhistlerDigitalFaceView *)self invalidateDigitalTimeLabelStyle];

      [(NTKWhistlerDigitalFaceView *)self setNeedsLayout];
    }
  }
}

- (void)sensitiveUIStateChanged
{
  numberSystem = self->_numberSystem;
  device = [(NTKWhistlerDigitalFaceView *)self device];
  v5 = NTKShowIndicScriptNumerals();

  if (v5)
  {
    v6 = numberSystem;
  }

  else
  {
    v6 = -1;
  }

  [(NTKWhistlerDigitalFaceView *)self invalidateDigitalTimeLabelStyle];
  timeView = [(NTKWhistlerDigitalFaceView *)self timeView];
  [timeView setForcedNumberSystem:v6];

  [(NTKWhistlerDigitalFaceView *)self setNeedsLayout];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode != 19)
  {
    NTKLargeElementScaleForBreathingFraction();
    v9 = v8;
    device = [(NTKWhistlerDigitalFaceView *)self device];
    v11 = NTKShowGossamerUI();

    if (v11)
    {
      [(NTKWhistlerDigitalFaceView *)self composedView];
    }

    else
    {
      [(NTKWhistlerDigitalFaceView *)self rootContainerView];
    }
    v12 = ;
    CGAffineTransformMakeScale(&v13, v9, v9);
    [v12 setTransform:&v13];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  NTKAlphaForRubberBandingFraction();
  v9 = v8;
  device = [(NTKWhistlerDigitalFaceView *)self device];
  v11 = NTKShowGossamerUI();

  if (v11)
  {
    composedView = [(NTKWhistlerDigitalFaceView *)self composedView];
    CGAffineTransformMakeScale(&v15, v7, v7);
    [composedView setTransform:&v15];

    [(NTKWhistlerDigitalFaceView *)self composedView];
  }

  else
  {
    rootContainerView = [(NTKWhistlerDigitalFaceView *)self rootContainerView];
    CGAffineTransformMakeScale(&v15, v7, v7);
    [rootContainerView setTransform:&v15];

    [(NTKWhistlerDigitalFaceView *)self rootContainerView];
  }
  v14 = ;
  [v14 setAlpha:v9];
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if (([slotCopy isEqualToString:NTKComplicationSlotCenter] & 1) != 0 || objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotDate))
  {
    v7.receiver = self;
    v7.super_class = NTKWhistlerDigitalFaceView;
    v5 = [(NTKWhistlerDigitalFaceView *)&v7 _keylineStyleForComplicationSlot:slotCopy];
  }

  else
  {
    v5 = &dword_0 + 1;
  }

  return v5;
}

- (int64_t)complicationFamilyForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft] & 1) != 0 || (objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottomLeft) & 1) != 0 || (objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottomCenter))
  {
    v4 = 0;
  }

  else
  {
    v4 = [slotCopy isEqualToString:NTKComplicationSlotBottomRight] ^ 1;
  }

  return v4;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if (([slotCopy isEqualToString:NTKComplicationSlotCenter] & 1) != 0 || objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotDate))
  {
    v5 = [(NTKWhistlerDigitalFaceView *)self complicationFamilyForSlot:slotCopy];
    device = [(NTKWhistlerDigitalFaceView *)self device];
    [NTKModuleView cornerRadiusForComplicationFamily:v5 forDevice:device];
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = NTKWhistlerDigitalFaceView;
    [(NTKWhistlerDigitalFaceView *)&v11 _keylineCornerRadiusForComplicationSlot:slotCopy];
    v8 = v9;
  }

  return v8;
}

- (double)_minimumBreathingScaleForComplicationSlot:(id)slot
{
  v3 = [slot isEqual:NTKComplicationSlotCenter];
  v4 = &NTKLargeElementMinimumBreathingScale;
  if (!v3)
  {
    v4 = &NTKSmallElementMinimumBreathingScale;
  }

  return *v4;
}

- (void)rectangularViewDidBecomeInteractive:(id)interactive
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4068;
  v4[3] = &unk_106B0;
  v4[4] = self;
  interactiveCopy = interactive;
  v3 = interactiveCopy;
  [UIView animateWithDuration:4 delay:v4 options:&stru_106F0 animations:0.3 completion:0.0];
}

- (void)rectangularViewDidEndInteractive:(id)interactive
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4218;
  v3[3] = &unk_10758;
  v3[4] = self;
  [UIView animateWithDuration:4 delay:v3 options:&stru_10778 animations:0.3 completion:0.0];
}

- (void)_updateLocale
{
  v3 = +[NSLocale currentLocale];
  v4 = CLKLocaleIs24HourMode();
  if (self->_is24HourMode != v4)
  {
    self->_is24HourMode = v4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_433C;
    block[3] = &unk_10758;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  [(NTKWhistlerDigitalFaceView *)self _handleLocaleDidChange];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 17)
  {
    return &off_11760;
  }

  else
  {
    return 0;
  }
}

- (NSCache)swatchesCache
{
  swatchesCache = self->_swatchesCache;
  if (!swatchesCache)
  {
    v4 = objc_opt_new();
    v5 = self->_swatchesCache;
    self->_swatchesCache = v4;

    swatchesCache = self->_swatchesCache;
  }

  return swatchesCache;
}

- (NTKFace)swatchesFace
{
  swatchesFace = self->_swatchesFace;
  if (!swatchesFace)
  {
    device = [(NTKWhistlerDigitalFaceView *)self device];
    v5 = [NTKFace defaultFaceOfStyle:29 forDevice:device];
    v6 = self->_swatchesFace;
    self->_swatchesFace = v5;

    v7 = self->_swatchesFace;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_44BC;
    v9[3] = &unk_107A0;
    v9[4] = self;
    [(NTKFace *)v7 enumerateComplicationSlotsWithBlock:v9];
    swatchesFace = self->_swatchesFace;
  }

  return swatchesFace;
}

- (NTKFaceViewController)swatchesFaceViewController
{
  swatchesFaceViewController = self->_swatchesFaceViewController;
  if (!swatchesFaceViewController)
  {
    swatchesFace = [(NTKWhistlerDigitalFaceView *)self swatchesFace];
    v5 = [[NTKFaceViewController alloc] initWithFace:swatchesFace configuration:&stru_107E0];
    v6 = self->_swatchesFaceViewController;
    self->_swatchesFaceViewController = v5;

    [(NTKFaceViewController *)self->_swatchesFaceViewController freeze];
    view = [(NTKFaceViewController *)self->_swatchesFaceViewController view];
    [view setNeedsLayout];

    view2 = [(NTKFaceViewController *)self->_swatchesFaceViewController view];
    [view2 layoutIfNeeded];

    faceView = [(NTKFaceViewController *)self->_swatchesFaceViewController faceView];
    [faceView loadComplicationPlaceholderViews];
    [faceView populateFaceViewEditOptionsFromFace:swatchesFace forced:1];

    swatchesFaceViewController = self->_swatchesFaceViewController;
  }

  return swatchesFaceViewController;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v10 = optionsCopy;
  if (mode == 19)
  {
    _digitalTimeLabelFont = [(NTKWhistlerDigitalFaceView *)self _digitalTimeLabelFont];
    device = [(NTKWhistlerDigitalFaceView *)self device];
    v15 = [optionCopy swatchImageWithFont:_digitalTimeLabelFont device:device baseline:0.0];
  }

  else
  {
    if (mode != 17)
    {
      v24.receiver = self;
      v24.super_class = NTKWhistlerDigitalFaceView;
      v15 = [(NTKWhistlerDigitalFaceView *)&v24 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
      goto LABEL_10;
    }

    _digitalTimeLabelFont = [optionsCopy objectForKeyedSubscript:&off_12180];
    device = [(NTKWhistlerDigitalFaceView *)self swatchesCache];
    v13 = [NSString stringWithFormat:@"%@-%@", optionCopy, _digitalTimeLabelFont];
    v14 = [device objectForKey:v13];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      swatchesFaceViewController = [(NTKWhistlerDigitalFaceView *)self swatchesFaceViewController];
      faceView = [swatchesFaceViewController faceView];
      swatchesFace = [(NTKWhistlerDigitalFaceView *)self swatchesFace];
      [swatchesFace selectOption:_digitalTimeLabelFont forCustomEditMode:10 slot:0];
      [swatchesFace selectOption:optionCopy forCustomEditMode:17 slot:0];
      [faceView bounds];
      v26.width = v19;
      v26.height = v20;
      UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
      layer = [faceView layer];
      [layer renderInContext:UIGraphicsGetCurrentContext()];

      v22 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [device setObject:v22 forKey:v13];
      v15 = v22;
    }
  }

LABEL_10:

  return v15;
}

@end