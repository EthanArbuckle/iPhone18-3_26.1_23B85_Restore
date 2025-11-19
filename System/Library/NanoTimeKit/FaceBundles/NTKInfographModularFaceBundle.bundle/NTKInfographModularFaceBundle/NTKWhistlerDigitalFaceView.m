@interface NTKWhistlerDigitalFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NSArray)digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
- (NSCache)swatchesCache;
- (NTKFace)swatchesFace;
- (NTKFaceViewController)swatchesFaceViewController;
- (NTKWhistlerDigitalFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (double)_minimumBreathingScaleForComplicationSlot:(id)a3;
- (double)_nonTimeLabelViewAlphaForEditMode:(int64_t)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_digitalTimeLabelFont;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4;
- (id)_filterProviderForSlot:(id)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_paletteApplyingTritiumFractionToPalette:(id)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (int64_t)complicationFamilyForSlot:(id)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyColorsFromPalette:(id)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadLayoutRulesForState:(int64_t)a3 withTopGap:(double)a4 largeModuleHeight:(double)a5;
- (void)_loadSnapshotContentViews;
- (void)_setNumerals:(unint64_t)a3;
- (void)_unloadSnapshotContentViews;
- (void)_updateLocale;
- (void)dealloc;
- (void)invalidateDigitalTimeLabelStyle;
- (void)loadComplicationPlaceholderViews;
- (void)rectangularViewDidBecomeInteractive:(id)a3;
- (void)rectangularViewDidEndInteractive:(id)a3;
- (void)sensitiveUIStateChanged;
@end

@implementation NTKWhistlerDigitalFaceView

- (NTKWhistlerDigitalFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[NTKMonochromeModel alloc] initWithDevice:v9];
  topFilterProvider = self->_topFilterProvider;
  self->_topFilterProvider = v10;

  v12 = [[NTKMonochromeModel alloc] initWithDevice:v9];
  centerFilterProvider = self->_centerFilterProvider;
  self->_centerFilterProvider = v12;

  v14 = [[NTKMonochromeModel alloc] initWithDevice:v9];
  bottomFilterProvider = self->_bottomFilterProvider;
  self->_bottomFilterProvider = v14;

  self->_numberSystem = -1;
  v18.receiver = self;
  v18.super_class = NTKWhistlerDigitalFaceView;
  v16 = [(NTKWhistlerDigitalFaceView *)&v18 initWithFaceStyle:a3 forDevice:v9 clientIdentifier:v8];

  return v16;
}

- (id)createFaceColorPalette
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1148;
  v11[3] = &unk_105C8;
  v11[4] = self;
  v3 = [(NTKWhistlerDigitalFaceView *)self device];
  v4 = sub_1148(v11, v3);
  v6 = v5;
  v8 = v7;

  v9 = objc_alloc_init(NTKGossamerColorPalette);
  [v9 setApproximateComplicationPositions:{v4, v6, v8}];
  [v9 setBackgroundStyle:self->_backgroundStyle];

  return v9;
}

- (id)_paletteApplyingTritiumFractionToPalette:(id)a3
{
  v4 = a3;
  v5 = v4;
  paletteTritiumFraction = self->_paletteTritiumFraction;
  if (paletteTritiumFraction == 1.0)
  {
    v7 = [v4 tritiumPalette];
  }

  else if (paletteTritiumFraction == 0.0)
  {
    v7 = v4;
  }

  else
  {
    v7 = [v4 tritiumPaletteWithProgress:?];
  }

  v8 = v7;

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

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(NTKWhistlerDigitalFaceView *)self _digitalTimeLabelFont];
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
  v12 = [(NTKWhistlerDigitalFaceView *)self device];
  v13 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:v9 applyAdvanceFudge:v12 withBaselineY:x withFont:y forDevice:width, height, v11];

  return v13;
}

