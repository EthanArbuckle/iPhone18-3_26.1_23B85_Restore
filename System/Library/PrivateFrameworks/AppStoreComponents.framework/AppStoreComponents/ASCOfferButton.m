@interface ASCOfferButton
+ (id)indeterminateProgressImageFittingSize:(void *)a3 forTheme:;
+ (id)progressImageWithPercent:(void *)a3 fittingSize:(void *)a4 forTheme:(char)a5 cancellable:;
+ (id)progressStateImageFittingSize:(id)a3 forTheme:(id)a4 startPercent:(double)a5 endPercent:(double)a6 useFullImageSize:(BOOL)a7;
+ (id)progressTransitionImageFittingSize:(void *)a3 forTheme:;
+ (id)smallTitleFontForText:(id)a3 compatibleWithTraitCollection:(id)a4;
+ (id)subtitleFontFittingSize:forTheme:compatibleWithTraitCollection:;
+ (id)textBackgroundImageFittingSize:(void *)a3 forTheme:;
+ (id)titleFontForText:(void *)a3 fittingSize:(void *)a4 representingMetadata:(void *)a5 compatibleWithTraitCollection:;
- (ASCOfferButton)initWithCoder:(id)a3;
- (ASCOfferButton)initWithFrame:(CGRect)a3;
- (ASCOfferButtonDelegate)delegate;
- (BOOL)accessibilityActivate;
- (BOOL)canTransitionToMetadata:(id)a3;
- (BOOL)chainTransitionToMetadata:(id)a3 scalingDurationBy:(double)a4 withCompletion:(id)a5;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)shouldTransitionImageViewFromMetadata:(id)a3 toMetadata:(id)a4;
- (CAAnimation)imageAnimation;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (id)focusEffect;
- (id)makeLayout;
- (id)transitionColorForMetadata:(id)a3;
- (id)transitionImageForMetadata:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)beginModalStateWithCancelBlock:(id)a3;
- (void)endModalState;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)onTraitCollectionChange;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setCurrentTransition:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageAnimation:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setSize:(id)a3;
- (void)setSubtitleLabelIfLoaded:(id)a3;
- (void)setSubtitlePosition:(int64_t)a3;
- (void)setTheme:(id)a3;
- (void)setTitleLabelIfLoaded:(id)a3;
- (void)transitionToMetadata:(id)a3 scalingDurationBy:(double)a4 withCompletion:(id)a5;
- (void)transitionToMetadata:(id)a3 withCompletion:(id)a4;
- (void)updateImageStyleProperties;
- (void)updateLabelStyleProperties;
- (void)updateVisualEffects;
@end

@implementation ASCOfferButton

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = ASCOfferButton;
  v3 = *MEMORY[0x277D76548] | [(ASCOfferButton *)&v7 accessibilityTraits]| *MEMORY[0x277D765D0];
  v4 = [(ASCOfferButton *)self isEnabled];
  v5 = *MEMORY[0x277D76580];
  if (v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

- (id)accessibilityLabel
{
  v3 = [(ASCOfferButton *)self metadata];
  if ([v3 isEmpty])
  {
    goto LABEL_2;
  }

  if (![v3 isIcon])
  {
    if ([v3 isProgress])
    {
      v11 = @"AX_OFFER_BUTTON_LABEL_LOADING";
    }

    else
    {
      if ([v3 isText])
      {
        v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
        v12 = [(ASCOfferButton *)self titleLabelIfLoaded];

        if (v12)
        {
          v13 = [(ASCOfferButton *)self titleLabelIfLoaded];
          [v5 addObject:v13];
        }

        v14 = [(ASCOfferButton *)self subtitleLabelIfLoaded];

        if (v14)
        {
          v15 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
          [v5 addObject:v15];
        }

        v9 = ASCAXLabelForElements(v5);
        goto LABEL_16;
      }

      if ([v3 isPlaceholder])
      {
LABEL_2:
        v4 = 0;
        goto LABEL_18;
      }

      if ([v3 isDeeplink])
      {
        v11 = @"AX_OFFER_BUTTON_LABEL_DEEPLINK";
      }

      else
      {
        if (![v3 isViewInAppStore])
        {
          ASCUnknownEnumCase(@"ASCOfferMetadata", v3);
        }

        v11 = @"AX_OFFER_BUTTON_LABEL_VIEW_IN_APP_STORE";
      }
    }

    v4 = ASCLocalizedString(v11, v10);
    goto LABEL_18;
  }

  v5 = v3;
  v6 = +[ASCOfferMetadata redownloadMetadata];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v9 = ASCLocalizedString(@"AX_OFFER_BUTTON_LABEL_REDOWNLOAD", v8);
LABEL_16:
    v4 = v9;
    goto LABEL_17;
  }

  v4 = 0;
LABEL_17:

LABEL_18:

  return v4;
}

