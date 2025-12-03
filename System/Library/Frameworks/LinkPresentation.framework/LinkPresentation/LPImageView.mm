@interface LPImageView
- (BOOL)shouldApplyBackground;
- (CGSize)imageSizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPImageView)initWithHost:(id)host image:(id)image properties:(id)properties style:(id)style;
- (double)_effectiveCornerRadius;
- (id)_createImageViewWithImage:(id)image;
- (id)_createOverlayViewWithOpacity:(double)opacity;
- (int64_t)_filter;
- (int64_t)scalingModeForSize:(CGSize)size;
- (void)_setImageViewScalingMode:(int64_t)mode;
- (void)_updateScalingMode;
- (void)_userInterfaceStyleDidChange:(id)change;
- (void)ensureImageView;
- (void)installDarkeningViewIfNeeded;
- (void)layoutComponentView;
- (void)updateBorder;
- (void)updateCornerRadius;
- (void)updateShadowPath;
@end

@implementation LPImageView

- (LPImageView)initWithHost:(id)host image:(id)image properties:(id)properties style:(id)style
{
  v28[1] = *MEMORY[0x1E69E9840];
  hostCopy = host;
  imageCopy = image;
  propertiesCopy = properties;
  styleCopy = style;
  v27.receiver = self;
  v27.super_class = LPImageView;
  v14 = [(LPComponentView *)&v27 initWithHost:hostCopy];
  p_isa = &v14->super.super.super.super.isa;
  v16 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_image, image);
    objc_storeStrong(p_isa + 54, properties);
    objc_storeStrong(p_isa + 55, style);
    objc_storeStrong(p_isa + 56, style);
    if (+[LPSettings showDebugIndicators])
    {
      redColor = [MEMORY[0x1E69DC888] redColor];
      v18 = redColor;
      cGColor = [redColor CGColor];
      layer = [(LPImageView *)v16 layer];
      [layer setBorderColor:cGColor];

      layer2 = [(LPImageView *)v16 layer];
      [layer2 setBorderWidth:0.5];
    }

    v22 = objc_opt_self();
    v28[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v24 = [(LPImageView *)v16 registerForTraitChanges:v23 withAction:sel__userInterfaceStyleDidChange_];

    v25 = v16;
  }

  return v16;
}

- (int64_t)_filter
{
  v3 = LPImageViewFilterResolve(self->_image, self->_properties, self->_style);
  host = [(LPComponentView *)self host];
  v5 = [host componentView:self allowedImageFilterForFilter:v3];

  return v5;
}

