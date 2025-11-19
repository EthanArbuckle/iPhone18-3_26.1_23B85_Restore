@interface PKPaletteInkingToolView
- (BOOL)_shouldHaveAttributeViewController;
- (BOOL)_shouldInstallOpacityLabel;
- (CGRect)_colorIndicatorImageViewFrame;
- (PKPaletteInkingToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6;
- (PKPaletteInkingToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6 toolProperties:(id)a7;
- (id)_opacityLabelFont;
- (id)_opacityLabelTextColor;
- (id)_tintedImage:(id)a3 color:(id)a4 allowHDR:(BOOL)a5;
- (id)_toolColorIndicatorContourImageForCurrentEdgeLocation;
- (id)_toolColorIndicatorImageForCurrentEdgeLocation;
- (id)_toolTipContourImageForCurrentEdgeLocation;
- (id)_toolTipImageForCurrentEdgeLocation;
- (id)_uiColor;
- (id)attributeViewController;
- (id)baseImage;
- (id)toolProperties;
- (int64_t)_uiColorUserInterfaceStyle;
- (int64_t)azimuthImageIndex;
- (unint64_t)_displayModeForAttributeViewController;
- (void)_reloadToolImage;
- (void)_setToolProperties:(id)a3 toolIdentifier:(id)a4;
- (void)_updateOpacityLabel;
- (void)_updateToolColorBandAndTipImageViews;
- (void)_updateWantsExtendedDynamicRange;
- (void)inkAttributesPickerDidChangeInkAzimuth:(id)a3;
- (void)inkAttributesPickerDidChangeInkOpacity:(id)a3;
- (void)inkAttributesPickerDidChangeInkThickness:(id)a3;
- (void)layoutSubviews;
- (void)setAllowHDR:(BOOL)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setInk:(id)a3;
- (void)setInkAzimuth:(double)a3;
- (void)setInkColor:(id)a3;
- (void)setInkWeight:(double)a3;
- (void)setScalingFactor:(double)a3;
- (void)setToolProperties:(id)a3;
- (void)updateConstraints;
@end

@implementation PKPaletteInkingToolView

- (PKPaletteInkingToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = a5;
  v26 = a4;
  v11 = a3;
  v12 = [v9 defaultColor];
  if (!v12)
  {
    v12 = [MEMORY[0x1E69DC888] blackColor];
  }

  v30 = xmmword_1C801D150;
  *v31 = unk_1C801D160;
  DKUColorGetRGBAComponents([v12 CGColor], &v30);
  v13 = [MEMORY[0x1E695DF90] dictionary];
  v28[0] = @"PKInkRedComponentProperty";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:*&v30];
  v29[0] = v14;
  v28[1] = @"PKInkGreenComponentProperty";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v30 + 1)];
  v29[1] = v15;
  v28[2] = @"PKInkBlueComponentProperty";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v31[0]];
  v29[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
  [v13 setObject:v17 forKeyedSubscript:@"PKInkColorProperty"];

  v18 = MEMORY[0x1E696AD98];
  [PKInk defaultWeightForIdentifier:v11];
  v19 = [v18 numberWithDouble:?];
  [v13 setObject:v19 forKeyedSubscript:@"PKInkWeightProperty"];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v31[1]];
  [v13 setObject:v20 forKeyedSubscript:@"PKInkOpacityProperty"];

  [v13 setObject:v10 forKeyedSubscript:@"PKInkVariantProperty"];
  v21 = MEMORY[0x1E696AD98];
  [PKInk defaultAzimuthForIdentifier:v11];
  v22 = [v21 numberWithDouble:?];
  [v13 setObject:v22 forKeyedSubscript:@"PKInkAzimuthProperty"];

  v23 = [v13 copy];
  v24 = [(PKPaletteInkingToolView *)self initWithToolIdentifier:v11 itemIdentifier:v26 variant:v10 configuration:v9 toolProperties:v23];

  return v24;
}