- (id)accessibilityHint
{
  v2 = [(ASCOfferButton *)self metadata];
  if ([v2 isProgress])
  {
    v3 = ASCLocalizedPlatformString(@"AX_OFFER_BUTTON_HINT_CANCEL");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(ASCOfferButton *)self metadata];
  if ([v2 isProgress])
  {
    v3 = v2;
    if ([v3 isIndeterminate])
    {
      v4 = 0;
    }

    else
    {
      [v3 percent];
      *&v5 = v5;
      v4 = ASCAXFormatFloatWithPercentage(0, *&v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)accessibilityActivate
{
  v3 = [(ASCOfferButton *)self isEnabled];
  if (v3)
  {
    [(ASCOfferButton *)self sendActionsForControlEvents:64];
  }

  return v3;
}

- (void)setSize:(id)a3
{
  v7 = a3;
  v5 = self->_size;
  if (!v7 || !v5)
  {

    if (v5 == v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(NSString *)v5 isEqual:v7];

  if ((v6 & 1) == 0)
  {
LABEL_6:
    objc_storeStrong(&self->_size, a3);
    [(ASCOfferButton *)self updateImageStyleProperties];
    [(ASCOfferButton *)self updateLabelStyleProperties];
    [(ASCOfferButton *)self invalidateIntrinsicContentSize];
    [(ASCOfferButton *)self setNeedsLayout];
  }

LABEL_7:
}

+ (id)smallTitleFontForText:(id)a3 compatibleWithTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [a3 length];
  v7 = 0.0;
  if (v6 > 7)
  {
    v7 = -4.0;
  }

  if (v6 <= 0xC)
  {
    v8 = v7;
  }

  else
  {
    v8 = -6.0;
  }

  v9 = ASCFontPointSizesResolve(v5, v8 + 13.0, v8 + 15.0, v8 + 18.0, v8 + 18.0);

  if (!smallTitleFontForText_compatibleWithTraitCollection__titleFont || ([smallTitleFontForText_compatibleWithTraitCollection__titleFont pointSize], v10 != v9))
  {
    v11 = [MEMORY[0x277D74300] systemFontOfSize:v9 weight:*MEMORY[0x277D743F8]];
    v12 = smallTitleFontForText_compatibleWithTraitCollection__titleFont;
    smallTitleFontForText_compatibleWithTraitCollection__titleFont = v11;
  }

  v13 = smallTitleFontForText_compatibleWithTraitCollection__titleFont;

  return v13;
}

+ (id)titleFontForText:(void *)a3 fittingSize:(void *)a4 representingMetadata:(void *)a5 compatibleWithTraitCollection:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_self();
  if ([v10 isViewInAppStore])
  {
    v13 = [v12 viewInAppStoreTitleFontForText:v8 compatibleWithTraitCollection:v11];
  }

  else if ([v9 isEqualToString:0x2827A3EB8])
  {
    v13 = [v12 mediumTitleFontForText:v8 compatibleWithTraitCollection:v11];
  }

  else
  {
    if (![v9 isEqualToString:0x2827A3E98])
    {
      ASCUnknownEnumCase(@"ASCOfferButtonSize", v9);
    }

    v13 = [v12 smallTitleFontForText:v8 compatibleWithTraitCollection:v11];
  }

  v14 = v13;

  return v14;
}

+ (id)subtitleFontFittingSize:forTheme:compatibleWithTraitCollection:
{
  objc_opt_self();
  if (subtitleFontFittingSize_forTheme_compatibleWithTraitCollection__onceToken != -1)
  {
    +[ASCOfferButton subtitleFontFittingSize:forTheme:compatibleWithTraitCollection:];
  }

  v0 = subtitleFontFittingSize_forTheme_compatibleWithTraitCollection__subtitleFont;

  return v0;
}

uint64_t __81__ASCOfferButton_subtitleFontFittingSize_forTheme_compatibleWithTraitCollection___block_invoke()
{
  subtitleFontFittingSize_forTheme_compatibleWithTraitCollection__subtitleFont = [MEMORY[0x277D74300] systemFontOfSize:8.0 weight:*MEMORY[0x277D74418]];

  return MEMORY[0x2821F96F8]();
}

+ (id)textBackgroundImageFittingSize:(void *)a3 forTheme:
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (textBackgroundImageFittingSize_forTheme__onceToken != -1)
  {
    +[ASCOfferButton textBackgroundImageFittingSize:forTheme:];
  }

  v19[0] = v4;
  v6 = [v5 backgroundStyle];
  v19[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  v8 = [textBackgroundImageFittingSize_forTheme__cache objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    [__ASCLayoutProxy offerButtonHeightForSize:v4];
    v12 = v11 + 1.0;
    v13 = [v5 backgroundStyle];
    [v13 cornerRadiusForImageSize:v12 stretchableArea:{v12, 1.0}];
    v15 = v14;

    v16 = [[ASCImageRenderer alloc] initWithSize:1 capInsets:v12 renderingMode:v12, v15, v15, v15, v15];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__ASCOfferButton_textBackgroundImageFittingSize_forTheme___block_invoke_2;
    v18[3] = &__block_descriptor_40_e54_v48__0_CGRect__CGPoint_dd__CGSize_dd__8__CGContext__40l;
    *&v18[4] = v15;
    v10 = [(ASCImageRenderer *)v16 imageWithActions:v18];
    [textBackgroundImageFittingSize_forTheme__cache setObject:v10 forKey:v7];
  }

  return v10;
}

uint64_t __58__ASCOfferButton_textBackgroundImageFittingSize_forTheme___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = textBackgroundImageFittingSize_forTheme__cache;
  textBackgroundImageFittingSize_forTheme__cache = v0;

  [textBackgroundImageFittingSize_forTheme__cache setName:@"Text background image cache"];
  v2 = textBackgroundImageFittingSize_forTheme__cache;

  return [v2 setCountLimit:10];
}

void __58__ASCOfferButton_textBackgroundImageFittingSize_forTheme___block_invoke_2(uint64_t a1, CGContext *a2, double a3, double a4, double a5, double a6)
{
  v7 = CGPathCreateWithRoundedRect(*&a3, *(a1 + 32), *(a1 + 32), 0);
  CGContextSetRGBFillColor(a2, 0.0, 0.0, 0.0, 1.0);
  CGContextAddPath(a2, v7);
  CGContextFillPath(a2);

  CGPathRelease(v7);
}

+ (id)progressStateImageFittingSize:(id)a3 forTheme:(id)a4 startPercent:(double)a5 endPercent:(double)a6 useFullImageSize:(BOOL)a7
{
  v7 = a7;
  v36[7] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize__onceToken != -1)
  {
    +[ASCOfferButton progressStateImageFittingSize:forTheme:startPercent:endPercent:useFullImageSize:];
  }

  v36[0] = v11;
  v13 = MEMORY[0x277CCABB0];
  [v12 progressLineWidth];
  v14 = [v13 numberWithDouble:?];
  v36[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "progressLineCap")}];
  v36[2] = v15;
  v16 = [v12 progressColor];
  v36[3] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v36[4] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
  v36[5] = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v36[6] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:7];

  v21 = [progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize__cache objectForKey:v20];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    [__ASCLayoutProxy offerProgressDiameterForSize:v11];
    v25 = floor((v24 + 1.0 + -1.0) * 0.5);
    if (v7)
    {
      v26 = v24 + 1.0;
    }

    else
    {
      v26 = v24;
    }

    v27 = [[ASCImageRenderer alloc] initWithSize:0 capInsets:v26 renderingMode:v26, v25, v25, v25, v25];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __98__ASCOfferButton_progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize___block_invoke_2;
    v32 = &unk_2781CC920;
    v33 = v12;
    v34 = a5;
    v35 = a6;
    v23 = [(ASCImageRenderer *)v27 imageWithActions:&v29];
    [progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize__cache setObject:v23 forKey:{v20, v29, v30, v31, v32}];
  }

  return v23;
}

uint64_t __98__ASCOfferButton_progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize__cache;
  progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize__cache = v0;

  [progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize__cache setName:@"Progress state image cache"];
  v2 = progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize__cache;

  return [v2 setCountLimit:20];
}

void __98__ASCOfferButton_progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize___block_invoke_2(uint64_t a1, CGContext *a2, double a3, double a4, double a5, double a6)
{
  [*(a1 + 32) progressLineWidth];
  CGContextSetLineWidth(a2, v12);
  CGContextSetLineCap(a2, [*(a1 + 32) progressLineCap]);
  [*(a1 + 32) progressLineWidth];
  ProgressRing = ASCPathCreateProgressRing(a3, a4, a5, a6, v13, *(a1 + 40), *(a1 + 48));
  CGContextAddPath(a2, ProgressRing);
  v15 = [*(a1 + 32) progressColor];
  CGContextSetStrokeColorWithColor(a2, [v15 CGColor]);

  CGContextStrokePath(a2);

  CGPathRelease(ProgressRing);
}

+ (id)progressTransitionImageFittingSize:(void *)a3 forTheme:
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_opt_self() progressStateImageFittingSize:v5 forTheme:v4 startPercent:0 endPercent:0.0 useFullImageSize:1.0];

  return v6;
}

