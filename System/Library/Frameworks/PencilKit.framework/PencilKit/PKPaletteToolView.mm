@interface PKPaletteToolView
+ (PKPaletteToolView)toolViewWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6;
- (BOOL)isCustomTool;
- (BOOL)isGenerationTool;
- (BOOL)isRulerTool;
- (CGSize)intrinsicContentSize;
- (NSString)toolName;
- (PKPaletteAttributeViewController)attributeViewController;
- (PKPaletteErasingTool)erasingTool;
- (PKPaletteHandwritingTool)handwritingTool;
- (PKPaletteInkingTool)inkingTool;
- (PKPaletteToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 configuration:(id)a5 toolProperties:(id)a6;
- (PKPaletteToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6;
- (double)_toolSelectedOffset;
- (id)baseImage;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (void)_reloadToolImage;
- (void)_reloadToolImageSizeConstraints;
- (void)_updateToolShadowView;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setColorUserInterfaceStyle:(int64_t)a3;
- (void)setConfiguration:(id)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setScalingFactor:(double)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectedToolOffsetEnabled:(BOOL)a3;
- (void)showTooltip:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation PKPaletteToolView

+ (PKPaletteToolView)toolViewWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 isEqualToString:@"com.apple.ink.eraser"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.ink.objectEraser"))
  {
    v13 = off_1E82D4600;
  }

  else if ([v9 isEqualToString:@"com.apple.ink.pen"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.ink.pencil") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.ink.marker") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.ink.custom") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.ink.fountainpen") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.ink.watercolor") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.ink.reedcalligraphy") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.ink.monoline") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.ink.crayon"))
  {
    v13 = off_1E82D4628;
  }

  else if ([v9 isEqualToString:@"com.apple.ink.lasso"])
  {
    v13 = off_1E82D46B0;
  }

  else if ([v9 isEqualToString:@"com.apple.ink.handwriting"])
  {
    v13 = off_1E82D4610;
  }

  else
  {
    v16 = [v9 isEqualToString:@"com.apple.ink.generationtool"];
    v13 = off_1E82D4748;
    if (v16)
    {
      v13 = off_1E82D4620;
    }
  }

  v14 = [objc_alloc(*v13) initWithToolIdentifier:v9 itemIdentifier:v10 variant:v11 configuration:v12];

  return v14;
}

