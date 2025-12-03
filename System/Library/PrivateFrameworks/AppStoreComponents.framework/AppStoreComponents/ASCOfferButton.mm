@interface ASCOfferButton
+ (id)indeterminateProgressImageFittingSize:(void *)size forTheme:;
+ (id)progressImageWithPercent:(void *)percent fittingSize:(void *)size forTheme:(char)theme cancellable:;
+ (id)progressStateImageFittingSize:(id)size forTheme:(id)theme startPercent:(double)percent endPercent:(double)endPercent useFullImageSize:(BOOL)imageSize;
+ (id)progressTransitionImageFittingSize:(void *)size forTheme:;
+ (id)smallTitleFontForText:(id)text compatibleWithTraitCollection:(id)collection;
+ (id)subtitleFontFittingSize:forTheme:compatibleWithTraitCollection:;
+ (id)textBackgroundImageFittingSize:(void *)size forTheme:;
+ (id)titleFontForText:(void *)text fittingSize:(void *)size representingMetadata:(void *)metadata compatibleWithTraitCollection:;
- (ASCOfferButton)initWithCoder:(id)coder;
- (ASCOfferButton)initWithFrame:(CGRect)frame;
- (ASCOfferButtonDelegate)delegate;
- (BOOL)accessibilityActivate;
- (BOOL)canTransitionToMetadata:(id)metadata;
- (BOOL)chainTransitionToMetadata:(id)metadata scalingDurationBy:(double)by withCompletion:(id)completion;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldTransitionImageViewFromMetadata:(id)metadata toMetadata:(id)toMetadata;
- (CAAnimation)imageAnimation;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)alignmentRectInsets;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (id)focusEffect;
- (id)makeLayout;
- (id)transitionColorForMetadata:(id)metadata;
- (id)transitionImageForMetadata:(id)metadata;
- (unint64_t)accessibilityTraits;
- (void)beginModalStateWithCancelBlock:(id)block;
- (void)endModalState;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)onTraitCollectionChange;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setCurrentTransition:(id)transition;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageAnimation:(id)animation;
- (void)setMetadata:(id)metadata;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setSize:(id)size;
- (void)setSubtitleLabelIfLoaded:(id)loaded;
- (void)setSubtitlePosition:(int64_t)position;
- (void)setTheme:(id)theme;
- (void)setTitleLabelIfLoaded:(id)loaded;
- (void)transitionToMetadata:(id)metadata scalingDurationBy:(double)by withCompletion:(id)completion;
- (void)transitionToMetadata:(id)metadata withCompletion:(id)completion;
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
  isEnabled = [(ASCOfferButton *)self isEnabled];
  v5 = *MEMORY[0x277D76580];
  if (isEnabled)
  {
    v5 = 0;
  }

  return v3 | v5;
}