- (PKPaletteInkingToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6 toolProperties:(id)a7
{
  v12 = a3;
  v13 = a7;
  v116.receiver = self;
  v116.super_class = PKPaletteInkingToolView;
  v14 = [(PKPaletteToolView *)&v116 initWithToolIdentifier:v12 itemIdentifier:a4 variant:a5 configuration:a6];
  v15 = v14;
  if (v14)
  {
    [(PKPaletteInkingToolView *)v14 _setToolProperties:v13 toolIdentifier:v12];
    if (([v12 isEqual:@"com.apple.ink.lasso"] & 1) == 0 && (objc_msgSend(v12, "isEqual:", @"com.apple.ink.generationtool") & 1) == 0)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      colorIndicatorImageView = v15->_colorIndicatorImageView;
      v15->_colorIndicatorImageView = v16;

      v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:0];
      [(UIImageView *)v15->_colorIndicatorImageView _setLocalOverrideTraitCollection:v18];

      [(PKPaletteInkingToolView *)v15 addSubview:v15->_colorIndicatorImageView];
      v19 = [(PKPaletteToolView *)v15 configuration];
      v20 = [v19 bandMaskImage];
      v21 = [v20 imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setColorIndicatorImageUp:v21];

      v22 = MEMORY[0x1E69DCAB8];
      v23 = [(PKPaletteInkingToolView *)v15 colorIndicatorImageUp];
      v24 = [v23 CGImage];
      v25 = [(PKPaletteInkingToolView *)v15 colorIndicatorImageUp];
      [v25 scale];
      v26 = [v22 imageWithCGImage:v24 scale:3 orientation:?];
      v27 = [v26 imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setColorIndicatorImageRight:v27];

      v28 = MEMORY[0x1E69DCAB8];
      v29 = [(PKPaletteInkingToolView *)v15 colorIndicatorImageUp];
      v30 = [v29 CGImage];
      v31 = [(PKPaletteInkingToolView *)v15 colorIndicatorImageUp];
      [v31 scale];
      v32 = [v28 imageWithCGImage:v30 scale:2 orientation:?];
      v33 = [v32 imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setColorIndicatorImageLeft:v33];

      v34 = [(PKPaletteInkingToolView *)v15 colorIndicatorImageUp];
      [(UIImageView *)v15->_colorIndicatorImageView setImage:v34];

      v35 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      colorIndicatorContourImageView = v15->_colorIndicatorContourImageView;
      v15->_colorIndicatorContourImageView = v35;

      v37 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:0];
      [(UIImageView *)v15->_colorIndicatorContourImageView _setLocalOverrideTraitCollection:v37];

      [(PKPaletteInkingToolView *)v15 addSubview:v15->_colorIndicatorContourImageView];
      v38 = [(PKPaletteToolView *)v15 configuration];
      v39 = [v38 bandContourImage];
      v40 = [v39 imageWithRenderingMode:1];
      colorIndicatorContourImageUp = v15->_colorIndicatorContourImageUp;
      v15->_colorIndicatorContourImageUp = v40;

      v42 = MEMORY[0x1E69DCAB8];
      v43 = [(UIImage *)v15->_colorIndicatorContourImageUp CGImage];
      [(UIImage *)v15->_colorIndicatorContourImageUp scale];
      v44 = [v42 imageWithCGImage:v43 scale:2 orientation:?];
      v45 = [v44 imageWithRenderingMode:1];
      colorIndicatorContourImageLeft = v15->_colorIndicatorContourImageLeft;
      v15->_colorIndicatorContourImageLeft = v45;

      v47 = MEMORY[0x1E69DCAB8];
      v48 = [(UIImage *)v15->_colorIndicatorContourImageUp CGImage];
      [(UIImage *)v15->_colorIndicatorContourImageUp scale];
      v49 = [v47 imageWithCGImage:v48 scale:3 orientation:?];
      v50 = [v49 imageWithRenderingMode:1];
      colorIndicatorContourImageRight = v15->_colorIndicatorContourImageRight;
      v15->_colorIndicatorContourImageRight = v50;

      [(UIImageView *)v15->_colorIndicatorContourImageView setImage:v15->_colorIndicatorContourImageUp];
      v52 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      tipIndicatorImageView = v15->_tipIndicatorImageView;
      v15->_tipIndicatorImageView = v52;

      v54 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:0];
      [(UIImageView *)v15->_tipIndicatorImageView _setLocalOverrideTraitCollection:v54];

      v55 = [(PKPaletteToolView *)v15 imageContentView];
      [v55 addSubview:v15->_tipIndicatorImageView];

      v56 = [(PKPaletteToolView *)v15 configuration];
      v57 = [v56 tipMaskImage];
      v58 = [v57 imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setToolTipImageUp:v58];

      v59 = MEMORY[0x1E69DCAB8];
      v60 = [(PKPaletteInkingToolView *)v15 toolTipImageUp];
      v61 = [v60 CGImage];
      v62 = [(PKPaletteInkingToolView *)v15 toolTipImageUp];
      [v62 scale];
      v63 = [v59 imageWithCGImage:v61 scale:3 orientation:?];
      v64 = [v63 imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setToolTipImageRight:v64];

      v65 = MEMORY[0x1E69DCAB8];
      v66 = [(PKPaletteInkingToolView *)v15 toolTipImageUp];
      v67 = [v66 CGImage];
      v68 = [(PKPaletteInkingToolView *)v15 toolTipImageUp];
      [v68 scale];
      v69 = [v65 imageWithCGImage:v67 scale:2 orientation:?];
      v70 = [v69 imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setToolTipImageLeft:v70];

      v71 = [(PKPaletteInkingToolView *)v15 toolTipImageUp];
      v72 = [(PKPaletteInkingToolView *)v15 tipIndicatorImageView];
      [v72 setImage:v71];

      v73 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      tipIndicatorContourImageView = v15->_tipIndicatorContourImageView;
      v15->_tipIndicatorContourImageView = v73;

      v75 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:0];
      [(UIImageView *)v15->_tipIndicatorContourImageView _setLocalOverrideTraitCollection:v75];

      v76 = [(PKPaletteToolView *)v15 imageContentView];
      [v76 addSubview:v15->_tipIndicatorContourImageView];

      v77 = [(PKPaletteToolView *)v15 configuration];
      v78 = [v77 tipContourImage];
      v79 = [v78 imageWithRenderingMode:1];
      toolTipContourImageUp = v15->_toolTipContourImageUp;
      v15->_toolTipContourImageUp = v79;

      v81 = MEMORY[0x1E69DCAB8];
      v82 = [(UIImage *)v15->_toolTipContourImageUp CGImage];
      [(UIImage *)v15->_toolTipContourImageUp scale];
      v83 = [v81 imageWithCGImage:v82 scale:2 orientation:?];
      v84 = [v83 imageWithRenderingMode:1];
      toolTipContourImageLeft = v15->_toolTipContourImageLeft;
      v15->_toolTipContourImageLeft = v84;

      v86 = MEMORY[0x1E69DCAB8];
      v87 = [(UIImage *)v15->_toolTipContourImageUp CGImage];
      [(UIImage *)v15->_toolTipContourImageUp scale];
      v88 = [v86 imageWithCGImage:v87 scale:3 orientation:?];
      v89 = [v88 imageWithRenderingMode:1];
      toolTipContourImageRight = v15->_toolTipContourImageRight;
      v15->_toolTipContourImageRight = v89;

      [(UIImageView *)v15->_tipIndicatorContourImageView setImage:v15->_toolTipContourImageUp];
      if ([(PKPaletteInkingToolView *)v15 _shouldInstallOpacityLabel])
      {
        v91 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        opacityLabel = v15->_opacityLabel;
        v15->_opacityLabel = v91;

        v93 = [(PKPaletteInkingToolView *)v15 _opacityLabelFont];
        [(UILabel *)v15->_opacityLabel setFont:v93];

        [(UILabel *)v15->_opacityLabel setTextAlignment:1];
        [(UILabel *)v15->_opacityLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        v94 = [(PKPaletteInkingToolView *)v15 _opacityLabelTextColor];
        [(UILabel *)v15->_opacityLabel setTextColor:v94];
        [(PKPaletteInkingToolView *)v15 addSubview:v15->_opacityLabel];
        [(PKPaletteInkingToolView *)v15 _updateOpacityLabel];
        v95 = [(UILabel *)v15->_opacityLabel topAnchor];
        v96 = [(PKPaletteInkingToolView *)v15 topAnchor];
        v97 = [v95 constraintEqualToAnchor:v96];
        opacityLabelTopConstraint = v15->_opacityLabelTopConstraint;
        v15->_opacityLabelTopConstraint = v97;

        v99 = [(UILabel *)v15->_opacityLabel leftAnchor];
        v100 = [(PKPaletteInkingToolView *)v15 leftAnchor];
        v101 = [v99 constraintEqualToAnchor:v100];
        opacityLabelLeftConstraint = v15->_opacityLabelLeftConstraint;
        v15->_opacityLabelLeftConstraint = v101;

        v103 = [(PKPaletteInkingToolView *)v15 rightAnchor];
        v104 = [(UILabel *)v15->_opacityLabel rightAnchor];
        v105 = [v103 constraintEqualToAnchor:v104];
        opacityLabelRightConstraint = v15->_opacityLabelRightConstraint;
        v15->_opacityLabelRightConstraint = v105;

        v107 = [(UILabel *)v15->_opacityLabel centerXAnchor];
        v108 = [(PKPaletteInkingToolView *)v15 centerXAnchor];
        v109 = [v107 constraintEqualToAnchor:v108];
        opacityLabelCenterXConstraint = v15->_opacityLabelCenterXConstraint;
        v15->_opacityLabelCenterXConstraint = v109;

        v111 = [(UILabel *)v15->_opacityLabel centerYAnchor];
        v112 = [(PKPaletteInkingToolView *)v15 centerYAnchor];
        v113 = [v111 constraintEqualToAnchor:v112];
        opacityLabelCenterYConstraint = v15->_opacityLabelCenterYConstraint;
        v15->_opacityLabelCenterYConstraint = v113;
      }

      [(PKPaletteInkingToolView *)v15 setEdgeLocation:4];
    }
  }

  return v15;
}