+ (id)indeterminateProgressImageFittingSize:(void *)a3 forTheme:
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_opt_self() progressStateImageFittingSize:v5 forTheme:v4 startPercent:1 endPercent:0.1 useFullImageSize:0.9];

  return v6;
}

+ (id)progressImageWithPercent:(void *)a3 fittingSize:(void *)a4 forTheme:(char)a5 cancellable:
{
  v8 = a4;
  v9 = a3;
  objc_opt_self();
  [__ASCLayoutProxy offerProgressDiameterForSize:v9];
  v11 = v10;

  v12 = [[ASCImageRenderer alloc] initWithSize:v11, v11];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__ASCOfferButton_progressImageWithPercent_fittingSize_forTheme_cancellable___block_invoke;
  v16[3] = &unk_2781CC948;
  v17 = v8;
  v18 = a1;
  v19 = a5;
  v13 = v8;
  v14 = [(ASCImageRenderer *)v12 imageWithActions:v16];

  return v14;
}

void __76__ASCOfferButton_progressImageWithPercent_fittingSize_forTheme_cancellable___block_invoke(uint64_t a1, CGContext *a2, double a3, double a4, double a5, double a6)
{
  [*(a1 + 32) progressLineWidth];
  CGContextSetLineWidth(a2, v12);
  CGContextSetLineCap(a2, [*(a1 + 32) progressLineCap]);
  CGContextSaveGState(a2);
  [*(a1 + 32) progressLineWidth];
  ProgressRing = ASCPathCreateProgressRing(a3, a4, a5, a6, v13, 0.0, 1.0);
  CGContextAddPath(a2, ProgressRing);
  v15 = [*(a1 + 32) progressColor];
  CGContextSetStrokeColorWithColor(a2, [v15 CGColor]);

  CGContextStrokePath(a2);
  CGPathRelease(ProgressRing);
  CGContextRestoreGState(a2);
  CGContextSaveGState(a2);
  [*(a1 + 32) progressLineWidth];
  v17 = ASCPathCreateProgressRing(a3, a4, a5, a6, v16, 0.0, *(a1 + 40));
  CGContextAddPath(a2, v17);
  v18 = [*(a1 + 32) iconTintColor];
  CGContextSetStrokeColorWithColor(a2, [v18 CGColor]);

  CGContextStrokePath(a2);
  CGPathRelease(v17);
  CGContextRestoreGState(a2);
  CGContextSaveGState(a2);
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 48) != 1)
    {
      goto LABEL_10;
    }

    v52.origin.x = a3;
    v52.origin.y = a4;
    v52.size.width = a5;
    v52.size.height = a6;
    Width = CGRectGetWidth(v52);
    v53.origin.x = a3;
    v53.origin.y = a4;
    v53.size.width = a5;
    v53.size.height = a6;
    Height = CGRectGetHeight(v53);
    if (Width >= Height)
    {
      Width = Height;
    }

    [*(a1 + 32) stopIndicatorRatio];
    v22 = floor(Width * v21);
    v23 = floor(v22 / 3.0);
    v54.origin.x = a3;
    v54.origin.y = a4;
    v54.size.width = a5;
    v54.size.height = a6;
    rect = CGRectGetMidX(v54) - v23 - v22 * 0.075;
    v55.origin.x = a3;
    v55.origin.y = a4;
    v55.size.width = a5;
    v55.size.height = a6;
    v24 = CGRectGetMidY(v55) - v22 * 0.5;
    [*(a1 + 32) stopIndicatorCornerSize];
    v26 = v25 * 0.5;
    [*(a1 + 32) stopIndicatorCornerSize];
    v28 = v27 * 0.5;
    v56.origin.x = rect;
    v56.origin.y = v24;
    v56.size.width = v23;
    v29 = v23;
    v56.size.height = v22;
    v30 = CGPathCreateWithRoundedRect(v56, v26, v28, 0);
    v57.origin.x = a3;
    v57.origin.y = a4;
    v57.size.width = a5;
    v57.size.height = a6;
    v31 = CGRectGetMidX(v57) + v22 * 0.075;
    v58.origin.x = a3;
    v58.origin.y = a4;
    v58.size.width = a5;
    v58.size.height = a6;
    v32 = CGRectGetMidY(v58) - v22 * 0.5;
    [*(a1 + 32) stopIndicatorCornerSize];
    v34 = v33 * 0.5;
    [*(a1 + 32) stopIndicatorCornerSize];
    v36 = v35 * 0.5;
    v59.origin.x = v31;
    v59.origin.y = v32;
    v59.size.width = v29;
    v59.size.height = v22;
    v37 = CGPathCreateWithRoundedRect(v59, v34, v36, 0);
    CGContextAddPath(a2, v30);
    CGContextAddPath(a2, v37);
    v38 = [*(a1 + 32) iconTintColor];
    CGContextSetFillColorWithColor(a2, [v38 CGColor]);

    CGContextFillPath(a2);
    CGPathRelease(v30);
  }

  else
  {
    v60.origin.x = a3;
    v60.origin.y = a4;
    v60.size.width = a5;
    v60.size.height = a6;
    v39 = CGRectGetWidth(v60);
    v61.origin.x = a3;
    v61.origin.y = a4;
    v61.size.width = a5;
    v61.size.height = a6;
    v40 = CGRectGetHeight(v61);
    if (v39 >= v40)
    {
      v39 = v40;
    }

    [*(a1 + 32) stopIndicatorRatio];
    v42 = floor(v39 * v41);
    v62.origin.x = a3;
    v62.origin.y = a4;
    v62.size.width = a5;
    v62.size.height = a6;
    v43 = CGRectGetMidX(v62) - v42 * 0.5;
    v63.origin.x = a3;
    v63.origin.y = a4;
    v63.size.width = a5;
    v63.size.height = a6;
    v44 = CGRectGetMidY(v63) - v42 * 0.5;
    [*(a1 + 32) stopIndicatorCornerSize];
    v46 = v45;
    [*(a1 + 32) stopIndicatorCornerSize];
    v48 = v47;
    v64.origin.x = v43;
    v64.origin.y = v44;
    v64.size.width = v42;
    v64.size.height = v42;
    v37 = CGPathCreateWithRoundedRect(v64, v46, v48, 0);
    CGContextAddPath(a2, v37);
    v49 = [*(a1 + 32) iconTintColor];
    CGContextSetFillColorWithColor(a2, [v49 CGColor]);

    CGContextFillPath(a2);
  }

  CGPathRelease(v37);
LABEL_10:

  CGContextRestoreGState(a2);
}