- (void)ensureImageView
{
  if (self->_imageView)
  {
    return;
  }

  originalStyle = self->_originalStyle;
  _filter = [(LPImageView *)self _filter];
  image = self->_image;
  [(UIView *)self _lp_backingScaleFactor];
  v7 = shouldUseIconPlatter(originalStyle, _filter, image, v6);
  self->_platterReason = v7;
  if (v7)
  {
    v99 = [(LPImageViewStyle *)self->_style copy];
    fixedSize = [(LPImageViewStyle *)self->_originalStyle fixedSize];
    [fixedSize asSize];
    v10 = v9;
    v12 = v11;

    [LPTheme platterizedIconScaleForReason:self->_platterReason];
    v14 = v10 * v13;
    v15 = [[LPPointUnit alloc] initWithValue:(v12 - v10 * v13) * 0.5];
    padding = [(LPImageViewStyle *)v99 padding];
    [padding setTop:v15];

    padding2 = [(LPImageViewStyle *)v99 padding];
    v18 = [padding2 top];
    padding3 = [(LPImageViewStyle *)v99 padding];
    [padding3 setBottom:v18];

    v20 = [[LPPointUnit alloc] initWithValue:(v10 - v14) * 0.5];
    padding4 = [(LPImageViewStyle *)v99 padding];
    [padding4 setLeading:v20];

    padding5 = [(LPImageViewStyle *)v99 padding];
    leading = [padding5 leading];
    padding6 = [(LPImageViewStyle *)v99 padding];
    [padding6 setTrailing:leading];

    v25 = [[LPSize alloc] initWithSquareSize:v14];
    [(LPImageViewStyle *)v99 setFixedSize:v25];

    style = self->_style;
    self->_style = v99;
  }

  _filter2 = [(LPImageView *)self _filter];
  filteredImage = self->_filteredImage;
  self->_filteredImage = 0;

  v29 = +[LPTestingOverrides forceImageLoadingScaleFactor];
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    [(UIView *)self _lp_backingScaleFactor];
    v30 = v31;
  }

  [(LPImagePresentationProperties *)self->_properties fixedSize];
  if (v33 == *MEMORY[0x1E695F060] && v32 == *(MEMORY[0x1E695F060] + 8))
  {
    fixedSize2 = [(LPImageViewStyle *)self->_style fixedSize];
    [fixedSize2 asSize];
    v36 = v39;
    v38 = v40;
  }

  else
  {
    [(LPImagePresentationProperties *)self->_properties fixedSize];
    v36 = v35;
    v38 = v37;
  }

  [(LPImageView *)self _effectiveCornerRadius];
  v42 = v41;
  maskColor = [(LPImagePresentationProperties *)self->_properties maskColor];
  v44 = maskColor;
  if (maskColor)
  {
    maskColor2 = maskColor;
  }

  else
  {
    maskColor2 = [(LPImageViewStyle *)self->_style maskColor];
  }

  whiteColor = maskColor2;

  backgroundColor = [(LPImagePresentationProperties *)self->_properties backgroundColor];
  v47 = backgroundColor;
  if (backgroundColor)
  {
    backgroundColor2 = backgroundColor;
  }

  else
  {
    backgroundColor2 = [(LPImageViewStyle *)self->_style backgroundColor];
  }

  v49 = backgroundColor2;

  backgroundInset = [(LPImageViewStyle *)self->_style backgroundInset];
  [backgroundInset value];
  v52 = v51;

  if (_filter2 <= 7)
  {
    if (_filter2 > 4)
    {
      if (_filter2 == 5)
      {
        v53 = appIconImage(self->_image, v36, v38, v30);
      }

      else
      {
        if (_filter2 == 6)
        {
          watchAppIconImage(self->_image, v36, v38, v30);
        }

        else
        {
          messagesAppIconImage(self->_image, v36, v38, v30);
        }
        v53 = ;
      }

      goto LABEL_52;
    }

    if ((_filter2 - 1) >= 2)
    {
      if (_filter2 != 3)
      {
        if (_filter2 == 4)
        {
          _asTemplate = [(LPImage *)self->_image _asTemplate];
          v55 = self->_filteredImage;
          self->_filteredImage = _asTemplate;

          if (!whiteColor)
          {
            whiteColor = [MEMORY[0x1E69DC888] whiteColor];
          }
        }

        goto LABEL_53;
      }

      v62 = squareImageWithCornerRadius(self->_image, v49, v36, v38, v42, v30, v52);
      v63 = self->_filteredImage;
      self->_filteredImage = v62;

      _darkInterfaceAlternativeImage = [(LPImage *)self->_image _darkInterfaceAlternativeImage];

      if (!_darkInterfaceAlternativeImage)
      {
        goto LABEL_53;
      }

      _darkInterfaceAlternativeImage2 = [(LPImage *)self->_image _darkInterfaceAlternativeImage];
      v60 = squareImageWithCornerRadius(_darkInterfaceAlternativeImage2, v49, v36, v38, v42, v30, v52);
      [(LPImage *)self->_filteredImage _setDarkInterfaceAlternativeImage:v60];
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  if (_filter2 > 11)
  {
    if ((_filter2 - 13) >= 2)
    {
      if (_filter2 != 12)
      {
        if (_filter2 != 15)
        {
          goto LABEL_53;
        }

        v56 = squareFittingImageWithCornerRadius(self->_image, v49, v36, v38, v42, v30, v52);
        v57 = self->_filteredImage;
        self->_filteredImage = v56;

        _darkInterfaceAlternativeImage3 = [(LPImage *)self->_image _darkInterfaceAlternativeImage];

        if (!_darkInterfaceAlternativeImage3)
        {
          goto LABEL_53;
        }

        _darkInterfaceAlternativeImage2 = [(LPImage *)self->_image _darkInterfaceAlternativeImage];
        v60 = squareFittingImageWithCornerRadius(_darkInterfaceAlternativeImage2, v49, v36, v38, v42, v30, v52);
        [(LPImage *)self->_filteredImage _setDarkInterfaceAlternativeImage:v60];
LABEL_44:

LABEL_49:
        goto LABEL_53;
      }

      host = [(LPComponentView *)self host];
      v66 = [host usesBackgroundForSymbolImagesForComponentView:self];

      v61 = self->_image;
      if ((v66 & 1) == 0)
      {
        _darkInterfaceAlternativeImage2 = [(LPImage *)self->_image filledVariant];
        v67 = _darkInterfaceAlternativeImage2;
        if (!_darkInterfaceAlternativeImage2)
        {
          v67 = self->_image;
        }

        objc_storeStrong(&self->_filteredImage, v67);
        goto LABEL_49;
      }

LABEL_35:
      objc_storeStrong(&self->_filteredImage, v61);
      goto LABEL_53;
    }

LABEL_34:
    v61 = self->_image;
    goto LABEL_35;
  }

  if ((_filter2 - 9) < 3)
  {
    v53 = bookCoverImage(self->_image, _filter2 == 11, _filter2 == 10, v30);
LABEL_52:
    v68 = self->_filteredImage;
    self->_filteredImage = v53;

    goto LABEL_53;
  }

  if (_filter2 == 8)
  {
    v53 = appClipIconImage(self->_image, v36, v38, v30);
    goto LABEL_52;
  }

LABEL_53:
  if ([(LPImageView *)self shouldApplyBackground])
  {
    v69 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = self->_backgroundView;
    self->_backgroundView = v69;

    [(UIView *)self->_backgroundView _lp_setBackgroundColor:v49];
    [(LPImageView *)self addSubview:self->_backgroundView];
  }

  if (-[LPImageView shouldApplyBackground](self, "shouldApplyBackground") && ([v49 _lp_isDynamicColor] & 1) == 0)
  {
    -[UIView _lp_setUserInterfaceStyle:](self, "_lp_setUserInterfaceStyle:", [v49 _lp_luminosityLevel] == 1);
  }

  else
  {
    [(UIView *)self _lp_clearUserInterfaceStyleOverride];
  }

  v71 = [(LPImageView *)self _createImageViewWithImage:self->_filteredImage];
  imageView = self->_imageView;
  self->_imageView = v71;

  [(LPImageView *)self _updateScalingMode];
  v73 = self->_imageView;
  [(LPImageViewStyle *)self->_style opacity];
  [(UIImageView *)v73 _lp_setOpacity:?];
  [(UIImageView *)self->_imageView _lp_setTintColor:whiteColor];
  [(UIImageView *)self->_imageView setIsAccessibilityElement:1];
  [(LPImageView *)self addSubview:self->_imageView];
  if (+[LPSettings showDebugIndicators])
  {
    greenColor = [MEMORY[0x1E69DC888] greenColor];
    cGColor = [greenColor CGColor];
    layer = [(UIImageView *)self->_imageView layer];
    [layer setBorderColor:cGColor];

    layer2 = [(UIImageView *)self->_imageView layer];
    [layer2 setBorderWidth:0.5];
  }

  if (_filter2 == 2)
  {
    [(LPImageView *)self installDarkeningViewIfNeeded];
  }

  shadow = [(LPImageViewStyle *)self->_style shadow];

  if (shadow)
  {
    shadow2 = [(LPImageViewStyle *)self->_style shadow];
    [shadow2 radius];
    v81 = v80;
    layer3 = [(LPImageView *)self layer];
    [layer3 setShadowRadius:v81];

    shadow3 = [(LPImageViewStyle *)self->_style shadow];
    offset = [shadow3 offset];
    [offset asSize];
    v86 = v85;
    v88 = v87;
    layer4 = [(LPImageView *)self layer];
    [layer4 setShadowOffset:{v86, v88}];

    shadow4 = [(LPImageViewStyle *)self->_style shadow];
    [shadow4 opacity];
    v92 = v91;
    layer5 = [(LPImageView *)self layer];
    *&v94 = v92;
    [layer5 setShadowOpacity:v94];

    shadow5 = [(LPImageViewStyle *)self->_style shadow];
    color = [shadow5 color];
    cGColor2 = [color CGColor];
    layer6 = [(LPImageView *)self layer];
    [layer6 setShadowColor:cGColor2];

    [(LPImageView *)self updateShadowPath];
  }
}

- (void)_userInterfaceStyleDidChange:(id)change
{
  changeCopy = change;
  _darkInterfaceAlternativeImage = [(LPImage *)self->_filteredImage _darkInterfaceAlternativeImage];

  if (_darkInterfaceAlternativeImage)
  {
    traitCollection = [changeCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    filteredImage = self->_filteredImage;
    if (userInterfaceStyle == 2)
    {
      _darkInterfaceAlternativeImage2 = [(LPImage *)filteredImage _darkInterfaceAlternativeImage];
      platformImage = [_darkInterfaceAlternativeImage2 platformImage];
    }

    else
    {
      platformImage = [(LPImage *)filteredImage platformImage];
      _darkInterfaceAlternativeImage2 = platformImage;
    }

    [(UIImageView *)self->_imageView setImage:platformImage];
    if (userInterfaceStyle == 2)
    {
    }
  }
}

- (void)updateCornerRadius
{
  [(UIImageView *)self->_imageView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_backgroundView frame];
  v52.origin.x = v11;
  v52.origin.y = v12;
  v52.size.width = v13;
  v52.size.height = v14;
  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  if (CGRectEqualToRect(v50, v52))
  {
    [(UIImageView *)self->_imageView frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(LPImageView *)self bounds];
    v53.origin.x = v23;
    v53.origin.y = v24;
    v53.size.width = v25;
    v53.size.height = v26;
    v51.origin.x = v16;
    v51.origin.y = v18;
    v51.size.width = v20;
    v51.size.height = v22;
    v27 = CGRectEqualToRect(v51, v53);
    _filter = [(LPImageView *)self _filter];
    if (_filter == 13)
    {
      if (v27)
      {
        [(LPImageView *)self frame];
        v30 = v29;
        [(LPImageView *)self frame];
        v31 = 0;
        v33 = fmin(v30, v32) * 0.5;
        v34 = 0.0;
        v27 = 1;
        goto LABEL_11;
      }

      goto LABEL_6;
    }
  }

  else
  {
    _filter = [(LPImageView *)self _filter];
    if (_filter == 13)
    {
LABEL_6:
      [(UIImageView *)self->_imageView frame];
      v36 = v35;
      [(UIImageView *)self->_imageView frame];
      v33 = fmin(v36, v37) * 0.5;
      [(UIView *)self->_backgroundView frame];
      v39 = v38;
      [(UIView *)self->_backgroundView frame];
      v27 = 0;
      v31 = 0;
      v34 = fmin(v39, v40) * 0.5;
      goto LABEL_11;
    }

    v27 = 0;
  }

  v34 = 0.0;
  if ((_filter & 0xFFFFFFFFFFFFFFFDLL) == 0xC)
  {
    [(LPImageView *)self _effectiveCornerRadius];
    v33 = v41;
    v31 = 1;
  }

  else
  {
    v31 = 0;
    v33 = 0.0;
  }

LABEL_11:
  if (self->_platterReason)
  {
    iconPlatterCornerRadius = [(LPImageViewStyle *)self->_style iconPlatterCornerRadius];
    [iconPlatterCornerRadius value];
    v44 = v43;

    v34 = v33;
    v33 = v44;
  }

  if (v34 == 0.0)
  {
    v45 = v33;
  }

  else
  {
    v45 = v34;
  }

  if (v27)
  {
    v46 = v33;
  }

  else
  {
    v46 = 0.0;
  }

  if (v27)
  {
    v33 = 0.0;
    v47 = 0.0;
  }

  else
  {
    v47 = v45;
  }

  [(UIView *)self _lp_setCornerRadius:v31 continuous:v46, v45];
  [(UIImageView *)self->_imageView _lp_setCornerRadius:v31 continuous:v33];
  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView _lp_setCornerRadius:v31 continuous:v47];
}

- (void)updateShadowPath
{
  shadow = [(LPImageViewStyle *)self->_style shadow];

  if (!shadow)
  {
    return;
  }

  _filter = [(LPImageView *)self _filter];
  v5 = _filter;
  if (_filter <= 8 && ((1 << _filter) & 0x1A0) != 0 || (-[LPImage properties](self->_image, "properties"), v48 = objc_claimAutoreleasedReturnValue(), v8 = [v48 type], v48, v8 == 5) || !-[LPImageView shouldApplyBackground](self, "shouldApplyBackground") && -[LPImage _hasTransparency](self->_image, "_hasTransparency"))
  {
    layer = [(LPImageView *)self layer];
    [layer setShadowPath:0];

    if (!+[LPSettings showDebugIndicators])
    {
      return;
    }

    redColor = [MEMORY[0x1E69DC888] redColor];
    cGColor = [redColor CGColor];
    layer2 = [(LPImageView *)self layer];
    [layer2 setShadowColor:cGColor];
    goto LABEL_6;
  }

  if ([(LPImageView *)self shouldApplyBackground])
  {
    [(LPImageView *)self bounds];
  }

  else
  {
    [(UIImageView *)self->_imageView frame];
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  if (v5 == 3 || v5 == 14 || self->_platterReason)
  {
    [(LPImageView *)self _effectiveCornerRadius];
    v18 = v17;
    [(LPImageView *)self _effectiveCornerRadius];
    v20 = v19;
    v52.origin.x = v13;
    v52.origin.y = v14;
    v52.size.width = v15;
    v52.size.height = v16;
    v21 = CGPathCreateWithRoundedRect(v52, v18, v20, 0);
    v22 = CFAutorelease(v21);
    layer3 = [(LPImageView *)self layer];
    [layer3 setShadowPath:v22];
  }

  else if (v5 == 15)
  {
    platformImage = [(LPImage *)self->_image platformImage];
    [platformImage size];
    v27 = v26;
    v29 = v28;
    [(LPImageView *)self bounds];
    sizeFittingInsideSizeMaintainingAspectRatio(v27, v29, v30, v31);
    v33 = v32;
    v35 = v34;

    [(LPImageView *)self bounds];
    v37 = (v36 - v33) * 0.5;
    [(LPImageView *)self bounds];
    v39 = (v38 - v35) * 0.5;
    [(LPImageView *)self _effectiveCornerRadius];
    v41 = v40;
    [(LPImageView *)self _effectiveCornerRadius];
    v43 = v42;
    v53.origin.x = v37;
    v53.origin.y = v39;
    v53.size.width = v33;
    v53.size.height = v35;
    v44 = CGPathCreateWithRoundedRect(v53, v41, v43, 0);
    v45 = CFAutorelease(v44);
    layer3 = [(LPImageView *)self layer];
    [layer3 setShadowPath:v45];
  }

  else
  {
    if (v5 == 13)
    {
      v24 = CGPathCreateWithEllipseInRect(*&v9, 0);
    }

    else
    {
      v24 = CGPathCreateWithRect(*&v9, 0);
    }

    v25 = CFAutorelease(v24);
    layer3 = [(LPImageView *)self layer];
    [layer3 setShadowPath:v25];
  }

  if (+[LPSettings showDebugIndicators])
  {
    redColor = [MEMORY[0x1E69DC888] greenColor];
    cGColor2 = [redColor CGColor];
    layer2 = [(LPImageView *)self layer];
    [layer2 setShadowColor:cGColor2];
LABEL_6:
  }
}

- (void)updateBorder
{
  borderWidth = [(LPImageViewStyle *)self->_style borderWidth];

  if (borderWidth)
  {
    _filter = [(LPImageView *)self _filter];
    if (_filter <= 8 && ((1 << _filter) & 0x1A0) != 0 || (-[LPImage properties](self->_image, "properties"), v17 = objc_claimAutoreleasedReturnValue(), v5 = [v17 type], v17, v5 == 5) || !-[LPImageView shouldApplyBackground](self, "shouldApplyBackground") && -[LPImage _hasTransparency](self->_image, "_hasTransparency"))
    {
      layer = [(UIImageView *)self->_imageView layer];
      [layer setBorderWidth:0.0];

      layer2 = [(UIImageView *)self->_imageView layer];
      [layer2 setBorderColor:0];

      layer3 = [(LPImageView *)self layer];
      [layer3 setBorderWidth:0.0];

      layer4 = [(LPImageView *)self layer];
      [layer4 setBorderColor:0];
    }

    else
    {
      shouldApplyBackground = [(LPImageView *)self shouldApplyBackground];
      borderWidth2 = [(LPImageViewStyle *)self->_style borderWidth];
      [borderWidth2 value];
      v8 = v7;
      if (shouldApplyBackground)
      {
        layer5 = [(LPImageView *)self layer];
        [layer5 setBorderWidth:v8];

        layer4 = [(LPImageViewStyle *)self->_style borderColor];
        cGColor = [layer4 CGColor];
        [(LPImageView *)self layer];
      }

      else
      {
        layer6 = [(UIImageView *)self->_imageView layer];
        [layer6 setBorderWidth:v8];

        layer4 = [(LPImageViewStyle *)self->_style borderColor];
        cGColor = [layer4 CGColor];
        [(UIImageView *)self->_imageView layer];
      }
      v11 = ;
      [v11 setBorderColor:cGColor];
    }
  }
}

- (void)layoutComponentView
{
  [(LPImageView *)self ensureImageView];
  [(LPImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v46 = v9;
  padding = [(LPImageViewStyle *)self->_style padding];
  [padding asInsetsForLTR:{-[UIImageView _lp_isLTR](self->_imageView, "_lp_isLTR")}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  platformImage = [(LPImage *)self->_image platformImage];
  _lp_isSymbolImage = [platformImage _lp_isSymbolImage];
  v21 = v4 + v14;
  v22 = v6 + v12;
  v23 = v14 + v18;
  v24 = v12 + v16;

  if (_lp_isSymbolImage)
  {
    [(UIImageView *)self->_imageView alignmentRectInsets];
    v21 = v21 + v26 - v25;
    v22 = v22 + v28 - v27;
  }

  v29 = v8 - v23;
  v30 = v46 - v24;
  if (self->_currentScalingMode == 1)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __34__LPImageView_layoutComponentView__block_invoke;
    v47[3] = &unk_1E7A36AE8;
    v47[4] = self;
    *&v47[5] = v21;
    *&v47[6] = v22;
    *&v47[7] = v29;
    *&v47[8] = v46 - v24;
    v31 = __34__LPImageView_layoutComponentView__block_invoke(v47);
    v33 = v32;
    v48.origin.x = v21;
    v48.origin.y = v22;
    v48.size.width = v29;
    v48.size.height = v30;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = v21;
    v49.origin.y = v22;
    v49.size.width = v29;
    v49.size.height = v30;
    [(UIImageView *)self->_imageView setFrame:MidX - v31 * 0.5, CGRectGetMidY(v49) - v33 * 0.5, v31, v33];
  }

  else
  {
    [(UIImageView *)self->_imageView setFrame:v21, v22, v29, v46 - v24];
  }

  [(UIImageView *)self->_imageView frame];
  [(UIView *)self->_overlayView setFrame:?];
  if ([(LPImageView *)self shouldApplyBackground]&& [(LPImageView *)self _filter]!= 12)
  {
    [(LPImageView *)self bounds];
  }

  else
  {
    backgroundInset = [(LPImageViewStyle *)self->_style backgroundInset];
    [backgroundInset value];
    v37 = v36;

    [(LPImageView *)self bounds];
    v39 = v37 + v38;
    v41 = v37 + v40;
    v43 = v42 - (v37 + v37);
    v45 = v44 - (v37 + v37);
  }

  [(UIView *)self->_backgroundView setFrame:v39, v41, v43, v45];
  [(LPImageView *)self updateCornerRadius];
  [(LPImageView *)self _updateScalingMode];
  [(LPImageView *)self updateShadowPath];
  [(LPImageView *)self updateBorder];
}

double __34__LPImageView_layoutComponentView__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 440) filter] == 3 || objc_msgSend(*(*(a1 + 32) + 440), "requireFixedSize"))
  {
    v2 = [*(*(a1 + 32) + 440) fixedSize];
    [v2 asSize];
    sizeFittingInsideSizeMaintainingAspectRatio(v3, v4, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    [*(*(a1 + 32) + 432) fixedSize];
    v9 = v8;
    v11 = v10;
    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    v14 = [*(*(a1 + 32) + 416) platformImage];
    v2 = v14;
    if (v9 == v12 && v11 == v13)
    {
      [v14 size];
      sizeFittingInsideSizeMaintainingAspectRatio(v22, v23, *(a1 + 56), *(a1 + 64));
    }

    else
    {
      [v14 size];
      v17 = v16;
      v19 = v18;
      [*(*(a1 + 32) + 432) fixedSize];
      sizeFittingInsideSizeMaintainingAspectRatio(v17, v19, v20, v21);
    }
  }

  v6 = v5;

  return v6;
}

- (BOOL)shouldApplyBackground
{
  if ([(LPImagePresentationProperties *)self->_properties shouldApplyBackground]|| [(LPImageViewStyle *)self->_style shouldApplyBackground]|| self->_platterReason)
  {
    return 1;
  }

  if ([(LPImageView *)self _filter]!= 12)
  {
    return 0;
  }

  host = [(LPComponentView *)self host];
  v3 = [host usesBackgroundForSymbolImagesForComponentView:self];

  return v3;
}

- (void)installDarkeningViewIfNeeded
{
  if (!self->_overlayView)
  {
    [(LPImageViewStyle *)self->_style darkeningAmount];
    v3 = [(LPImageView *)self _createOverlayViewWithOpacity:?];
    overlayView = self->_overlayView;
    self->_overlayView = v3;

    [(UIImageView *)self->_imageView addSubview:self->_overlayView];
    _filter = [(LPImageView *)self _filter];
    if (_filter <= 0xE && ((1 << _filter) & 0x5008) != 0)
    {
      [(LPImageView *)self _effectiveCornerRadius];

      [(UIView *)self _lp_setCornerRadius:?];
    }
  }
}

- (int64_t)scalingModeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  scalingMode = [(LPImageViewStyle *)self->_style scalingMode];
  if ([(LPImagePresentationProperties *)self->_properties scalingMode])
  {
    scalingMode = [(LPImagePresentationProperties *)self->_properties scalingMode];
  }

  properties = [(LPImage *)self->_image properties];
  type = [properties type];

  if ((type - 1) < 7)
  {
    v9 = 1;
  }

  else
  {
    v9 = scalingMode;
  }

  minimumSize = [(LPImageViewStyle *)self->_style minimumSize];

  if (minimumSize)
  {
    v11 = v9 == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    padding = [(LPImageViewStyle *)self->_style padding];
    [padding asInsetsForLTR:{-[UIView _lp_isLTR](self, "_lp_isLTR")}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(LPImageView *)self imageSizeThatFits:width - (v25 + v29), height - (v23 + v27)];
    v31 = v30;
    v33 = v32;
    minimumSize2 = [(LPImageViewStyle *)self->_style minimumSize];
    width = [minimumSize2 width];
    [width value];
    if (ceil(v31) < v36)
    {
    }

    else
    {
      minimumSize3 = [(LPImageViewStyle *)self->_style minimumSize];
      height = [minimumSize3 height];
      [height value];
      v40 = v39;

      if (ceil(v33) >= v40)
      {
        return 1;
      }
    }

    return 2;
  }

  if (v9 == 3)
  {
    platformImage = [(LPImage *)self->_filteredImage platformImage];
    [platformImage size];
    v14 = v13;
    [(UIImageView *)self->_imageView frame];
    if (v14 > v15)
    {
    }

    else
    {
      platformImage2 = [(LPImage *)self->_filteredImage platformImage];
      [platformImage2 size];
      v18 = v17;
      [(UIImageView *)self->_imageView frame];
      v20 = v19;

      if (v18 <= v20)
      {
        return 3;
      }
    }

    return 1;
  }

  return v9;
}