- (BOOL)_shouldInstallOpacityLabel
{
  v3 = [(PKPaletteToolView *)self configuration];
  if ([v3 supportsOpacity])
  {
    v4 = [(PKPaletteToolView *)self configuration];
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 184);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_opacityLabelTextColor
{
  if (PKIsVisionDevice())
  {
    [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_32];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v2 = ;

  return v2;
}

id __49__PKPaletteInkingToolView__opacityLabelTextColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PKPaletteInkingToolView__opacityLabelTextColor__block_invoke_9;
  v6[3] = &unk_1E82D6498;
  v6[4] = &v7;
  [v3 performAsCurrentTraitCollection:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__PKPaletteInkingToolView__opacityLabelTextColor__block_invoke_9(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setToolProperties:(id)a3 toolIdentifier:(id)a4
{
  v5 = [PKInk inkWithIdentifier:a4 properties:a3];
  [(PKPaletteInkingToolView *)self setInk:v5];

  [(PKPaletteInkingToolView *)self _updateOpacityLabel];
  v6 = [(PKPaletteToolView *)self configuration];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 184);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {

    [(PKPaletteToolView *)self _setToolImageNeedsReload];
  }
}

- (void)setToolProperties:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteToolView *)self toolIdentifier];
  [(PKPaletteInkingToolView *)self _setToolProperties:v4 toolIdentifier:v5];
}