- (ASCOfferButton)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = ASCOfferButton;
  v3 = [(ASCOfferButton *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->_size, @"small");
    v4->_subtitlePosition = 0;
    v5 = +[ASCOfferTheme grayTheme];
    theme = v4->_theme;
    v4->_theme = v5;

    v7 = +[ASCOfferMetadata emptyMetadata];
    metadata = v4->_metadata;
    v4->_metadata = v7;

    v9 = [ASCOfferButtonBackgroundImageView alloc];
    v10 = [(ASCOfferButtonBackgroundImageView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    imageView = v4->_imageView;
    v4->_imageView = v10;

    v4->_fixedHeight = 0;
    v4->_shouldTopAlign = 0;
    v4->_topPadding = 0.0;
    v4->_shouldExpandBackground = 0;
    [(ASCOfferButton *)v4 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ASCOfferButton *)v4 setInsetsLayoutMarginsFromSafeArea:0];
    [(ASCOfferButton *)v4 setPreservesSuperviewLayoutMargins:0];
    [(ASCOfferButtonBackgroundImageView *)v4->_imageView setInsetsLayoutMarginsFromSafeArea:0];
    [(ASCOfferButtonBackgroundImageView *)v4->_imageView setPreservesSuperviewLayoutMargins:0];
    v12 = [(ASCOfferButton *)v4 imageView];
    [(ASCOfferButton *)v4 addSubview:v12];

    v13 = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v14 = objc_opt_self();
    v15 = [v13 arrayByAddingObject:v14];

    v16 = [(ASCOfferButton *)v4 registerForTraitChanges:v15 withAction:sel_onTraitCollectionChange];
  }

  return v4;
}

- (ASCOfferButton)initWithCoder:(id)a3
{
  [(ASCOfferButton *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setTitleLabelIfLoaded:(id)a3
{
  v5 = a3;
  [(UILabel *)self->_titleLabelIfLoaded removeFromSuperview];
  objc_storeStrong(&self->_titleLabelIfLoaded, a3);
  if (self->_titleLabelIfLoaded)
  {
    [(ASCOfferButton *)self addSubview:?];
  }

  [(ASCOfferButton *)self setNeedsLayout];
  [(ASCOfferButton *)self invalidateIntrinsicContentSize];
}

- (UILabel)titleLabel
{
  v3 = [(ASCOfferButton *)self titleLabelIfLoaded];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v5 setNumberOfLines:1];
    [v5 setLineBreakMode:4];
    [v5 setMinimumScaleFactor:0.0];
    [v5 setSemanticContentAttribute:{-[ASCOfferButton semanticContentAttribute](self, "semanticContentAttribute")}];
    [(ASCOfferButton *)self setTitleLabelIfLoaded:v5];
    [(ASCOfferButton *)self updateLabelStyleProperties];
  }

  return v5;
}

- (void)setSubtitleLabelIfLoaded:(id)a3
{
  v5 = a3;
  [(UILabel *)self->_subtitleLabelIfLoaded removeFromSuperview];
  objc_storeStrong(&self->_subtitleLabelIfLoaded, a3);
  if (self->_subtitleLabelIfLoaded)
  {
    [(ASCOfferButton *)self addSubview:?];
  }

  [(ASCOfferButton *)self setNeedsLayout];
  [(ASCOfferButton *)self invalidateIntrinsicContentSize];
}

- (UILabel)subtitleLabel
{
  v3 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = [(ASCOfferButton *)self size];
    v8 = [(ASCOfferButton *)self theme];
    v9 = [(ASCOfferButton *)self traitCollection];
    v10 = +[ASCOfferButton subtitleFontFittingSize:forTheme:compatibleWithTraitCollection:];
    [v5 setFont:v10];

    v11 = [v5 font];
    [v5 set_fontForShortcutBaselineCalculation:v11];

    [v5 setNumberOfLines:3];
    [v5 setLineBreakMode:0];
    [v5 setSemanticContentAttribute:{-[ASCOfferButton semanticContentAttribute](self, "semanticContentAttribute")}];
    [(ASCOfferButton *)self setSubtitleLabelIfLoaded:v5];
    [(ASCOfferButton *)self updateLabelStyleProperties];
  }

  return v5;
}

- (void)updateImageStyleProperties
{
  v3 = 1.0;
  if (([(ASCOfferButton *)self isEnabled]& 1) == 0)
  {
    objc_opt_self();
    v3 = 0.6;
  }

  v4 = [(ASCOfferButton *)self imageView];
  [v4 setAlpha:v3];

  v5 = [(ASCOfferButton *)self metadata];
  v6 = [v5 isEmpty];

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = [(ASCOfferButton *)self metadata];
  v8 = [v7 isIcon];

  if (v8)
  {
    v9 = [(ASCOfferButton *)self theme];
    v10 = [v9 iconTintColor];
    v11 = [(ASCOfferButton *)self imageView];
    [v11 setTintColor:v10];

    v12 = self->_metadata;
    v46 = [(ASCOfferButton *)self size];
    v13 = [(ASCOfferMetadata *)v12 imageNameForSize:v46];

    v14 = [(ASCOfferButton *)self traitCollection];
    v15 = [ASCImageRenderer bundleImageNamed:v13 compatibleWithTraitCollection:v14];
    v16 = [(ASCOfferButton *)self imageView];
    [v16 setImage:v15];

    goto LABEL_21;
  }

  v17 = [(ASCOfferButton *)self metadata];
  v18 = [v17 isProgress];

  if (v18)
  {
    v46 = self->_metadata;
    v19 = [(ASCOfferButton *)self theme];
    v20 = [v19 iconTintColor];
    v21 = [(ASCOfferButton *)self imageView];
    [v21 setTintColor:v20];

    if ([(ASCOfferMetadata *)v46 isIndeterminate])
    {
      v22 = [(ASCOfferButton *)self size];
      v23 = [(ASCOfferButton *)self theme];
      [ASCOfferButton indeterminateProgressImageFittingSize:v22 forTheme:v23];
    }

    else
    {
      [(ASCOfferMetadata *)v46 percent];
      v26 = v25;
      v22 = [(ASCOfferButton *)self size];
      v23 = [(ASCOfferButton *)self theme];
      [(ASCOfferButton *)v26 progressImageWithPercent:v22 fittingSize:v23 forTheme:[(ASCOfferMetadata *)v46 cancellable] cancellable:?];
    }
    v27 = ;
    v28 = [(ASCOfferButton *)self imageView];
    [v28 setImage:v27];
LABEL_14:

    goto LABEL_21;
  }

  v24 = [(ASCOfferButton *)self metadata];
  if ([v24 isText])
  {
  }

  else
  {
    v29 = [(ASCOfferButton *)self metadata];
    v30 = [v29 isPlaceholder];

    if (!v30)
    {
      v40 = [(ASCOfferButton *)self metadata];
      v41 = [v40 isDeeplink];

      if (!v41)
      {
        v43 = [(ASCOfferButton *)self metadata];
        v44 = [v43 isViewInAppStore];

        if (!v44)
        {
          v45 = [(ASCOfferButton *)self metadata];
          ASCUnknownEnumCase(@"ASCOfferMetadata", v45);
        }

LABEL_4:
        v46 = [(ASCOfferButton *)self imageView];
        [(ASCOfferMetadata *)v46 setTintColor:0];
        goto LABEL_21;
      }

      v46 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.forward.app.fill"];
      v22 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918]];
      v23 = [(ASCOfferMetadata *)v46 imageWithSymbolConfiguration:v22];
      v42 = [(ASCOfferButton *)self imageView];
      [v42 setImage:v23];

      v27 = [MEMORY[0x277D75348] secondaryLabelColor];
      v28 = [(ASCOfferButton *)self imageView];
      [v28 setTintColor:v27];
      goto LABEL_14;
    }
  }

  v31 = [(ASCOfferButton *)self isHighlighted];
  v32 = [(ASCOfferButton *)self theme];
  v33 = [v32 titleBackgroundColor];
  v34 = v33;
  v35 = v33;
  if (v31)
  {
    v35 = [v33 asc_highlightedColor];
  }

  v36 = [(ASCOfferButton *)self imageView];
  [v36 setTintColor:v35];

  if (v31)
  {
  }

  v46 = [(ASCOfferButton *)self size];
  v37 = [(ASCOfferButton *)self theme];
  v38 = [ASCOfferButton textBackgroundImageFittingSize:v46 forTheme:v37];
  v39 = [(ASCOfferButton *)self imageView];
  [v39 setImage:v38];