- (id)_digitalTimeLabelFont
{
  v3 = [(NTKWhistlerDigitalFaceView *)self device];
  sub_4ACC(v3, v13);
  v4 = *&v13[31];

  v5 = [(NTKWhistlerDigitalFaceView *)self device];
  v6 = NTKShowIndicScriptNumerals();

  if (v6)
  {
    if (self->_numberSystem != -1)
    {
      v7 = [(NTKWhistlerDigitalFaceView *)self digitalTimeLabelFontScaleFactorForNumberSystemOverrides];
      v8 = [v7 objectAtIndexedSubscript:self->_numberSystem];
      [v8 doubleValue];

      v9 = [(NTKWhistlerDigitalFaceView *)self device];
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
    v5 = [(NTKWhistlerDigitalFaceView *)self device];
    sub_4ACC(v5, v7);
    v4 = v4 + v7[41];
  }

  return v4;
}

- (void)_loadSnapshotContentViews
{
  v8.receiver = self;
  v8.super_class = NTKWhistlerDigitalFaceView;
  [(NTKWhistlerDigitalFaceView *)&v8 _loadSnapshotContentViews];
  v3 = [(NTKWhistlerDigitalFaceView *)self device];
  if (!self->_composedView && NTKShowGossamerUI())
  {
    v4 = [(NTKWhistlerDigitalFaceView *)self rootContainerView];
    [v4 removeFromSuperview];
    v5 = [[NTKGradientComposedView alloc] initWithDevice:v3];
    composedView = self->_composedView;
    self->_composedView = v5;

    [(NTKGradientComposedView *)self->_composedView setRootContainerView:v4];
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
  v3 = [(NTKWhistlerDigitalFaceView *)self timeView];
  [v3 setForcedNumberSystem:self->_numberSystem];
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

    v5 = [(NTKWhistlerDigitalFaceView *)self rootContainerView];
    [v5 removeFromSuperview];
    v6 = [(NTKWhistlerDigitalFaceView *)self timeView];
    [(NTKWhistlerDigitalFaceView *)self insertSubview:v5 aboveSubview:v6];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  if ([a5 isEqualToString:NTKComplicationSlotDate])
  {
    if ([v8 complicationType])
    {
      v9 = [NTKDateComplicationLabel alloc];
      v10 = [(NTKWhistlerDigitalFaceView *)self device];
      v11 = [v9 initWithSizeStyle:1 accentType:1 forDevice:v10];

      v12 = [(NTKWhistlerDigitalFaceView *)self device];
      sub_4ACC(v12, v27);
      v13 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v28 design:UIFontWeightSemibold];

      [v11 setFont:v13];
      [v11 setTextAlignment:2];
      v14 = [(NTKWhistlerDigitalFaceView *)self device];
      v15 = NTKShowGossamerUI();

      v16 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
      v17 = v16;
      if (v15)
      {
        v18 = [v16 dateLabelTextColor];
        v19 = [v17 dateLabelAccentColor];
      }

      else
      {
        v22 = [v16 isMulticolor];

        if (v22)
        {
          v18 = [(NTKWhistlerDigitalFaceView *)self _defaultDateTextColor];
        }

        else
        {
          v23 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
          v18 = [v23 primaryColor];
        }

        v19 = [(NTKWhistlerDigitalFaceView *)self _defaultDateAccentColor];
      }

      [v11 setTextColor:v18];
      [v11 setAccentColor:v19];
      v24 = [(NTKWhistlerDigitalFaceView *)self device];
      sub_4ACC(v24, v26);
      [v11 setTouchEdgeInsets:{v26[32], v26[33], v26[34], v26[35]}];
    }

    else
    {
      v11 = objc_alloc_init(NTKUtilityComplicationView);
      v21 = [(NTKWhistlerDigitalFaceView *)self device];
      sub_4ACC(v21, v29);
      [v11 setMinimumWidth:v30];

      [v11 setHidden:1];
    }
  }

  else
  {
    if (a4 == 10)
    {
      v20 = NTKRichComplicationCircularBaseView;
    }

    else
    {
      if (a4 != 11)
      {
        v11 = 0;
        goto LABEL_17;
      }

      v20 = NTKRichComplicationRectangularBaseView;
    }

    v11 = [v20 viewWithLegacyComplicationType:{objc_msgSend(v8, "complicationType")}];
  }

LABEL_17:

  return v11;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v12;
    [v5 transitThemeFromTheme:1 toTheme:1 fraction:1.0];
    v6 = [(NTKWhistlerDigitalFaceView *)self device];
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

      v10 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
      v11 = [v10 isMulticolor];

      if ((v11 & 1) == 0)
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

- (id)_filterProviderForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKWhistlerDigitalFaceView *)self device];
  v6 = NTKShowGossamerUI();

  if (v6)
  {
    if ([v4 isEqualToString:NTKComplicationSlotTopLeft])
    {
      v7 = &OBJC_IVAR___NTKWhistlerDigitalFaceView__topFilterProvider;
LABEL_10:
      self = *&self->NTKDigitalFaceView_opaque[*v7];
      goto LABEL_11;
    }

    if ([v4 isEqualToString:NTKComplicationSlotCenter])
    {
      v7 = &OBJC_IVAR___NTKWhistlerDigitalFaceView__centerFilterProvider;
      goto LABEL_10;
    }

    if (([v4 isEqualToString:NTKComplicationSlotBottomLeft] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", NTKComplicationSlotBottomCenter) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", NTKComplicationSlotBottomRight))
    {
      v7 = &OBJC_IVAR___NTKWhistlerDigitalFaceView__bottomFilterProvider;
      goto LABEL_10;
    }
  }

