@interface PKPaletteInkingToolView
- (BOOL)_shouldHaveAttributeViewController;
- (BOOL)_shouldInstallOpacityLabel;
- (CGRect)_colorIndicatorImageViewFrame;
- (PKPaletteInkingToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration;
- (PKPaletteInkingToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration toolProperties:(id)properties;
- (id)_opacityLabelFont;
- (id)_opacityLabelTextColor;
- (id)_tintedImage:(id)image color:(id)color allowHDR:(BOOL)r;
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
- (void)_setToolProperties:(id)properties toolIdentifier:(id)identifier;
- (void)_updateOpacityLabel;
- (void)_updateToolColorBandAndTipImageViews;
- (void)_updateWantsExtendedDynamicRange;
- (void)inkAttributesPickerDidChangeInkAzimuth:(id)azimuth;
- (void)inkAttributesPickerDidChangeInkOpacity:(id)opacity;
- (void)inkAttributesPickerDidChangeInkThickness:(id)thickness;
- (void)layoutSubviews;
- (void)setAllowHDR:(BOOL)r;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setInk:(id)ink;
- (void)setInkAzimuth:(double)azimuth;
- (void)setInkColor:(id)color;
- (void)setInkWeight:(double)weight;
- (void)setScalingFactor:(double)factor;
- (void)setToolProperties:(id)properties;
- (void)updateConstraints;
@end

@implementation PKPaletteInkingToolView

- (PKPaletteInkingToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration
{
  v32 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  variantCopy = variant;
  itemIdentifierCopy = itemIdentifier;
  identifierCopy = identifier;
  defaultColor = [configurationCopy defaultColor];
  if (!defaultColor)
  {
    defaultColor = [MEMORY[0x1E69DC888] blackColor];
  }

  v30 = xmmword_1C801D150;
  *v31 = unk_1C801D160;
  DKUColorGetRGBAComponents([defaultColor CGColor], &v30);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
  [dictionary setObject:v17 forKeyedSubscript:@"PKInkColorProperty"];

  v18 = MEMORY[0x1E696AD98];
  [PKInk defaultWeightForIdentifier:identifierCopy];
  v19 = [v18 numberWithDouble:?];
  [dictionary setObject:v19 forKeyedSubscript:@"PKInkWeightProperty"];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v31[1]];
  [dictionary setObject:v20 forKeyedSubscript:@"PKInkOpacityProperty"];

  [dictionary setObject:variantCopy forKeyedSubscript:@"PKInkVariantProperty"];
  v21 = MEMORY[0x1E696AD98];
  [PKInk defaultAzimuthForIdentifier:identifierCopy];
  v22 = [v21 numberWithDouble:?];
  [dictionary setObject:v22 forKeyedSubscript:@"PKInkAzimuthProperty"];

  v23 = [dictionary copy];
  v24 = [(PKPaletteInkingToolView *)self initWithToolIdentifier:identifierCopy itemIdentifier:itemIdentifierCopy variant:variantCopy configuration:configurationCopy toolProperties:v23];

  return v24;
}

- (PKPaletteInkingToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration toolProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  v116.receiver = self;
  v116.super_class = PKPaletteInkingToolView;
  v14 = [(PKPaletteToolView *)&v116 initWithToolIdentifier:identifierCopy itemIdentifier:itemIdentifier variant:variant configuration:configuration];
  v15 = v14;
  if (v14)
  {
    [(PKPaletteInkingToolView *)v14 _setToolProperties:propertiesCopy toolIdentifier:identifierCopy];
    if (([identifierCopy isEqual:@"com.apple.ink.lasso"] & 1) == 0 && (objc_msgSend(identifierCopy, "isEqual:", @"com.apple.ink.generationtool") & 1) == 0)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      colorIndicatorImageView = v15->_colorIndicatorImageView;
      v15->_colorIndicatorImageView = v16;

      v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:0];
      [(UIImageView *)v15->_colorIndicatorImageView _setLocalOverrideTraitCollection:v18];

      [(PKPaletteInkingToolView *)v15 addSubview:v15->_colorIndicatorImageView];
      configuration = [(PKPaletteToolView *)v15 configuration];
      bandMaskImage = [configuration bandMaskImage];
      v21 = [bandMaskImage imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setColorIndicatorImageUp:v21];

      v22 = MEMORY[0x1E69DCAB8];
      colorIndicatorImageUp = [(PKPaletteInkingToolView *)v15 colorIndicatorImageUp];
      cGImage = [colorIndicatorImageUp CGImage];
      colorIndicatorImageUp2 = [(PKPaletteInkingToolView *)v15 colorIndicatorImageUp];
      [colorIndicatorImageUp2 scale];
      v26 = [v22 imageWithCGImage:cGImage scale:3 orientation:?];
      v27 = [v26 imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setColorIndicatorImageRight:v27];

      v28 = MEMORY[0x1E69DCAB8];
      colorIndicatorImageUp3 = [(PKPaletteInkingToolView *)v15 colorIndicatorImageUp];
      cGImage2 = [colorIndicatorImageUp3 CGImage];
      colorIndicatorImageUp4 = [(PKPaletteInkingToolView *)v15 colorIndicatorImageUp];
      [colorIndicatorImageUp4 scale];
      v32 = [v28 imageWithCGImage:cGImage2 scale:2 orientation:?];
      v33 = [v32 imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setColorIndicatorImageLeft:v33];

      colorIndicatorImageUp5 = [(PKPaletteInkingToolView *)v15 colorIndicatorImageUp];
      [(UIImageView *)v15->_colorIndicatorImageView setImage:colorIndicatorImageUp5];

      v35 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      colorIndicatorContourImageView = v15->_colorIndicatorContourImageView;
      v15->_colorIndicatorContourImageView = v35;

      v37 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:0];
      [(UIImageView *)v15->_colorIndicatorContourImageView _setLocalOverrideTraitCollection:v37];

      [(PKPaletteInkingToolView *)v15 addSubview:v15->_colorIndicatorContourImageView];
      configuration2 = [(PKPaletteToolView *)v15 configuration];
      bandContourImage = [configuration2 bandContourImage];
      v40 = [bandContourImage imageWithRenderingMode:1];
      colorIndicatorContourImageUp = v15->_colorIndicatorContourImageUp;
      v15->_colorIndicatorContourImageUp = v40;

      v42 = MEMORY[0x1E69DCAB8];
      cGImage3 = [(UIImage *)v15->_colorIndicatorContourImageUp CGImage];
      [(UIImage *)v15->_colorIndicatorContourImageUp scale];
      v44 = [v42 imageWithCGImage:cGImage3 scale:2 orientation:?];
      v45 = [v44 imageWithRenderingMode:1];
      colorIndicatorContourImageLeft = v15->_colorIndicatorContourImageLeft;
      v15->_colorIndicatorContourImageLeft = v45;

      v47 = MEMORY[0x1E69DCAB8];
      cGImage4 = [(UIImage *)v15->_colorIndicatorContourImageUp CGImage];
      [(UIImage *)v15->_colorIndicatorContourImageUp scale];
      v49 = [v47 imageWithCGImage:cGImage4 scale:3 orientation:?];
      v50 = [v49 imageWithRenderingMode:1];
      colorIndicatorContourImageRight = v15->_colorIndicatorContourImageRight;
      v15->_colorIndicatorContourImageRight = v50;

      [(UIImageView *)v15->_colorIndicatorContourImageView setImage:v15->_colorIndicatorContourImageUp];
      v52 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      tipIndicatorImageView = v15->_tipIndicatorImageView;
      v15->_tipIndicatorImageView = v52;

      v54 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:0];
      [(UIImageView *)v15->_tipIndicatorImageView _setLocalOverrideTraitCollection:v54];

      imageContentView = [(PKPaletteToolView *)v15 imageContentView];
      [imageContentView addSubview:v15->_tipIndicatorImageView];

      configuration3 = [(PKPaletteToolView *)v15 configuration];
      tipMaskImage = [configuration3 tipMaskImage];
      v58 = [tipMaskImage imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setToolTipImageUp:v58];

      v59 = MEMORY[0x1E69DCAB8];
      toolTipImageUp = [(PKPaletteInkingToolView *)v15 toolTipImageUp];
      cGImage5 = [toolTipImageUp CGImage];
      toolTipImageUp2 = [(PKPaletteInkingToolView *)v15 toolTipImageUp];
      [toolTipImageUp2 scale];
      v63 = [v59 imageWithCGImage:cGImage5 scale:3 orientation:?];
      v64 = [v63 imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setToolTipImageRight:v64];

      v65 = MEMORY[0x1E69DCAB8];
      toolTipImageUp3 = [(PKPaletteInkingToolView *)v15 toolTipImageUp];
      cGImage6 = [toolTipImageUp3 CGImage];
      toolTipImageUp4 = [(PKPaletteInkingToolView *)v15 toolTipImageUp];
      [toolTipImageUp4 scale];
      v69 = [v65 imageWithCGImage:cGImage6 scale:2 orientation:?];
      v70 = [v69 imageWithRenderingMode:2];
      [(PKPaletteInkingToolView *)v15 setToolTipImageLeft:v70];

      toolTipImageUp5 = [(PKPaletteInkingToolView *)v15 toolTipImageUp];
      tipIndicatorImageView = [(PKPaletteInkingToolView *)v15 tipIndicatorImageView];
      [tipIndicatorImageView setImage:toolTipImageUp5];

      v73 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      tipIndicatorContourImageView = v15->_tipIndicatorContourImageView;
      v15->_tipIndicatorContourImageView = v73;

      v75 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:0];
      [(UIImageView *)v15->_tipIndicatorContourImageView _setLocalOverrideTraitCollection:v75];

      imageContentView2 = [(PKPaletteToolView *)v15 imageContentView];
      [imageContentView2 addSubview:v15->_tipIndicatorContourImageView];

      configuration4 = [(PKPaletteToolView *)v15 configuration];
      tipContourImage = [configuration4 tipContourImage];
      v79 = [tipContourImage imageWithRenderingMode:1];
      toolTipContourImageUp = v15->_toolTipContourImageUp;
      v15->_toolTipContourImageUp = v79;

      v81 = MEMORY[0x1E69DCAB8];
      cGImage7 = [(UIImage *)v15->_toolTipContourImageUp CGImage];
      [(UIImage *)v15->_toolTipContourImageUp scale];
      v83 = [v81 imageWithCGImage:cGImage7 scale:2 orientation:?];
      v84 = [v83 imageWithRenderingMode:1];
      toolTipContourImageLeft = v15->_toolTipContourImageLeft;
      v15->_toolTipContourImageLeft = v84;

      v86 = MEMORY[0x1E69DCAB8];
      cGImage8 = [(UIImage *)v15->_toolTipContourImageUp CGImage];
      [(UIImage *)v15->_toolTipContourImageUp scale];
      v88 = [v86 imageWithCGImage:cGImage8 scale:3 orientation:?];
      v89 = [v88 imageWithRenderingMode:1];
      toolTipContourImageRight = v15->_toolTipContourImageRight;
      v15->_toolTipContourImageRight = v89;

      [(UIImageView *)v15->_tipIndicatorContourImageView setImage:v15->_toolTipContourImageUp];
      if ([(PKPaletteInkingToolView *)v15 _shouldInstallOpacityLabel])
      {
        v91 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        opacityLabel = v15->_opacityLabel;
        v15->_opacityLabel = v91;

        _opacityLabelFont = [(PKPaletteInkingToolView *)v15 _opacityLabelFont];
        [(UILabel *)v15->_opacityLabel setFont:_opacityLabelFont];

        [(UILabel *)v15->_opacityLabel setTextAlignment:1];
        [(UILabel *)v15->_opacityLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        _opacityLabelTextColor = [(PKPaletteInkingToolView *)v15 _opacityLabelTextColor];
        [(UILabel *)v15->_opacityLabel setTextColor:_opacityLabelTextColor];
        [(PKPaletteInkingToolView *)v15 addSubview:v15->_opacityLabel];
        [(PKPaletteInkingToolView *)v15 _updateOpacityLabel];
        topAnchor = [(UILabel *)v15->_opacityLabel topAnchor];
        topAnchor2 = [(PKPaletteInkingToolView *)v15 topAnchor];
        v97 = [topAnchor constraintEqualToAnchor:topAnchor2];
        opacityLabelTopConstraint = v15->_opacityLabelTopConstraint;
        v15->_opacityLabelTopConstraint = v97;

        leftAnchor = [(UILabel *)v15->_opacityLabel leftAnchor];
        leftAnchor2 = [(PKPaletteInkingToolView *)v15 leftAnchor];
        v101 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        opacityLabelLeftConstraint = v15->_opacityLabelLeftConstraint;
        v15->_opacityLabelLeftConstraint = v101;

        rightAnchor = [(PKPaletteInkingToolView *)v15 rightAnchor];
        rightAnchor2 = [(UILabel *)v15->_opacityLabel rightAnchor];
        v105 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
        opacityLabelRightConstraint = v15->_opacityLabelRightConstraint;
        v15->_opacityLabelRightConstraint = v105;

        centerXAnchor = [(UILabel *)v15->_opacityLabel centerXAnchor];
        centerXAnchor2 = [(PKPaletteInkingToolView *)v15 centerXAnchor];
        v109 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        opacityLabelCenterXConstraint = v15->_opacityLabelCenterXConstraint;
        v15->_opacityLabelCenterXConstraint = v109;

        centerYAnchor = [(UILabel *)v15->_opacityLabel centerYAnchor];
        centerYAnchor2 = [(PKPaletteInkingToolView *)v15 centerYAnchor];
        v113 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
  configuration = [(PKPaletteToolView *)self configuration];
  if ([configuration supportsOpacity])
  {
    configuration2 = [(PKPaletteToolView *)self configuration];
    v5 = configuration2;
    if (configuration2)
    {
      v6 = *(configuration2 + 184);
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

- (void)_setToolProperties:(id)properties toolIdentifier:(id)identifier
{
  v5 = [PKInk inkWithIdentifier:identifier properties:properties];
  [(PKPaletteInkingToolView *)self setInk:v5];

  [(PKPaletteInkingToolView *)self _updateOpacityLabel];
  configuration = [(PKPaletteToolView *)self configuration];
  v7 = configuration;
  if (configuration)
  {
    v8 = *(configuration + 184);
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

- (void)setToolProperties:(id)properties
{
  propertiesCopy = properties;
  toolIdentifier = [(PKPaletteToolView *)self toolIdentifier];
  [(PKPaletteInkingToolView *)self _setToolProperties:propertiesCopy toolIdentifier:toolIdentifier];
}

- (id)toolProperties
{
  v2 = [(PKPaletteInkingToolView *)self ink];
  properties = [v2 properties];

  return properties;
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
  colorIndicatorImageView = [(PKPaletteInkingToolView *)self colorIndicatorImageView];
  [colorIndicatorImageView setFrame:{v4, v6, v8, v10}];

  colorIndicatorContourImageView = [(PKPaletteInkingToolView *)self colorIndicatorContourImageView];
  [colorIndicatorContourImageView setFrame:{v4, v6, v8, v10}];

  imageContentView = [(PKPaletteToolView *)self imageContentView];
  [imageContentView bounds];

  imageContentView2 = [(PKPaletteToolView *)self imageContentView];
  [imageContentView2 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  tipIndicatorImageView = [(PKPaletteInkingToolView *)self tipIndicatorImageView];
  [tipIndicatorImageView setFrame:{v16, v18, v20, v22}];

  imageContentView3 = [(PKPaletteToolView *)self imageContentView];
  [imageContentView3 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  tipIndicatorContourImageView = [(PKPaletteInkingToolView *)self tipIndicatorContourImageView];
  [tipIndicatorContourImageView setFrame:{v26, v28, v30, v32}];

  [(PKPaletteInkingToolView *)self _updateWantsExtendedDynamicRange];
}

- (id)_toolColorIndicatorImageForCurrentEdgeLocation
{
  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    colorIndicatorImageRight = [(PKPaletteInkingToolView *)self colorIndicatorImageRight];
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
    colorIndicatorImageRight = ;
  }

  return colorIndicatorImageRight;
}

- (id)_toolColorIndicatorContourImageForCurrentEdgeLocation
{
  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    colorIndicatorContourImageRight = [(PKPaletteInkingToolView *)self colorIndicatorContourImageRight];
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
    colorIndicatorContourImageRight = ;
  }

  return colorIndicatorContourImageRight;
}

- (id)_toolTipImageForCurrentEdgeLocation
{
  configuration = [(PKPaletteToolView *)self configuration];
  tipMaskImagesForAzimuth = [configuration tipMaskImagesForAzimuth];

  if (tipMaskImagesForAzimuth)
  {
    configuration2 = [(PKPaletteToolView *)self configuration];
    tipMaskImagesForAzimuth2 = [configuration2 tipMaskImagesForAzimuth];
    v7 = [tipMaskImagesForAzimuth2 objectAtIndexedSubscript:{-[PKPaletteInkingToolView azimuthImageIndex](self, "azimuthImageIndex")}];
    v8 = [v7 imageWithRenderingMode:2];

    if ([(PKPaletteToolView *)self edgeLocation]== 2)
    {
      v9 = MEMORY[0x1E69DCAB8];
      cGImage = [v8 CGImage];
      [v8 scale];
      v11 = v9;
      v12 = cGImage;
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
      cGImage2 = [v8 CGImage];
      [v8 scale];
      v11 = v15;
      v12 = cGImage2;
      v13 = 2;
    }

    v17 = [v11 imageWithCGImage:v12 scale:v13 orientation:?];
    v18 = [v17 imageWithRenderingMode:2];

LABEL_13:
    goto LABEL_16;
  }

  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    toolTipImageRight = [(PKPaletteInkingToolView *)self toolTipImageRight];
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
    toolTipImageRight = ;
  }

  v18 = toolTipImageRight;
LABEL_16:

  return v18;
}

- (id)_toolTipContourImageForCurrentEdgeLocation
{
  configuration = [(PKPaletteToolView *)self configuration];
  tipContourImagesForAzimuth = [configuration tipContourImagesForAzimuth];

  if (tipContourImagesForAzimuth)
  {
    configuration2 = [(PKPaletteToolView *)self configuration];
    tipContourImagesForAzimuth2 = [configuration2 tipContourImagesForAzimuth];
    v7 = [tipContourImagesForAzimuth2 objectAtIndexedSubscript:{-[PKPaletteInkingToolView azimuthImageIndex](self, "azimuthImageIndex")}];
    v8 = [v7 imageWithRenderingMode:2];

    if ([(PKPaletteToolView *)self edgeLocation]== 2)
    {
      v9 = MEMORY[0x1E69DCAB8];
      cGImage = [v8 CGImage];
      [v8 scale];
      v11 = v9;
      v12 = cGImage;
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
      cGImage2 = [v8 CGImage];
      [v8 scale];
      v11 = v15;
      v12 = cGImage2;
      v13 = 2;
    }

    v17 = [v11 imageWithCGImage:v12 scale:v13 orientation:?];
    v18 = [v17 imageWithRenderingMode:2];

LABEL_13:
    goto LABEL_16;
  }

  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    toolTipContourImageRight = [(PKPaletteInkingToolView *)self toolTipContourImageRight];
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
    toolTipContourImageRight = ;
  }

  v18 = toolTipContourImageRight;
LABEL_16:

  return v18;
}

- (CGRect)_colorIndicatorImageViewFrame
{
  configuration = [(PKPaletteToolView *)self configuration];
  if ([configuration supportsStrokeWeight])
  {
    colorIndicatorImageUp = [(PKPaletteInkingToolView *)self ink];
    [colorIndicatorImageUp weight];
    [(PKToolConfiguration *)configuration bandThicknessForStrokeWeight:v5];
  }

  else
  {
    colorIndicatorImageUp = [(PKPaletteInkingToolView *)self colorIndicatorImageUp];
    [colorIndicatorImageUp size];
  }

  [(PKPaletteToolView *)self scalingFactor];
  [(PKPaletteToolView *)self _toolSelectedOffset];
  [configuration bandVerticalOffset];
  [(PKPaletteToolView *)self scalingFactor];
  [(PKPaletteToolView *)self edgeLocation];
  imageContentView = [(PKPaletteToolView *)self imageContentView];
  [imageContentView bounds];

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
  configuration = [(PKPaletteToolView *)self configuration];
  baseImagesForAzimuth = [configuration baseImagesForAzimuth];

  configuration2 = [(PKPaletteToolView *)self configuration];
  v6 = configuration2;
  if (baseImagesForAzimuth)
  {
    baseImagesForAzimuth2 = [configuration2 baseImagesForAzimuth];
    baseImage = [baseImagesForAzimuth2 objectAtIndexedSubscript:{-[PKPaletteInkingToolView azimuthImageIndex](self, "azimuthImageIndex")}];
  }

  else
  {
    baseImage = [configuration2 baseImage];
  }

  return baseImage;
}

- (void)updateConstraints
{
  opacityLabelTopConstraint = [(PKPaletteInkingToolView *)self opacityLabelTopConstraint];
  [opacityLabelTopConstraint setConstant:0.0];

  opacityLabelLeftConstraint = [(PKPaletteInkingToolView *)self opacityLabelLeftConstraint];
  [opacityLabelLeftConstraint setConstant:0.0];

  opacityLabelRightConstraint = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
  [opacityLabelRightConstraint setConstant:0.0];

  configuration = [(PKPaletteToolView *)self configuration];
  [configuration opacityLabelVerticalOffset];
  v8 = v7;
  [(PKPaletteToolView *)self scalingFactor];
  v10 = v8 * v9;

  traitCollection = [(PKPaletteInkingToolView *)self traitCollection];
  window = [(PKPaletteInkingToolView *)self window];
  windowScene = [window windowScene];
  v14 = PKUseCompactSize(traitCollection, windowScene);

  isSelected = [(PKPaletteInkingToolView *)self isSelected];
  if (v14)
  {
    if ((isSelected & 1) == 0)
    {
      isHighlighted = [(PKPaletteInkingToolView *)self isHighlighted];
      v17 = 10.0;
      if (isHighlighted)
      {
        v17 = 11.0;
      }

      v10 = v10 + v17;
    }

    goto LABEL_14;
  }

  if ((isSelected & 1) == 0)
  {
    isHighlighted2 = [(PKPaletteInkingToolView *)self isHighlighted];
    [(PKPaletteToolView *)self scalingFactor];
    v20 = 20.0;
    if (isHighlighted2)
    {
      v20 = 22.0;
    }

    v10 = v10 + v19 * v20;
  }

  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    opacityLabelRightConstraint2 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
  }

  else
  {
    if ([(PKPaletteToolView *)self edgeLocation]!= 8)
    {
LABEL_14:
      opacityLabelRightConstraint2 = [(PKPaletteInkingToolView *)self opacityLabelTopConstraint];
      goto LABEL_15;
    }

    opacityLabelRightConstraint2 = [(PKPaletteInkingToolView *)self opacityLabelLeftConstraint];
  }

LABEL_15:
  v22 = opacityLabelRightConstraint2;
  [opacityLabelRightConstraint2 setConstant:v10];

  v23.receiver = self;
  v23.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v23 updateConstraints];
}

- (void)setEdgeLocation:(unint64_t)location
{
  v43[4] = *MEMORY[0x1E69E9840];
  edgeLocation = [(PKPaletteToolView *)self edgeLocation];
  v37.receiver = self;
  v37.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v37 setEdgeLocation:location];
  if (edgeLocation != [(PKPaletteToolView *)self edgeLocation])
  {
    if ([(PKPaletteToolView *)self edgeLocation]== 2)
    {
      if ([(PKPaletteInkingToolView *)self _shouldInstallOpacityLabel])
      {
        CGAffineTransformMakeRotation(&v36, 1.57079633);
        opacityLabel = [(PKPaletteInkingToolView *)self opacityLabel];
        v35 = v36;
        [opacityLabel setTransform:&v35];

        v7 = MEMORY[0x1E696ACD8];
        opacityLabelLeftConstraint = [(PKPaletteInkingToolView *)self opacityLabelLeftConstraint];
        v43[0] = opacityLabelLeftConstraint;
        opacityLabelTopConstraint = [(PKPaletteInkingToolView *)self opacityLabelTopConstraint];
        v43[1] = opacityLabelTopConstraint;
        opacityLabelRightConstraint = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
        v43[2] = opacityLabelRightConstraint;
        opacityLabelCenterXConstraint = [(PKPaletteInkingToolView *)self opacityLabelCenterXConstraint];
        v43[3] = opacityLabelCenterXConstraint;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
        [v7 deactivateConstraints:v12];

        v13 = MEMORY[0x1E696ACD8];
        opacityLabelRightConstraint2 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
        v42[0] = opacityLabelRightConstraint2;
        opacityLabelCenterYConstraint = [(PKPaletteInkingToolView *)self opacityLabelCenterYConstraint];
        v42[1] = opacityLabelCenterYConstraint;
        v16 = v42;
LABEL_10:
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
        [v13 activateConstraints:v33];
      }
    }

    else
    {
      edgeLocation2 = [(PKPaletteToolView *)self edgeLocation];
      _shouldInstallOpacityLabel = [(PKPaletteInkingToolView *)self _shouldInstallOpacityLabel];
      if (edgeLocation2 == 8)
      {
        if (_shouldInstallOpacityLabel)
        {
          CGAffineTransformMakeRotation(&v34, -1.57079633);
          opacityLabel2 = [(PKPaletteInkingToolView *)self opacityLabel];
          v35 = v34;
          [opacityLabel2 setTransform:&v35];

          v20 = MEMORY[0x1E696ACD8];
          opacityLabelRightConstraint3 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
          v41[0] = opacityLabelRightConstraint3;
          opacityLabelTopConstraint2 = [(PKPaletteInkingToolView *)self opacityLabelTopConstraint];
          v41[1] = opacityLabelTopConstraint2;
          opacityLabelRightConstraint4 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
          v41[2] = opacityLabelRightConstraint4;
          opacityLabelCenterXConstraint2 = [(PKPaletteInkingToolView *)self opacityLabelCenterXConstraint];
          v41[3] = opacityLabelCenterXConstraint2;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
          [v20 deactivateConstraints:v25];

          v13 = MEMORY[0x1E696ACD8];
          opacityLabelRightConstraint2 = [(PKPaletteInkingToolView *)self opacityLabelLeftConstraint];
          v40[0] = opacityLabelRightConstraint2;
          opacityLabelCenterYConstraint = [(PKPaletteInkingToolView *)self opacityLabelCenterYConstraint];
          v40[1] = opacityLabelCenterYConstraint;
          v16 = v40;
          goto LABEL_10;
        }
      }

      else if (_shouldInstallOpacityLabel)
      {
        opacityLabel3 = [(PKPaletteInkingToolView *)self opacityLabel];
        v27 = *(MEMORY[0x1E695EFD0] + 16);
        *&v35.a = *MEMORY[0x1E695EFD0];
        *&v35.c = v27;
        *&v35.tx = *(MEMORY[0x1E695EFD0] + 32);
        [opacityLabel3 setTransform:&v35];

        v28 = MEMORY[0x1E696ACD8];
        opacityLabelRightConstraint5 = [(PKPaletteInkingToolView *)self opacityLabelRightConstraint];
        v39[0] = opacityLabelRightConstraint5;
        opacityLabelLeftConstraint2 = [(PKPaletteInkingToolView *)self opacityLabelLeftConstraint];
        v39[1] = opacityLabelLeftConstraint2;
        opacityLabelCenterYConstraint2 = [(PKPaletteInkingToolView *)self opacityLabelCenterYConstraint];
        v39[2] = opacityLabelCenterYConstraint2;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
        [v28 deactivateConstraints:v32];

        v13 = MEMORY[0x1E696ACD8];
        opacityLabelRightConstraint2 = [(PKPaletteInkingToolView *)self opacityLabelCenterXConstraint];
        v38[0] = opacityLabelRightConstraint2;
        opacityLabelCenterYConstraint = [(PKPaletteInkingToolView *)self opacityLabelTopConstraint];
        v38[1] = opacityLabelCenterYConstraint;
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
    traitCollection = [(PKPaletteInkingToolView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    return userInterfaceStyle;
  }
}

- (id)_uiColor
{
  v3 = [(PKPaletteInkingToolView *)self ink];
  v4 = [v3 colorForUIAllowHDR:{-[PKPaletteToolView allowHDR](self, "allowHDR")}];
  v5 = [PKInkingTool convertColor:v4 fromUserInterfaceStyle:1 to:[(PKPaletteInkingToolView *)self _uiColorUserInterfaceStyle]];

  return v5;
}

- (id)_tintedImage:(id)image color:(id)color allowHDR:(BOOL)r
{
  rCopy = r;
  imageCopy = image;
  colorCopy = color;
  [imageCopy size];
  v10 = v9;
  v12 = v11;
  defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
  v14 = defaultFormat;
  if (rCopy)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  [defaultFormat setPreferredRange:v15];
  [imageCopy scale];
  [v14 setScale:?];
  v16 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v14 format:{v10, v12}];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__PKPaletteInkingToolView__tintedImage_color_allowHDR___block_invoke;
  v21[3] = &unk_1E82D8698;
  v24 = v10;
  v25 = v12;
  v22 = colorCopy;
  v23 = imageCopy;
  v17 = imageCopy;
  v18 = colorCopy;
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

- (void)setAllowHDR:(BOOL)r
{
  rCopy = r;
  allowHDR = [(PKPaletteToolView *)self allowHDR];
  v6.receiver = self;
  v6.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v6 setAllowHDR:rCopy];
  if (allowHDR != rCopy)
  {
    [(PKPaletteInkingToolView *)self _updateToolColorBandAndTipImageViews];
  }
}

- (void)_updateToolColorBandAndTipImageViews
{
  _uiColor = [(PKPaletteInkingToolView *)self _uiColor];
  v16 = [_uiColor colorWithAlphaComponent:1.0];

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

  _toolColorIndicatorImageForCurrentEdgeLocation = [(PKPaletteInkingToolView *)self _toolColorIndicatorImageForCurrentEdgeLocation];
  v7 = [(PKPaletteInkingToolView *)self _tintedImage:_toolColorIndicatorImageForCurrentEdgeLocation color:v16 allowHDR:v5];
  colorIndicatorImageView = [(PKPaletteInkingToolView *)self colorIndicatorImageView];
  [colorIndicatorImageView setImage:v7];

  _toolColorIndicatorContourImageForCurrentEdgeLocation = [(PKPaletteInkingToolView *)self _toolColorIndicatorContourImageForCurrentEdgeLocation];
  colorIndicatorContourImageView = [(PKPaletteInkingToolView *)self colorIndicatorContourImageView];
  [colorIndicatorContourImageView setImage:_toolColorIndicatorContourImageForCurrentEdgeLocation];

  _toolTipImageForCurrentEdgeLocation = [(PKPaletteInkingToolView *)self _toolTipImageForCurrentEdgeLocation];
  v12 = [(PKPaletteInkingToolView *)self _tintedImage:_toolTipImageForCurrentEdgeLocation color:v16 allowHDR:v5];
  tipIndicatorImageView = [(PKPaletteInkingToolView *)self tipIndicatorImageView];
  [tipIndicatorImageView setImage:v12];

  _toolTipContourImageForCurrentEdgeLocation = [(PKPaletteInkingToolView *)self _toolTipContourImageForCurrentEdgeLocation];
  tipIndicatorContourImageView = [(PKPaletteInkingToolView *)self tipIndicatorContourImageView];
  [tipIndicatorContourImageView setImage:_toolTipContourImageForCurrentEdgeLocation];

  [(PKPaletteInkingToolView *)self _updateWantsExtendedDynamicRange];
}

- (void)_updateWantsExtendedDynamicRange
{
  _uiColor = [(PKPaletteInkingToolView *)self _uiColor];
  [_uiColor CGColor];
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

  colorIndicatorImageView = [(PKPaletteInkingToolView *)self colorIndicatorImageView];
  [colorIndicatorImageView setPreferredImageDynamicRange:v6];

  tipIndicatorImageView = [(PKPaletteInkingToolView *)self tipIndicatorImageView];
  [tipIndicatorImageView setPreferredImageDynamicRange:v6];
}

- (void)_reloadToolImage
{
  v3.receiver = self;
  v3.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v3 _reloadToolImage];
  [(PKPaletteInkingToolView *)self _updateToolColorBandAndTipImageViews];
}

- (void)setInk:(id)ink
{
  inkCopy = ink;
  if (![(PKInk *)self->_ink isEqual:?])
  {
    objc_storeStrong(&self->_ink, ink);
    configuration = [(PKPaletteToolView *)self configuration];
    v6 = configuration;
    if (configuration)
    {
      v7 = *(configuration + 184);
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

- (void)setInkColor:(id)color
{
  colorCopy = color;
  v5 = [(PKPaletteInkingToolView *)self ink];
  color = [v5 color];
  v7 = color;
  v19 = colorCopy;
  ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB([color CGColor]);
  v9 = v19;
  cGColor = [v19 CGColor];

  v11 = DKUCGColorCreateConvertedToSRGB(cGColor);
  IsEqualToColorIgnoringOpacityWithTolerance = DKUColorIsEqualToColorIgnoringOpacityWithTolerance(ConvertedToSRGB, v11, 0, 0.000000999999997);
  CGColorRelease(ConvertedToSRGB);
  CGColorRelease(v11);

  if (!IsEqualToColorIgnoringOpacityWithTolerance)
  {
    v13 = [(PKPaletteInkingToolView *)self ink];
    v14 = [PKInk inkFromInk:v13 color:v19];
    [(PKPaletteInkingToolView *)self setInk:v14];

    configuration = [(PKPaletteToolView *)self configuration];
    v16 = configuration;
    if (configuration)
    {
      v17 = *(configuration + 184);
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
    color = [v3 color];
    [color alphaComponent];
    v6 = v5;

    v7 = llround(v6 * 100.0);
    if (v7 > 0x63)
    {
      opacityLabel = [(PKPaletteInkingToolView *)self opacityLabel];
      [opacityLabel setText:0];
    }

    else
    {
      opacityLabel = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", v7];
      opacityLabel2 = [(PKPaletteInkingToolView *)self opacityLabel];
      [opacityLabel2 setText:opacityLabel];
    }
  }
}

- (void)setInkWeight:(double)weight
{
  v5 = [(PKPaletteInkingToolView *)self ink];
  [v5 weight];
  v7 = vabdd_f64(v6, weight);

  if (v7 >= 0.1)
  {
    v8 = [(PKPaletteInkingToolView *)self ink];
    v9 = [PKInk inkFromInk:v8 weight:weight];
    [(PKPaletteInkingToolView *)self setInk:v9];

    configuration = [(PKPaletteToolView *)self configuration];
    v11 = configuration;
    v12 = configuration ? *(configuration + 184) : 0;
    v13 = v12;

    if (v13)
    {

      [(PKPaletteToolView *)self _setToolImageNeedsReload];
    }
  }
}

- (void)setInkAzimuth:(double)azimuth
{
  v5 = [(PKPaletteInkingToolView *)self ink];
  [v5 _azimuth];
  v7 = vabdd_f64(v6, azimuth);

  if (v7 >= 0.1)
  {
    v8 = [(PKPaletteInkingToolView *)self ink];
    v9 = [PKInk inkFromInk:v8 azimuth:azimuth];
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
    configuration = [(PKPaletteToolView *)self configuration];
    v6 = [(PKInkAttributesPicker *)v3 initWithInk:v4 toolConfiguration:configuration];

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
  configuration2 = [(PKPaletteToolView *)self configuration];
  viewControllerProvider = [configuration2 viewControllerProvider];

  if (viewControllerProvider)
  {
    configuration3 = [(PKPaletteToolView *)self configuration];
    viewControllerProvider2 = [configuration3 viewControllerProvider];
    v14 = viewControllerProvider2[2]();

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
  attributeViewController = [(PKPaletteToolView *)&v19 attributeViewController];
  if (!attributeViewController)
  {
    v16 = self->_attributeViewController;
LABEL_9:
    attributeViewController = v16;
  }

  return attributeViewController;
}

- (BOOL)_shouldHaveAttributeViewController
{
  configuration = [(PKPaletteToolView *)self configuration];
  v4 = configuration;
  if (configuration && [configuration supportsStrokeWeight] && (v4[16] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    configuration2 = [(PKPaletteToolView *)self configuration];
    v7 = configuration2;
    if (configuration2 && [configuration2 supportsOpacity])
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
  configuration = [(PKPaletteToolView *)self configuration];
  v4 = configuration;
  if (configuration && [configuration supportsStrokeWeight])
  {
    v5 = v4[16];
  }

  else
  {
    v5 = 0;
  }

  configuration2 = [(PKPaletteToolView *)self configuration];
  v7 = configuration2;
  if (configuration2 && ([configuration2 supportsOpacity] & 1) != 0)
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

  configuration3 = [(PKPaletteToolView *)self configuration];
  if (configuration3 && (v10 = configuration3[22], configuration3, (v10 & 1) != 0))
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

- (void)inkAttributesPickerDidChangeInkOpacity:(id)opacity
{
  opacityCopy = opacity;
  selectedInk = [opacityCopy selectedInk];
  v5 = [selectedInk colorForUIAllowHDR:{-[PKPaletteToolView allowHDR](self, "allowHDR")}];
  [(PKPaletteInkingToolView *)self setInkColor:v5];

  LODWORD(v5) = [opacityCopy isUpdatingOpacityValue];
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

- (void)inkAttributesPickerDidChangeInkThickness:(id)thickness
{
  selectedInk = [thickness selectedInk];
  [selectedInk weight];
  [(PKPaletteInkingToolView *)self setInkWeight:?];
  [(PKPaletteInkingToolView *)self sendActionsForControlEvents:4096];
}

- (void)inkAttributesPickerDidChangeInkAzimuth:(id)azimuth
{
  selectedInk = [azimuth selectedInk];
  [selectedInk _azimuth];
  [(PKPaletteInkingToolView *)self setInkAzimuth:?];
  [(PKPaletteInkingToolView *)self sendActionsForControlEvents:4096];
}

- (void)setScalingFactor:(double)factor
{
  v6.receiver = self;
  v6.super_class = PKPaletteInkingToolView;
  [(PKPaletteToolView *)&v6 setScalingFactor:factor];
  _opacityLabelFont = [(PKPaletteInkingToolView *)self _opacityLabelFont];
  opacityLabel = [(PKPaletteInkingToolView *)self opacityLabel];
  [opacityLabel setFont:_opacityLabelFont];

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