- (CGSize)imageSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  fixedSize = [(LPImageViewStyle *)self->_style fixedSize];
  if (fixedSize)
  {
    v7 = fixedSize;
    if ([(LPImageViewStyle *)self->_style filter]== 3 || [(LPImageViewStyle *)self->_style filter]== 12 || [(LPImageViewStyle *)self->_style requireFixedSize])
    {

LABEL_6:
      fixedSize2 = [(LPImageViewStyle *)self->_style fixedSize];
      [fixedSize2 asSize];
      sizeFittingInsideSizeMaintainingAspectRatio(v9, v10, width, height);
      v12 = v11;
      v14 = v13;

      v15 = v12;
      v16 = v14;
      goto LABEL_16;
    }

    requireFixedSize = [(LPImagePresentationProperties *)self->_properties requireFixedSize];

    if (requireFixedSize)
    {
      goto LABEL_6;
    }
  }

  platformImage = [(LPImage *)self->_image platformImage];
  [platformImage size];
  v20 = v19;
  v22 = v21;

  _isFallbackIcon = [(LPImage *)self->_image _isFallbackIcon];
  v24 = fmax(v20, v22);
  if (_isFallbackIcon)
  {
    v25 = v24;
  }

  else
  {
    v25 = v20;
  }

  if (!_isFallbackIcon)
  {
    v24 = v22;
  }

  sizeFittingInsideSizeMaintainingAspectRatio(v25, v24, width, height);