LABEL_11:
  v8 = self;

  return self;
}

- (void)_loadLayoutRulesForState:(int64_t)a3 withTopGap:(double)a4 largeModuleHeight:(double)a5
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
  v9 = [(NTKWhistlerDigitalFaceView *)self device];
  sub_4ACC(v9, &v63);

  v59 = *(&v75 + 1);
  v60 = *&v75;
  v57 = *(&v76 + 1);
  v58 = *&v76;
  v10 = *(&v64 + 1);
  v50 = *&v63;
  v51 = *&v64;
  v11 = 0.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v11 = *(&v64 + 1);
  }

  v53 = v11;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v10 = *(&v63 + 1);
  }

  v56 = v10;
  v12 = v69;
  v13 = v71;
  v14 = v77;
  v15 = v8 - *&v77 - *&v69;
  v16 = v72;
  v17 = [(NTKWhistlerDigitalFaceView *)self device];
  v18 = [NTKComplicationLayoutRule layoutRuleForDevice:v17 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v15 keylinePadding:*(&v12 + 1), v14, v13, v16];

  v19 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotDate];
  [v19 setDefaultLayoutRule:v18 forState:a3];

  v20 = *(&v67 + 1);
  v21 = *(&v65 + 1);
  v22 = *&v66;
  v23 = [(NTKWhistlerDigitalFaceView *)self device];
  v52 = v20;
  v24 = [NTKComplicationLayoutRule layoutRuleForDevice:v23 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v20 keylinePadding:a4 - v53, v21, v22, v60, v59, v58, v57];

  v25 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotTopLeft];
  [v25 setDefaultLayoutRule:v24 forState:a3];

  v26 = v81;
  v27 = v82;
  v28 = [(NTKWhistlerDigitalFaceView *)self device];
  [v28 screenBounds];
  v29 = *(&v66 + 1);
  v31 = (v30 - *(&v66 + 1)) * 0.5;

  v84.origin.x = v31;
  v84.origin.y = a4 - v53;
  v55 = v22;
  v84.size.width = v21;
  v84.size.height = v22;
  v32 = v56 + CGRectGetMaxY(v84);
  v33 = [(NTKWhistlerDigitalFaceView *)self device];
  v34 = [NTKComplicationLayoutRule layoutRuleForDevice:v33 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v31 keylinePadding:v32, v29, a5, v26, v27];

  if (a3 == 3)
  {
    CGAffineTransformMakeScale(&v62, 0.9, 0.9);
    v61 = v62;
    [v34 setEditingTransform:&v61];
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v35 = v51;
  }

  else
  {
    v35 = v50;
  }

  v36 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotCenter];
  [v36 setDefaultLayoutRule:v34 forState:a3];

  v85.origin.x = v52;
  v85.origin.y = v32;
  v85.size.width = v29;
  v85.size.height = a5;
  v37 = v56 + CGRectGetMaxY(v85);
  v38 = [(NTKWhistlerDigitalFaceView *)self device];
  v39 = [NTKComplicationLayoutRule layoutRuleForDevice:v38 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v52 keylinePadding:v37, v21, v55, v60, v59, v58, v57];

  v40 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomLeft];
  [v40 setDefaultLayoutRule:v39 forState:a3];

  v86.origin.x = v52;
  v86.origin.y = v37;
  v86.size.width = v21;
  v86.size.height = v55;
  v41 = v35 + CGRectGetMaxX(v86);
  v42 = [(NTKWhistlerDigitalFaceView *)self device];
  v43 = [NTKComplicationLayoutRule layoutRuleForDevice:v42 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v41 keylinePadding:v37, v21, v55, v60, v59, v58, v57];

  v44 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomCenter];
  [v44 setDefaultLayoutRule:v43 forState:a3];

  v87.origin.x = v41;
  v87.origin.y = v37;
  v87.size.width = v21;
  v87.size.height = v55;
  v45 = v35 + CGRectGetMaxX(v87);
  v46 = [(NTKWhistlerDigitalFaceView *)self device];
  v47 = [NTKComplicationLayoutRule layoutRuleForDevice:v46 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v45 keylinePadding:v37, v21, v55, v60, v59, v58, v57];

  v48 = [(NTKWhistlerDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomRight];
  [v48 setDefaultLayoutRule:v47 forState:a3];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v15 = a3;
  v7 = [(NTKWhistlerDigitalFaceView *)self device];
  v8 = NTKShowGossamerUI();

  if (v8)
  {
    v9 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
    v10 = v9;
    if (self->_complicationPlaceholderViews)
    {
      [v9 setIsSwatchPreview:1];
    }

    switch(a4)
    {
      case 10:
        [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:v10];
        break;
      case 19:
        -[NTKWhistlerDigitalFaceView _setNumerals:](self, "_setNumerals:", [v15 numeralOption]);
        break;
      case 17:
        v11 = [v15 backgroundStyle];
        [v10 setBackgroundStyle:v11];
        [(NTKWhistlerDigitalFaceView *)self setBackgroundStyle:v11];
        [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:v10];
        v12 = [(NTKWhistlerDigitalFaceView *)self delegate];
        [v12 faceViewWantsComplicationKeylineFramesReloaded];

        v13 = [(NTKWhistlerDigitalFaceView *)self delegate];
        [v13 faceViewDidChangeWantsStatusBarIconShadow];

        v14 = [(NTKWhistlerDigitalFaceView *)self delegate];
        [v14 faceViewDidChangePaddingForStatusBar];

        break;
    }
  }

  else
  {
    if (a4 == 19)
    {
      -[NTKWhistlerDigitalFaceView _setNumerals:](self, "_setNumerals:", [v15 numeralOption]);
      goto LABEL_15;
    }

    if (a4 != 10)
    {
      goto LABEL_15;
    }

    v10 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
    [(NTKWhistlerDigitalFaceView *)self updateWithColorPalette:v10];
  }

LABEL_15:
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = [(NTKWhistlerDigitalFaceView *)self device];
  v14 = NTKShowGossamerUI();

  if (v14)
  {
    v15 = [(NTKWhistlerDigitalFaceView *)self interpolatedColorPalette];
    v16 = [v15 fromPalette];
    v17 = [v15 toPalette];
    if (self->_complicationPlaceholderViews)
    {
      [v16 setIsSwatchPreview:1];
      [v17 setIsSwatchPreview:1];
    }

    switch(a6)
    {
      case 10:
        v25 = [(NTKWhistlerDigitalFaceView *)self backgroundStyle];
        [v16 setBackgroundStyle:v25];
        [v17 setBackgroundStyle:v25];
        [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:v15];
        break;
      case 19:
        v23 = [v11 numeralOption];
        v24 = [v12 numeralOption];
        if (v23 == v24)
        {
          [(NTKWhistlerDigitalFaceView *)self _setNumerals:v23];
        }

        else
        {
          if (a3 >= 0.5)
          {
            v28 = v24;
            CLKMapFractionIntoRange();
            v27 = v29;
            v23 = v28;
          }

          else
          {
            CLKMapFractionIntoRange();
            v27 = v26;
          }

          CLKMapFractionIntoRange();
          memset(&v35, 0, sizeof(v35));
          CGAffineTransformMakeScale(&v35, v30, v30);
          [(NTKWhistlerDigitalFaceView *)self _setNumerals:v23];
          v31 = [(NTKWhistlerDigitalFaceView *)self timeView];
          [v31 setAlpha:v27];

          v34 = v35;
          v32 = [(NTKWhistlerDigitalFaceView *)self timeView];
          v33 = v34;
          [v32 setTransform:&v33];
        }

        break;
      case 17:
        v18 = [v11 backgroundStyle];
        v19 = [v12 backgroundStyle];
        v20 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
        v21 = [v20 pigmentEditOption];

        [v16 setPigmentEditOption:v21];
        [v16 setBackgroundStyle:v18];
        [v17 setPigmentEditOption:v21];
        [v17 setBackgroundStyle:v19];
        [v15 setTransitionFraction:a3];
        [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:v15];

        break;
    }

    goto LABEL_17;
  }

  if (a6 == 10)
  {
    v15 = [(NTKWhistlerDigitalFaceView *)self interpolatedColorPalette];
    v16 = [v15 fromPalette];
    v17 = [(NTKWhistlerDigitalFaceView *)self interpolatedColorPalette];
    v22 = [v17 toPalette];
    [(NTKWhistlerDigitalFaceView *)self _applyTransitionFraction:v16 fromColorPalette:v22 toColorPalette:a3];

LABEL_17:
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (a3 == 1)
  {
    if (!editingComplicationsPalette)
    {
      v6 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
      v7 = [v6 copy];
      [v7 setIsEditingComplications:1];
      v8 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v6 toPalette:v7];
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

    v10 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
    [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:v10];
  }

  [(NTKWhistlerDigitalFaceView *)self _nonTimeLabelViewAlphaForEditMode:a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2C40;
  v12[3] = &unk_10610;
  v12[4] = v11;
  [(NTKWhistlerDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (a4 == 1 || a5 == 1)
  {
    if (!editingComplicationsPalette)
    {
      v10 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
      v11 = [v10 copy];
      [v11 setIsEditingComplications:1];
      v12 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v10 toPalette:v11];
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

    v9 = [(NTKWhistlerDigitalFaceView *)self faceColorPalette];
    [(NTKWhistlerDigitalFaceView *)self _applyColorsFromPalette:v9];
  }

  if (a4 == 19 || a5 == 19)
  {
    [(NTKWhistlerDigitalFaceView *)self _nonTimeLabelViewAlphaForEditMode:a4, a3];
    [(NTKWhistlerDigitalFaceView *)self _nonTimeLabelViewAlphaForEditMode:a5];
    CLKInterpolateBetweenFloatsClipped();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_2E40;
    v15[3] = &unk_10610;
    v15[4] = v14;
    [(NTKWhistlerDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v15];
  }
}

- (void)_applyColorsFromPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 scaleFactor];
  [v5 doubleValue];
  v7 = v6;

  memset(&v50, 0, sizeof(v50));
  CGAffineTransformMakeScale(&v50, v7, v7);
  v8 = [(NTKWhistlerDigitalFaceView *)self rootContainerView];
  v49 = v50;
  [v8 setTransform:&v49];

  [(NTKGradientComposedView *)self->_composedView applyGossamerColorPalette:v4];
  v9 = [v4 dateLabelTextColor];
  v10 = [v4 dateLabelAccentColor];
  v11 = [(NTKWhistlerDigitalFaceView *)self timeView];
  v12 = [v4 timeLabelColor];
  [v11 setTextColor:v12];

  v13 = [v4 foregroundColor];
  topFilterProvider = self->_topFilterProvider;
  v15 = [v4 topAccentColor];
  [(NTKMonochromeModel *)topFilterProvider setAccentColor:v15];

  [(NTKMonochromeModel *)self->_topFilterProvider setNonAccentColor:v13];
  v16 = self->_topFilterProvider;
  v17 = [v4 topApproximateBackgroundColor];
  [(NTKMonochromeModel *)v16 setBackgroundColor:v17];

  centerFilterProvider = self->_centerFilterProvider;
  v19 = [v4 centerAccentColor];
  [(NTKMonochromeModel *)centerFilterProvider setAccentColor:v19];

  [(NTKMonochromeModel *)self->_centerFilterProvider setNonAccentColor:v13];
  v20 = self->_centerFilterProvider;
  v21 = [v4 centerApproximateBackgroundColor];
  [(NTKMonochromeModel *)v20 setBackgroundColor:v21];

  bottomFilterProvider = self->_bottomFilterProvider;
  v23 = [v4 bottomAccentColor];
  [(NTKMonochromeModel *)bottomFilterProvider setAccentColor:v23];

  [(NTKMonochromeModel *)self->_bottomFilterProvider setNonAccentColor:v13];
  v24 = self->_bottomFilterProvider;
  v25 = [v4 bottomApproximateBackgroundColor];
  [(NTKMonochromeModel *)v24 setBackgroundColor:v25];

  v26 = [v4 monochromeFraction];
  [v26 doubleValue];
  self->_monochromeFraction = v27;

  v28 = [v4 tintedFraction];
  [v28 doubleValue];
  self->_tintedFraction = v29;

  monochromeFraction = self->_monochromeFraction;
  tintedFraction = self->_tintedFraction;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_3294;
  v44[3] = &unk_10638;
  v47 = tintedFraction;
  v48 = monochromeFraction;
  v32 = v9;
  v45 = v32;
  v33 = v10;
  v46 = v33;
  [(NTKWhistlerDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v44];
  if (self->_complicationPlaceholderViews)
  {
    v34 = [v4 swatchComplicationPlaceholderColor];
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

          [*(*(&v40 + 1) + 8 * v39) setBackgroundColor:{v34, v40}];
          v39 = v39 + 1;
        }

        while (v37 != v39);
        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v37);
    }
  }
}

- (double)_nonTimeLabelViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 19)
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
    v24 = [v17 layer];
    [v24 setCornerRadius:v8];

    v25 = [v19 layer];
    [v25 setCornerRadius:v8];

    v26 = [v21 layer];
    [v26 setCornerRadius:v8];

    v27 = [v23 layer];
    [v27 setCornerRadius:v8];

    v28 = [[UIView alloc] initWithFrame:{MinX, v15, MaxX - MinX, v14}];
    v29 = [v28 layer];
    [v29 setCornerRadius:8.0];

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
          v38 = [(NTKWhistlerDigitalFaceView *)self complicationContainerView];
          [v38 addSubview:v37];

          v36 = v36 + 1;
        }

        while (v34 != v36);
        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v34);
    }
  }
}