LABEL_21:
}

- (void)updateLabelStyleProperties
{
  v3 = [a1 subtitleLabelIfLoaded];
  [v3 setTextAlignment:a2];
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ASCOfferButton;
  [(ASCOfferButton *)&v4 setEnabled:a3];
  [(ASCOfferButton *)self updateImageStyleProperties];
  [(ASCOfferButton *)self updateLabelStyleProperties];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ASCOfferButton;
  [(ASCOfferButton *)&v4 setHighlighted:a3];
  [(ASCOfferButton *)self updateImageStyleProperties];
  [(ASCOfferButton *)self updateLabelStyleProperties];
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = ASCOfferButton;
  [(ASCOfferButton *)&v8 setSemanticContentAttribute:?];
  v5 = [(ASCOfferButton *)self imageView];
  [v5 setSemanticContentAttribute:a3];

  v6 = [(ASCOfferButton *)self titleLabelIfLoaded];
  [v6 setSemanticContentAttribute:a3];

  v7 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
  [v7 setSemanticContentAttribute:a3];
}

- (void)updateVisualEffects
{
  v3 = [(ASCOfferButton *)self focusEffect];
  [(ASCOfferButton *)self setFocusEffect:v3];

  [(ASCOfferButton *)self updateFocusIfNeeded];
}