- (PKPaletteToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 configuration:(id)a5 toolProperties:(id)a6
{
  v10 = a6;
  v11 = [(PKPaletteToolView *)self initWithToolIdentifier:a3 itemIdentifier:a4 variant:0 configuration:a5];
  [(PKPaletteToolView *)v11 setToolProperties:v10];

  return v11;
}

- (PKPaletteToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6
{
  v80[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v79.receiver = self;
  v79.super_class = PKPaletteToolView;
  v14 = [(PKPaletteToolView *)&v79 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v14)
  {
    v15 = [v10 copy];
    toolIdentifier = v14->_toolIdentifier;
    v14->_toolIdentifier = v15;

    v17 = [v11 copy];
    itemIdentifier = v14->_itemIdentifier;
    v14->_itemIdentifier = v17;

    v19 = [v12 copy];
    toolVariant = v14->_toolVariant;
    v14->_toolVariant = v19;

    toolProperties = v14->_toolProperties;
    v14->_toolProperties = MEMORY[0x1E695E0F8];

    v14->_scalingFactor = 1.0;
    v22 = [v13 copy];
    configuration = v14->_configuration;
    v14->_configuration = v22;

    v14->_supportsDisplayingSelectedColor = [v13 supportsColor];
    v14->_selectedToolOffsetEnabled = 1;
    v24 = [[PKPaletteToolShadowPathView alloc] initWithToolConfiguration:v13];
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
    v30 = [(PKPaletteToolImageContentView *)v14->_imageContentView layer];
    [v30 setMasksToBounds:0];

    [(PKPaletteToolView *)v14 addSubview:v14->_imageContentView];
    v31 = [(PKPaletteToolImageContentView *)v14->_imageContentView widthAnchor];
    v32 = [v31 constraintEqualToConstant:0.0];
    imageViewWidthAnchorConstraint = v14->_imageViewWidthAnchorConstraint;
    v14->_imageViewWidthAnchorConstraint = v32;

    v34 = [(PKPaletteToolImageContentView *)v14->_imageContentView heightAnchor];
    v35 = [v34 constraintEqualToConstant:0.0];
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

    v41 = [(PKPaletteToolImageContentView *)v14->_imageContentView topAnchor];
    v42 = [(PKPaletteToolView *)v14 topAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    imageViewTopAnchorConstraint = v14->_imageViewTopAnchorConstraint;
    v14->_imageViewTopAnchorConstraint = v43;

    v45 = [(PKPaletteToolImageContentView *)v14->_imageContentView bottomAnchor];
    v46 = [(PKPaletteToolView *)v14 bottomAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    imageViewBottomAnchorConstraint = v14->_imageViewBottomAnchorConstraint;
    v14->_imageViewBottomAnchorConstraint = v47;

    v49 = [(PKPaletteToolImageContentView *)v14->_imageContentView leftAnchor];
    v50 = [(PKPaletteToolView *)v14 leftAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    imageViewLeftAnchorConstraint = v14->_imageViewLeftAnchorConstraint;
    v14->_imageViewLeftAnchorConstraint = v51;

    v53 = [(PKPaletteToolImageContentView *)v14->_imageContentView rightAnchor];
    v54 = [(PKPaletteToolView *)v14 rightAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];
    imageViewRightAnchorConstraint = v14->_imageViewRightAnchorConstraint;
    v14->_imageViewRightAnchorConstraint = v55;

    v57 = [(PKPaletteToolShadowPathView *)v14->_toolShadowView topAnchor];
    v58 = [(PKPaletteToolImageContentView *)v14->_imageContentView topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    toolShadowViewTopAnchorConstraint = v14->_toolShadowViewTopAnchorConstraint;
    v14->_toolShadowViewTopAnchorConstraint = v59;

    v61 = [(PKPaletteToolShadowPathView *)v14->_toolShadowView leftAnchor];
    v62 = [(PKPaletteToolImageContentView *)v14->_imageContentView leftAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    toolShadowViewLeftAnchorConstraint = v14->_toolShadowViewLeftAnchorConstraint;
    v14->_toolShadowViewLeftAnchorConstraint = v63;

    v65 = [(PKPaletteToolShadowPathView *)v14->_toolShadowView bottomAnchor];
    v66 = [(PKPaletteToolImageContentView *)v14->_imageContentView bottomAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];
    toolShadowViewBottomAnchorConstraint = v14->_toolShadowViewBottomAnchorConstraint;
    v14->_toolShadowViewBottomAnchorConstraint = v67;

    v69 = [(PKPaletteToolShadowPathView *)v14->_toolShadowView rightAnchor];
    v70 = [(PKPaletteToolImageContentView *)v14->_imageContentView rightAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
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
    v75 = [(PKPaletteToolView *)v14 toolName];
    [(PKPaletteToolView *)v14 setAccessibilityLabel:v75];

    [(PKPaletteToolView *)v14 setShowsLargeContentViewer:1];
    v76 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(PKPaletteToolView *)v14 addInteraction:v76];

    v77 = [(PKPaletteToolView *)v14 toolName];
    [(PKPaletteToolView *)v14 setLargeContentTitle:v77];

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
  v3 = [(PKPaletteToolView *)self layer];
  [v3 setAllowsEdgeAntialiasing:1];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(PKPaletteToolView *)self layer];
  v5 = [v4 sublayers];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) setAllowsEdgeAntialiasing:1];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isRulerTool
{
  v2 = [(PKPaletteToolView *)self toolIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.tool.ruler"];

  return v3;
}

- (PKPaletteErasingTool)erasingTool
{
  if ([(PKPaletteToolView *)self isErasingTool])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isGenerationTool
{
  v2 = [(PKPaletteToolView *)self toolIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.generationtool"];

  return v3;
}

- (PKPaletteHandwritingTool)handwritingTool
{
  if ([(PKPaletteToolView *)self isHandwritingTool])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isCustomTool
{
  v2 = [(PKPaletteToolView *)self toolIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.custom"];

  return v3;
}

- (NSString)toolName
{
  v2 = [(PKPaletteToolView *)self configuration];
  v3 = [v2 localizedName];

  return v3;
}

- (PKPaletteAttributeViewController)attributeViewController
{
  if (!self->_attributeViewController)
  {
    v3 = [(PKPaletteToolView *)self configuration];
    v4 = [v3 viewControllerProvider];

    if (v4)
    {
      v5 = [(PKPaletteToolView *)self configuration];
      v6 = [v5 viewControllerProvider];
      v7 = v6[2]();

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

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteToolView *)self _updateToolShadowView];
    [(PKPaletteToolView *)self _reloadToolImageSizeConstraints];
    [(PKPaletteToolView *)self invalidateIntrinsicContentSize];

    [(PKPaletteToolView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateToolShadowView
{
  v3 = [(PKPaletteToolView *)self edgeLocation];
  v4 = [(PKPaletteToolView *)self toolShadowView];
  [v4 setEdgeLocation:v3];

  [(PKPaletteToolView *)self scalingFactor];
  v6 = v5;
  v7 = [(PKPaletteToolView *)self toolShadowView];
  [v7 setScalingFactor:v6];

  v8 = [(PKToolConfiguration *)self->_configuration shadowPath];
  v13 = v8;
  if (!v8 || (v9 = [v8 isEmpty], v10 = v13, v9))
  {
    v11 = [(PKPaletteToolView *)self toolShadowView];
    v12 = [(PKPaletteToolView *)self layer];
    [v11 applyShadowToLayer:v12];

    v10 = v13;
  }
}

- (void)_reloadToolImageSizeConstraints
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteToolView *)self imageContentView];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 416);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 image];
  [v7 size];
  v9 = v8;
  [(PKPaletteToolView *)self scalingFactor];
  v11 = v9 * v10;

  v12 = [(PKPaletteToolView *)self imageContentView];
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 416);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [v15 image];
  [v16 size];
  v18 = v17;
  [(PKPaletteToolView *)self scalingFactor];
  v20 = v19;

  v21 = os_log_create("com.apple.pencilkit", "PKPalette");
  v22 = v18 * v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(PKPaletteToolView *)self imageContentView];
    v24 = v23;
    if (v23)
    {
      v25 = *(v23 + 416);
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v27 = [v26 image];
    [v27 size];
    v28 = NSStringFromCGSize(v37);
    [(PKPaletteToolView *)self scalingFactor];
    v32 = 138478083;
    v33 = v28;
    v34 = 2049;
    v35 = v29;
    _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "Reload tool image size constraints, image size: %{private}@, scaling factor: %{private}.2f", &v32, 0x16u);
  }

  v30 = [(PKPaletteToolView *)self imageViewWidthAnchorConstraint];
  [v30 setConstant:v11];

  v31 = [(PKPaletteToolView *)self imageViewHeightAnchorConstraint];
  [v31 setConstant:v22];
}

- (id)baseImage
{
  v2 = [(PKPaletteToolView *)self configuration];
  v3 = [v2 baseImage];

  return v3;
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
    v3 = [(PKPaletteToolView *)self configuration];
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 184);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      v7 = [(PKPaletteToolView *)self toolIdentifier];
      v8 = [(PKPaletteToolView *)self toolProperties];
      v9 = [PKInk inkWithIdentifier:v7 properties:v8];

      v10 = [(PKPaletteToolView *)self traitCollection];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __37__PKPaletteToolView__reloadToolImage__block_invoke;
      v32[3] = &unk_1E82DA0E8;
      v32[5] = v9;
      v32[6] = buf;
      v32[4] = self;
      [v10 performAsCurrentTraitCollection:v32];

      v11 = [*(v34 + 5) accessibilityLabel];
      if (v11)
      {
        [(PKPaletteToolView *)self setAccessibilityLabel:v11];
      }

      else
      {
        v19 = [(PKPaletteToolView *)self toolName];
        [(PKPaletteToolView *)self setAccessibilityLabel:v19];
      }
    }

    else
    {
      v13 = [(PKPaletteToolView *)self baseImage];
      v14 = *(v34 + 5);
      *(v34 + 5) = v13;

      v15 = [*(v34 + 5) configuration];
      v16 = [(PKPaletteToolView *)self traitCollection];
      v9 = [v15 configurationWithTraitCollection:v16];

      v17 = [*(v34 + 5) imageWithConfiguration:v9];
      v18 = *(v34 + 5);
      *(v34 + 5) = v17;
    }

    if ([(PKPaletteToolView *)self edgeLocation]== 2)
    {
      v20 = MEMORY[0x1E69DCAB8];
      v21 = [*(v34 + 5) CGImage];
      [*(v34 + 5) scale];
      v22 = 3;
    }

    else
    {
      if ([(PKPaletteToolView *)self edgeLocation]!= 8)
      {
LABEL_18:
        v25 = *(v34 + 5);
        v26 = [(PKPaletteToolView *)self imageContentView];
        v27 = v26;
        if (v26)
        {
          v28 = *(v26 + 416);
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
      v21 = [*(v34 + 5) CGImage];
      [*(v34 + 5) scale];
      v22 = 2;
    }

    v23 = [v20 imageWithCGImage:v21 scale:v22 orientation:?];
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

- (void)setEdgeLocation:(unint64_t)a3
{
  v27[8] = *MEMORY[0x1E69E9840];
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    v23 = MEMORY[0x1E696ACD8];
    v4 = [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
    v27[0] = v4;
    v5 = [(PKPaletteToolView *)self imageViewLeftAnchorConstraint];
    v27[1] = v5;
    v6 = [(PKPaletteToolView *)self imageViewRightAnchorConstraint];
    v27[2] = v6;
    v7 = [(PKPaletteToolView *)self imageViewBottomAnchorConstraint];
    v27[3] = v7;
    v8 = [(PKPaletteToolView *)self toolShadowViewTopAnchorConstraint];
    v27[4] = v8;
    v9 = [(PKPaletteToolView *)self toolShadowViewLeftAnchorConstraint];
    v27[5] = v9;
    v10 = [(PKPaletteToolView *)self toolShadowViewRightAnchorConstraint];
    v27[6] = v10;
    v11 = [(PKPaletteToolView *)self toolShadowViewBottomAnchorConstraint];
    v27[7] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:8];
    [v23 deactivateConstraints:v12];

    v13 = [(PKPaletteToolView *)self edgeLocation];
    if (v13 > 3)
    {
      if (v13 == 8)
      {
        v14 = MEMORY[0x1E696ACD8];
        v15 = [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
        v24[0] = v15;
        v16 = [(PKPaletteToolView *)self imageViewLeftAnchorConstraint];
        v24[1] = v16;
        v17 = [(PKPaletteToolView *)self imageViewBottomAnchorConstraint];
        v24[2] = v17;
        v18 = [(PKPaletteToolView *)self toolShadowViewTopAnchorConstraint];
        v24[3] = v18;
        v19 = [(PKPaletteToolView *)self toolShadowViewLeftAnchorConstraint];
        v24[4] = v19;
        v20 = [(PKPaletteToolView *)self toolShadowViewBottomAnchorConstraint];
        v24[5] = v20;
        v21 = v24;
        goto LABEL_10;
      }

      if (v13 != 4)
      {
        goto LABEL_11;
      }
    }

    else if (v13 != 1)
    {
      if (v13 == 2)
      {
        v14 = MEMORY[0x1E696ACD8];
        v15 = [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
        v25[0] = v15;
        v16 = [(PKPaletteToolView *)self imageViewRightAnchorConstraint];
        v25[1] = v16;
        v17 = [(PKPaletteToolView *)self imageViewBottomAnchorConstraint];
        v25[2] = v17;
        v18 = [(PKPaletteToolView *)self toolShadowViewTopAnchorConstraint];
        v25[3] = v18;
        v19 = [(PKPaletteToolView *)self toolShadowViewRightAnchorConstraint];
        v25[4] = v19;
        v20 = [(PKPaletteToolView *)self toolShadowViewBottomAnchorConstraint];
        v25[5] = v20;
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
    v15 = [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
    v26[0] = v15;
    v16 = [(PKPaletteToolView *)self imageViewLeftAnchorConstraint];
    v26[1] = v16;
    v17 = [(PKPaletteToolView *)self imageViewRightAnchorConstraint];
    v26[2] = v17;
    v18 = [(PKPaletteToolView *)self toolShadowViewTopAnchorConstraint];
    v26[3] = v18;
    v19 = [(PKPaletteToolView *)self toolShadowViewLeftAnchorConstraint];
    v26[4] = v19;
    v20 = [(PKPaletteToolView *)self toolShadowViewRightAnchorConstraint];
    v26[5] = v20;
    v21 = v26;
    goto LABEL_10;
  }
}

- (void)setConfiguration:(id)a3
{
  v8 = a3;
  if (![(PKToolConfiguration *)self->_configuration isEqual:?])
  {
    v4 = [v8 copy];
    configuration = self->_configuration;
    self->_configuration = v4;

    v6 = [(PKPaletteToolView *)self toolName];
    [(PKPaletteToolView *)self setAccessibilityLabel:v6];

    v7 = [(PKPaletteToolView *)self toolName];
    [(PKPaletteToolView *)self setLargeContentTitle:v7];

    [(PKPaletteToolView *)self _setToolImageNeedsReload];
  }
}

- (void)updateConstraints
{
  v3 = [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
  [v3 setConstant:0.0];

  v4 = [(PKPaletteToolView *)self imageViewLeftAnchorConstraint];
  [v4 setConstant:0.0];

  v5 = [(PKPaletteToolView *)self imageViewBottomAnchorConstraint];
  [v5 setConstant:0.0];

  v6 = [(PKPaletteToolView *)self imageViewRightAnchorConstraint];
  [v6 setConstant:0.0];

  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    [(PKPaletteToolView *)self _toolSelectedOffset];
    v8 = -v7;
    v9 = [(PKPaletteToolView *)self imageViewRightAnchorConstraint];
  }

  else
  {
    v10 = [(PKPaletteToolView *)self edgeLocation];
    [(PKPaletteToolView *)self _toolSelectedOffset];
    v8 = v11;
    if (v10 == 8)
    {
      [(PKPaletteToolView *)self imageViewLeftAnchorConstraint];
    }

    else
    {
      [(PKPaletteToolView *)self imageViewTopAnchorConstraint];
    }
    v9 = ;
  }

  v12 = v9;
  [v9 setConstant:v8];

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

  v3 = [(PKPaletteToolView *)self traitCollection];
  v4 = [(PKPaletteToolView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

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

  v9 = [(PKPaletteToolView *)self isHighlighted];
  result = 14.0;
  if (v9)
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

- (void)setSelectedToolOffsetEnabled:(BOOL)a3
{
  if (self->_selectedToolOffsetEnabled != a3)
  {
    self->_selectedToolOffsetEnabled = a3;
    [(PKPaletteToolView *)self setNeedsUpdateConstraints];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PKPaletteToolView *)self imageContentView];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 416);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 image];
  [v7 size];
  v9 = v8;
  v11 = v10;

  v12 = [(PKPaletteToolView *)self edgeLocation];
  if (v12 == 8)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (v12 == 8)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  if (v12 == 2)
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

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = PKPaletteToolView;
  [(PKPaletteToolView *)&v9 setSelected:?];
  v5 = [(PKPaletteToolView *)self pointerInteraction];
  v6 = v5;
  if (v3)
  {
    [v5 setEnabled:0];

    v7 = *(MEMORY[0x1E695EFD0] + 16);
    v8[0] = *MEMORY[0x1E695EFD0];
    v8[1] = v7;
    v8[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(PKPaletteToolView *)self setTransform:v8];
  }

  else
  {
    [v5 setEnabled:1];
  }

  [(PKPaletteToolView *)self _updateRemoteEffects];
  [(PKPaletteToolView *)self setNeedsUpdateConstraints];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaletteToolView;
  [(PKPaletteToolView *)&v4 setHighlighted:a3];
  [(PKPaletteToolView *)self setNeedsUpdateConstraints];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaletteToolView;
  [(PKPaletteToolView *)&v13 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle] == 2;
  v6 = [(PKPaletteToolView *)self traitCollection];
  v7 = [v6 userInterfaceStyle] == 2;

  if (v5 != v7)
  {
    [(PKPaletteToolView *)self _setToolImageNeedsReload];
  }

  v8 = [(PKPaletteToolView *)self traitCollection];
  v9 = [v8 verticalSizeClass];
  if (v9 == [v4 verticalSizeClass])
  {
    v10 = [(PKPaletteToolView *)self traitCollection];
    v11 = [v10 horizontalSizeClass];
    v12 = [v4 horizontalSizeClass];

    if (v11 == v12)
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

- (void)setColorUserInterfaceStyle:(int64_t)a3
{
  if (self->_colorUserInterfaceStyle != a3)
  {
    self->_colorUserInterfaceStyle = a3;
    [(PKPaletteToolView *)self _setToolImageNeedsReload];
  }
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v7 = a5;
  v8 = [a3 view];
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
    v14 = v8;
    v15 = v16;
    [v7 addAnimations:v13];
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

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = [a3 view];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PKPaletteToolView_pointerInteraction_willExitRegion_animator___block_invoke;
  v9[3] = &unk_1E82D7148;
  v10 = v7;
  v8 = v7;
  [v6 addAnimations:v9];
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

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  [a5 rect];
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

- (void)showTooltip:(id)a3
{
  v4 = a3;
  v15 = [(PKPaletteToolView *)self toolName];
  [(PKPaletteToolView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PKPaletteToolView *)self edgeLocation];
  v14 = [(PKPaletteToolView *)self traitCollection];
  [v4 showWithText:v15 fromView:self rect:v13 atEdge:v14 offset:v6 traitCollection:{v8, v10, v12, 10.0}];
}

@end