- (id)accessibilityLabel
{
  metadata = [(ASCOfferButton *)self metadata];
  if ([metadata isEmpty])
  {
    goto LABEL_2;
  }

  if (![metadata isIcon])
  {
    if ([metadata isProgress])
    {
      v11 = @"AX_OFFER_BUTTON_LABEL_LOADING";
    }

    else
    {
      if ([metadata isText])
      {
        v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
        titleLabelIfLoaded = [(ASCOfferButton *)self titleLabelIfLoaded];

        if (titleLabelIfLoaded)
        {
          titleLabelIfLoaded2 = [(ASCOfferButton *)self titleLabelIfLoaded];
          [v5 addObject:titleLabelIfLoaded2];
        }

        subtitleLabelIfLoaded = [(ASCOfferButton *)self subtitleLabelIfLoaded];

        if (subtitleLabelIfLoaded)
        {
          subtitleLabelIfLoaded2 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
          [v5 addObject:subtitleLabelIfLoaded2];
        }

        v9 = ASCAXLabelForElements(v5);
        goto LABEL_16;
      }

      if ([metadata isPlaceholder])
      {
LABEL_2:
        v4 = 0;
        goto LABEL_18;
      }

      if ([metadata isDeeplink])
      {
        v11 = @"AX_OFFER_BUTTON_LABEL_DEEPLINK";
      }

      else
      {
        if (![metadata isViewInAppStore])
        {
          ASCUnknownEnumCase(@"ASCOfferMetadata", metadata);
        }

        v11 = @"AX_OFFER_BUTTON_LABEL_VIEW_IN_APP_STORE";
      }
    }

    v4 = ASCLocalizedString(v11, v10);
    goto LABEL_18;
  }

  v5 = metadata;
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
  metadata = [(ASCOfferButton *)self metadata];
  if ([metadata isProgress])
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
  metadata = [(ASCOfferButton *)self metadata];
  if ([metadata isProgress])
  {
    v3 = metadata;
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
  isEnabled = [(ASCOfferButton *)self isEnabled];
  if (isEnabled)
  {
    [(ASCOfferButton *)self sendActionsForControlEvents:64];
  }

  return isEnabled;
}

- (void)setSize:(id)size
{
  sizeCopy = size;
  v5 = self->_size;
  if (!sizeCopy || !v5)
  {

    if (v5 == sizeCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(NSString *)v5 isEqual:sizeCopy];

  if ((v6 & 1) == 0)
  {
LABEL_6:
    objc_storeStrong(&self->_size, size);
    [(ASCOfferButton *)self updateImageStyleProperties];
    [(ASCOfferButton *)self updateLabelStyleProperties];
    [(ASCOfferButton *)self invalidateIntrinsicContentSize];
    [(ASCOfferButton *)self setNeedsLayout];
  }

LABEL_7:
}

+ (id)smallTitleFontForText:(id)text compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = [text length];
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

  v9 = ASCFontPointSizesResolve(collectionCopy, v8 + 13.0, v8 + 15.0, v8 + 18.0, v8 + 18.0);

  if (!smallTitleFontForText_compatibleWithTraitCollection__titleFont || ([smallTitleFontForText_compatibleWithTraitCollection__titleFont pointSize], v10 != v9))
  {
    v11 = [MEMORY[0x277D74300] systemFontOfSize:v9 weight:*MEMORY[0x277D743F8]];
    v12 = smallTitleFontForText_compatibleWithTraitCollection__titleFont;
    smallTitleFontForText_compatibleWithTraitCollection__titleFont = v11;
  }

  v13 = smallTitleFontForText_compatibleWithTraitCollection__titleFont;

  return v13;
}

+ (id)titleFontForText:(void *)text fittingSize:(void *)size representingMetadata:(void *)metadata compatibleWithTraitCollection:
{
  v8 = a2;
  textCopy = text;
  sizeCopy = size;
  metadataCopy = metadata;
  v12 = objc_opt_self();
  if ([sizeCopy isViewInAppStore])
  {
    v13 = [v12 viewInAppStoreTitleFontForText:v8 compatibleWithTraitCollection:metadataCopy];
  }

  else if ([textCopy isEqualToString:0x2827A3EB8])
  {
    v13 = [v12 mediumTitleFontForText:v8 compatibleWithTraitCollection:metadataCopy];
  }

  else
  {
    if (![textCopy isEqualToString:0x2827A3E98])
    {
      ASCUnknownEnumCase(@"ASCOfferButtonSize", textCopy);
    }

    v13 = [v12 smallTitleFontForText:v8 compatibleWithTraitCollection:metadataCopy];
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

+ (id)textBackgroundImageFittingSize:(void *)size forTheme:
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  sizeCopy = size;
  objc_opt_self();
  if (textBackgroundImageFittingSize_forTheme__onceToken != -1)
  {
    +[ASCOfferButton textBackgroundImageFittingSize:forTheme:];
  }

  v19[0] = v4;
  backgroundStyle = [sizeCopy backgroundStyle];
  v19[1] = backgroundStyle;
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
    backgroundStyle2 = [sizeCopy backgroundStyle];
    [backgroundStyle2 cornerRadiusForImageSize:v12 stretchableArea:{v12, 1.0}];
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

+ (id)progressStateImageFittingSize:(id)size forTheme:(id)theme startPercent:(double)percent endPercent:(double)endPercent useFullImageSize:(BOOL)imageSize
{
  imageSizeCopy = imageSize;
  v36[7] = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  themeCopy = theme;
  if (progressStateImageFittingSize_forTheme_startPercent_endPercent_useFullImageSize__onceToken != -1)
  {
    +[ASCOfferButton progressStateImageFittingSize:forTheme:startPercent:endPercent:useFullImageSize:];
  }

  v36[0] = sizeCopy;
  v13 = MEMORY[0x277CCABB0];
  [themeCopy progressLineWidth];
  v14 = [v13 numberWithDouble:?];
  v36[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(themeCopy, "progressLineCap")}];
  v36[2] = v15;
  progressColor = [themeCopy progressColor];
  v36[3] = progressColor;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:percent];
  v36[4] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:endPercent];
  v36[5] = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithBool:imageSizeCopy];
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
    [__ASCLayoutProxy offerProgressDiameterForSize:sizeCopy];
    v25 = floor((v24 + 1.0 + -1.0) * 0.5);
    if (imageSizeCopy)
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
    v33 = themeCopy;
    percentCopy = percent;
    endPercentCopy = endPercent;
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

+ (id)progressTransitionImageFittingSize:(void *)size forTheme:
{
  sizeCopy = size;
  v5 = a2;
  v6 = [objc_opt_self() progressStateImageFittingSize:v5 forTheme:sizeCopy startPercent:0 endPercent:0.0 useFullImageSize:1.0];

  return v6;
}

+ (id)indeterminateProgressImageFittingSize:(void *)size forTheme:
{
  sizeCopy = size;
  v5 = a2;
  v6 = [objc_opt_self() progressStateImageFittingSize:v5 forTheme:sizeCopy startPercent:1 endPercent:0.1 useFullImageSize:0.9];

  return v6;
}