- (id)toolProperties
{
  v2 = [(PKPaletteInkingToolView *)self ink];
  v3 = [v2 properties];

  return v3;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v34 layoutSubviews];
  [(PKPaletteInkingToolView *)self _colorIndicatorImageViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PKPaletteInkingToolView *)self colorIndicatorImageView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(PKPaletteInkingToolView *)self colorIndicatorContourImageView];
  [v12 setFrame:{v4, v6, v8, v10}];

  v13 = [(PKPaletteToolView *)self imageContentView];
  [v13 bounds];

  v14 = [(PKPaletteToolView *)self imageContentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(PKPaletteInkingToolView *)self tipIndicatorImageView];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(PKPaletteToolView *)self imageContentView];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [(PKPaletteInkingToolView *)self tipIndicatorContourImageView];
  [v33 setFrame:{v26, v28, v30, v32}];

  [(PKPaletteInkingToolView *)self _updateWantsExtendedDynamicRange];
}

- (id)_toolColorIndicatorImageForCurrentEdgeLocation
{
  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    v3 = [(PKPaletteInkingToolView *)self colorIndicatorImageRight];
  }

  else
  {
    if ([(PKPaletteToolView *)self edgeLocation]== 8)
    {
      [(PKPaletteInkingToolView *)self colorIndicatorImageLeft];
    }

    else
    {
      [(PKPaletteInkingToolView *)self colorIndicatorImageUp];
    }
    v3 = ;
  }

  return v3;
}

- (id)_toolColorIndicatorContourImageForCurrentEdgeLocation
{
  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    v3 = [(PKPaletteInkingToolView *)self colorIndicatorContourImageRight];
  }

  else
  {
    if ([(PKPaletteToolView *)self edgeLocation]== 8)
    {
      [(PKPaletteInkingToolView *)self colorIndicatorContourImageLeft];
    }

    else
    {
      [(PKPaletteInkingToolView *)self colorIndicatorContourImageUp];
    }
    v3 = ;
  }

  return v3;
}

- (id)_toolTipImageForCurrentEdgeLocation
{
  v3 = [(PKPaletteToolView *)self configuration];
  v4 = [v3 tipMaskImagesForAzimuth];

  if (v4)
  {
    v5 = [(PKPaletteToolView *)self configuration];
    v6 = [v5 tipMaskImagesForAzimuth];
    v7 = [v6 objectAtIndexedSubscript:{-[PKPaletteInkingToolView azimuthImageIndex](self, "azimuthImageIndex")}];
    v8 = [v7 imageWithRenderingMode:2];

    if ([(PKPaletteToolView *)self edgeLocation]== 2)
    {
      v9 = MEMORY[0x1E69DCAB8];
      v10 = [v8 CGImage];
      [v8 scale];
      v11 = v9;
      v12 = v10;
      v13 = 3;
    }

    else
    {
      if ([(PKPaletteToolView *)self edgeLocation]!= 8)
      {
        v18 = v8;
        goto LABEL_13;
      }

      v15 = MEMORY[0x1E69DCAB8];
      v16 = [v8 CGImage];
      [v8 scale];
      v11 = v15;
      v12 = v16;
      v13 = 2;
    }

    v17 = [v11 imageWithCGImage:v12 scale:v13 orientation:?];
    v18 = [v17 imageWithRenderingMode:2];

LABEL_13:
    goto LABEL_16;
  }

  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    v14 = [(PKPaletteInkingToolView *)self toolTipImageRight];
  }

  else
  {
    if ([(PKPaletteToolView *)self edgeLocation]== 8)
    {
      [(PKPaletteInkingToolView *)self toolTipImageLeft];
    }

    else
    {
      [(PKPaletteInkingToolView *)self toolTipImageUp];
    }
    v14 = ;
  }

  v18 = v14;
LABEL_16:

  return v18;
}

- (id)_toolTipContourImageForCurrentEdgeLocation
{
  v3 = [(PKPaletteToolView *)self configuration];
  v4 = [v3 tipContourImagesForAzimuth];

  if (v4)
  {
    v5 = [(PKPaletteToolView *)self configuration];
    v6 = [v5 tipContourImagesForAzimuth];
    v7 = [v6 objectAtIndexedSubscript:{-[PKPaletteInkingToolView azimuthImageIndex](self, "azimuthImageIndex")}];
    v8 = [v7 imageWithRenderingMode:2];

    if ([(PKPaletteToolView *)self edgeLocation]== 2)
    {
      v9 = MEMORY[0x1E69DCAB8];
      v10 = [v8 CGImage];
      [v8 scale];
      v11 = v9;
      v12 = v10;
      v13 = 3;
    }

    else
    {
      if ([(PKPaletteToolView *)self edgeLocation]!= 8)
      {
        v18 = v8;
        goto LABEL_13;
      }

      v15 = MEMORY[0x1E69DCAB8];
      v16 = [v8 CGImage];
      [v8 scale];
      v11 = v15;
      v12 = v16;
      v13 = 2;
    }

    v17 = [v11 imageWithCGImage:v12 scale:v13 orientation:?];
    v18 = [v17 imageWithRenderingMode:2];

LABEL_13:
    goto LABEL_16;
  }

  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    v14 = [(PKPaletteInkingToolView *)self toolTipContourImageRight];
  }

  else
  {
    if ([(PKPaletteToolView *)self edgeLocation]== 8)
    {
      [(PKPaletteInkingToolView *)self toolTipContourImageLeft];
    }

    else
    {
      [(PKPaletteInkingToolView *)self toolTipContourImageUp];
    }
    v14 = ;
  }

  v18 = v14;
LABEL_16:

  return v18;
}