- (id)focusEffect
{
  v2 = [(ASCOfferButton *)self imageView];
  [v2 frame];
  v4 = v3 + -1.0;
  v6 = v5 + -1.0;
  v8 = v7 + 2.0;
  v10 = v9 + 2.0;

  v11 = floor(v10 * 0.5);
  v12 = MEMORY[0x277D75508];
  v13 = *MEMORY[0x277CDA138];

  return [v12 effectWithRoundedRect:v13 cornerRadius:v4 curve:{v6, v8, v10, v11}];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = ASCOfferButton;
  v6 = a3;
  [(ASCOfferButton *)&v8 pressesBegan:v6 withEvent:a4];
  v7 = [v6 objectsPassingTest:{&__block_literal_global_52, v8.receiver, v8.super_class}];

  if ([v7 count])
  {
    [(ASCOfferButton *)self setHighlighted:1];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = ASCOfferButton;
  v6 = a3;
  [(ASCOfferButton *)&v8 pressesEnded:v6 withEvent:a4];
  v7 = [v6 objectsPassingTest:{&__block_literal_global_56, v8.receiver, v8.super_class}];

  if ([v7 count])
  {
    [(ASCOfferButton *)self setHighlighted:0];
    if ([(ASCOfferButton *)self isUserInteractionEnabled])
    {
      [(ASCOfferButton *)self sendActionsForControlEvents:64];
    }
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = ASCOfferButton;
  v6 = a3;
  [(ASCOfferButton *)&v8 pressesCancelled:v6 withEvent:a4];
  v7 = [v6 objectsPassingTest:{&__block_literal_global_60, v8.receiver, v8.super_class}];

  if ([v7 count])
  {
    [(ASCOfferButton *)self setHighlighted:0];
  }
}

- (void)setSubtitlePosition:(int64_t)a3
{
  if (self->_subtitlePosition != a3)
  {
    self->_subtitlePosition = a3;
    [(ASCOfferButton *)self updateLabelStyleProperties];
    [(ASCOfferButton *)self invalidateIntrinsicContentSize];

    [(ASCOfferButton *)self setNeedsLayout];
  }
}

- (void)setTheme:(id)a3
{
  v5 = a3;
  if (![(ASCOfferTheme *)self->_theme isEqual:?])
  {
    objc_storeStrong(&self->_theme, a3);
    [(ASCOfferButton *)self updateImageStyleProperties];
    [(ASCOfferButton *)self updateLabelStyleProperties];
  }
}

- (void)setMetadata:(id)a3
{
  v54 = a3;
  if (([(ASCOfferMetadata *)self->_metadata isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_metadata, a3);
    if ([(ASCOfferMetadata *)self->_metadata isEmpty])
    {
      v5 = [(ASCOfferButton *)self titleLabelIfLoaded];
      [v5 setText:0];

      v6 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
      [v6 setText:0];

      [(ASCOfferButton *)self setImageAnimation:0];
      v7 = [(ASCOfferButton *)self imageView];
      [v7 setImage:0];
LABEL_4:

      v8 = [(ASCOfferButton *)self imageView];
      v9 = v8;
      v10 = 0;
LABEL_5:
      [(ASCOfferMetadata *)v8 setIsBackgroundForText:v10];
LABEL_21:

      [(ASCOfferButton *)self updateImageStyleProperties];
      [(ASCOfferButton *)self updateLabelStyleProperties];
      [(ASCOfferButton *)self setNeedsLayout];
      [(ASCOfferButton *)self invalidateIntrinsicContentSize];
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
      goto LABEL_22;
    }

    v11 = [(ASCOfferMetadata *)self->_metadata isText];
    metadata = self->_metadata;
    if (v11)
    {
      v9 = metadata;
      v13 = MEMORY[0x277CCA898];
      v14 = [(ASCOfferMetadata *)v9 title];
      v15 = [(ASCOfferButton *)self traitCollection];
      v16 = [v13 asc_attributedStringWithLockupTextContainingSymbols:v14 compatibleWithTraitCollection:v15];
      v17 = [(ASCOfferButton *)self titleLabel];
      [v17 setAttributedText:v16];

      v18 = [(ASCOfferMetadata *)v9 subtitle];

      if (v18)
      {
        v19 = [(ASCOfferMetadata *)v9 subtitle];
        v20 = [(ASCOfferButton *)self subtitleLabel];
        [v20 setText:v19];
      }

      else
      {
        v19 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
        [v19 setText:0];
      }

      [(ASCOfferButton *)self setImageAnimation:0];
      v40 = [(ASCOfferButton *)self imageView];
      [v40 setContentMode:0];

      v37 = [(ASCOfferButton *)self imageView];
      v38 = v37;
      v39 = 1;
LABEL_20:
      [v37 setIsBackgroundForText:v39];

      goto LABEL_21;
    }

    v21 = [(ASCOfferMetadata *)metadata isIcon];
    v22 = self->_metadata;
    if (v21)
    {
      v23 = v22;
      v24 = [(ASCOfferButton *)self titleLabelIfLoaded];
      [v24 setText:0];

      v25 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
      [v25 setText:0];

      v26 = [(ASCOfferMetadata *)v23 animationName];

      v27 = ASCOfferMetadataAnimationForName(v26);
      [(ASCOfferButton *)self setImageAnimation:v27];

      v7 = [(ASCOfferButton *)self imageView];
      [v7 setContentMode:4];
      goto LABEL_4;
    }

    v28 = [(ASCOfferMetadata *)v22 isProgress];
    v29 = self->_metadata;
    if (v28)
    {
      v9 = v29;
      v30 = [(ASCOfferButton *)self titleLabelIfLoaded];
      [v30 setText:0];

      v31 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
      [v31 setText:0];

      v32 = [(ASCOfferMetadata *)v9 isIndeterminate];
      v33 = &ASCOfferMetadataAnimationNameRotate;
      if (!v32)
      {
        v33 = ASCOfferMetadataAnimationNameNone;
      }

      v34 = ASCOfferMetadataAnimationForName(*v33);
      [(ASCOfferButton *)self setImageAnimation:v34];

      if ([(ASCOfferMetadata *)v9 isIndeterminate])
      {
        v35 = 0;
      }

      else
      {
        v35 = 4;
      }

      v36 = [(ASCOfferButton *)self imageView];
      [v36 setContentMode:v35];

      v37 = [(ASCOfferButton *)self imageView];
      v38 = v37;
      v39 = 0;
      goto LABEL_20;
    }

    if ([(ASCOfferMetadata *)v29 isPlaceholder])
    {
      v41 = [(ASCOfferButton *)self titleLabel];
      [v41 setText:0];

      v42 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
      [v42 setText:0];

      [(ASCOfferButton *)self setImageAnimation:0];
      v43 = [(ASCOfferButton *)self imageView];
      v44 = v43;
      v45 = 0;
    }

    else
    {
      if (![(ASCOfferMetadata *)self->_metadata isDeeplink])
      {
        if (![(ASCOfferMetadata *)self->_metadata isViewInAppStore])
        {
          ASCUnknownEnumCase(@"ASCOfferMetadata", v54);
        }

        v48 = MEMORY[0x277CCA898];
        v49 = [(ASCOfferMetadata *)self->_metadata title];
        v50 = [(ASCOfferButton *)self traitCollection];
        v51 = [v48 asc_attributedStringWithLockupTextContainingSymbols:v49 compatibleWithTraitCollection:v50];
        v52 = [(ASCOfferButton *)self titleLabel];
        [v52 setAttributedText:v51];

        v53 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
        [v53 setText:0];

        [(ASCOfferButton *)self setImageAnimation:0];
        v44 = [(ASCOfferButton *)self imageView];
        [v44 setImage:0];
        goto LABEL_32;
      }

      v46 = [(ASCOfferButton *)self titleLabel];
      [v46 setText:0];

      v47 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
      [v47 setText:0];

      [(ASCOfferButton *)self setImageAnimation:0];
      v43 = [(ASCOfferButton *)self imageView];
      v44 = v43;
      v45 = 4;
    }

    [v43 setContentMode:v45];
LABEL_32:

    v8 = [(ASCOfferButton *)self imageView];
    v9 = v8;
    v10 = 1;
    goto LABEL_5;
  }

LABEL_22:
}

- (void)beginModalStateWithCancelBlock:(id)a3
{
  v4 = a3;
  v5 = [[ASCModalViewInteraction alloc] initWithView:self];
  [(ASCOfferButton *)self setModalInteraction:v5];

  v6 = [(ASCOfferButton *)self modalInteraction];
  [v6 installWithCancelBlock:v4];
}

- (void)endModalState
{
  v3 = [(ASCOfferButton *)self modalInteraction];
  [v3 invalidate];

  [(ASCOfferButton *)self setModalInteraction:0];
}

- (CAAnimation)imageAnimation
{
  v2 = [(ASCOfferButton *)self imageView];
  v3 = [v2 layer];
  objc_opt_self();
  v4 = [v3 animationForKey:@"ASCOfferButton.imageAnimation"];

  return v4;
}

- (void)setImageAnimation:(id)a3
{
  v8 = a3;
  v4 = [(ASCOfferButton *)self imageView];
  v5 = [v4 layer];
  objc_opt_self();
  [v5 removeAnimationForKey:@"ASCOfferButton.imageAnimation"];

  if (v8)
  {
    v6 = [(ASCOfferButton *)self imageView];
    v7 = [v6 layer];
    objc_opt_self();
    [v7 addAnimation:v8 forKey:@"ASCOfferButton.imageAnimation"];
  }
}

- (void)setCurrentTransition:(id)a3
{
  v7 = a3;
  currentTransition = self->_currentTransition;
  if (currentTransition && [(UIViewPropertyAnimator *)currentTransition state]== 1)
  {
    [(UIViewPropertyAnimator *)self->_currentTransition stopAnimation:0];
    [(UIViewPropertyAnimator *)self->_currentTransition finishAnimationAtPosition:0];
  }

  objc_storeStrong(&self->_currentTransition, a3);
  v6 = self->_currentTransition;
  if (v6)
  {
    [(UIViewPropertyAnimator *)v6 startAnimation];
  }
}

- (BOOL)canTransitionToMetadata:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D75D18] areAnimationsEnabled] && (-[ASCOfferButton isHidden](self, "isHidden") & 1) == 0)
  {
    v6 = [(ASCOfferButton *)self metadata];
    if ([v6 isEqual:v4])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v7 = [(ASCOfferButton *)self metadata];
      if ([v7 isEmpty] & 1) != 0 || (objc_msgSend(v4, "isEmpty"))
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v8 = [(ASCOfferButton *)self metadata];
        if ([v8 isProgress] && (objc_msgSend(v4, "isProgress") & 1) != 0)
        {
          LOBYTE(v5) = 0;
        }

        else
        {
          v9 = [(ASCOfferButton *)self metadata];
          if ([v9 isPlaceholder])
          {
            LOBYTE(v5) = 0;
          }

          else
          {
            v5 = [v4 isPlaceholder] ^ 1;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldTransitionImageViewFromMetadata:(id)a3 toMetadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEmpty] && (objc_msgSend(v6, "isEmpty") & 1) != 0 || objc_msgSend(v5, "isText") && (objc_msgSend(v6, "isText") & 1) != 0)
  {
    LOBYTE(v7) = 0;
  }

  else if ([v5 isIcon] && objc_msgSend(v6, "isIcon"))
  {
    v8 = v6;
    v9 = [v5 animationName];
    v10 = [v8 animationName];
    v11 = v10;
    if (v9 && v10)
    {
      v12 = [v9 isEqual:v10];
    }

    else
    {
      v12 = v9 == v10;
    }

    LOBYTE(v7) = v12 ^ 1;
  }

  else
  {
    v7 = [v6 isViewInAppStore] ^ 1;
  }

  return v7;
}

