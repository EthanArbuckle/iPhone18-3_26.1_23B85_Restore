@interface PKPaletteToolView
+ (PKPaletteToolView)toolViewWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration;
- (BOOL)isCustomTool;
- (BOOL)isGenerationTool;
- (BOOL)isRulerTool;
- (CGSize)intrinsicContentSize;
- (NSString)toolName;
- (PKPaletteAttributeViewController)attributeViewController;
- (PKPaletteErasingTool)erasingTool;
- (PKPaletteHandwritingTool)handwritingTool;
- (PKPaletteInkingTool)inkingTool;
- (PKPaletteToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier configuration:(id)configuration toolProperties:(id)properties;
- (PKPaletteToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration;
- (double)_toolSelectedOffset;
- (id)baseImage;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (void)_reloadToolImage;
- (void)_reloadToolImageSizeConstraints;
- (void)_updateToolShadowView;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setColorUserInterfaceStyle:(int64_t)style;
- (void)setConfiguration:(id)configuration;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setScalingFactor:(double)factor;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedToolOffsetEnabled:(BOOL)enabled;
- (void)showTooltip:(id)tooltip;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation PKPaletteToolView

+ (PKPaletteToolView)toolViewWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration
{
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  variantCopy = variant;
  configurationCopy = configuration;
  if ([identifierCopy isEqualToString:@"com.apple.ink.eraser"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ink.objectEraser"))
  {
    v13 = off_1E82D4600;
  }

  else if ([identifierCopy isEqualToString:@"com.apple.ink.pen"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ink.pencil") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ink.marker") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ink.custom") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ink.fountainpen") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ink.watercolor") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ink.reedcalligraphy") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ink.monoline") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ink.crayon"))
  {
    v13 = off_1E82D4628;
  }

  else if ([identifierCopy isEqualToString:@"com.apple.ink.lasso"])
  {
    v13 = off_1E82D46B0;
  }

  else if ([identifierCopy isEqualToString:@"com.apple.ink.handwriting"])
  {
    v13 = off_1E82D4610;
  }

  else
  {
    v16 = [identifierCopy isEqualToString:@"com.apple.ink.generationtool"];
    v13 = off_1E82D4748;
    if (v16)
    {
      v13 = off_1E82D4620;
    }
  }

  v14 = [objc_alloc(*v13) initWithToolIdentifier:identifierCopy itemIdentifier:itemIdentifierCopy variant:variantCopy configuration:configurationCopy];

  return v14;
}

- (PKPaletteToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier configuration:(id)configuration toolProperties:(id)properties
{
  propertiesCopy = properties;
  v11 = [(PKPaletteToolView *)self initWithToolIdentifier:identifier itemIdentifier:itemIdentifier variant:0 configuration:configuration];
  [(PKPaletteToolView *)v11 setToolProperties:propertiesCopy];

  return v11;
}

- (PKPaletteToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration
{
  v80[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  variantCopy = variant;
  configurationCopy = configuration;
  v79.receiver = self;
  v79.super_class = PKPaletteToolView;
  v14 = [(PKPaletteToolView *)&v79 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v14)
  {
    v15 = [identifierCopy copy];
    toolIdentifier = v14->_toolIdentifier;
    v14->_toolIdentifier = v15;

    v17 = [itemIdentifierCopy copy];
    itemIdentifier = v14->_itemIdentifier;
    v14->_itemIdentifier = v17;

    v19 = [variantCopy copy];
    toolVariant = v14->_toolVariant;
    v14->_toolVariant = v19;

    toolProperties = v14->_toolProperties;
    v14->_toolProperties = MEMORY[0x1E695E0F8];

    v14->_scalingFactor = 1.0;
    v22 = [configurationCopy copy];
    configuration = v14->_configuration;
    v14->_configuration = v22;

    v14->_supportsDisplayingSelectedColor = [configurationCopy supportsColor];
    v14->_selectedToolOffsetEnabled = 1;
    v24 = [[PKPaletteToolShadowPathView alloc] initWithToolConfiguration:configurationCopy];
    toolShadowView = v14->_toolShadowView;
    v14->_toolShadowView = v24;

    [(PKPaletteToolShadowPathView *)v14->_toolShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteToolView *)v14 addSubview:v14->_toolShadowView];
    v26 = [PKPaletteToolImageContentView alloc];
    v27 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v28 = [(PKPaletteToolImageContentView *)v26 initWithImageView:v27];
    imageContentView = v14->_imageContentView;
    v14->_imageContentView = v28;

    [(PKPaletteToolImageContentView *)v14->_imageContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteToolImageContentView *)v14->_imageContentView setUserInteractionEnabled:0];
    layer = [(PKPaletteToolImageContentView *)v14->_imageContentView layer];
    [layer setMasksToBounds:0];

    [(PKPaletteToolView *)v14 addSubview:v14->_imageContentView];
    widthAnchor = [(PKPaletteToolImageContentView *)v14->_imageContentView widthAnchor];
    v32 = [widthAnchor constraintEqualToConstant:0.0];
    imageViewWidthAnchorConstraint = v14->_imageViewWidthAnchorConstraint;
    v14->_imageViewWidthAnchorConstraint = v32;

    heightAnchor = [(PKPaletteToolImageContentView *)v14->_imageContentView heightAnchor];
    v35 = [heightAnchor constraintEqualToConstant:0.0];
    imageViewHeightAnchorConstraint = v14->_imageViewHeightAnchorConstraint;
    v14->_imageViewHeightAnchorConstraint = v35;

    LODWORD(v37) = 1148829696;
    [(NSLayoutConstraint *)v14->_imageViewWidthAnchorConstraint setPriority:v37];
    LODWORD(v38) = 1148829696;
    [(NSLayoutConstraint *)v14->_imageViewHeightAnchorConstraint setPriority:v38];
    v39 = MEMORY[0x1E696ACD8];
    v80[0] = v14->_imageViewWidthAnchorConstraint;
    v80[1] = v14->_imageViewHeightAnchorConstraint;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
    [v39 activateConstraints:v40];

    topAnchor = [(PKPaletteToolImageContentView *)v14->_imageContentView topAnchor];
    topAnchor2 = [(PKPaletteToolView *)v14 topAnchor];
    v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
    imageViewTopAnchorConstraint = v14->_imageViewTopAnchorConstraint;
    v14->_imageViewTopAnchorConstraint = v43;

    bottomAnchor = [(PKPaletteToolImageContentView *)v14->_imageContentView bottomAnchor];
    bottomAnchor2 = [(PKPaletteToolView *)v14 bottomAnchor];
    v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    imageViewBottomAnchorConstraint = v14->_imageViewBottomAnchorConstraint;
    v14->_imageViewBottomAnchorConstraint = v47;

    leftAnchor = [(PKPaletteToolImageContentView *)v14->_imageContentView leftAnchor];
    leftAnchor2 = [(PKPaletteToolView *)v14 leftAnchor];
    v51 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    imageViewLeftAnchorConstraint = v14->_imageViewLeftAnchorConstraint;
    v14->_imageViewLeftAnchorConstraint = v51;

    rightAnchor = [(PKPaletteToolImageContentView *)v14->_imageContentView rightAnchor];
    rightAnchor2 = [(PKPaletteToolView *)v14 rightAnchor];
    v55 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    imageViewRightAnchorConstraint = v14->_imageViewRightAnchorConstraint;
    v14->_imageViewRightAnchorConstraint = v55;

    topAnchor3 = [(PKPaletteToolShadowPathView *)v14->_toolShadowView topAnchor];
    topAnchor4 = [(PKPaletteToolImageContentView *)v14->_imageContentView topAnchor];
    v59 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    toolShadowViewTopAnchorConstraint = v14->_toolShadowViewTopAnchorConstraint;
    v14->_toolShadowViewTopAnchorConstraint = v59;

    leftAnchor3 = [(PKPaletteToolShadowPathView *)v14->_toolShadowView leftAnchor];
    leftAnchor4 = [(PKPaletteToolImageContentView *)v14->_imageContentView leftAnchor];
    v63 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    toolShadowViewLeftAnchorConstraint = v14->_toolShadowViewLeftAnchorConstraint;
    v14->_toolShadowViewLeftAnchorConstraint = v63;

    bottomAnchor3 = [(PKPaletteToolShadowPathView *)v14->_toolShadowView bottomAnchor];
    bottomAnchor4 = [(PKPaletteToolImageContentView *)v14->_imageContentView bottomAnchor];
    v67 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    toolShadowViewBottomAnchorConstraint = v14->_toolShadowViewBottomAnchorConstraint;
    v14->_toolShadowViewBottomAnchorConstraint = v67;

    rightAnchor3 = [(PKPaletteToolShadowPathView *)v14->_toolShadowView rightAnchor];
    rightAnchor4 = [(PKPaletteToolImageContentView *)v14->_imageContentView rightAnchor];
    v71 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    toolShadowViewRightAnchorConstraint = v14->_toolShadowViewRightAnchorConstraint;
    v14->_toolShadowViewRightAnchorConstraint = v71;

    v73 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v14];
    pointerInteraction = v14->_pointerInteraction;
    v14->_pointerInteraction = v73;

    [(PKPaletteToolView *)v14 addInteraction:v14->_pointerInteraction];
    [(PKPaletteToolView *)v14 _setToolImageNeedsReload];
    [(PKPaletteToolView *)v14 _reloadToolImage];
    [(PKPaletteToolView *)v14 _updateToolShadowView];
    [(PKPaletteToolView *)v14 setUserInteractionEnabled:1];
    [(PKPaletteToolView *)v14 setHitTestInsets:-8.0, -8.0, -8.0, -8.0];
    [(PKPaletteToolView *)v14 setTintAdjustmentMode:1];
    toolName = [(PKPaletteToolView *)v14 toolName];
    [(PKPaletteToolView *)v14 setAccessibilityLabel:toolName];

    [(PKPaletteToolView *)v14 setShowsLargeContentViewer:1];
    v76 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(PKPaletteToolView *)v14 addInteraction:v76];

    toolName2 = [(PKPaletteToolView *)v14 toolName];
    [(PKPaletteToolView *)v14 setLargeContentTitle:toolName2];

    [(PKPaletteToolView *)v14 _updateRemoteEffects];
  }

  return v14;
}