- (CGRect)_colorIndicatorImageViewFrame
{
  v3 = [(PKPaletteToolView *)self configuration];
  if ([v3 supportsStrokeWeight])
  {
    v4 = [(PKPaletteInkingToolView *)self ink];
    [v4 weight];
    [(PKToolConfiguration *)v3 bandThicknessForStrokeWeight:v5];
  }

  else
  {
    v4 = [(PKPaletteInkingToolView *)self colorIndicatorImageUp];
    [v4 size];
  }

  [(PKPaletteToolView *)self scalingFactor];
  [(PKPaletteToolView *)self _toolSelectedOffset];
  [v3 bandVerticalOffset];
  [(PKPaletteToolView *)self scalingFactor];
  [(PKPaletteToolView *)self edgeLocation];
  v6 = [(PKPaletteToolView *)self imageContentView];
  [v6 bounds];

  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    [(PKPaletteInkingToolView *)self bounds];
    CGRectGetWidth(v19);
  }

  else
  {
    [(PKPaletteToolView *)self edgeLocation];
  }

  UIRectIntegralWithScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (int64_t)azimuthImageIndex
{
  v2 = [(PKPaletteInkingToolView *)self ink];
  [v2 _azimuth];
  v4 = v3;

  v5 = v4 + -6.28318531;
  if (v4 <= 3.14159265)
  {
    v5 = v4;
  }

  return fmax(fmin(round(v5 / 0.392699082) + 2.0, 4.0), 0.0);
}

- (id)baseImage
{
  v3 = [(PKPaletteToolView *)self configuration];
  v4 = [v3 baseImagesForAzimuth];

  v5 = [(PKPaletteToolView *)self configuration];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 baseImagesForAzimuth];
    v8 = [v7 objectAtIndexedSubscript:{-[PKPaletteInkingToolView azimuthImageIndex](self, "azimuthImageIndex")}];
  }

  else
  {
    v8 = [v5 baseImage];
  }

  return v8;
}

- (void)updateConstraints
{
  v3 = [(PKPaletteInkingToolView *)self opacityLabelTopConstraint];
  [v3 setConstant:0.0];

  v4 = [(PKPaletteInkingToolView *)self opacityLabelLeftConstraint];
  [v4 setConstant:0.0];

  v5 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
  [v5 setConstant:0.0];

  v6 = [(PKPaletteToolView *)self configuration];
  [v6 opacityLabelVerticalOffset];
  v8 = v7;
  [(PKPaletteToolView *)self scalingFactor];
  v10 = v8 * v9;

  v11 = [(PKPaletteInkingToolView *)self traitCollection];
  v12 = [(PKPaletteInkingToolView *)self window];
  v13 = [v12 windowScene];
  v14 = PKUseCompactSize(v11, v13);

  v15 = [(PKPaletteInkingToolView *)self isSelected];
  if (v14)
  {
    if ((v15 & 1) == 0)
    {
      v16 = [(PKPaletteInkingToolView *)self isHighlighted];
      v17 = 10.0;
      if (v16)
      {
        v17 = 11.0;
      }

      v10 = v10 + v17;
    }

    goto LABEL_14;
  }

  if ((v15 & 1) == 0)
  {
    v18 = [(PKPaletteInkingToolView *)self isHighlighted];
    [(PKPaletteToolView *)self scalingFactor];
    v20 = 20.0;
    if (v18)
    {
      v20 = 22.0;
    }

    v10 = v10 + v19 * v20;
  }

  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    v21 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
  }

  else
  {
    if ([(PKPaletteToolView *)self edgeLocation]!= 8)
    {
LABEL_14:
      v21 = [(PKPaletteInkingToolView *)self opacityLabelTopConstraint];
      goto LABEL_15;
    }

    v21 = [(PKPaletteInkingToolView *)self opacityLabelLeftConstraint];
  }

LABEL_15:
  v22 = v21;
  [v21 setConstant:v10];

  v23.receiver = self;
  v23.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v23 updateConstraints];
}