- (BOOL)chainTransitionToMetadata:(id)a3 scalingDurationBy:(double)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ASCOfferButton *)self currentTransition];
  if (v10 && (v11 = v10, -[ASCOfferButton currentTransition](self, "currentTransition"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 state], v12, v11, v13 == 1))
  {
    v14 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:1];
    v15 = [(ASCOfferButton *)self currentTransition];
    [v15 pauseAnimation];

    objc_initWeak(&location, self);
    v16 = [(ASCOfferButton *)self currentTransition];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__ASCOfferButton_chainTransitionToMetadata_scalingDurationBy_withCompletion___block_invoke;
    v20[3] = &unk_2781CC990;
    objc_copyWeak(v23, &location);
    v21 = v8;
    *&v23[1] = a4 * 0.7;
    v22 = v9;
    [v16 addCompletion:v20];

    v17 = [(ASCOfferButton *)self currentTransition];
    [v17 continueAnimationWithTimingParameters:v14 durationFactor:a4 * 0.3];

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __77__ASCOfferButton_chainTransitionToMetadata_scalingDurationBy_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained transitionToMetadata:*(a1 + 32) scalingDurationBy:*(a1 + 40) withCompletion:*(a1 + 56)];
  }
}

- (id)transitionImageForMetadata:(id)a3
{
  v4 = a3;
  v5 = [(ASCOfferButton *)self metadata];
  if ([v5 isProgress] && objc_msgSend(v4, "isText") || objc_msgSend(v5, "isText") && objc_msgSend(v4, "isProgress") && (objc_msgSend(v4, "isIndeterminate") & 1) == 0)
  {
    v6 = [(ASCOfferButton *)self size];
    v8 = [(ASCOfferButton *)self theme];
    v7 = [ASCOfferButton progressTransitionImageFittingSize:v6 forTheme:v8];
  }

  else
  {
    v6 = [(ASCOfferButton *)self imageView];
    v7 = [v6 image];
  }

  return v7;
}

- (id)transitionColorForMetadata:(id)a3
{
  v4 = a3;
  v5 = [(ASCOfferButton *)self metadata];
  if (([v5 isText] & 1) != 0 || objc_msgSend(v4, "isText"))
  {
    v6 = [(ASCOfferButton *)self theme];
    v7 = [v6 titleBackgroundColor];
LABEL_9:
    v8 = v7;

    goto LABEL_10;
  }

  if (([v5 isIcon] & 1) != 0 || (objc_msgSend(v4, "isIcon") & 1) != 0 || (objc_msgSend(v5, "isProgress") & 1) != 0 || objc_msgSend(v4, "isProgress"))
  {
    v6 = [(ASCOfferButton *)self theme];
    v7 = [v6 iconTintColor];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)transitionToMetadata:(id)a3 scalingDurationBy:(double)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(ASCOfferButton *)self canTransitionToMetadata:v8])
  {
    if (![(ASCOfferButton *)self chainTransitionToMetadata:v8 scalingDurationBy:v9 withCompletion:a4])
    {
      v10 = [(ASCOfferButton *)self imageView];
      v11 = [(ASCOfferButton *)self transitionImageForMetadata:v8];
      v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
      [v10 alpha];
      [v12 setAlpha:?];
      [v12 setContentMode:0];
      [v10 frame];
      [v12 setFrame:?];
      v13 = [(ASCOfferButton *)self transitionColorForMetadata:v8];
      [v12 setTintColor:v13];

      [v12 setSemanticContentAttribute:{-[ASCOfferButton semanticContentAttribute](self, "semanticContentAttribute")}];
      [(ASCOfferButton *)self addSubview:v12];
      v14 = objc_alloc(MEMORY[0x277D75D40]);
      v15 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:0];
      v16 = [v14 initWithDuration:v15 timingParameters:a4 * 0.3];

      v17 = [(ASCOfferButton *)self metadata];
      [(ASCOfferButton *)self setMetadata:v8];
      [(ASCOfferButton *)self layoutIfNeeded];
      v18 = [(ASCOfferButton *)self imageAnimation];
      [(ASCOfferButton *)self setImageAnimation:0];
      if ([(ASCOfferButton *)self shouldTransitionImageViewFromMetadata:v17 toMetadata:v8])
      {
        [v10 alpha];
        v20 = v19;
        [v10 setAlpha:0.0];
        [v10 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        [v12 frame];
        [v10 setFrame:?];
        [(ASCOfferButton *)self updateVisualEffects];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __72__ASCOfferButton_transitionToMetadata_scalingDurationBy_withCompletion___block_invoke;
        v42[3] = &unk_2781CC9B8;
        v45 = v20;
        v46 = v22;
        v47 = v24;
        v48 = v26;
        v49 = v28;
        v43 = v10;
        v44 = self;
        [v16 addAnimations:v42];
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __72__ASCOfferButton_transitionToMetadata_scalingDurationBy_withCompletion___block_invoke_2;
      v38[3] = &unk_2781CB9D8;
      v29 = v12;
      v39 = v29;
      v40 = v10;
      v41 = self;
      v30 = v10;
      [v16 addAnimations:v38];
      v31 = [(ASCOfferButton *)self delegate];
      [v31 offerButton:self willTransitionToMetadata:v8 usingAnimator:v16];

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __72__ASCOfferButton_transitionToMetadata_scalingDurationBy_withCompletion___block_invoke_3;
      v34[3] = &unk_2781CC9E0;
      v34[4] = self;
      v35 = v18;
      v36 = v29;
      v37 = v9;
      v32 = v29;
      v33 = v18;
      [v16 addCompletion:v34];
      [(ASCOfferButton *)self setCurrentTransition:v16];
    }
  }

  else
  {
    [(ASCOfferButton *)self setMetadata:v8];
    if (v9)
    {
      v9[2](v9);
    }
  }
}

uint64_t __72__ASCOfferButton_transitionToMetadata_scalingDurationBy_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 40);

  return [v2 updateVisualEffects];
}

uint64_t __72__ASCOfferButton_transitionToMetadata_scalingDurationBy_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 40) frame];
  [*(a1 + 32) setFrame:?];
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 48);

  return [v2 updateVisualEffects];
}

uint64_t __72__ASCOfferButton_transitionToMetadata_scalingDurationBy_withCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setCurrentTransition:0];
  [*(a1 + 32) setImageAnimation:*(a1 + 40)];
  [*(a1 + 48) removeFromSuperview];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)transitionToMetadata:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __54__ASCOfferButton_transitionToMetadata_withCompletion___block_invoke;
  v13 = &unk_2781CCA08;
  v14 = self;
  v15 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x216070C30](&v10);
  [(ASCOfferButton *)self transitionToMetadata:v8 scalingDurationBy:v9 withCompletion:1.0, v10, v11, v12, v13, v14];
}

