@interface LPImageView
- (BOOL)shouldApplyBackground;
- (CGSize)imageSizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPImageView)initWithHost:(id)a3 image:(id)a4 properties:(id)a5 style:(id)a6;
- (double)_effectiveCornerRadius;
- (id)_createImageViewWithImage:(id)a3;
- (id)_createOverlayViewWithOpacity:(double)a3;
- (int64_t)_filter;
- (int64_t)scalingModeForSize:(CGSize)a3;
- (void)_setImageViewScalingMode:(int64_t)a3;
- (void)_updateScalingMode;
- (void)_userInterfaceStyleDidChange:(id)a3;
- (void)ensureImageView;
- (void)installDarkeningViewIfNeeded;
- (void)layoutComponentView;
- (void)updateBorder;
- (void)updateCornerRadius;
- (void)updateShadowPath;
@end

@implementation LPImageView

- (LPImageView)initWithHost:(id)a3 image:(id)a4 properties:(id)a5 style:(id)a6
{
  v28[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = LPImageView;
  v14 = [(LPComponentView *)&v27 initWithHost:v10];
  p_isa = &v14->super.super.super.super.isa;
  v16 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_image, a4);
    objc_storeStrong(p_isa + 54, a5);
    objc_storeStrong(p_isa + 55, a6);
    objc_storeStrong(p_isa + 56, a6);
    if (+[LPSettings showDebugIndicators])
    {
      v17 = [MEMORY[0x1E69DC888] redColor];
      v18 = v17;
      v19 = [v17 CGColor];
      v20 = [(LPImageView *)v16 layer];
      [v20 setBorderColor:v19];

      v21 = [(LPImageView *)v16 layer];
      [v21 setBorderWidth:0.5];
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
  v4 = [(LPComponentView *)self host];
  v5 = [v4 componentView:self allowedImageFilterForFilter:v3];

  return v5;
}

- (void)ensureImageView
{
  if (self->_imageView)
  {
    return;
  }

  originalStyle = self->_originalStyle;
  v4 = [(LPImageView *)self _filter];
  image = self->_image;
  [(UIView *)self _lp_backingScaleFactor];
  v7 = shouldUseIconPlatter(originalStyle, v4, image, v6);
  self->_platterReason = v7;
  if (v7)
  {
    v99 = [(LPImageViewStyle *)self->_style copy];
    v8 = [(LPImageViewStyle *)self->_originalStyle fixedSize];
    [v8 asSize];
    v10 = v9;
    v12 = v11;

    [LPTheme platterizedIconScaleForReason:self->_platterReason];
    v14 = v10 * v13;
    v15 = [[LPPointUnit alloc] initWithValue:(v12 - v10 * v13) * 0.5];
    v16 = [(LPImageViewStyle *)v99 padding];
    [v16 setTop:v15];

    v17 = [(LPImageViewStyle *)v99 padding];
    v18 = [v17 top];
    v19 = [(LPImageViewStyle *)v99 padding];
    [v19 setBottom:v18];

    v20 = [[LPPointUnit alloc] initWithValue:(v10 - v14) * 0.5];
    v21 = [(LPImageViewStyle *)v99 padding];
    [v21 setLeading:v20];

    v22 = [(LPImageViewStyle *)v99 padding];
    v23 = [v22 leading];
    v24 = [(LPImageViewStyle *)v99 padding];
    [v24 setTrailing:v23];

    v25 = [[LPSize alloc] initWithSquareSize:v14];
    [(LPImageViewStyle *)v99 setFixedSize:v25];

    style = self->_style;
    self->_style = v99;
  }

  v27 = [(LPImageView *)self _filter];
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
    v100 = [(LPImageViewStyle *)self->_style fixedSize];
    [v100 asSize];
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
  v43 = [(LPImagePresentationProperties *)self->_properties maskColor];
  v44 = v43;
  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = [(LPImageViewStyle *)self->_style maskColor];
  }

  v101 = v45;

  v46 = [(LPImagePresentationProperties *)self->_properties backgroundColor];
  v47 = v46;
  if (v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = [(LPImageViewStyle *)self->_style backgroundColor];
  }

  v49 = v48;

  v50 = [(LPImageViewStyle *)self->_style backgroundInset];
  [v50 value];
  v52 = v51;

  if (v27 <= 7)
  {
    if (v27 > 4)
    {
      if (v27 == 5)
      {
        v53 = appIconImage(self->_image, v36, v38, v30);
      }

      else
      {
        if (v27 == 6)
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

    if ((v27 - 1) >= 2)
    {
      if (v27 != 3)
      {
        if (v27 == 4)
        {
          v54 = [(LPImage *)self->_image _asTemplate];
          v55 = self->_filteredImage;
          self->_filteredImage = v54;

          if (!v101)
          {
            v101 = [MEMORY[0x1E69DC888] whiteColor];
          }
        }

        goto LABEL_53;
      }

      v62 = squareImageWithCornerRadius(self->_image, v49, v36, v38, v42, v30, v52);
      v63 = self->_filteredImage;
      self->_filteredImage = v62;

      v64 = [(LPImage *)self->_image _darkInterfaceAlternativeImage];

      if (!v64)
      {
        goto LABEL_53;
      }

      v59 = [(LPImage *)self->_image _darkInterfaceAlternativeImage];
      v60 = squareImageWithCornerRadius(v59, v49, v36, v38, v42, v30, v52);
      [(LPImage *)self->_filteredImage _setDarkInterfaceAlternativeImage:v60];
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  if (v27 > 11)
  {
    if ((v27 - 13) >= 2)
    {
      if (v27 != 12)
      {
        if (v27 != 15)
        {
          goto LABEL_53;
        }

        v56 = squareFittingImageWithCornerRadius(self->_image, v49, v36, v38, v42, v30, v52);
        v57 = self->_filteredImage;
        self->_filteredImage = v56;

        v58 = [(LPImage *)self->_image _darkInterfaceAlternativeImage];

        if (!v58)
        {
          goto LABEL_53;
        }

        v59 = [(LPImage *)self->_image _darkInterfaceAlternativeImage];
        v60 = squareFittingImageWithCornerRadius(v59, v49, v36, v38, v42, v30, v52);
        [(LPImage *)self->_filteredImage _setDarkInterfaceAlternativeImage:v60];
LABEL_44:

LABEL_49:
        goto LABEL_53;
      }

      v65 = [(LPComponentView *)self host];
      v66 = [v65 usesBackgroundForSymbolImagesForComponentView:self];

      v61 = self->_image;
      if ((v66 & 1) == 0)
      {
        v59 = [(LPImage *)self->_image filledVariant];
        v67 = v59;
        if (!v59)
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

  if ((v27 - 9) < 3)
  {
    v53 = bookCoverImage(self->_image, v27 == 11, v27 == 10, v30);
LABEL_52:
    v68 = self->_filteredImage;
    self->_filteredImage = v53;

    goto LABEL_53;
  }

  if (v27 == 8)
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
  [(UIImageView *)self->_imageView _lp_setTintColor:v101];
  [(UIImageView *)self->_imageView setIsAccessibilityElement:1];
  [(LPImageView *)self addSubview:self->_imageView];
  if (+[LPSettings showDebugIndicators])
  {
    v74 = [MEMORY[0x1E69DC888] greenColor];
    v75 = [v74 CGColor];
    v76 = [(UIImageView *)self->_imageView layer];
    [v76 setBorderColor:v75];

    v77 = [(UIImageView *)self->_imageView layer];
    [v77 setBorderWidth:0.5];
  }

  if (v27 == 2)
  {
    [(LPImageView *)self installDarkeningViewIfNeeded];
  }

  v78 = [(LPImageViewStyle *)self->_style shadow];

  if (v78)
  {
    v79 = [(LPImageViewStyle *)self->_style shadow];
    [v79 radius];
    v81 = v80;
    v82 = [(LPImageView *)self layer];
    [v82 setShadowRadius:v81];

    v83 = [(LPImageViewStyle *)self->_style shadow];
    v84 = [v83 offset];
    [v84 asSize];
    v86 = v85;
    v88 = v87;
    v89 = [(LPImageView *)self layer];
    [v89 setShadowOffset:{v86, v88}];

    v90 = [(LPImageViewStyle *)self->_style shadow];
    [v90 opacity];
    v92 = v91;
    v93 = [(LPImageView *)self layer];
    *&v94 = v92;
    [v93 setShadowOpacity:v94];

    v95 = [(LPImageViewStyle *)self->_style shadow];
    v96 = [v95 color];
    v97 = [v96 CGColor];
    v98 = [(LPImageView *)self layer];
    [v98 setShadowColor:v97];

    [(LPImageView *)self updateShadowPath];
  }
}

- (void)_userInterfaceStyleDidChange:(id)a3
{
  v10 = a3;
  v4 = [(LPImage *)self->_filteredImage _darkInterfaceAlternativeImage];

  if (v4)
  {
    v5 = [v10 traitCollection];
    v6 = [v5 userInterfaceStyle];
    filteredImage = self->_filteredImage;
    if (v6 == 2)
    {
      v8 = [(LPImage *)filteredImage _darkInterfaceAlternativeImage];
      v9 = [v8 platformImage];
    }

    else
    {
      v9 = [(LPImage *)filteredImage platformImage];
      v8 = v9;
    }

    [(UIImageView *)self->_imageView setImage:v9];
    if (v6 == 2)
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
    v28 = [(LPImageView *)self _filter];
    if (v28 == 13)
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
    v28 = [(LPImageView *)self _filter];
    if (v28 == 13)
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
  if ((v28 & 0xFFFFFFFFFFFFFFFDLL) == 0xC)
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
    v42 = [(LPImageViewStyle *)self->_style iconPlatterCornerRadius];
    [v42 value];
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
  v3 = [(LPImageViewStyle *)self->_style shadow];

  if (!v3)
  {
    return;
  }

  v4 = [(LPImageView *)self _filter];
  v5 = v4;
  if (v4 <= 8 && ((1 << v4) & 0x1A0) != 0 || (-[LPImage properties](self->_image, "properties"), v48 = objc_claimAutoreleasedReturnValue(), v8 = [v48 type], v48, v8 == 5) || !-[LPImageView shouldApplyBackground](self, "shouldApplyBackground") && -[LPImage _hasTransparency](self->_image, "_hasTransparency"))
  {
    v46 = [(LPImageView *)self layer];
    [v46 setShadowPath:0];

    if (!+[LPSettings showDebugIndicators])
    {
      return;
    }

    v47 = [MEMORY[0x1E69DC888] redColor];
    v6 = [v47 CGColor];
    v7 = [(LPImageView *)self layer];
    [v7 setShadowColor:v6];
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
    v49 = [(LPImageView *)self layer];
    [v49 setShadowPath:v22];
  }

  else if (v5 == 15)
  {
    v50 = [(LPImage *)self->_image platformImage];
    [v50 size];
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
    v49 = [(LPImageView *)self layer];
    [v49 setShadowPath:v45];
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
    v49 = [(LPImageView *)self layer];
    [v49 setShadowPath:v25];
  }

  if (+[LPSettings showDebugIndicators])
  {
    v47 = [MEMORY[0x1E69DC888] greenColor];
    v23 = [v47 CGColor];
    v7 = [(LPImageView *)self layer];
    [v7 setShadowColor:v23];
LABEL_6:
  }
}

- (void)updateBorder
{
  v3 = [(LPImageViewStyle *)self->_style borderWidth];

  if (v3)
  {
    v4 = [(LPImageView *)self _filter];
    if (v4 <= 8 && ((1 << v4) & 0x1A0) != 0 || (-[LPImage properties](self->_image, "properties"), v17 = objc_claimAutoreleasedReturnValue(), v5 = [v17 type], v17, v5 == 5) || !-[LPImageView shouldApplyBackground](self, "shouldApplyBackground") && -[LPImage _hasTransparency](self->_image, "_hasTransparency"))
    {
      v13 = [(UIImageView *)self->_imageView layer];
      [v13 setBorderWidth:0.0];

      v14 = [(UIImageView *)self->_imageView layer];
      [v14 setBorderColor:0];

      v15 = [(LPImageView *)self layer];
      [v15 setBorderWidth:0.0];

      v16 = [(LPImageView *)self layer];
      [v16 setBorderColor:0];
    }

    else
    {
      v6 = [(LPImageView *)self shouldApplyBackground];
      v18 = [(LPImageViewStyle *)self->_style borderWidth];
      [v18 value];
      v8 = v7;
      if (v6)
      {
        v9 = [(LPImageView *)self layer];
        [v9 setBorderWidth:v8];

        v16 = [(LPImageViewStyle *)self->_style borderColor];
        v10 = [v16 CGColor];
        [(LPImageView *)self layer];
      }

      else
      {
        v12 = [(UIImageView *)self->_imageView layer];
        [v12 setBorderWidth:v8];

        v16 = [(LPImageViewStyle *)self->_style borderColor];
        v10 = [v16 CGColor];
        [(UIImageView *)self->_imageView layer];
      }
      v11 = ;
      [v11 setBorderColor:v10];
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
  v10 = [(LPImageViewStyle *)self->_style padding];
  [v10 asInsetsForLTR:{-[UIImageView _lp_isLTR](self->_imageView, "_lp_isLTR")}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(LPImage *)self->_image platformImage];
  v20 = [v19 _lp_isSymbolImage];
  v21 = v4 + v14;
  v22 = v6 + v12;
  v23 = v14 + v18;
  v24 = v12 + v16;

  if (v20)
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
    v35 = [(LPImageViewStyle *)self->_style backgroundInset];
    [v35 value];
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

  v5 = [(LPComponentView *)self host];
  v3 = [v5 usesBackgroundForSymbolImagesForComponentView:self];

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
    v5 = [(LPImageView *)self _filter];
    if (v5 <= 0xE && ((1 << v5) & 0x5008) != 0)
    {
      [(LPImageView *)self _effectiveCornerRadius];

      [(UIView *)self _lp_setCornerRadius:?];
    }
  }
}

- (int64_t)scalingModeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(LPImageViewStyle *)self->_style scalingMode];
  if ([(LPImagePresentationProperties *)self->_properties scalingMode])
  {
    v6 = [(LPImagePresentationProperties *)self->_properties scalingMode];
  }

  v7 = [(LPImage *)self->_image properties];
  v8 = [v7 type];

  if ((v8 - 1) < 7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = [(LPImageViewStyle *)self->_style minimumSize];

  if (v10)
  {
    v11 = v9 == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v21 = [(LPImageViewStyle *)self->_style padding];
    [v21 asInsetsForLTR:{-[UIView _lp_isLTR](self, "_lp_isLTR")}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(LPImageView *)self imageSizeThatFits:width - (v25 + v29), height - (v23 + v27)];
    v31 = v30;
    v33 = v32;
    v34 = [(LPImageViewStyle *)self->_style minimumSize];
    v35 = [v34 width];
    [v35 value];
    if (ceil(v31) < v36)
    {
    }

    else
    {
      v37 = [(LPImageViewStyle *)self->_style minimumSize];
      v38 = [v37 height];
      [v38 value];
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
    v12 = [(LPImage *)self->_filteredImage platformImage];
    [v12 size];
    v14 = v13;
    [(UIImageView *)self->_imageView frame];
    if (v14 > v15)
    {
    }

    else
    {
      v16 = [(LPImage *)self->_filteredImage platformImage];
      [v16 size];
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

- (CGSize)imageSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(LPImageViewStyle *)self->_style fixedSize];
  if (v6)
  {
    v7 = v6;
    if ([(LPImageViewStyle *)self->_style filter]== 3 || [(LPImageViewStyle *)self->_style filter]== 12 || [(LPImageViewStyle *)self->_style requireFixedSize])
    {

LABEL_6:
      v8 = [(LPImageViewStyle *)self->_style fixedSize];
      [v8 asSize];
      sizeFittingInsideSizeMaintainingAspectRatio(v9, v10, width, height);
      v12 = v11;
      v14 = v13;

      v15 = v12;
      v16 = v14;
      goto LABEL_16;
    }

    v17 = [(LPImagePresentationProperties *)self->_properties requireFixedSize];

    if (v17)
    {
      goto LABEL_6;
    }
  }

  v18 = [(LPImage *)self->_image platformImage];
  [v18 size];
  v20 = v19;
  v22 = v21;

  v23 = [(LPImage *)self->_image _isFallbackIcon];
  v24 = fmax(v20, v22);
  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = v20;
  }

  if (!v23)
  {
    v24 = v22;
  }

  sizeFittingInsideSizeMaintainingAspectRatio(v25, v24, width, height);
LABEL_16:
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(LPImageViewStyle *)self->_style padding];
  [v6 asInsetsForLTR:{-[UIView _lp_isLTR](self, "_lp_isLTR")}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(LPImageView *)self imageSizeThatFits:width - (v10 + v14), height - (v8 + v12)];
  v16 = ceil(v15);
  v18 = ceil(v17);
  v19 = [(LPImageViewStyle *)self->_style minimumSize];
  if (v19)
  {
    v20 = v19;
    v21 = [(LPImageViewStyle *)self->_style requireFixedSize];

    if (!v21)
    {
      v22 = [(LPImageViewStyle *)self->_style minimumSize];
      v23 = [v22 width];
      [v23 value];
      v25 = v24;

      v26 = [(LPImageViewStyle *)self->_style minimumSize];
      v27 = [v26 height];
      [v27 value];
      v16 = fmax(v16, v25);
      v18 = fmax(v18, v28);
    }
  }

  v29 = [(LPImageViewStyle *)self->_style maximumSize];
  if (v29)
  {
    v30 = v29;
    v31 = [(LPImageViewStyle *)self->_style requireFixedSize];

    if (!v31)
    {
      v32 = [(LPImageViewStyle *)self->_style maximumSize];
      v33 = [v32 width];
      [v33 value];
      v35 = v34;

      v36 = [(LPImageViewStyle *)self->_style maximumSize];
      v37 = [v36 height];
      [v37 value];
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

- (id)_createOverlayViewWithOpacity:(double)a3
{
  v5 = [(LPComponentView *)self host];
  v6 = [v5 appearanceForComponentView:self];

  v7 = [v6 _lp_prefersDarkInterface];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:v7 alpha:a3];
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
  v3 = [(LPImageViewStyle *)self->_style cornerRadius];
  [v3 value];
  v5 = v4;
  v6 = [(LPComponentView *)self host];
  [v6 minimumCornerRadiusForComponentView:self];
  v8 = fmax(v5, v7);

  return v8;
}

- (id)_createImageViewWithImage:(id)a3
{
  v5 = a3;
  v6 = [v5 _darkInterfaceAlternativeImage];
  if (v6)
  {
    v3 = [(LPImageView *)self traitCollection];
    if ([v3 userInterfaceStyle] == 2)
    {
      v7 = [v5 _darkInterfaceAlternativeImage];
      v8 = [v7 platformImage];

LABEL_5:
      goto LABEL_6;
    }
  }

  v8 = [v5 platformImage];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v8 _lp_pixelSize];
  v11 = v10;
  v13 = v12;
  if (([v8 isSymbolImage] & 1) == 0 && !sizeFitsWithinSize(v11, v13, 1024.0, 1024.0))
  {
    v14 = [(LPComponentView *)self host];
    v15 = [v14 allowsAsynchronousImageDecodingForComponentView:self];

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
      [v8 prepareThumbnailOfSize:v45 completionHandler:{v17, v19}];

      objc_destroyWeak(&v46);
      objc_destroyWeak(&location);
      v8 = 0;
    }
  }

  [v9 setImage:v8];
  [v9 setUserInteractionEnabled:1];
  v20 = [v5 properties];
  v21 = [v20 accessibilityText];
  [v9 setAccessibilityLabel:v21];

  v22 = [(LPImageViewStyle *)self->_style fixedFallbackImageFont];

  if (v22)
  {
    v23 = MEMORY[0x1E69DCAD8];
    v24 = [(LPImageViewStyle *)self->_style fixedFallbackImageFont];
    v25 = [v23 configurationWithFont:v24];
    v26 = MEMORY[0x1E69DCAD8];
    v27 = [(LPImageViewStyle *)self->_style fixedFallbackImageScale];
    v28 = [v26 configurationWithScale:{objc_msgSend(v27, "integerValue")}];
    v29 = [v25 configurationByApplyingConfiguration:v28];
    [v9 setPreferredSymbolConfiguration:v29];

    goto LABEL_20;
  }

  v30 = [(LPImageViewStyle *)self->_style fixedFallbackImageSize];
  if (v30 || ([(LPImageViewStyle *)self->_style fixedFallbackImageWeight], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v44 = [(LPImageViewStyle *)self->_style fixedFallbackImageFontTextStyle];

    if (!v44)
    {
      v24 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
      [v9 setPreferredSymbolConfiguration:v24];
      goto LABEL_20;
    }
  }

  v31 = MEMORY[0x1E69DCAD8];
  v32 = [(LPImageViewStyle *)self->_style fixedFallbackImageSize];
  [v32 value];
  v24 = [v31 configurationWithPointSize:?];

  v33 = [(LPImageViewStyle *)self->_style fixedFallbackImageWeight];

  if (v33)
  {
    v34 = MEMORY[0x1E69DCAD8];
    v35 = [(LPImageViewStyle *)self->_style fixedFallbackImageWeight];
    v36 = [v34 configurationWithWeight:{objc_msgSend(v35, "integerValue")}];
    v37 = [v24 configurationByApplyingConfiguration:v36];

    v24 = v37;
  }

  v38 = [(LPImageViewStyle *)self->_style fixedFallbackImageFontTextStyle];

  if (v38)
  {
    v39 = MEMORY[0x1E69DCAD8];
    v40 = [(LPImageViewStyle *)self->_style fixedFallbackImageFontTextStyle];
    v41 = [v39 configurationWithTextStyle:v40];
    v42 = [v24 configurationByApplyingConfiguration:v41];

    v24 = v42;
  }

  [v9 setPreferredSymbolConfiguration:v24];
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

- (void)_setImageViewScalingMode:(int64_t)a3
{
  if (a3 == 1)
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
    if (a3 == 3)
    {
      p_imageView = &self->_imageView;
      imageView = self->_imageView;
      a3 = 4;
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      p_imageView = &self->_imageView;
      imageView = self->_imageView;
    }

    [(UIImageView *)imageView setContentMode:a3];
    v6 = 1;
  }

  v7 = *p_imageView;

  [(UIImageView *)v7 setClipsToBounds:v6];
}

@end