- (void)setEdgeLocation:(unint64_t)a3
{
  v43[4] = *MEMORY[0x1E69E9840];
  v5 = [(PKPaletteToolView *)self edgeLocation];
  v37.receiver = self;
  v37.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v37 setEdgeLocation:a3];
  if (v5 != [(PKPaletteToolView *)self edgeLocation])
  {
    if ([(PKPaletteToolView *)self edgeLocation]== 2)
    {
      if ([(PKPaletteInkingToolView *)self _shouldInstallOpacityLabel])
      {
        CGAffineTransformMakeRotation(&v36, 1.57079633);
        v6 = [(PKPaletteInkingToolView *)self opacityLabel];
        v35 = v36;
        [v6 setTransform:&v35];

        v7 = MEMORY[0x1E696ACD8];
        v8 = [(PKPaletteInkingToolView *)self opacityLabelLeftConstraint];
        v43[0] = v8;
        v9 = [(PKPaletteInkingToolView *)self opacityLabelTopConstraint];
        v43[1] = v9;
        v10 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
        v43[2] = v10;
        v11 = [(PKPaletteInkingToolView *)self opacityLabelCenterXConstraint];
        v43[3] = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
        [v7 deactivateConstraints:v12];

        v13 = MEMORY[0x1E696ACD8];
        v14 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
        v42[0] = v14;
        v15 = [(PKPaletteInkingToolView *)self opacityLabelCenterYConstraint];
        v42[1] = v15;
        v16 = v42;
LABEL_10:
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
        [v13 activateConstraints:v33];
      }
    }

    else
    {
      v17 = [(PKPaletteToolView *)self edgeLocation];
      v18 = [(PKPaletteInkingToolView *)self _shouldInstallOpacityLabel];
      if (v17 == 8)
      {
        if (v18)
        {
          CGAffineTransformMakeRotation(&v34, -1.57079633);
          v19 = [(PKPaletteInkingToolView *)self opacityLabel];
          v35 = v34;
          [v19 setTransform:&v35];

          v20 = MEMORY[0x1E696ACD8];
          v21 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
          v41[0] = v21;
          v22 = [(PKPaletteInkingToolView *)self opacityLabelTopConstraint];
          v41[1] = v22;
          v23 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
          v41[2] = v23;
          v24 = [(PKPaletteInkingToolView *)self opacityLabelCenterXConstraint];
          v41[3] = v24;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
          [v20 deactivateConstraints:v25];

          v13 = MEMORY[0x1E696ACD8];
          v14 = [(PKPaletteInkingToolView *)self opacityLabelLeftConstraint];
          v40[0] = v14;
          v15 = [(PKPaletteInkingToolView *)self opacityLabelCenterYConstraint];
          v40[1] = v15;
          v16 = v40;
          goto LABEL_10;
        }
      }

      else if (v18)
      {
        v26 = [(PKPaletteInkingToolView *)self opacityLabel];
        v27 = *(MEMORY[0x1E695EFD0] + 16);
        *&v35.a = *MEMORY[0x1E695EFD0];
        *&v35.c = v27;
        *&v35.tx = *(MEMORY[0x1E695EFD0] + 32);
        [v26 setTransform:&v35];

        v28 = MEMORY[0x1E696ACD8];
        v29 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
        v39[0] = v29;
        v30 = [(PKPaletteInkingToolView *)self opacityLabelLeftConstraint];
        v39[1] = v30;
        v31 = [(PKPaletteInkingToolView *)self opacityLabelCenterYConstraint];
        v39[2] = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
        [v28 deactivateConstraints:v32];

        v13 = MEMORY[0x1E696ACD8];
        v14 = [(PKPaletteInkingToolView *)self opacityLabelCenterXConstraint];
        v38[0] = v14;
        v15 = [(PKPaletteInkingToolView *)self opacityLabelTopConstraint];
        v38[1] = v15;
        v16 = v38;
        goto LABEL_10;
      }
    }

    [(PKPaletteInkingToolView *)self _updateToolColorBandAndTipImageViews];
    [(PKPaletteInkingToolView *)self setNeedsUpdateConstraints];
  }
}

- (int64_t)_uiColorUserInterfaceStyle
{
  if ([(PKPaletteToolView *)self colorUserInterfaceStyle])
  {

    return [(PKPaletteToolView *)self colorUserInterfaceStyle];
  }

  else
  {
    v4 = [(PKPaletteInkingToolView *)self traitCollection];
    v5 = [v4 userInterfaceStyle];

    return v5;
  }
}

- (id)_uiColor
{
  v3 = [(PKPaletteInkingToolView *)self ink];
  v4 = [v3 colorForUIAllowHDR:{-[PKPaletteToolView allowHDR](self, "allowHDR")}];
  v5 = [PKInkingTool convertColor:v4 fromUserInterfaceStyle:1 to:[(PKPaletteInkingToolView *)self _uiColorUserInterfaceStyle]];

  return v5;
}

- (id)_tintedImage:(id)a3 color:(id)a4 allowHDR:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  [v7 size];
  v10 = v9;
  v12 = v11;
  v13 = [MEMORY[0x1E69DCA80] defaultFormat];
  v14 = v13;
  if (v5)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  [v13 setPreferredRange:v15];
  [v7 scale];
  [v14 setScale:?];
  v16 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v14 format:{v10, v12}];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__PKPaletteInkingToolView__tintedImage_color_allowHDR___block_invoke;
  v21[3] = &unk_1E82D8698;
  v24 = v10;
  v25 = v12;
  v22 = v8;
  v23 = v7;
  v17 = v7;
  v18 = v8;
  v19 = [v16 imageWithActions:v21];

  return v19;
}

uint64_t __55__PKPaletteInkingToolView__tintedImage_color_allowHDR___block_invoke(uint64_t a1)
{
  [*(a1 + 32) set];
  v5.size.width = *(a1 + 48);
  v5.size.height = *(a1 + 56);
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  UIRectFill(v5);
  v2 = *(a1 + 40);

  return [v2 drawAtPoint:22 blendMode:0.0 alpha:{0.0, 1.0}];
}

- (void)setAllowHDR:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPaletteToolView *)self allowHDR];
  v6.receiver = self;
  v6.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v6 setAllowHDR:v3];
  if (v5 != v3)
  {
    [(PKPaletteInkingToolView *)self _updateToolColorBandAndTipImageViews];
  }
}