LABEL_16:
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  padding = [(LPImageViewStyle *)self->_style padding];
  [padding asInsetsForLTR:{-[UIView _lp_isLTR](self, "_lp_isLTR")}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(LPImageView *)self imageSizeThatFits:width - (v10 + v14), height - (v8 + v12)];
  v16 = ceil(v15);
  v18 = ceil(v17);
  minimumSize = [(LPImageViewStyle *)self->_style minimumSize];
  if (minimumSize)
  {
    v20 = minimumSize;
    requireFixedSize = [(LPImageViewStyle *)self->_style requireFixedSize];

    if (!requireFixedSize)
    {
      minimumSize2 = [(LPImageViewStyle *)self->_style minimumSize];
      width = [minimumSize2 width];
      [width value];
      v25 = v24;

      minimumSize3 = [(LPImageViewStyle *)self->_style minimumSize];
      height = [minimumSize3 height];
      [height value];
      v16 = fmax(v16, v25);
      v18 = fmax(v18, v28);
    }
  }

  maximumSize = [(LPImageViewStyle *)self->_style maximumSize];
  if (maximumSize)
  {
    v30 = maximumSize;
    requireFixedSize2 = [(LPImageViewStyle *)self->_style requireFixedSize];

    if (!requireFixedSize2)
    {
      maximumSize2 = [(LPImageViewStyle *)self->_style maximumSize];
      width2 = [maximumSize2 width];
      [width2 value];
      v35 = v34;

      maximumSize3 = [(LPImageViewStyle *)self->_style maximumSize];
      height2 = [maximumSize3 height];
      [height2 value];
      v16 = fmin(v16, v35);
      v18 = fmin(v18, v38);
    }
  }

  v39 = v16 - (-v14 - v10);
  v40 = v18 - (-v12 - v8);
  result.height = v40;
  result.width = v39;
  return result;
}