- (void)_applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 primaryColor];
  v11 = [v9 primaryColor];
  v12 = NTKInterpolateBetweenColors();
  [(NTKWhistlerDigitalFaceView *)self setInterpolatedComplicationColor:v12];
  if (([v8 isMulticolor] & 1) != 0 || objc_msgSend(v9, "isMulticolor"))
  {
    if ([v9 isMulticolor] && !objc_msgSend(v8, "isMulticolor"))
    {
      a3 = 1.0 - a3;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if ([v9 isMulticolor])
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
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
    *&v15[5] = a3;
    [(NTKWhistlerDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v15];
  }
}

- (void)_setNumerals:(unint64_t)a3
{
  v4 = CLKLocaleNumberSystemFromNumeralOption();
  if (self->_numberSystem != v4)
  {
    v5 = v4;
    self->_numberSystem = v4;
    v6 = [(NTKWhistlerDigitalFaceView *)self device];
    v7 = NTKShowIndicScriptNumerals();

    if (v7)
    {
      v8 = [(NTKWhistlerDigitalFaceView *)self timeView];
      [v8 setForcedNumberSystem:v5];

      [(NTKWhistlerDigitalFaceView *)self invalidateDigitalTimeLabelStyle];

      [(NTKWhistlerDigitalFaceView *)self setNeedsLayout];
    }
  }
}

- (void)sensitiveUIStateChanged
{
  numberSystem = self->_numberSystem;
  v4 = [(NTKWhistlerDigitalFaceView *)self device];
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
  v7 = [(NTKWhistlerDigitalFaceView *)self timeView];
  [v7 setForcedNumberSystem:v6];

  [(NTKWhistlerDigitalFaceView *)self setNeedsLayout];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a5;
  if (a4 != 19)
  {
    NTKLargeElementScaleForBreathingFraction();
    v9 = v8;
    v10 = [(NTKWhistlerDigitalFaceView *)self device];
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

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  NTKAlphaForRubberBandingFraction();
  v9 = v8;
  v10 = [(NTKWhistlerDigitalFaceView *)self device];
  v11 = NTKShowGossamerUI();

  if (v11)
  {
    v12 = [(NTKWhistlerDigitalFaceView *)self composedView];
    CGAffineTransformMakeScale(&v15, v7, v7);
    [v12 setTransform:&v15];

    [(NTKWhistlerDigitalFaceView *)self composedView];
  }

  else
  {
    v13 = [(NTKWhistlerDigitalFaceView *)self rootContainerView];
    CGAffineTransformMakeScale(&v15, v7, v7);
    [v13 setTransform:&v15];

    [(NTKWhistlerDigitalFaceView *)self rootContainerView];
  }
  v14 = ;
  [v14 setAlpha:v9];
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:NTKComplicationSlotCenter] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", NTKComplicationSlotDate))
  {
    v7.receiver = self;
    v7.super_class = NTKWhistlerDigitalFaceView;
    v5 = [(NTKWhistlerDigitalFaceView *)&v7 _keylineStyleForComplicationSlot:v4];
  }

  else
  {
    v5 = &dword_0 + 1;
  }

  return v5;
}

- (int64_t)complicationFamilyForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:NTKComplicationSlotTopLeft] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", NTKComplicationSlotBottomLeft) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", NTKComplicationSlotBottomCenter))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:NTKComplicationSlotBottomRight] ^ 1;
  }

  return v4;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:NTKComplicationSlotCenter] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", NTKComplicationSlotDate))
  {
    v5 = [(NTKWhistlerDigitalFaceView *)self complicationFamilyForSlot:v4];
    v6 = [(NTKWhistlerDigitalFaceView *)self device];
    [NTKModuleView cornerRadiusForComplicationFamily:v5 forDevice:v6];
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = NTKWhistlerDigitalFaceView;
    [(NTKWhistlerDigitalFaceView *)&v11 _keylineCornerRadiusForComplicationSlot:v4];
    v8 = v9;
  }

  return v8;
}