- (void)_updateToolColorBandAndTipImageViews
{
  v3 = [(PKPaletteInkingToolView *)self _uiColor];
  v16 = [v3 colorWithAlphaComponent:1.0];

  if ([(PKPaletteToolView *)self allowHDR])
  {
    [v16 CGColor];
    CGColorGetContentHeadroom();
    v5 = v4 > 1.0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PKPaletteInkingToolView *)self _toolColorIndicatorImageForCurrentEdgeLocation];
  v7 = [(PKPaletteInkingToolView *)self _tintedImage:v6 color:v16 allowHDR:v5];
  v8 = [(PKPaletteInkingToolView *)self colorIndicatorImageView];
  [v8 setImage:v7];

  v9 = [(PKPaletteInkingToolView *)self _toolColorIndicatorContourImageForCurrentEdgeLocation];
  v10 = [(PKPaletteInkingToolView *)self colorIndicatorContourImageView];
  [v10 setImage:v9];

  v11 = [(PKPaletteInkingToolView *)self _toolTipImageForCurrentEdgeLocation];
  v12 = [(PKPaletteInkingToolView *)self _tintedImage:v11 color:v16 allowHDR:v5];
  v13 = [(PKPaletteInkingToolView *)self tipIndicatorImageView];
  [v13 setImage:v12];

  v14 = [(PKPaletteInkingToolView *)self _toolTipContourImageForCurrentEdgeLocation];
  v15 = [(PKPaletteInkingToolView *)self tipIndicatorContourImageView];
  [v15 setImage:v14];

  [(PKPaletteInkingToolView *)self _updateWantsExtendedDynamicRange];
}

- (void)_updateWantsExtendedDynamicRange
{
  v3 = [(PKPaletteInkingToolView *)self _uiColor];
  [v3 CGColor];
  CGColorGetContentHeadroom();
  v5 = v4;

  if ([(PKPaletteToolView *)self allowHDR]&& v5 > 1.0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PKPaletteInkingToolView *)self colorIndicatorImageView];
  [v7 setPreferredImageDynamicRange:v6];

  v8 = [(PKPaletteInkingToolView *)self tipIndicatorImageView];
  [v8 setPreferredImageDynamicRange:v6];
}

- (void)_reloadToolImage
{
  v3.receiver = self;
  v3.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v3 _reloadToolImage];
  [(PKPaletteInkingToolView *)self _updateToolColorBandAndTipImageViews];
}

- (void)setInk:(id)a3
{
  v9 = a3;
  if (![(PKInk *)self->_ink isEqual:?])
  {
    objc_storeStrong(&self->_ink, a3);
    v5 = [(PKPaletteToolView *)self configuration];
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 184);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      [(PKPaletteToolView *)self _setToolImageNeedsReload];
    }

    [(PKPaletteInkingToolView *)self _updateToolColorBandAndTipImageViews];
    [(PKPaletteInkingToolView *)self setNeedsLayout];
  }
}

- (void)setInkColor:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteInkingToolView *)self ink];
  v6 = [v5 color];
  v7 = v6;
  v19 = v4;
  ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB([v6 CGColor]);
  v9 = v19;
  v10 = [v19 CGColor];

  v11 = DKUCGColorCreateConvertedToSRGB(v10);
  IsEqualToColorIgnoringOpacityWithTolerance = DKUColorIsEqualToColorIgnoringOpacityWithTolerance(ConvertedToSRGB, v11, 0, 0.000000999999997);
  CGColorRelease(ConvertedToSRGB);
  CGColorRelease(v11);

  if (!IsEqualToColorIgnoringOpacityWithTolerance)
  {
    v13 = [(PKPaletteInkingToolView *)self ink];
    v14 = [PKInk inkFromInk:v13 color:v19];
    [(PKPaletteInkingToolView *)self setInk:v14];

    v15 = [(PKPaletteToolView *)self configuration];
    v16 = v15;
    if (v15)
    {
      v17 = *(v15 + 184);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      [(PKPaletteToolView *)self _setToolImageNeedsReload];
    }

    [(PKPaletteInkingToolView *)self _updateOpacityLabel];
  }
}

- (void)_updateOpacityLabel
{
  if ([(PKPaletteInkingToolView *)self _shouldInstallOpacityLabel])
  {
    v3 = [(PKPaletteInkingToolView *)self ink];
    v4 = [v3 color];
    [v4 alphaComponent];
    v6 = v5;

    v7 = llround(v6 * 100.0);
    if (v7 > 0x63)
    {
      v9 = [(PKPaletteInkingToolView *)self opacityLabel];
      [v9 setText:0];
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", v7];
      v8 = [(PKPaletteInkingToolView *)self opacityLabel];
      [v8 setText:v9];
    }
  }
}

- (void)setInkWeight:(double)a3
{
  v5 = [(PKPaletteInkingToolView *)self ink];
  [v5 weight];
  v7 = vabdd_f64(v6, a3);

  if (v7 >= 0.1)
  {
    v8 = [(PKPaletteInkingToolView *)self ink];
    v9 = [PKInk inkFromInk:v8 weight:a3];
    [(PKPaletteInkingToolView *)self setInk:v9];

    v10 = [(PKPaletteToolView *)self configuration];
    v11 = v10;
    v12 = v10 ? *(v10 + 184) : 0;
    v13 = v12;

    if (v13)
    {

      [(PKPaletteToolView *)self _setToolImageNeedsReload];
    }
  }
}

- (void)setInkAzimuth:(double)a3
{
  v5 = [(PKPaletteInkingToolView *)self ink];
  [v5 _azimuth];
  v7 = vabdd_f64(v6, a3);

  if (v7 >= 0.1)
  {
    v8 = [(PKPaletteInkingToolView *)self ink];
    v9 = [PKInk inkFromInk:v8 azimuth:a3];
    [(PKPaletteInkingToolView *)self setInk:v9];

    [(PKPaletteToolView *)self _setToolImageNeedsReload];
  }
}