+ (id)progressImageWithPercent:(void *)percent fittingSize:(void *)size forTheme:(char)theme cancellable:
{
  sizeCopy = size;
  percentCopy = percent;
  objc_opt_self();
  [__ASCLayoutProxy offerProgressDiameterForSize:percentCopy];
  v11 = v10;

  v12 = [[ASCImageRenderer alloc] initWithSize:v11, v11];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__ASCOfferButton_progressImageWithPercent_fittingSize_forTheme_cancellable___block_invoke;
  v16[3] = &unk_2781CC948;
  v17 = sizeCopy;
  selfCopy = self;
  themeCopy = theme;
  v13 = sizeCopy;
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

- (ASCOfferButton)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = ASCOfferButton;
  v3 = [(ASCOfferButton *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    imageView = [(ASCOfferButton *)v4 imageView];
    [(ASCOfferButton *)v4 addSubview:imageView];

    systemTraitsAffectingColorAppearance = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v14 = objc_opt_self();
    v15 = [systemTraitsAffectingColorAppearance arrayByAddingObject:v14];

    v16 = [(ASCOfferButton *)v4 registerForTraitChanges:v15 withAction:sel_onTraitCollectionChange];
  }

  return v4;
}

- (ASCOfferButton)initWithCoder:(id)coder
{
  [(ASCOfferButton *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setTitleLabelIfLoaded:(id)loaded
{
  loadedCopy = loaded;
  [(UILabel *)self->_titleLabelIfLoaded removeFromSuperview];
  objc_storeStrong(&self->_titleLabelIfLoaded, loaded);
  if (self->_titleLabelIfLoaded)
  {
    [(ASCOfferButton *)self addSubview:?];
  }

  [(ASCOfferButton *)self setNeedsLayout];
  [(ASCOfferButton *)self invalidateIntrinsicContentSize];
}

- (UILabel)titleLabel
{
  titleLabelIfLoaded = [(ASCOfferButton *)self titleLabelIfLoaded];
  v4 = titleLabelIfLoaded;
  if (titleLabelIfLoaded)
  {
    v5 = titleLabelIfLoaded;
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

- (void)setSubtitleLabelIfLoaded:(id)loaded
{
  loadedCopy = loaded;
  [(UILabel *)self->_subtitleLabelIfLoaded removeFromSuperview];
  objc_storeStrong(&self->_subtitleLabelIfLoaded, loaded);
  if (self->_subtitleLabelIfLoaded)
  {
    [(ASCOfferButton *)self addSubview:?];
  }

  [(ASCOfferButton *)self setNeedsLayout];
  [(ASCOfferButton *)self invalidateIntrinsicContentSize];
}

- (UILabel)subtitleLabel
{
  subtitleLabelIfLoaded = [(ASCOfferButton *)self subtitleLabelIfLoaded];
  v4 = subtitleLabelIfLoaded;
  if (subtitleLabelIfLoaded)
  {
    v5 = subtitleLabelIfLoaded;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = [(ASCOfferButton *)self size];
    theme = [(ASCOfferButton *)self theme];
    traitCollection = [(ASCOfferButton *)self traitCollection];
    v10 = +[ASCOfferButton subtitleFontFittingSize:forTheme:compatibleWithTraitCollection:];
    [v5 setFont:v10];

    font = [v5 font];
    [v5 set_fontForShortcutBaselineCalculation:font];

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

  imageView = [(ASCOfferButton *)self imageView];
  [imageView setAlpha:v3];

  metadata = [(ASCOfferButton *)self metadata];
  isEmpty = [metadata isEmpty];

  if (isEmpty)
  {
    goto LABEL_4;
  }

  metadata2 = [(ASCOfferButton *)self metadata];
  isIcon = [metadata2 isIcon];

  if (isIcon)
  {
    theme = [(ASCOfferButton *)self theme];
    iconTintColor = [theme iconTintColor];
    imageView2 = [(ASCOfferButton *)self imageView];
    [imageView2 setTintColor:iconTintColor];

    v12 = self->_metadata;
    imageView6 = [(ASCOfferButton *)self size];
    v13 = [(ASCOfferMetadata *)v12 imageNameForSize:imageView6];

    traitCollection = [(ASCOfferButton *)self traitCollection];
    v15 = [ASCImageRenderer bundleImageNamed:v13 compatibleWithTraitCollection:traitCollection];
    imageView3 = [(ASCOfferButton *)self imageView];
    [imageView3 setImage:v15];

    goto LABEL_21;
  }

  metadata3 = [(ASCOfferButton *)self metadata];
  isProgress = [metadata3 isProgress];

  if (isProgress)
  {
    imageView6 = self->_metadata;
    theme2 = [(ASCOfferButton *)self theme];
    iconTintColor2 = [theme2 iconTintColor];
    imageView4 = [(ASCOfferButton *)self imageView];
    [imageView4 setTintColor:iconTintColor2];

    if ([(ASCOfferMetadata *)imageView6 isIndeterminate])
    {
      v22 = [(ASCOfferButton *)self size];
      theme3 = [(ASCOfferButton *)self theme];
      [ASCOfferButton indeterminateProgressImageFittingSize:v22 forTheme:theme3];
    }

    else
    {
      [(ASCOfferMetadata *)imageView6 percent];
      v26 = v25;
      v22 = [(ASCOfferButton *)self size];
      theme3 = [(ASCOfferButton *)self theme];
      [(ASCOfferButton *)v26 progressImageWithPercent:v22 fittingSize:theme3 forTheme:[(ASCOfferMetadata *)imageView6 cancellable] cancellable:?];
    }
    secondaryLabelColor = ;
    imageView5 = [(ASCOfferButton *)self imageView];
    [imageView5 setImage:secondaryLabelColor];
LABEL_14:

    goto LABEL_21;
  }

  metadata4 = [(ASCOfferButton *)self metadata];
  if ([metadata4 isText])
  {
  }

  else
  {
    metadata5 = [(ASCOfferButton *)self metadata];
    isPlaceholder = [metadata5 isPlaceholder];

    if (!isPlaceholder)
    {
      metadata6 = [(ASCOfferButton *)self metadata];
      isDeeplink = [metadata6 isDeeplink];

      if (!isDeeplink)
      {
        metadata7 = [(ASCOfferButton *)self metadata];
        isViewInAppStore = [metadata7 isViewInAppStore];

        if (!isViewInAppStore)
        {
          metadata8 = [(ASCOfferButton *)self metadata];
          ASCUnknownEnumCase(@"ASCOfferMetadata", metadata8);
        }

LABEL_4:
        imageView6 = [(ASCOfferButton *)self imageView];
        [(ASCOfferMetadata *)imageView6 setTintColor:0];
        goto LABEL_21;
      }

      imageView6 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.forward.app.fill"];
      v22 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918]];
      theme3 = [(ASCOfferMetadata *)imageView6 imageWithSymbolConfiguration:v22];
      imageView7 = [(ASCOfferButton *)self imageView];
      [imageView7 setImage:theme3];

      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      imageView5 = [(ASCOfferButton *)self imageView];
      [imageView5 setTintColor:secondaryLabelColor];
      goto LABEL_14;
    }
  }

  isHighlighted = [(ASCOfferButton *)self isHighlighted];
  theme4 = [(ASCOfferButton *)self theme];
  titleBackgroundColor = [theme4 titleBackgroundColor];
  v34 = titleBackgroundColor;
  asc_highlightedColor = titleBackgroundColor;
  if (isHighlighted)
  {
    asc_highlightedColor = [titleBackgroundColor asc_highlightedColor];
  }

  imageView8 = [(ASCOfferButton *)self imageView];
  [imageView8 setTintColor:asc_highlightedColor];

  if (isHighlighted)
  {
  }

  imageView6 = [(ASCOfferButton *)self size];
  theme5 = [(ASCOfferButton *)self theme];
  v38 = [ASCOfferButton textBackgroundImageFittingSize:imageView6 forTheme:theme5];
  imageView9 = [(ASCOfferButton *)self imageView];
  [imageView9 setImage:v38];

LABEL_21:
}

- (void)updateLabelStyleProperties
{
  subtitleLabelIfLoaded = [self subtitleLabelIfLoaded];
  [subtitleLabelIfLoaded setTextAlignment:a2];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = ASCOfferButton;
  [(ASCOfferButton *)&v4 setEnabled:enabled];
  [(ASCOfferButton *)self updateImageStyleProperties];
  [(ASCOfferButton *)self updateLabelStyleProperties];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = ASCOfferButton;
  [(ASCOfferButton *)&v4 setHighlighted:highlighted];
  [(ASCOfferButton *)self updateImageStyleProperties];
  [(ASCOfferButton *)self updateLabelStyleProperties];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v8.receiver = self;
  v8.super_class = ASCOfferButton;
  [(ASCOfferButton *)&v8 setSemanticContentAttribute:?];
  imageView = [(ASCOfferButton *)self imageView];
  [imageView setSemanticContentAttribute:attribute];

  titleLabelIfLoaded = [(ASCOfferButton *)self titleLabelIfLoaded];
  [titleLabelIfLoaded setSemanticContentAttribute:attribute];

  subtitleLabelIfLoaded = [(ASCOfferButton *)self subtitleLabelIfLoaded];
  [subtitleLabelIfLoaded setSemanticContentAttribute:attribute];
}

- (void)updateVisualEffects
{
  focusEffect = [(ASCOfferButton *)self focusEffect];
  [(ASCOfferButton *)self setFocusEffect:focusEffect];

  [(ASCOfferButton *)self updateFocusIfNeeded];
}

- (id)focusEffect
{
  imageView = [(ASCOfferButton *)self imageView];
  [imageView frame];
  v4 = v3 + -1.0;
  v6 = v5 + -1.0;
  v8 = v7 + 2.0;
  v10 = v9 + 2.0;

  v11 = floor(v10 * 0.5);
  v12 = MEMORY[0x277D75508];
  v13 = *MEMORY[0x277CDA138];

  return [v12 effectWithRoundedRect:v13 cornerRadius:v4 curve:{v6, v8, v10, v11}];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = ASCOfferButton;
  beganCopy = began;
  [(ASCOfferButton *)&v8 pressesBegan:beganCopy withEvent:event];
  v7 = [beganCopy objectsPassingTest:{&__block_literal_global_52, v8.receiver, v8.super_class}];

  if ([v7 count])
  {
    [(ASCOfferButton *)self setHighlighted:1];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = ASCOfferButton;
  endedCopy = ended;
  [(ASCOfferButton *)&v8 pressesEnded:endedCopy withEvent:event];
  v7 = [endedCopy objectsPassingTest:{&__block_literal_global_56, v8.receiver, v8.super_class}];

  if ([v7 count])
  {
    [(ASCOfferButton *)self setHighlighted:0];
    if ([(ASCOfferButton *)self isUserInteractionEnabled])
    {
      [(ASCOfferButton *)self sendActionsForControlEvents:64];
    }
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = ASCOfferButton;
  cancelledCopy = cancelled;
  [(ASCOfferButton *)&v8 pressesCancelled:cancelledCopy withEvent:event];
  v7 = [cancelledCopy objectsPassingTest:{&__block_literal_global_60, v8.receiver, v8.super_class}];

  if ([v7 count])
  {
    [(ASCOfferButton *)self setHighlighted:0];
  }
}

- (void)setSubtitlePosition:(int64_t)position
{
  if (self->_subtitlePosition != position)
  {
    self->_subtitlePosition = position;
    [(ASCOfferButton *)self updateLabelStyleProperties];
    [(ASCOfferButton *)self invalidateIntrinsicContentSize];

    [(ASCOfferButton *)self setNeedsLayout];
  }
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  if (![(ASCOfferTheme *)self->_theme isEqual:?])
  {
    objc_storeStrong(&self->_theme, theme);
    [(ASCOfferButton *)self updateImageStyleProperties];
    [(ASCOfferButton *)self updateLabelStyleProperties];
  }
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (([(ASCOfferMetadata *)self->_metadata isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_metadata, metadata);
    if ([(ASCOfferMetadata *)self->_metadata isEmpty])
    {
      titleLabelIfLoaded = [(ASCOfferButton *)self titleLabelIfLoaded];
      [titleLabelIfLoaded setText:0];

      subtitleLabelIfLoaded = [(ASCOfferButton *)self subtitleLabelIfLoaded];
      [subtitleLabelIfLoaded setText:0];

      [(ASCOfferButton *)self setImageAnimation:0];
      imageView = [(ASCOfferButton *)self imageView];
      [imageView setImage:0];
LABEL_4:

      imageView2 = [(ASCOfferButton *)self imageView];
      metadataCopy2 = imageView2;
      v10 = 0;
LABEL_5:
      [(ASCOfferMetadata *)imageView2 setIsBackgroundForText:v10];
LABEL_21:

      [(ASCOfferButton *)self updateImageStyleProperties];
      [(ASCOfferButton *)self updateLabelStyleProperties];
      [(ASCOfferButton *)self setNeedsLayout];
      [(ASCOfferButton *)self invalidateIntrinsicContentSize];
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
      goto LABEL_22;
    }

    isText = [(ASCOfferMetadata *)self->_metadata isText];
    metadata = self->_metadata;
    if (isText)
    {
      metadataCopy2 = metadata;
      v13 = MEMORY[0x277CCA898];
      title = [(ASCOfferMetadata *)metadataCopy2 title];
      traitCollection = [(ASCOfferButton *)self traitCollection];
      v16 = [v13 asc_attributedStringWithLockupTextContainingSymbols:title compatibleWithTraitCollection:traitCollection];
      titleLabel = [(ASCOfferButton *)self titleLabel];
      [titleLabel setAttributedText:v16];

      subtitle = [(ASCOfferMetadata *)metadataCopy2 subtitle];

      if (subtitle)
      {
        subtitle2 = [(ASCOfferMetadata *)metadataCopy2 subtitle];
        subtitleLabel = [(ASCOfferButton *)self subtitleLabel];
        [subtitleLabel setText:subtitle2];
      }

      else
      {
        subtitle2 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
        [subtitle2 setText:0];
      }

      [(ASCOfferButton *)self setImageAnimation:0];
      imageView3 = [(ASCOfferButton *)self imageView];
      [imageView3 setContentMode:0];

      imageView4 = [(ASCOfferButton *)self imageView];
      v38 = imageView4;
      v39 = 1;
LABEL_20:
      [imageView4 setIsBackgroundForText:v39];

      goto LABEL_21;
    }

    isIcon = [(ASCOfferMetadata *)metadata isIcon];
    v22 = self->_metadata;
    if (isIcon)
    {
      v23 = v22;
      titleLabelIfLoaded2 = [(ASCOfferButton *)self titleLabelIfLoaded];
      [titleLabelIfLoaded2 setText:0];

      subtitleLabelIfLoaded2 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
      [subtitleLabelIfLoaded2 setText:0];

      animationName = [(ASCOfferMetadata *)v23 animationName];

      v27 = ASCOfferMetadataAnimationForName(animationName);
      [(ASCOfferButton *)self setImageAnimation:v27];

      imageView = [(ASCOfferButton *)self imageView];
      [imageView setContentMode:4];
      goto LABEL_4;
    }

    isProgress = [(ASCOfferMetadata *)v22 isProgress];
    v29 = self->_metadata;
    if (isProgress)
    {
      metadataCopy2 = v29;
      titleLabelIfLoaded3 = [(ASCOfferButton *)self titleLabelIfLoaded];
      [titleLabelIfLoaded3 setText:0];

      subtitleLabelIfLoaded3 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
      [subtitleLabelIfLoaded3 setText:0];

      isIndeterminate = [(ASCOfferMetadata *)metadataCopy2 isIndeterminate];
      v33 = &ASCOfferMetadataAnimationNameRotate;
      if (!isIndeterminate)
      {
        v33 = ASCOfferMetadataAnimationNameNone;
      }

      v34 = ASCOfferMetadataAnimationForName(*v33);
      [(ASCOfferButton *)self setImageAnimation:v34];

      if ([(ASCOfferMetadata *)metadataCopy2 isIndeterminate])
      {
        v35 = 0;
      }

      else
      {
        v35 = 4;
      }

      imageView5 = [(ASCOfferButton *)self imageView];
      [imageView5 setContentMode:v35];

      imageView4 = [(ASCOfferButton *)self imageView];
      v38 = imageView4;
      v39 = 0;
      goto LABEL_20;
    }

    if ([(ASCOfferMetadata *)v29 isPlaceholder])
    {
      titleLabel2 = [(ASCOfferButton *)self titleLabel];
      [titleLabel2 setText:0];

      subtitleLabelIfLoaded4 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
      [subtitleLabelIfLoaded4 setText:0];

      [(ASCOfferButton *)self setImageAnimation:0];
      imageView6 = [(ASCOfferButton *)self imageView];
      imageView7 = imageView6;
      v45 = 0;
    }

    else
    {
      if (![(ASCOfferMetadata *)self->_metadata isDeeplink])
      {
        if (![(ASCOfferMetadata *)self->_metadata isViewInAppStore])
        {
          ASCUnknownEnumCase(@"ASCOfferMetadata", metadataCopy);
        }

        v48 = MEMORY[0x277CCA898];
        title2 = [(ASCOfferMetadata *)self->_metadata title];
        traitCollection2 = [(ASCOfferButton *)self traitCollection];
        v51 = [v48 asc_attributedStringWithLockupTextContainingSymbols:title2 compatibleWithTraitCollection:traitCollection2];
        titleLabel3 = [(ASCOfferButton *)self titleLabel];
        [titleLabel3 setAttributedText:v51];

        subtitleLabelIfLoaded5 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
        [subtitleLabelIfLoaded5 setText:0];

        [(ASCOfferButton *)self setImageAnimation:0];
        imageView7 = [(ASCOfferButton *)self imageView];
        [imageView7 setImage:0];
        goto LABEL_32;
      }

      titleLabel4 = [(ASCOfferButton *)self titleLabel];
      [titleLabel4 setText:0];

      subtitleLabelIfLoaded6 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
      [subtitleLabelIfLoaded6 setText:0];

      [(ASCOfferButton *)self setImageAnimation:0];
      imageView6 = [(ASCOfferButton *)self imageView];
      imageView7 = imageView6;
      v45 = 4;
    }

    [imageView6 setContentMode:v45];
LABEL_32:

    imageView2 = [(ASCOfferButton *)self imageView];
    metadataCopy2 = imageView2;
    v10 = 1;
    goto LABEL_5;
  }

LABEL_22:
}

- (void)beginModalStateWithCancelBlock:(id)block
{
  blockCopy = block;
  v5 = [[ASCModalViewInteraction alloc] initWithView:self];
  [(ASCOfferButton *)self setModalInteraction:v5];

  modalInteraction = [(ASCOfferButton *)self modalInteraction];
  [modalInteraction installWithCancelBlock:blockCopy];
}

- (void)endModalState
{
  modalInteraction = [(ASCOfferButton *)self modalInteraction];
  [modalInteraction invalidate];

  [(ASCOfferButton *)self setModalInteraction:0];
}

- (CAAnimation)imageAnimation
{
  imageView = [(ASCOfferButton *)self imageView];
  layer = [imageView layer];
  objc_opt_self();
  v4 = [layer animationForKey:@"ASCOfferButton.imageAnimation"];

  return v4;
}

- (void)setImageAnimation:(id)animation
{
  animationCopy = animation;
  imageView = [(ASCOfferButton *)self imageView];
  layer = [imageView layer];
  objc_opt_self();
  [layer removeAnimationForKey:@"ASCOfferButton.imageAnimation"];

  if (animationCopy)
  {
    imageView2 = [(ASCOfferButton *)self imageView];
    layer2 = [imageView2 layer];
    objc_opt_self();
    [layer2 addAnimation:animationCopy forKey:@"ASCOfferButton.imageAnimation"];
  }
}

- (void)setCurrentTransition:(id)transition
{
  transitionCopy = transition;
  currentTransition = self->_currentTransition;
  if (currentTransition && [(UIViewPropertyAnimator *)currentTransition state]== 1)
  {
    [(UIViewPropertyAnimator *)self->_currentTransition stopAnimation:0];
    [(UIViewPropertyAnimator *)self->_currentTransition finishAnimationAtPosition:0];
  }

  objc_storeStrong(&self->_currentTransition, transition);
  v6 = self->_currentTransition;
  if (v6)
  {
    [(UIViewPropertyAnimator *)v6 startAnimation];
  }
}

- (BOOL)canTransitionToMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([MEMORY[0x277D75D18] areAnimationsEnabled] && (-[ASCOfferButton isHidden](self, "isHidden") & 1) == 0)
  {
    metadata = [(ASCOfferButton *)self metadata];
    if ([metadata isEqual:metadataCopy])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      metadata2 = [(ASCOfferButton *)self metadata];
      if ([metadata2 isEmpty] & 1) != 0 || (objc_msgSend(metadataCopy, "isEmpty"))
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        metadata3 = [(ASCOfferButton *)self metadata];
        if ([metadata3 isProgress] && (objc_msgSend(metadataCopy, "isProgress") & 1) != 0)
        {
          LOBYTE(v5) = 0;
        }

        else
        {
          metadata4 = [(ASCOfferButton *)self metadata];
          if ([metadata4 isPlaceholder])
          {
            LOBYTE(v5) = 0;
          }

          else
          {
            v5 = [metadataCopy isPlaceholder] ^ 1;
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

- (BOOL)shouldTransitionImageViewFromMetadata:(id)metadata toMetadata:(id)toMetadata
{
  metadataCopy = metadata;
  toMetadataCopy = toMetadata;
  if ([metadataCopy isEmpty] && (objc_msgSend(toMetadataCopy, "isEmpty") & 1) != 0 || objc_msgSend(metadataCopy, "isText") && (objc_msgSend(toMetadataCopy, "isText") & 1) != 0)
  {
    LOBYTE(v7) = 0;
  }

  else if ([metadataCopy isIcon] && objc_msgSend(toMetadataCopy, "isIcon"))
  {
    v8 = toMetadataCopy;
    animationName = [metadataCopy animationName];
    animationName2 = [v8 animationName];
    v11 = animationName2;
    if (animationName && animationName2)
    {
      v12 = [animationName isEqual:animationName2];
    }

    else
    {
      v12 = animationName == animationName2;
    }

    LOBYTE(v7) = v12 ^ 1;
  }

  else
  {
    v7 = [toMetadataCopy isViewInAppStore] ^ 1;
  }

  return v7;
}

- (BOOL)chainTransitionToMetadata:(id)metadata scalingDurationBy:(double)by withCompletion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  currentTransition = [(ASCOfferButton *)self currentTransition];
  if (currentTransition && (v11 = currentTransition, -[ASCOfferButton currentTransition](self, "currentTransition"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 state], v12, v11, v13 == 1))
  {
    v14 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:1];
    currentTransition2 = [(ASCOfferButton *)self currentTransition];
    [currentTransition2 pauseAnimation];

    objc_initWeak(&location, self);
    currentTransition3 = [(ASCOfferButton *)self currentTransition];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__ASCOfferButton_chainTransitionToMetadata_scalingDurationBy_withCompletion___block_invoke;
    v20[3] = &unk_2781CC990;
    objc_copyWeak(v23, &location);
    v21 = metadataCopy;
    *&v23[1] = by * 0.7;
    v22 = completionCopy;
    [currentTransition3 addCompletion:v20];

    currentTransition4 = [(ASCOfferButton *)self currentTransition];
    [currentTransition4 continueAnimationWithTimingParameters:v14 durationFactor:by * 0.3];

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

- (id)transitionImageForMetadata:(id)metadata
{
  metadataCopy = metadata;
  metadata = [(ASCOfferButton *)self metadata];
  if ([metadata isProgress] && objc_msgSend(metadataCopy, "isText") || objc_msgSend(metadata, "isText") && objc_msgSend(metadataCopy, "isProgress") && (objc_msgSend(metadataCopy, "isIndeterminate") & 1) == 0)
  {
    imageView = [(ASCOfferButton *)self size];
    theme = [(ASCOfferButton *)self theme];
    image = [ASCOfferButton progressTransitionImageFittingSize:imageView forTheme:theme];
  }

  else
  {
    imageView = [(ASCOfferButton *)self imageView];
    image = [imageView image];
  }

  return image;
}

- (id)transitionColorForMetadata:(id)metadata
{
  metadataCopy = metadata;
  metadata = [(ASCOfferButton *)self metadata];
  if (([metadata isText] & 1) != 0 || objc_msgSend(metadataCopy, "isText"))
  {
    theme = [(ASCOfferButton *)self theme];
    titleBackgroundColor = [theme titleBackgroundColor];
LABEL_9:
    v8 = titleBackgroundColor;

    goto LABEL_10;
  }

  if (([metadata isIcon] & 1) != 0 || (objc_msgSend(metadataCopy, "isIcon") & 1) != 0 || (objc_msgSend(metadata, "isProgress") & 1) != 0 || objc_msgSend(metadataCopy, "isProgress"))
  {
    theme = [(ASCOfferButton *)self theme];
    titleBackgroundColor = [theme iconTintColor];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)transitionToMetadata:(id)metadata scalingDurationBy:(double)by withCompletion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  if ([(ASCOfferButton *)self canTransitionToMetadata:metadataCopy])
  {
    if (![(ASCOfferButton *)self chainTransitionToMetadata:metadataCopy scalingDurationBy:completionCopy withCompletion:by])
    {
      imageView = [(ASCOfferButton *)self imageView];
      v11 = [(ASCOfferButton *)self transitionImageForMetadata:metadataCopy];
      v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
      [imageView alpha];
      [v12 setAlpha:?];
      [v12 setContentMode:0];
      [imageView frame];
      [v12 setFrame:?];
      v13 = [(ASCOfferButton *)self transitionColorForMetadata:metadataCopy];
      [v12 setTintColor:v13];

      [v12 setSemanticContentAttribute:{-[ASCOfferButton semanticContentAttribute](self, "semanticContentAttribute")}];
      [(ASCOfferButton *)self addSubview:v12];
      v14 = objc_alloc(MEMORY[0x277D75D40]);
      v15 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:0];
      v16 = [v14 initWithDuration:v15 timingParameters:by * 0.3];

      metadata = [(ASCOfferButton *)self metadata];
      [(ASCOfferButton *)self setMetadata:metadataCopy];
      [(ASCOfferButton *)self layoutIfNeeded];
      imageAnimation = [(ASCOfferButton *)self imageAnimation];
      [(ASCOfferButton *)self setImageAnimation:0];
      if ([(ASCOfferButton *)self shouldTransitionImageViewFromMetadata:metadata toMetadata:metadataCopy])
      {
        [imageView alpha];
        v20 = v19;
        [imageView setAlpha:0.0];
        [imageView frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        [v12 frame];
        [imageView setFrame:?];
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
        v43 = imageView;
        selfCopy = self;
        [v16 addAnimations:v42];
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __72__ASCOfferButton_transitionToMetadata_scalingDurationBy_withCompletion___block_invoke_2;
      v38[3] = &unk_2781CB9D8;
      v29 = v12;
      v39 = v29;
      v40 = imageView;
      selfCopy2 = self;
      v30 = imageView;
      [v16 addAnimations:v38];
      delegate = [(ASCOfferButton *)self delegate];
      [delegate offerButton:self willTransitionToMetadata:metadataCopy usingAnimator:v16];

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __72__ASCOfferButton_transitionToMetadata_scalingDurationBy_withCompletion___block_invoke_3;
      v34[3] = &unk_2781CC9E0;
      v34[4] = self;
      v35 = imageAnimation;
      v36 = v29;
      v37 = completionCopy;
      v32 = v29;
      v33 = imageAnimation;
      [v16 addCompletion:v34];
      [(ASCOfferButton *)self setCurrentTransition:v16];
    }
  }

  else
  {
    [(ASCOfferButton *)self setMetadata:metadataCopy];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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

- (void)transitionToMetadata:(id)metadata withCompletion:(id)completion
{
  completionCopy = completion;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __54__ASCOfferButton_transitionToMetadata_withCompletion___block_invoke;
  v13 = &unk_2781CCA08;
  selfCopy = self;
  v15 = completionCopy;
  v7 = completionCopy;
  metadataCopy = metadata;
  v9 = MEMORY[0x216070C30](&v10);
  [(ASCOfferButton *)self transitionToMetadata:metadataCopy scalingDurationBy:v9 withCompletion:1.0, v10, v11, v12, v13, selfCopy];
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
  metadata = [(ASCOfferButton *)self metadata];
  isProgress = [metadata isProgress];

  metadata2 = [(ASCOfferButton *)self metadata];
  v18 = metadata2;
  if (isProgress)
  {
    cancellable = [metadata2 cancellable];
    if ([v18 isIndeterminate])
    {
      v7 = [(ASCOfferButton *)self size];
      theme = [(ASCOfferButton *)self theme];
      [ASCOfferButton indeterminateProgressImageFittingSize:v7 forTheme:theme];
    }

    else
    {
      [v18 percent];
      v10 = v9;
      v7 = [(ASCOfferButton *)self size];
      theme = [(ASCOfferButton *)self theme];
      [(ASCOfferButton *)v10 progressImageWithPercent:v7 fittingSize:theme forTheme:cancellable cancellable:?];
    }
    v11 = ;
    imageView = [(ASCOfferButton *)self imageView];
    [imageView setImage:v11];

    imageView2 = [(ASCOfferButton *)self imageView];
    [imageView2 setIsBackgroundForText:0];
  }

  else
  {
    if ([metadata2 isText])
    {
    }

    else
    {
      metadata3 = [(ASCOfferButton *)self metadata];
      isPlaceholder = [metadata3 isPlaceholder];

      if (!isPlaceholder)
      {
        metadata4 = [(ASCOfferButton *)self metadata];
        isViewInAppStore = [metadata4 isViewInAppStore];

        if (!isViewInAppStore)
        {
          return;
        }
      }
    }

    [(ASCOfferButton *)self updateLabelStyleProperties];

    [(ASCOfferButton *)self setNeedsLayout];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  objc_opt_class();
  v5 = beginCopy;
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
    view = [v7 view];
    v9 = view == self || [v7 numberOfTouchesRequired] != 1 || objc_msgSend(v7, "numberOfTapsRequired") != 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)makeLayout
{
  metadata = [(ASCOfferButton *)self metadata];
  isEmpty = [metadata isEmpty];

  if (isEmpty)
  {
    imageView = [(ASCOfferButton *)self imageView];
    titleLabelIfLoaded = [(ASCOfferButton *)self titleLabelIfLoaded];
    subtitleLabelIfLoaded = [(ASCOfferButton *)self subtitleLabelIfLoaded];
    v8 = [__ASCLayoutProxy offerEmptyLayoutWithImageView:imageView titleView:titleLabelIfLoaded subtitleView:subtitleLabelIfLoaded];

    goto LABEL_16;
  }

  metadata2 = [(ASCOfferButton *)self metadata];
  if ([metadata2 isText])
  {

LABEL_6:
    v12 = [(ASCOfferButton *)self subtitlePosition]== 1;
    imageView = [(ASCOfferButton *)self size];
    imageView2 = [(ASCOfferButton *)self imageView];
    titleLabel = [(ASCOfferButton *)self titleLabel];
    subtitleLabelIfLoaded2 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
    shouldTopAlign = [(ASCOfferButton *)self shouldTopAlign];
    [(ASCOfferButton *)self topPadding];
    v18 = v17;
    LOBYTE(v31) = [(ASCOfferButton *)self shouldExpandBackground];
    v19 = [__ASCLayoutProxy offerTextLayoutForSize:imageView titleBackgroundView:imageView2 titleView:titleLabel subtitleView:subtitleLabelIfLoaded2 hasTrailingSubtitle:v12 shouldTopAlign:shouldTopAlign topPadding:v18 shouldExpandBackground:v31];
LABEL_15:
    v8 = v19;

    goto LABEL_16;
  }

  metadata3 = [(ASCOfferButton *)self metadata];
  isPlaceholder = [metadata3 isPlaceholder];

  if (isPlaceholder)
  {
    goto LABEL_6;
  }

  metadata4 = [(ASCOfferButton *)self metadata];
  if ([metadata4 isIcon])
  {

LABEL_10:
    v23 = [(ASCOfferButton *)self subtitlePosition]== 1 || [(ASCOfferButton *)self subtitlePosition]== 2;
    imageView = [(ASCOfferButton *)self size];
    imageView2 = [(ASCOfferButton *)self imageView];
    titleLabel = [(ASCOfferButton *)self titleLabelIfLoaded];
    subtitleLabelIfLoaded2 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
    shouldTopAlign2 = [(ASCOfferButton *)self shouldTopAlign];
    [(ASCOfferButton *)self topPadding];
    LOBYTE(v31) = 0;
LABEL_14:
    v19 = [__ASCLayoutProxy offerIconLayoutForSize:imageView imageView:imageView2 titleView:titleLabel subtitleView:subtitleLabelIfLoaded2 hasTrailingSubtitle:v23 shouldTopAlign:shouldTopAlign2 topPadding:v31 shouldTrailingAlign:?];
    goto LABEL_15;
  }

  metadata5 = [(ASCOfferButton *)self metadata];
  isProgress = [metadata5 isProgress];

  if (isProgress)
  {
    goto LABEL_10;
  }

  metadata6 = [(ASCOfferButton *)self metadata];
  isDeeplink = [metadata6 isDeeplink];

  if (isDeeplink)
  {
    v23 = 1;
    if ([(ASCOfferButton *)self subtitlePosition]!= 1)
    {
      v23 = [(ASCOfferButton *)self subtitlePosition]== 2;
    }

    imageView = [(ASCOfferButton *)self size];
    imageView2 = [(ASCOfferButton *)self imageView];
    titleLabel = [(ASCOfferButton *)self titleLabelIfLoaded];
    subtitleLabelIfLoaded2 = [(ASCOfferButton *)self subtitleLabelIfLoaded];
    shouldTopAlign2 = [(ASCOfferButton *)self shouldTopAlign];
    [(ASCOfferButton *)self topPadding];
    LOBYTE(v31) = 1;
    goto LABEL_14;
  }

  metadata7 = [(ASCOfferButton *)self metadata];
  isViewInAppStore = [metadata7 isViewInAppStore];

  if (!isViewInAppStore)
  {
    metadata8 = [(ASCOfferButton *)self metadata];
    ASCUnknownEnumCase(@"ASCOfferMetadata", metadata8);
  }

  imageView = [(ASCOfferButton *)self titleLabel];
  v8 = [__ASCLayoutProxy offerDisclosureLayoutWithDisclosureIndicator:imageView];
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
    superview = [(ASCOfferButton *)self superview];
    [superview invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(ASCOfferButton *)self sizeThatFits:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  makeLayout = [(ASCOfferButton *)self makeLayout];
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [makeLayout measuredSizeFittingSize:asc_layoutTraitEnvironment inTraitEnvironment:{width, height}];
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
  makeLayout = [(ASCOfferButton *)self makeLayout];
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [makeLayout alignmentInsetsInTraitEnvironment:asc_layoutTraitEnvironment];
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
  makeLayout = [(ASCOfferButton *)self makeLayout];
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
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [makeLayout placeChildrenRelativeToRect:asc_layoutTraitEnvironment inTraitEnvironment:{v13, v15, v17, v19}];
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  theme = [(ASCOfferButton *)self theme];
  [(ASCDescriber *)v3 addObject:theme withName:@"theme"];

  metadata = [(ASCOfferButton *)self metadata];
  [(ASCDescriber *)v3 addObject:metadata withName:@"metadata"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (ASCOfferButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end