- (id)_createOverlayViewWithOpacity:(double)opacity
{
  host = [(LPComponentView *)self host];
  v6 = [host appearanceForComponentView:self];

  _lp_prefersDarkInterface = [v6 _lp_prefersDarkInterface];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:_lp_prefersDarkInterface alpha:opacity];
  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v9 _lp_setBackgroundColor:v8];
  [v9 _lp_disableAutomaticVibrancy];

  return v9;
}

- (void)_updateScalingMode
{
  [(LPImageView *)self bounds];
  v5 = [(LPImageView *)self scalingModeForSize:v3, v4];
  if (v5 != self->_currentScalingMode)
  {
    self->_currentScalingMode = v5;

    [(LPImageView *)self _setImageViewScalingMode:v5];
  }
}

- (double)_effectiveCornerRadius
{
  cornerRadius = [(LPImageViewStyle *)self->_style cornerRadius];
  [cornerRadius value];
  v5 = v4;
  host = [(LPComponentView *)self host];
  [host minimumCornerRadiusForComponentView:self];
  v8 = fmax(v5, v7);

  return v8;
}

- (id)_createImageViewWithImage:(id)image
{
  imageCopy = image;
  _darkInterfaceAlternativeImage = [imageCopy _darkInterfaceAlternativeImage];
  if (_darkInterfaceAlternativeImage)
  {
    traitCollection = [(LPImageView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      _darkInterfaceAlternativeImage2 = [imageCopy _darkInterfaceAlternativeImage];
      platformImage = [_darkInterfaceAlternativeImage2 platformImage];

LABEL_5:
      goto LABEL_6;
    }
  }

  platformImage = [imageCopy platformImage];
  if (_darkInterfaceAlternativeImage)
  {
    goto LABEL_5;
  }

LABEL_6:

  v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [platformImage _lp_pixelSize];
  v11 = v10;
  v13 = v12;
  if (([platformImage isSymbolImage] & 1) == 0 && !sizeFitsWithinSize(v11, v13, 1024.0, 1024.0))
  {
    host = [(LPComponentView *)self host];
    v15 = [host allowsAsynchronousImageDecodingForComponentView:self];

    if (v15)
    {
      sizeFittingInsideSizeMaintainingAspectRatio(v11, v13, 1024.0, 1024.0);
      v17 = v16;
      v19 = v18;
      objc_initWeak(&location, v9);
      [(LPImageView *)self setHidden:1];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __41__LPImageView__createImageViewWithImage___block_invoke;
      v45[3] = &unk_1E7A36B38;
      v45[4] = self;
      objc_copyWeak(&v46, &location);
      [platformImage prepareThumbnailOfSize:v45 completionHandler:{v17, v19}];

      objc_destroyWeak(&v46);
      objc_destroyWeak(&location);
      platformImage = 0;
    }
  }

  [v9 setImage:platformImage];
  [v9 setUserInteractionEnabled:1];
  properties = [imageCopy properties];
  accessibilityText = [properties accessibilityText];
  [v9 setAccessibilityLabel:accessibilityText];

  fixedFallbackImageFont = [(LPImageViewStyle *)self->_style fixedFallbackImageFont];

  if (fixedFallbackImageFont)
  {
    v23 = MEMORY[0x1E69DCAD8];
    fixedFallbackImageFont2 = [(LPImageViewStyle *)self->_style fixedFallbackImageFont];
    v25 = [v23 configurationWithFont:fixedFallbackImageFont2];
    v26 = MEMORY[0x1E69DCAD8];
    fixedFallbackImageScale = [(LPImageViewStyle *)self->_style fixedFallbackImageScale];
    v28 = [v26 configurationWithScale:{objc_msgSend(fixedFallbackImageScale, "integerValue")}];
    v29 = [v25 configurationByApplyingConfiguration:v28];
    [v9 setPreferredSymbolConfiguration:v29];

    goto LABEL_20;
  }

  fixedFallbackImageSize = [(LPImageViewStyle *)self->_style fixedFallbackImageSize];
  if (fixedFallbackImageSize || ([(LPImageViewStyle *)self->_style fixedFallbackImageWeight], (fixedFallbackImageSize = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    fixedFallbackImageFontTextStyle = [(LPImageViewStyle *)self->_style fixedFallbackImageFontTextStyle];

    if (!fixedFallbackImageFontTextStyle)
    {
      fixedFallbackImageFont2 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
      [v9 setPreferredSymbolConfiguration:fixedFallbackImageFont2];
      goto LABEL_20;
    }
  }

  v31 = MEMORY[0x1E69DCAD8];
  fixedFallbackImageSize2 = [(LPImageViewStyle *)self->_style fixedFallbackImageSize];
  [fixedFallbackImageSize2 value];
  fixedFallbackImageFont2 = [v31 configurationWithPointSize:?];

  fixedFallbackImageWeight = [(LPImageViewStyle *)self->_style fixedFallbackImageWeight];

  if (fixedFallbackImageWeight)
  {
    v34 = MEMORY[0x1E69DCAD8];
    fixedFallbackImageWeight2 = [(LPImageViewStyle *)self->_style fixedFallbackImageWeight];
    v36 = [v34 configurationWithWeight:{objc_msgSend(fixedFallbackImageWeight2, "integerValue")}];
    v37 = [fixedFallbackImageFont2 configurationByApplyingConfiguration:v36];

    fixedFallbackImageFont2 = v37;
  }

  fixedFallbackImageFontTextStyle2 = [(LPImageViewStyle *)self->_style fixedFallbackImageFontTextStyle];

  if (fixedFallbackImageFontTextStyle2)
  {
    v39 = MEMORY[0x1E69DCAD8];
    fixedFallbackImageFontTextStyle3 = [(LPImageViewStyle *)self->_style fixedFallbackImageFontTextStyle];
    v41 = [v39 configurationWithTextStyle:fixedFallbackImageFontTextStyle3];
    v42 = [fixedFallbackImageFont2 configurationByApplyingConfiguration:v41];

    fixedFallbackImageFont2 = v42;
  }

  [v9 setPreferredSymbolConfiguration:fixedFallbackImageFont2];
LABEL_20:

  return v9;
}

void __41__LPImageView__createImageViewWithImage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__LPImageView__createImageViewWithImage___block_invoke_2;
  block[3] = &unk_1E7A36B10;
  block[4] = *(a1 + 32);
  objc_copyWeak(&v7, (a1 + 40));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v7);
}

void __41__LPImageView__createImageViewWithImage___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 472);
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (v2 == WeakRetained)
  {
    [*(a1 + 32) setHidden:0];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 472);

    [v5 setImage:v4];
  }
}

- (void)_setImageViewScalingMode:(int64_t)mode
{
  if (mode == 1)
  {
    p_imageView = &self->_imageView;
    v6 = 1;
    [(UIImageView *)self->_imageView setContentMode:?];
    if ([(LPImageView *)self _filter]!= 13)
    {
      v6 = [(LPImageView *)self _filter]== 14;
    }
  }

  else
  {
    if (mode == 3)
    {
      p_imageView = &self->_imageView;
      imageView = self->_imageView;
      mode = 4;
    }

    else
    {
      if (mode != 2)
      {
        return;
      }

      p_imageView = &self->_imageView;
      imageView = self->_imageView;
    }

    [(UIImageView *)imageView setContentMode:mode];
    v6 = 1;
  }

  v7 = *p_imageView;

  [(UIImageView *)v7 setClipsToBounds:v6];
}

@end