- (id)attributeViewController
{
  if (!self->_attributeViewController && [(PKPaletteInkingToolView *)self _shouldHaveAttributeViewController])
  {
    v3 = [PKInkAttributesPicker alloc];
    v4 = [(PKPaletteInkingToolView *)self ink];
    v5 = [(PKPaletteToolView *)self configuration];
    v6 = [(PKInkAttributesPicker *)v3 initWithInk:v4 toolConfiguration:v5];

    [(PKPaletteAttributeViewController *)v6 setDisplayMode:[(PKPaletteInkingToolView *)self _displayModeForAttributeViewController]];
    [(PKPaletteAttributeViewController *)v6 setMinimumOpacityValue:0.0];
    [(PKPaletteAttributeViewController *)v6 setDelegate:self];
    attributeViewController = self->_attributeViewController;
    self->_attributeViewController = v6;
  }

  v8 = self->_attributeViewController;
  v9 = [(PKPaletteInkingToolView *)self ink];
  [(PKPaletteAttributeViewController *)v8 setSelectedInk:v9];

  [(PKPaletteAttributeViewController *)v8 setColorUserInterfaceStyle:[(PKPaletteToolView *)self colorUserInterfaceStyle]];
  v10 = [(PKPaletteToolView *)self configuration];
  v11 = [v10 viewControllerProvider];

  if (v11)
  {
    v12 = [(PKPaletteToolView *)self configuration];
    v13 = [v12 viewControllerProvider];
    v14 = v13[2]();

    if (!v14)
    {
      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"view controller from configuration must not be nil." userInfo:0];
      objc_exception_throw(v15);
    }
  }

  else
  {
    v14 = 0;
  }

  [(PKPaletteAttributeViewController *)v8 setTopViewController:v14];
  v16 = self->_attributeViewController;
  if (v16)
  {
    goto LABEL_9;
  }

  v19.receiver = self;
  v19.super_class = PKPaletteInkingToolView;
  v17 = [(PKPaletteToolView *)&v19 attributeViewController];
  if (!v17)
  {
    v16 = self->_attributeViewController;
LABEL_9:
    v17 = v16;
  }

  return v17;
}

- (BOOL)_shouldHaveAttributeViewController
{
  v3 = [(PKPaletteToolView *)self configuration];
  v4 = v3;
  if (v3 && [v3 supportsStrokeWeight] && (v4[16] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PKPaletteToolView *)self configuration];
    v7 = v6;
    if (v6 && [v6 supportsOpacity])
    {
      v5 = v7[17];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (unint64_t)_displayModeForAttributeViewController
{
  v3 = [(PKPaletteToolView *)self configuration];
  v4 = v3;
  if (v3 && [v3 supportsStrokeWeight])
  {
    v5 = v4[16];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PKPaletteToolView *)self configuration];
  v7 = v6;
  if (v6 && ([v6 supportsOpacity] & 1) != 0)
  {
    v8 = v7[17];

    if (v8)
    {
      v5 |= 2uLL;
    }
  }

  else
  {
  }

  v9 = [(PKPaletteToolView *)self configuration];
  if (v9 && (v10 = v9[22], v9, (v10 & 1) != 0))
  {
    v5 |= 4uLL;
  }

  else if (!v5)
  {
    v11 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_FAULT, "Should not ask for display mode if tool supports neither stroke weight or opacity.", v13, 2u);
    }

    return 2;
  }

  return v5;
}

- (void)inkAttributesPickerDidChangeInkOpacity:(id)a3
{
  v4 = a3;
  v7 = [v4 selectedInk];
  v5 = [v7 colorForUIAllowHDR:{-[PKPaletteToolView allowHDR](self, "allowHDR")}];
  [(PKPaletteInkingToolView *)self setInkColor:v5];

  LODWORD(v5) = [v4 isUpdatingOpacityValue];
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 4096;
  }

  [(PKPaletteInkingToolView *)self sendActionsForControlEvents:v6];
}

- (void)inkAttributesPickerDidChangeInkThickness:(id)a3
{
  v4 = [a3 selectedInk];
  [v4 weight];
  [(PKPaletteInkingToolView *)self setInkWeight:?];
  [(PKPaletteInkingToolView *)self sendActionsForControlEvents:4096];
}

- (void)inkAttributesPickerDidChangeInkAzimuth:(id)a3
{
  v4 = [a3 selectedInk];
  [v4 _azimuth];
  [(PKPaletteInkingToolView *)self setInkAzimuth:?];
  [(PKPaletteInkingToolView *)self sendActionsForControlEvents:4096];
}

- (void)setScalingFactor:(double)a3
{
  v6.receiver = self;
  v6.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v6 setScalingFactor:a3];
  v4 = [(PKPaletteInkingToolView *)self _opacityLabelFont];
  v5 = [(PKPaletteInkingToolView *)self opacityLabel];
  [v5 setFont:v4];

  [(PKPaletteInkingToolView *)self setNeedsUpdateConstraints];
}

- (id)_opacityLabelFont
{
  v2 = MEMORY[0x1E69DB878];
  [(PKPaletteToolView *)self scalingFactor];
  v4 = v3 * 8.0;

  return [v2 boldSystemFontOfSize:v4];
}

@end