- (void)layoutSubviews
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKPaletteToolView;
  [(PKPaletteToolView *)&v14 layoutSubviews];
  layer = [(PKPaletteToolView *)self layer];
  [layer setAllowsEdgeAntialiasing:1];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  layer2 = [(PKPaletteToolView *)self layer];
  sublayers = [layer2 sublayers];

  v6 = [sublayers countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v10 + 1) + 8 * v9++) setAllowsEdgeAntialiasing:1];
      }

      while (v7 != v9);
      v7 = [sublayers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_toolImageNeedsReload)
  {
    [(PKPaletteToolView *)self _reloadToolImage];
    self->_toolImageNeedsReload = 0;
  }
}

- (PKPaletteInkingTool)inkingTool
{
  if ([(PKPaletteToolView *)self isInkingTool])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isRulerTool
{
  toolIdentifier = [(PKPaletteToolView *)self toolIdentifier];
  v3 = [toolIdentifier isEqualToString:@"com.apple.tool.ruler"];

  return v3;
}

- (PKPaletteErasingTool)erasingTool
{
  if ([(PKPaletteToolView *)self isErasingTool])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isGenerationTool
{
  toolIdentifier = [(PKPaletteToolView *)self toolIdentifier];
  v3 = [toolIdentifier isEqualToString:@"com.apple.ink.generationtool"];

  return v3;
}

- (PKPaletteHandwritingTool)handwritingTool
{
  if ([(PKPaletteToolView *)self isHandwritingTool])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isCustomTool
{
  toolIdentifier = [(PKPaletteToolView *)self toolIdentifier];
  v3 = [toolIdentifier isEqualToString:@"com.apple.ink.custom"];

  return v3;
}

- (NSString)toolName
{
  configuration = [(PKPaletteToolView *)self configuration];
  localizedName = [configuration localizedName];

  return localizedName;
}

- (PKPaletteAttributeViewController)attributeViewController
{
  if (!self->_attributeViewController)
  {
    configuration = [(PKPaletteToolView *)self configuration];
    viewControllerProvider = [configuration viewControllerProvider];

    if (viewControllerProvider)
    {
      configuration2 = [(PKPaletteToolView *)self configuration];
      viewControllerProvider2 = [configuration2 viewControllerProvider];
      v7 = viewControllerProvider2[2]();

      if (!v7)
      {
        v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"view controller from configuration must not be nil." userInfo:0];
        objc_exception_throw(v12);
      }

      v8 = [[PKPaletteAttributeViewControllerContainer alloc] initWithContentViewController:v7];
      attributeViewController = self->_attributeViewController;
      self->_attributeViewController = &v8->super;
    }
  }

  v10 = self->_attributeViewController;

  return v10;
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteToolView *)self _updateToolShadowView];
    [(PKPaletteToolView *)self _reloadToolImageSizeConstraints];
    [(PKPaletteToolView *)self invalidateIntrinsicContentSize];

    [(PKPaletteToolView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateToolShadowView
{
  edgeLocation = [(PKPaletteToolView *)self edgeLocation];
  toolShadowView = [(PKPaletteToolView *)self toolShadowView];
  [toolShadowView setEdgeLocation:edgeLocation];

  [(PKPaletteToolView *)self scalingFactor];
  v6 = v5;
  toolShadowView2 = [(PKPaletteToolView *)self toolShadowView];
  [toolShadowView2 setScalingFactor:v6];

  shadowPath = [(PKToolConfiguration *)self->_configuration shadowPath];
  v13 = shadowPath;
  if (!shadowPath || (v9 = [shadowPath isEmpty], v10 = v13, v9))
  {
    toolShadowView3 = [(PKPaletteToolView *)self toolShadowView];
    layer = [(PKPaletteToolView *)self layer];
    [toolShadowView3 applyShadowToLayer:layer];

    v10 = v13;
  }
}

- (void)_reloadToolImageSizeConstraints
{
  v36 = *MEMORY[0x1E69E9840];
  imageContentView = [(PKPaletteToolView *)self imageContentView];
  v4 = imageContentView;
  if (imageContentView)
  {
    v5 = *(imageContentView + 416);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  image = [v6 image];
  [image size];
  v9 = v8;
  [(PKPaletteToolView *)self scalingFactor];
  v11 = v9 * v10;

  imageContentView2 = [(PKPaletteToolView *)self imageContentView];
  v13 = imageContentView2;
  if (imageContentView2)
  {
    v14 = *(imageContentView2 + 416);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  image2 = [v15 image];
  [image2 size];
  v18 = v17;
  [(PKPaletteToolView *)self scalingFactor];
  v20 = v19;

  v21 = os_log_create("com.apple.pencilkit", "PKPalette");
  v22 = v18 * v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    imageContentView3 = [(PKPaletteToolView *)self imageContentView];
    v24 = imageContentView3;
    if (imageContentView3)
    {
      v25 = *(imageContentView3 + 416);
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    image3 = [v26 image];
    [image3 size];
    v28 = NSStringFromCGSize(v37);
    [(PKPaletteToolView *)self scalingFactor];
    v32 = 138478083;
    v33 = v28;
    v34 = 2049;
    v35 = v29;
    _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "Reload tool image size constraints, image size: %{private}@, scaling factor: %{private}.2f", &v32, 0x16u);
  }

  imageViewWidthAnchorConstraint = [(PKPaletteToolView *)self imageViewWidthAnchorConstraint];
  [imageViewWidthAnchorConstraint setConstant:v11];

  imageViewHeightAnchorConstraint = [(PKPaletteToolView *)self imageViewHeightAnchorConstraint];
  [imageViewHeightAnchorConstraint setConstant:v22];
}

- (id)baseImage
{
  configuration = [(PKPaletteToolView *)self configuration];
  baseImage = [configuration baseImage];

  return baseImage;
}

- (void)_reloadToolImage
{
  if (self->_toolImageNeedsReload)
  {
    *buf = 0;
    v34 = buf;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__19;
    v37 = __Block_byref_object_dispose__19;
    v38 = 0;
    configuration = [(PKPaletteToolView *)self configuration];
    v4 = configuration;
    if (configuration)
    {
      v5 = *(configuration + 184);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      toolIdentifier = [(PKPaletteToolView *)self toolIdentifier];
      toolProperties = [(PKPaletteToolView *)self toolProperties];
      v9 = [PKInk inkWithIdentifier:toolIdentifier properties:toolProperties];

      traitCollection = [(PKPaletteToolView *)self traitCollection];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __37__PKPaletteToolView__reloadToolImage__block_invoke;
      v32[3] = &unk_1E82DA0E8;
      v32[5] = v9;
      v32[6] = buf;
      v32[4] = self;
      [traitCollection performAsCurrentTraitCollection:v32];

      accessibilityLabel = [*(v34 + 5) accessibilityLabel];
      if (accessibilityLabel)
      {
        [(PKPaletteToolView *)self setAccessibilityLabel:accessibilityLabel];
      }

      else
      {
        toolName = [(PKPaletteToolView *)self toolName];
        [(PKPaletteToolView *)self setAccessibilityLabel:toolName];
      }
    }

    else
    {
      baseImage = [(PKPaletteToolView *)self baseImage];
      v14 = *(v34 + 5);
      *(v34 + 5) = baseImage;

      configuration2 = [*(v34 + 5) configuration];
      traitCollection2 = [(PKPaletteToolView *)self traitCollection];
      v9 = [configuration2 configurationWithTraitCollection:traitCollection2];

      v17 = [*(v34 + 5) imageWithConfiguration:v9];
      v18 = *(v34 + 5);
      *(v34 + 5) = v17;
    }

    if ([(PKPaletteToolView *)self edgeLocation]== 2)
    {
      v20 = MEMORY[0x1E69DCAB8];
      cGImage = [*(v34 + 5) CGImage];
      [*(v34 + 5) scale];
      v22 = 3;
    }

    else
    {
      if ([(PKPaletteToolView *)self edgeLocation]!= 8)
      {
LABEL_18:
        v25 = *(v34 + 5);
        imageContentView = [(PKPaletteToolView *)self imageContentView];
        v27 = imageContentView;
        if (imageContentView)
        {
          v28 = *(imageContentView + 416);
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;
        [v29 setImage:v25];

        v30 = *(MEMORY[0x1E695EFD0] + 16);
        v31[0] = *MEMORY[0x1E695EFD0];
        v31[1] = v30;
        v31[2] = *(MEMORY[0x1E695EFD0] + 32);
        [(PKPaletteToolView *)self setTransform:v31];
        [(PKPaletteToolView *)self _reloadToolImageSizeConstraints];
        _Block_object_dispose(buf, 8);

        return;
      }

      v20 = MEMORY[0x1E69DCAB8];
      cGImage = [*(v34 + 5) CGImage];
      [*(v34 + 5) scale];
      v22 = 2;
    }

    v23 = [v20 imageWithCGImage:cGImage scale:v22 orientation:?];
    v24 = *(v34 + 5);
    *(v34 + 5) = v23;

    goto LABEL_18;
  }

  v12 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_ERROR, "Skip reloading tool image as it is not marked as needing reload.", buf, 2u);
  }
}

void __37__PKPaletteToolView__reloadToolImage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v8 = v2;
  if (v2)
  {
    v3 = *(v2 + 184);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4[2](v4, *(a1 + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)setEdgeLocation:(unint64_t)location
{
  v27[8] = *MEMORY[0x1E69E9840];
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    v23 = MEMORY[0x1E696ACD8];
    imageViewTopAnchorConstraint = [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
    v27[0] = imageViewTopAnchorConstraint;
    imageViewLeftAnchorConstraint = [(PKPaletteToolView *)self imageViewLeftAnchorConstraint];
    v27[1] = imageViewLeftAnchorConstraint;
    imageViewRightAnchorConstraint = [(PKPaletteToolView *)self imageViewRightAnchorConstraint];
    v27[2] = imageViewRightAnchorConstraint;
    imageViewBottomAnchorConstraint = [(PKPaletteToolView *)self imageViewBottomAnchorConstraint];
    v27[3] = imageViewBottomAnchorConstraint;
    toolShadowViewTopAnchorConstraint = [(PKPaletteToolView *)self toolShadowViewTopAnchorConstraint];
    v27[4] = toolShadowViewTopAnchorConstraint;
    toolShadowViewLeftAnchorConstraint = [(PKPaletteToolView *)self toolShadowViewLeftAnchorConstraint];
    v27[5] = toolShadowViewLeftAnchorConstraint;
    toolShadowViewRightAnchorConstraint = [(PKPaletteToolView *)self toolShadowViewRightAnchorConstraint];
    v27[6] = toolShadowViewRightAnchorConstraint;
    toolShadowViewBottomAnchorConstraint = [(PKPaletteToolView *)self toolShadowViewBottomAnchorConstraint];
    v27[7] = toolShadowViewBottomAnchorConstraint;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:8];
    [v23 deactivateConstraints:v12];

    edgeLocation = [(PKPaletteToolView *)self edgeLocation];
    if (edgeLocation > 3)
    {
      if (edgeLocation == 8)
      {
        v14 = MEMORY[0x1E696ACD8];
        imageViewTopAnchorConstraint2 = [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
        v24[0] = imageViewTopAnchorConstraint2;
        imageViewLeftAnchorConstraint2 = [(PKPaletteToolView *)self imageViewLeftAnchorConstraint];
        v24[1] = imageViewLeftAnchorConstraint2;
        imageViewBottomAnchorConstraint2 = [(PKPaletteToolView *)self imageViewBottomAnchorConstraint];
        v24[2] = imageViewBottomAnchorConstraint2;
        toolShadowViewTopAnchorConstraint2 = [(PKPaletteToolView *)self toolShadowViewTopAnchorConstraint];
        v24[3] = toolShadowViewTopAnchorConstraint2;
        toolShadowViewLeftAnchorConstraint2 = [(PKPaletteToolView *)self toolShadowViewLeftAnchorConstraint];
        v24[4] = toolShadowViewLeftAnchorConstraint2;
        toolShadowViewBottomAnchorConstraint2 = [(PKPaletteToolView *)self toolShadowViewBottomAnchorConstraint];
        v24[5] = toolShadowViewBottomAnchorConstraint2;
        v21 = v24;
        goto LABEL_10;
      }

      if (edgeLocation != 4)
      {
        goto LABEL_11;
      }
    }

    else if (edgeLocation != 1)
    {
      if (edgeLocation == 2)
      {
        v14 = MEMORY[0x1E696ACD8];
        imageViewTopAnchorConstraint2 = [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
        v25[0] = imageViewTopAnchorConstraint2;
        imageViewLeftAnchorConstraint2 = [(PKPaletteToolView *)self imageViewRightAnchorConstraint];
        v25[1] = imageViewLeftAnchorConstraint2;
        imageViewBottomAnchorConstraint2 = [(PKPaletteToolView *)self imageViewBottomAnchorConstraint];
        v25[2] = imageViewBottomAnchorConstraint2;
        toolShadowViewTopAnchorConstraint2 = [(PKPaletteToolView *)self toolShadowViewTopAnchorConstraint];
        v25[3] = toolShadowViewTopAnchorConstraint2;
        toolShadowViewLeftAnchorConstraint2 = [(PKPaletteToolView *)self toolShadowViewRightAnchorConstraint];
        v25[4] = toolShadowViewLeftAnchorConstraint2;
        toolShadowViewBottomAnchorConstraint2 = [(PKPaletteToolView *)self toolShadowViewBottomAnchorConstraint];
        v25[5] = toolShadowViewBottomAnchorConstraint2;
        v21 = v25;
LABEL_10:
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:6];
        [v14 activateConstraints:v22];
      }

LABEL_11:
      [(PKPaletteToolView *)self _setToolImageNeedsReload];
      [(PKPaletteToolView *)self _updateToolShadowView];
      [(PKPaletteToolView *)self invalidateIntrinsicContentSize];
      return;
    }

    v14 = MEMORY[0x1E696ACD8];
    imageViewTopAnchorConstraint2 = [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
    v26[0] = imageViewTopAnchorConstraint2;
    imageViewLeftAnchorConstraint2 = [(PKPaletteToolView *)self imageViewLeftAnchorConstraint];
    v26[1] = imageViewLeftAnchorConstraint2;
    imageViewBottomAnchorConstraint2 = [(PKPaletteToolView *)self imageViewRightAnchorConstraint];
    v26[2] = imageViewBottomAnchorConstraint2;
    toolShadowViewTopAnchorConstraint2 = [(PKPaletteToolView *)self toolShadowViewTopAnchorConstraint];
    v26[3] = toolShadowViewTopAnchorConstraint2;
    toolShadowViewLeftAnchorConstraint2 = [(PKPaletteToolView *)self toolShadowViewLeftAnchorConstraint];
    v26[4] = toolShadowViewLeftAnchorConstraint2;
    toolShadowViewBottomAnchorConstraint2 = [(PKPaletteToolView *)self toolShadowViewRightAnchorConstraint];
    v26[5] = toolShadowViewBottomAnchorConstraint2;
    v21 = v26;
    goto LABEL_10;
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (![(PKToolConfiguration *)self->_configuration isEqual:?])
  {
    v4 = [configurationCopy copy];
    configuration = self->_configuration;
    self->_configuration = v4;

    toolName = [(PKPaletteToolView *)self toolName];
    [(PKPaletteToolView *)self setAccessibilityLabel:toolName];

    toolName2 = [(PKPaletteToolView *)self toolName];
    [(PKPaletteToolView *)self setLargeContentTitle:toolName2];

    [(PKPaletteToolView *)self _setToolImageNeedsReload];
  }
}

- (void)updateConstraints
{
  imageViewTopAnchorConstraint = [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
  [imageViewTopAnchorConstraint setConstant:0.0];

  imageViewLeftAnchorConstraint = [(PKPaletteToolView *)self imageViewLeftAnchorConstraint];
  [imageViewLeftAnchorConstraint setConstant:0.0];

  imageViewBottomAnchorConstraint = [(PKPaletteToolView *)self imageViewBottomAnchorConstraint];
  [imageViewBottomAnchorConstraint setConstant:0.0];

  imageViewRightAnchorConstraint = [(PKPaletteToolView *)self imageViewRightAnchorConstraint];
  [imageViewRightAnchorConstraint setConstant:0.0];

  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    [(PKPaletteToolView *)self _toolSelectedOffset];
    v8 = -v7;
    imageViewRightAnchorConstraint2 = [(PKPaletteToolView *)self imageViewRightAnchorConstraint];
  }

  else
  {
    edgeLocation = [(PKPaletteToolView *)self edgeLocation];
    [(PKPaletteToolView *)self _toolSelectedOffset];
    v8 = v11;
    if (edgeLocation == 8)
    {
      [(PKPaletteToolView *)self imageViewLeftAnchorConstraint];
    }

    else
    {
      [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
    }
    imageViewRightAnchorConstraint2 = ;
  }

  v12 = imageViewRightAnchorConstraint2;
  [imageViewRightAnchorConstraint2 setConstant:v8];

  v13.receiver = self;
  v13.super_class = PKPaletteToolView;
  [(PKPaletteToolView *)&v13 updateConstraints];
}

- (double)_toolSelectedOffset
{
  if (!self->_selectedToolOffsetEnabled)
  {
    return 0.0;
  }

  traitCollection = [(PKPaletteToolView *)self traitCollection];
  window = [(PKPaletteToolView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  if ([(PKPaletteToolView *)self isSelected])
  {
    v7 = 0.0;
    result = 0.0;
    if (v6)
    {
      return result;
    }

LABEL_10:
    [(PKPaletteToolView *)self scalingFactor];
    return v7 * v10;
  }

  isHighlighted = [(PKPaletteToolView *)self isHighlighted];
  result = 14.0;
  if (isHighlighted)
  {
    result = 11.0;
    v7 = 22.0;
  }

  else
  {
    v7 = 20.0;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  return result;
}

- (void)setSelectedToolOffsetEnabled:(BOOL)enabled
{
  if (self->_selectedToolOffsetEnabled != enabled)
  {
    self->_selectedToolOffsetEnabled = enabled;
    [(PKPaletteToolView *)self setNeedsUpdateConstraints];
  }
}

- (CGSize)intrinsicContentSize
{
  imageContentView = [(PKPaletteToolView *)self imageContentView];
  v4 = imageContentView;
  if (imageContentView)
  {
    v5 = *(imageContentView + 416);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  image = [v6 image];
  [image size];
  v9 = v8;
  v11 = v10;

  edgeLocation = [(PKPaletteToolView *)self edgeLocation];
  if (edgeLocation == 8)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (edgeLocation == 8)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  if (edgeLocation == 2)
  {
    v15 = v9;
  }

  else
  {
    v11 = v13;
    v15 = v14;
  }

  [(PKPaletteToolView *)self scalingFactor:v13];
  v17 = v11 * v16;
  [(PKPaletteToolView *)self scalingFactor];
  v19 = v15 * v18;
  v20 = v17;
  result.height = v19;
  result.width = v20;
  return result;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v9.receiver = self;
  v9.super_class = PKPaletteToolView;
  [(PKPaletteToolView *)&v9 setSelected:?];
  pointerInteraction = [(PKPaletteToolView *)self pointerInteraction];
  v6 = pointerInteraction;
  if (selectedCopy)
  {
    [pointerInteraction setEnabled:0];

    v7 = *(MEMORY[0x1E695EFD0] + 16);
    v8[0] = *MEMORY[0x1E695EFD0];
    v8[1] = v7;
    v8[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(PKPaletteToolView *)self setTransform:v8];
  }

  else
  {
    [pointerInteraction setEnabled:1];
  }

  [(PKPaletteToolView *)self _updateRemoteEffects];
  [(PKPaletteToolView *)self setNeedsUpdateConstraints];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = PKPaletteToolView;
  [(PKPaletteToolView *)&v4 setHighlighted:highlighted];
  [(PKPaletteToolView *)self setNeedsUpdateConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = PKPaletteToolView;
  [(PKPaletteToolView *)&v13 traitCollectionDidChange:changeCopy];
  v5 = [changeCopy userInterfaceStyle] == 2;
  traitCollection = [(PKPaletteToolView *)self traitCollection];
  v7 = [traitCollection userInterfaceStyle] == 2;

  if (v5 != v7)
  {
    [(PKPaletteToolView *)self _setToolImageNeedsReload];
  }

  traitCollection2 = [(PKPaletteToolView *)self traitCollection];
  verticalSizeClass = [traitCollection2 verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection3 = [(PKPaletteToolView *)self traitCollection];
    horizontalSizeClass = [traitCollection3 horizontalSizeClass];
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  [(PKPaletteToolView *)self setNeedsUpdateConstraints];
LABEL_8:
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  if (self->_colorUserInterfaceStyle != style)
  {
    self->_colorUserInterfaceStyle = style;
    [(PKPaletteToolView *)self _setToolImageNeedsReload];
  }
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  view = [interaction view];
  memset(&v16, 0, sizeof(v16));
  [(PKPaletteToolView *)self scalingFactor];
  v10 = v9 * 4.5;
  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    v11 = 0.0;
    v12 = v10;
  }

  else if ([(PKPaletteToolView *)self edgeLocation]== 8)
  {
    v11 = 0.0;
    v12 = -v10;
  }

  else
  {
    v12 = 0.0;
    v11 = -v10;
  }

  CGAffineTransformMakeTranslation(&v16, v12, v11);
  if (([(PKPaletteToolView *)self isSelected]& 1) == 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__PKPaletteToolView_pointerInteraction_willEnterRegion_animator___block_invoke;
    v13[3] = &unk_1E82DA028;
    v14 = view;
    v15 = v16;
    [animatorCopy addAnimations:v13];
  }
}

uint64_t __65__PKPaletteToolView_pointerInteraction_willEnterRegion_animator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  view = [interaction view];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PKPaletteToolView_pointerInteraction_willExitRegion_animator___block_invoke;
  v9[3] = &unk_1E82D7148;
  v10 = view;
  v8 = view;
  [animatorCopy addAnimations:v9];
}

uint64_t __64__PKPaletteToolView_pointerInteraction_willExitRegion_animator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [region rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PKPaletteToolView *)self hitTestInsets];
  v15 = v14;
  [(PKPaletteToolView *)self hitTestInsets];
  v17 = v16;
  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  v22 = CGRectInset(v21, v15, v17);
  v18 = MEMORY[0x1E69DCDC0];

  return [v18 regionWithRect:0 identifier:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
}

- (void)showTooltip:(id)tooltip
{
  tooltipCopy = tooltip;
  toolName = [(PKPaletteToolView *)self toolName];
  [(PKPaletteToolView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  edgeLocation = [(PKPaletteToolView *)self edgeLocation];
  traitCollection = [(PKPaletteToolView *)self traitCollection];
  [tooltipCopy showWithText:toolName fromView:self rect:edgeLocation atEdge:traitCollection offset:v6 traitCollection:{v8, v10, v12, 10.0}];
}

@end