uint64_t __54__ASCOfferButton_transitionToMetadata_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateVisualEffects];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)onTraitCollectionChange
{
  v3 = [(ASCOfferButton *)self metadata];
  v4 = [v3 isProgress];

  v5 = [(ASCOfferButton *)self metadata];
  v18 = v5;
  if (v4)
  {
    v6 = [v5 cancellable];
    if ([v18 isIndeterminate])
    {
      v7 = [(ASCOfferButton *)self size];
      v8 = [(ASCOfferButton *)self theme];
      [ASCOfferButton indeterminateProgressImageFittingSize:v7 forTheme:v8];
    }

    else
    {
      [v18 percent];
      v10 = v9;
      v7 = [(ASCOfferButton *)self size];
      v8 = [(ASCOfferButton *)self theme];
      [(ASCOfferButton *)v10 progressImageWithPercent:v7 fittingSize:v8 forTheme:v6 cancellable:?];
    }
    v11 = ;
    v12 = [(ASCOfferButton *)self imageView];
    [v12 setImage:v11];

    v13 = [(ASCOfferButton *)self imageView];
    [v13 setIsBackgroundForText:0];
  }

  else
  {
    if ([v5 isText])
    {
    }

    else
    {
      v14 = [(ASCOfferButton *)self metadata];
      v15 = [v14 isPlaceholder];

      if (!v15)
      {
        v16 = [(ASCOfferButton *)self metadata];
        v17 = [v16 isViewInAppStore];

        if (!v17)
        {
          return;
        }
      }
    }

    [(ASCOfferButton *)self updateLabelStyleProperties];

    [(ASCOfferButton *)self setNeedsLayout];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 view];
    v9 = v8 == self || [v7 numberOfTouchesRequired] != 1 || objc_msgSend(v7, "numberOfTapsRequired") != 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)makeLayout
{
  v3 = [(ASCOfferButton *)self metadata];
  v4 = [v3 isEmpty];

  if (v4)
  {
    v5 = [(ASCOfferButton *)self imageView];
    v6 = [(ASCOfferButton *)self titleLabelIfLoaded];
    v7 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
    v8 = [__ASCLayoutProxy offerEmptyLayoutWithImageView:v5 titleView:v6 subtitleView:v7];

    goto LABEL_16;
  }

  v9 = [(ASCOfferButton *)self metadata];
  if ([v9 isText])
  {

LABEL_6:
    v12 = [(ASCOfferButton *)self subtitlePosition]== 1;
    v5 = [(ASCOfferButton *)self size];
    v13 = [(ASCOfferButton *)self imageView];
    v14 = [(ASCOfferButton *)self titleLabel];
    v15 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
    v16 = [(ASCOfferButton *)self shouldTopAlign];
    [(ASCOfferButton *)self topPadding];
    v18 = v17;
    LOBYTE(v31) = [(ASCOfferButton *)self shouldExpandBackground];
    v19 = [__ASCLayoutProxy offerTextLayoutForSize:v5 titleBackgroundView:v13 titleView:v14 subtitleView:v15 hasTrailingSubtitle:v12 shouldTopAlign:v16 topPadding:v18 shouldExpandBackground:v31];
LABEL_15:
    v8 = v19;

    goto LABEL_16;
  }

  v10 = [(ASCOfferButton *)self metadata];
  v11 = [v10 isPlaceholder];

  if (v11)
  {
    goto LABEL_6;
  }

  v20 = [(ASCOfferButton *)self metadata];
  if ([v20 isIcon])
  {

LABEL_10:
    v23 = [(ASCOfferButton *)self subtitlePosition]== 1 || [(ASCOfferButton *)self subtitlePosition]== 2;
    v5 = [(ASCOfferButton *)self size];
    v13 = [(ASCOfferButton *)self imageView];
    v14 = [(ASCOfferButton *)self titleLabelIfLoaded];
    v15 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
    v24 = [(ASCOfferButton *)self shouldTopAlign];
    [(ASCOfferButton *)self topPadding];
    LOBYTE(v31) = 0;
LABEL_14:
    v19 = [__ASCLayoutProxy offerIconLayoutForSize:v5 imageView:v13 titleView:v14 subtitleView:v15 hasTrailingSubtitle:v23 shouldTopAlign:v24 topPadding:v31 shouldTrailingAlign:?];
    goto LABEL_15;
  }

  v21 = [(ASCOfferButton *)self metadata];
  v22 = [v21 isProgress];

  if (v22)
  {
    goto LABEL_10;
  }

  v26 = [(ASCOfferButton *)self metadata];
  v27 = [v26 isDeeplink];

  if (v27)
  {
    v23 = 1;
    if ([(ASCOfferButton *)self subtitlePosition]!= 1)
    {
      v23 = [(ASCOfferButton *)self subtitlePosition]== 2;
    }

    v5 = [(ASCOfferButton *)self size];
    v13 = [(ASCOfferButton *)self imageView];
    v14 = [(ASCOfferButton *)self titleLabelIfLoaded];
    v15 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
    v24 = [(ASCOfferButton *)self shouldTopAlign];
    [(ASCOfferButton *)self topPadding];
    LOBYTE(v31) = 1;
    goto LABEL_14;
  }

  v28 = [(ASCOfferButton *)self metadata];
  v29 = [v28 isViewInAppStore];

  if (!v29)
  {
    v30 = [(ASCOfferButton *)self metadata];
    ASCUnknownEnumCase(@"ASCOfferMetadata", v30);
  }

  v5 = [(ASCOfferButton *)self titleLabel];
  v8 = [__ASCLayoutProxy offerDisclosureLayoutWithDisclosureIndicator:v5];
LABEL_16:

  return v8;
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = ASCOfferButton;
  [(ASCOfferButton *)&v4 invalidateIntrinsicContentSize];
  if ([(ASCOfferButton *)self translatesAutoresizingMaskIntoConstraints])
  {
    v3 = [(ASCOfferButton *)self superview];
    [v3 invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(ASCOfferButton *)self sizeThatFits:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ASCOfferButton *)self makeLayout];
  v7 = [(UIView *)self asc_layoutTraitEnvironment];
  [v6 measuredSizeFittingSize:v7 inTraitEnvironment:{width, height}];
  v9 = v8;
  v11 = v10;

  if ([(ASCOfferButton *)self isFixedHeight])
  {
    v12 = [(ASCOfferButton *)self size];
    [__ASCLayoutProxy offerButtonFixedHeightForSize:v12];
    v11 = v13;
  }

  v14 = v9;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v3 = [(ASCOfferButton *)self makeLayout];
  v4 = [(UIView *)self asc_layoutTraitEnvironment];
  [v3 alignmentInsetsInTraitEnvironment:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = ASCOfferButton;
  [(ASCOfferButton *)&v21 layoutSubviews];
  v3 = [(ASCOfferButton *)self makeLayout];
  [(ASCOfferButton *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(ASCOfferButton *)self layoutMargins];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);
  v20 = [(UIView *)self asc_layoutTraitEnvironment];
  [v3 placeChildrenRelativeToRect:v20 inTraitEnvironment:{v13, v15, v17, v19}];
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCOfferButton *)self theme];
  [(ASCDescriber *)v3 addObject:v4 withName:@"theme"];

  v5 = [(ASCOfferButton *)self metadata];
  [(ASCDescriber *)v3 addObject:v5 withName:@"metadata"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

- (ASCOfferButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end