- (double)_minimumBreathingScaleForComplicationSlot:(id)a3
{
  v3 = [a3 isEqual:NTKComplicationSlotCenter];
  v4 = &NTKLargeElementMinimumBreathingScale;
  if (!v3)
  {
    v4 = &NTKSmallElementMinimumBreathingScale;
  }

  return *v4;
}

- (void)rectangularViewDidBecomeInteractive:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4068;
  v4[3] = &unk_106B0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  [UIView animateWithDuration:4 delay:v4 options:&stru_106F0 animations:0.3 completion:0.0];
}

- (void)rectangularViewDidEndInteractive:(id)a3
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

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 17)
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
    v4 = [(NTKWhistlerDigitalFaceView *)self device];
    v5 = [NTKFace defaultFaceOfStyle:29 forDevice:v4];
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
    v4 = [(NTKWhistlerDigitalFaceView *)self swatchesFace];
    v5 = [[NTKFaceViewController alloc] initWithFace:v4 configuration:&stru_107E0];
    v6 = self->_swatchesFaceViewController;
    self->_swatchesFaceViewController = v5;

    [(NTKFaceViewController *)self->_swatchesFaceViewController freeze];
    v7 = [(NTKFaceViewController *)self->_swatchesFaceViewController view];
    [v7 setNeedsLayout];

    v8 = [(NTKFaceViewController *)self->_swatchesFaceViewController view];
    [v8 layoutIfNeeded];

    v9 = [(NTKFaceViewController *)self->_swatchesFaceViewController faceView];
    [v9 loadComplicationPlaceholderViews];
    [v9 populateFaceViewEditOptionsFromFace:v4 forced:1];

    swatchesFaceViewController = self->_swatchesFaceViewController;
  }

  return swatchesFaceViewController;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 19)
  {
    v11 = [(NTKWhistlerDigitalFaceView *)self _digitalTimeLabelFont];
    v12 = [(NTKWhistlerDigitalFaceView *)self device];
    v15 = [v8 swatchImageWithFont:v11 device:v12 baseline:0.0];
  }

  else
  {
    if (a4 != 17)
    {
      v24.receiver = self;
      v24.super_class = NTKWhistlerDigitalFaceView;
      v15 = [(NTKWhistlerDigitalFaceView *)&v24 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
      goto LABEL_10;
    }

    v11 = [v9 objectForKeyedSubscript:&off_12180];
    v12 = [(NTKWhistlerDigitalFaceView *)self swatchesCache];
    v13 = [NSString stringWithFormat:@"%@-%@", v8, v11];
    v14 = [v12 objectForKey:v13];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v16 = [(NTKWhistlerDigitalFaceView *)self swatchesFaceViewController];
      v17 = [v16 faceView];
      v18 = [(NTKWhistlerDigitalFaceView *)self swatchesFace];
      [v18 selectOption:v11 forCustomEditMode:10 slot:0];
      [v18 selectOption:v8 forCustomEditMode:17 slot:0];
      [v17 bounds];
      v26.width = v19;
      v26.height = v20;
      UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
      v21 = [v17 layer];
      [v21 renderInContext:UIGraphicsGetCurrentContext()];

      v22 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [v12 setObject:v22 forKey:v13];
      v15 = v22;
    }
  }

LABEL_10:

  return v15;
}

@end