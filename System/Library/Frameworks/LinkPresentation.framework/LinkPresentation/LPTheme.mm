@interface LPTheme
+ (LPTheme)themeWithStyle:(int64_t)a3 icon:(id)a4 platform:(int64_t)a5 sizeClass:(unint64_t)a6 sizeClassParameters:(id)a7 hasButton:(BOOL)a8 preferredContentSizeCategory:(id)a9;
+ (double)platterizedIconScaleForReason:(int64_t)a3;
+ (void)addClient:(id)a3;
+ (void)invalidateThemeCache;
+ (void)removeClient:(id)a3;
- (LPTheme)initWithStyle:(int64_t)a3 icon:(id)a4 platform:(int64_t)a5 sizeClass:(unint64_t)a6 sizeClassParameters:(id)a7 hasButton:(BOOL)a8 preferredContentSizeCategory:(id)a9;
- (id)CSSTextForProperty:(id)a3 withValue:(id)a4;
- (id)CSSTextForThemeProperty:(id)a3;
- (id)valueForThemeProperty:(id)a3;
- (void)_adjustForAppleMusicCollaborativePlaylistStyle;
- (void)_adjustForEnrichedBusinessChatStyle;
- (void)_adjustForStyleWithFullWidthBottomButton;
- (void)adjustForStyle;
@end

@implementation LPTheme

+ (LPTheme)themeWithStyle:(int64_t)a3 icon:(id)a4 platform:(int64_t)a5 sizeClass:(unint64_t)a6 sizeClassParameters:(id)a7 hasButton:(BOOL)a8 preferredContentSizeCategory:(id)a9
{
  v29 = a8;
  v13 = a4;
  v28 = a7;
  v27 = a9;
  v14 = themeCache();
  v15 = v13;
  v16 = v28;
  v17 = v27;
  v18 = MEMORY[0x1E696AEC0];
  v19 = [v15 _isFallbackIcon];
  v20 = [v16 _cacheKey];
  v21 = [v18 stringWithFormat:@"%ld-%d-%ld-%ld-%@-%d-%@", a3, v19, a5, a6, v20, v29, v17];

  v22 = [v14 objectForKey:v21];
  if (!v22)
  {
    if ([v14 count] >= 4)
    {
      v23 = [v14 allKeys];
      v24 = [v23 firstObject];
      [v14 removeObjectForKey:v24];
    }

    v22 = [[LPTheme alloc] initWithStyle:a3 icon:v15 platform:a5 sizeClass:a6 sizeClassParameters:v16 hasButton:v29 preferredContentSizeCategory:v17];
    [v14 setObject:v22 forKey:v21];
  }

  v25 = v22;

  return v25;
}

- (LPTheme)initWithStyle:(int64_t)a3 icon:(id)a4 platform:(int64_t)a5 sizeClass:(unint64_t)a6 sizeClassParameters:(id)a7 hasButton:(BOOL)a8 preferredContentSizeCategory:(id)a9
{
  v109[1] = *MEMORY[0x1E69E9840];
  v98 = a4;
  v15 = a7;
  v99 = a9;
  v104.receiver = self;
  v104.super_class = LPTheme;
  v16 = [(LPTheme *)&v104 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_32;
  }

  v16->_style = a3;
  v16->_sizeClass = a6;
  objc_storeStrong(&v16->_sizeClassParameters, a7);
  v17->_platform = a5;
  v17->_isFallbackIcon = [v98 _isFallbackIcon];
  v17->_hasButton = a8;
  v18 = [v99 copy];
  preferredContentSizeCategory = v17->_preferredContentSizeCategory;
  v17->_preferredContentSizeCategory = v18;

  sizeClass = v17->_sizeClass;
  v21 = v17->_preferredContentSizeCategory;
  v22 = maximumContentSizeCategory(sizeClass);
  if (UIContentSizeCategoryCompareToCategory(v21, v22) == NSOrderedDescending)
  {
    v23 = v22;

    v21 = v23;
  }

  v24 = CTFontDescriptorCreateWithTextStyle();
  v25 = CTFontCreateWithFontDescriptorAndOptions(v24, 0.0, 0, 0);
  CFRelease(v24);
  v26 = CTFontDescriptorCreateWithTextStyle();
  v27 = CTFontCreateWithFontDescriptorAndOptions(v26, 0.0, 0, 0);
  CFRelease(v26);
  Size = CTFontGetSize(v25);
  v29 = CTFontGetSize(v27);
  CFRelease(v25);
  CFRelease(v27);

  v17->_leadingScalingFactor = Size / v29;
  if (a5 == 6)
  {
    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
    [v30 pointSize];
    v17->_leadingScalingFactor = v31 / 17.0 * v17->_leadingScalingFactor;
  }

  v32 = [MEMORY[0x1E69DC888] _lp_colorWithDynamicProvider:&__block_literal_global_17];
  highlightColor = v17->_highlightColor;
  v17->_highlightColor = v32;

  v34 = [[LPAppearanceDependentValue alloc] initWithProvider:&__block_literal_global_1076];
  highlightCompositingFilter = v17->_highlightCompositingFilter;
  v17->_highlightCompositingFilter = v34;

  v36 = objc_opt_self();
  v105 = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  [(LPAppearanceDependentValue *)v17->_highlightCompositingFilter setDependentTraits:v37];

  v38 = [[LPCaptionBarStyle alloc] initWithPlatform:a5 sizeClass:a6 sizeClassParameters:v15 fontScalingFactor:v17->_leadingScalingFactor];
  captionBar = v17->_captionBar;
  v17->_captionBar = v38;

  v40 = [[LPCollaborationFooterStyle alloc] initWithPlatform:a5 sizeClass:a6 fontScalingFactor:v17->_leadingScalingFactor];
  [(LPCaptionBarStyle *)v17->_captionBar setCollaborationFooter:v40];

  v41 = [[LPQuotedTextViewStyle alloc] initWithPlatform:a5 sizeClass:a6 fontScalingFactor:v17->_leadingScalingFactor];
  quotedText = v17->_quotedText;
  v17->_quotedText = v41;

  v43 = defaultBackgroundColor(a5);
  backgroundColor = v17->_backgroundColor;
  v17->_backgroundColor = v43;

  v45 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_1297];
  mediaBackgroundColor = v17->_mediaBackgroundColor;
  v17->_mediaBackgroundColor = v45;

  if (a5 > 6)
  {
    v47 = 6;
  }

  else
  {
    v47 = qword_1AE9C6858[a5];
  }

  v17->_backgroundMaterial = v47;
  v48 = [[LPPointUnit alloc] initWithValue:350.0];
  maximumWidth = v17->_maximumWidth;
  v17->_maximumWidth = v48;

  v17->_widthFractionForTallMedia = 0.76;
  v50 = objc_alloc_init(LPImageViewStyle);
  mediaImage = v17->_mediaImage;
  v17->_mediaImage = v50;

  [(LPImageViewStyle *)v17->_mediaImage setScalingMode:2];
  [(LPImageViewStyle *)v17->_mediaImage setFilter:2];
  v52 = 0.03;
  if (a5 == 2)
  {
    v52 = 0.0;
  }

  [(LPImageViewStyle *)v17->_mediaImage setDarkeningAmount:v52];
  v53 = [[LPVisualMediaViewStyle alloc] initWithPlatform:a5];
  mediaVideo = v17->_mediaVideo;
  v17->_mediaVideo = v53;

  v97 = [MEMORY[0x1E69DC888] whiteColor];
  v55 = [[LPCaptionBarStyle alloc] initWithPlatform:a5 sizeClass:a6 sizeClassParameters:v15 fontScalingFactor:v17->_leadingScalingFactor];
  mediaTopCaptionBar = v17->_mediaTopCaptionBar;
  v17->_mediaTopCaptionBar = v55;

  v57 = [(LPCaptionBarStyle *)v17->_mediaTopCaptionBar textStack];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __108__LPTheme_initWithStyle_icon_platform_sizeClass_sizeClassParameters_hasButton_preferredContentSizeCategory___block_invoke_3;
  v102[3] = &unk_1E7A36C48;
  v58 = v97;
  v103 = v58;
  [v57 applyToAllTextViewStyles:v102];

  v59 = [[LPCaptionBarStyle alloc] initWithPlatform:a5 sizeClass:a6 sizeClassParameters:v15 fontScalingFactor:v17->_leadingScalingFactor];
  mediaBottomCaptionBar = v17->_mediaBottomCaptionBar;
  v17->_mediaBottomCaptionBar = v59;

  v61 = [(LPCaptionBarStyle *)v17->_mediaBottomCaptionBar textStack];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __108__LPTheme_initWithStyle_icon_platform_sizeClass_sizeClassParameters_hasButton_preferredContentSizeCategory___block_invoke_4;
  v100[3] = &unk_1E7A36C48;
  v62 = v58;
  v101 = v62;
  [v61 applyToAllTextViewStyles:v100];

  v63 = objc_alloc_init(LPImageViewStyle);
  placeholderImage = v17->_placeholderImage;
  v17->_placeholderImage = v63;

  v65 = [[LPSize alloc] initWithSize:320.0, 180.0];
  [(LPImageViewStyle *)v17->_placeholderImage setFixedSize:v65];

  +[LPTheme placeholderIconSizeInPoints];
  v67 = [[LPPointUnit alloc] initWithValue:v66];
  [(LPImageViewStyle *)v17->_placeholderImage setFixedFallbackImageSize:v67];

  [(LPImageViewStyle *)v17->_placeholderImage setFixedFallbackImageWeight:&unk_1F2483578];
  [(LPImageViewStyle *)v17->_placeholderImage setScalingMode:3];
  v68 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  [(LPImageViewStyle *)v17->_placeholderImage setMaskColor:v68];

  if (+[LPTestingOverrides forceMonospaceFonts])
  {
    v69 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
  }

  else
  {
    v108 = *MEMORY[0x1E69DB8F0];
    v106 = *MEMORY[0x1E69DB990];
    v70 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
    v107 = v70;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v109[0] = v71;
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:&v108 count:1];
    v69 = fontWithTraitsAndAttributes(*MEMORY[0x1E69DDD08], 0, v72, a6);
  }

  domainNameIndicatorFont = v17->_domainNameIndicatorFont;
  v17->_domainNameIndicatorFont = v69;

  v74 = [MEMORY[0x1E69DB878] systemFontOfSize:fmax(v17->_leadingScalingFactor weight:{1.0) * 17.0, *MEMORY[0x1E69DB978]}];
  domainNameIndicatorIconFont = v17->_domainNameIndicatorIconFont;
  v17->_domainNameIndicatorIconFont = v74;

  v76 = objc_alloc_init(LPImageViewStyle);
  backgroundImage = v17->_backgroundImage;
  v17->_backgroundImage = v76;

  [(LPImageViewStyle *)v17->_backgroundImage setScalingMode:2];
  v78 = [[LPContactsBadgeStyle alloc] initWithPlatform:a5];
  contactsBadgeStyle = v17->_contactsBadgeStyle;
  v17->_contactsBadgeStyle = v78;

  v80 = [[LPIndeterminateProgressSpinnerStyle alloc] initWithPlatform:a5 sizeClass:a6 fontScalingFactor:v17->_leadingScalingFactor];
  progressSpinner = v17->_progressSpinner;
  v17->_progressSpinner = v80;

  if (a5 < 5)
  {
    goto LABEL_15;
  }

  if (a5 == 5)
  {
    if (a6 == 13)
    {
      v83 = defaultCornerRadius_listOuterCornerRadius_1298;
      if (defaultCornerRadius_listOuterCornerRadius_1298)
      {
        goto LABEL_24;
      }

      v84 = pt(22.0);
      v85 = &defaultCornerRadius_listOuterCornerRadius_1298;
    }

    else if (a6 == 1)
    {
      v83 = defaultCornerRadius_tinyVisionSize;
      if (defaultCornerRadius_tinyVisionSize)
      {
        goto LABEL_24;
      }

      v84 = pt(12.0);
      v85 = &defaultCornerRadius_tinyVisionSize;
    }

    else
    {
      v83 = defaultCornerRadius_visionSize;
      if (defaultCornerRadius_visionSize)
      {
        goto LABEL_24;
      }

      v84 = pt(22.0);
      v85 = &defaultCornerRadius_visionSize;
    }

    goto LABEL_23;
  }

  if (a5 == 6)
  {
LABEL_15:
    if (a6 == 13)
    {
      v83 = defaultCornerRadius_listOuterCornerRadius;
      if (!defaultCornerRadius_listOuterCornerRadius)
      {
        v84 = [[LPPointUnit alloc] initWithValue:26.0];
        v85 = &defaultCornerRadius_listOuterCornerRadius;
LABEL_23:
        v86 = *v85;
        *v85 = v84;

        v83 = *v85;
      }
    }

    else
    {
      v83 = defaultCornerRadius_normalSize;
      if (!defaultCornerRadius_normalSize)
      {
        v84 = [[LPPointUnit alloc] initWithValue:10.0];
        v85 = &defaultCornerRadius_normalSize;
        goto LABEL_23;
      }
    }

LABEL_24:
    v82 = v83;
  }

  cornerRadius = v17->_cornerRadius;
  v17->_cornerRadius = v82;

  [(LPTheme *)v17 adjustForStyle];
  v88 = [(LPCaptionBarStyle *)v17->_captionBar textStack];
  v89 = [v88 captionTextPadding];

  if (v89 && [v15 alignTextAndMediaHorizontalEdges])
  {
    v90 = +[LPPointUnit zero];
    [v89 setLeading:v90];

    v91 = +[LPPointUnit zero];
    [v89 setTrailing:v91];
  }

  v92 = [(LPTextViewStyle *)v17->_quotedText padding];
  if (v92 && [v15 alignTextAndMediaHorizontalEdges])
  {
    v93 = +[LPPointUnit zero];
    [v92 setLeading:v93];

    v94 = +[LPPointUnit zero];
    [v92 setTrailing:v94];
  }

  v95 = v17;

LABEL_32:
  return v17;
}

id __108__LPTheme_initWithStyle_icon_platform_sizeClass_sizeClassParameters_hasButton_preferredContentSizeCategory___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:objc_msgSend(v2 alpha:{"_lp_prefersDarkInterface"), 0.1}];

  return v3;
}

id __108__LPTheme_initWithStyle_icon_platform_sizeClass_sizeClassParameters_hasButton_preferredContentSizeCategory___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _lp_prefersDarkInterface];
  v3 = MEMORY[0x1E6979CF8];
  if (!v2)
  {
    v3 = MEMORY[0x1E6979CE8];
  }

  v4 = *v3;

  return v4;
}

void __108__LPTheme_initWithStyle_icon_platform_sizeClass_sizeClassParameters_hasButton_preferredContentSizeCategory___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setColor:*(a1 + 32)];
  [v3 setMaximumLines:1];
}

void __108__LPTheme_initWithStyle_icon_platform_sizeClass_sizeClassParameters_hasButton_preferredContentSizeCategory___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setColor:*(a1 + 32)];
  [v3 setMaximumLines:1];
}

- (void)_adjustForStyleWithFullWidthBottomButton
{
  v15 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v3 = [(LPCaptionBarStyle *)self->_captionBar button];
  [v3 setMenuBackgroundColor:v15];

  v16 = [MEMORY[0x1E69DC888] labelColor];
  v4 = [(LPCaptionBarStyle *)self->_captionBar button];
  [v4 setForegroundColor:v16];

  v17 = fontWithTraits(*MEMORY[0x1E69DDD08], 2, self->_sizeClass);
  v5 = [(LPCaptionBarStyle *)self->_captionBar button];
  [v5 setMenuFont:v17];

  v18 = [(LPCaptionBarStyle *)self->_captionBar button];
  [v18 setPrefersBehavioralStylePad:1];

  [(LPCaptionBarStyle *)self->_captionBar setUsesOutOfLineButton:1];
  [(LPCaptionBarStyle *)self->_captionBar setButtonIgnoresTextSafeAreaInsets:1];
  [(LPCaptionBarStyle *)self->_captionBar setAddFullWidthLineForButton:1];
  v19 = outerHorizontalTextMargin(self->_platform);
  v6 = [(LPCaptionBarStyle *)self->_captionBar button];
  v7 = [v6 margin];
  [v7 setLeading:v19];

  v8 = [(LPCaptionBarStyle *)self->_captionBar button];
  v9 = [v8 margin];
  [v9 setTrailing:v19];

  v10 = [(LPCaptionBarStyle *)self->_captionBar button];
  v11 = [v10 margin];
  [v11 setBottom:v19];

  v12 = +[LPPointUnit zero];
  v13 = [(LPCaptionBarStyle *)self->_captionBar button];
  v14 = [v13 margin];
  [v14 setTop:v12];
}

- (void)_adjustForEnrichedBusinessChatStyle
{
  [(LPTheme *)self _adjustForStyleWithFullWidthBottomButton];
  v3 = [(LPCaptionBarStyle *)self->_captionBar button];
  [v3 setBehavior:1];
}

- (void)_adjustForAppleMusicCollaborativePlaylistStyle
{
  [(LPTheme *)self _adjustForStyleWithFullWidthBottomButton];
  v29 = [MEMORY[0x1E69DC888] labelColor];
  v3 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  v4 = [v3 options];
  [v4 setColor:v29];

  v30 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v5 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  v6 = [v5 handle];
  [v6 setColor:v30];

  v31 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  [v31 setUseFullWidth:1];

  v32 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  [v32 setUseSafeAreaInsetWithPadding:1];

  v33 = outerHorizontalTextMargin(self->_platform);
  v7 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  v8 = [v7 margin];
  [v8 setLeading:v33];

  v9 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  v10 = [v9 margin];
  [v10 setTrailing:v33];

  v11 = +[LPPointUnit zero];
  v12 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  v13 = [v12 margin];
  [v13 setTop:v11];

  v14 = +[LPPointUnit zero];
  v15 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  v16 = [v15 margin];
  [v16 setBottom:v14];

  v17 = +[LPPointUnit zero];
  v18 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  v19 = [v18 padding];
  [v19 setTop:v17];

  v20 = [[LPPointUnit alloc] initWithValue:10.0];
  v21 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  v22 = [v21 padding];
  [v22 setBottom:v20];

  v23 = [[LPPointUnit alloc] initWithValue:4.0];
  v24 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  v25 = [v24 separatorMargin];
  [v25 setBottom:v23];

  v26 = +[LPPointUnit zero];
  v27 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  v28 = [v27 separatorMargin];
  [v28 setTop:v26];
}

- (void)adjustForStyle
{
  v1207[1] = *MEMORY[0x1E69E9840];
  v4 = sizeClassAllowsMedia(self->_sizeClass);
  p_quotedText = v4;
  sizeClass = self->_sizeClass;
  if (sizeClass <= 5)
  {
    if (sizeClass != 1)
    {
      if (sizeClass != 2)
      {
        goto LABEL_35;
      }

      if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters disableTextWrapping]|| self->_platform != 2 && UIContentSizeCategoryCompareToCategory(self->_preferredContentSizeCategory, *MEMORY[0x1E69DDC58]) == NSOrderedAscending)
      {
        v37 = 0;
        v38 = 0;
        v39 = self->_platform == 1;
      }

      else
      {
        v37 = 1;
        v38 = 1;
        v39 = 1;
      }

      v135 = [MEMORY[0x1E69DC888] clearColor];
      backgroundColor = self->_backgroundColor;
      self->_backgroundColor = v135;

      v137 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v138 = [v137 topCaption];
      v1201[0] = MEMORY[0x1E69E9820];
      v1201[1] = 3221225472;
      v1201[2] = __25__LPTheme_adjustForStyle__block_invoke_2;
      v1201[3] = &__block_descriptor_33_e25_v16__0__LPTextViewStyle_8l;
      v1202 = v39;
      [v138 applyToAllTextViewStyles:v1201];

      v139 = +[LPPointUnit zero];
      v140 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v140 setFirstLineLeading:v139];

      v141 = +[LPPointUnit zero];
      v142 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v142 setLastLineDescent:v141];

      if (v39)
      {
        v143 = 3;
      }

      else
      {
        v143 = 2;
      }

      if (v38)
      {
        v144 = 4;
      }

      else
      {
        v144 = v143;
      }

      v145 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v145 setMaximumNumberOfLines:v144];

      platform = self->_platform;
      if (platform <= 6)
      {
        if (((1 << platform) & 0x59) != 0)
        {
          v147 = [[LPPointUnit alloc] initWithValue:17.0];
          v148 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v149 = [v148 captionTextPadding];
          [v149 setTop:v147];

          v150 = [[LPPointUnit alloc] initWithValue:18.0];
          v151 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v152 = [v151 captionTextPadding];
          [v152 setBottom:v150];
        }

        else if (platform == 2)
        {
          v704 = [[LPPointUnit alloc] initWithValue:3.0];
          v705 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v706 = [v705 captionTextPadding];
          [v706 setTop:v704];

          v150 = [[LPPointUnit alloc] initWithValue:4.0];
          v151 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v152 = [v151 captionTextPadding];
          [v152 setBottom:v150];
        }

        else
        {
          if (platform != 5)
          {
            goto LABEL_51;
          }

          v220 = [[LPPointUnit alloc] initWithValue:22.0];
          v221 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v222 = [v221 captionTextPadding];
          [v222 setTop:v220];

          v150 = [[LPPointUnit alloc] initWithValue:22.0];
          v151 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v152 = [v151 captionTextPadding];
          [v152 setBottom:v150];
        }
      }

LABEL_51:
      v153 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v154 = [v153 bottomCaption];
      v1199[0] = MEMORY[0x1E69E9820];
      v1199[1] = 3221225472;
      v1199[2] = __25__LPTheme_adjustForStyle__block_invoke_3;
      v1199[3] = &__block_descriptor_33_e25_v16__0__LPTextViewStyle_8l;
      v1200 = v37;
      [v154 applyToAllTextViewStyles:v1199];

      if (self->_platform == 2)
      {
        v156 = cardHeadingIconSize(2uLL, v155);
        v157 = [LPSize alloc];
        v158 = [v156 height];
        [v158 value];
        v160 = [(LPSize *)v157 initWithSize:0.0, v159];
        v161 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v161 setMinimumSize:v160];

        v162 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v162 setFixedSize:v156];
      }

      else
      {
        v163 = [[LPSize alloc] initWithSquareSize:28.0];
        v164 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v164 setMinimumSize:v163];

        v166 = cardHeadingIconSize(self->_platform, v165);
        v167 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v167 setFixedSize:v166];

        v156 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v156 setRequireFixedSize:1];
      }

      v168 = stylePrefersSmallerCornerRadiusInCardHeading(self->_style);
      v169 = [LPPointUnit alloc];
      v170 = 4.0;
      if (v168)
      {
        v170 = 3.0;
      }

      v171 = [(LPPointUnit *)v169 initWithValue:v170];
      v172 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v172 setCornerRadius:v171];

      if (self->_platform != 5)
      {
        v173 = +[LPShadowStyle cardHeadingIconShadow];
        v174 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v174 setShadow:v173];
      }

      v175 = [[LPPointUnit alloc] initWithValue:17.0];
      v176 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v176 setFixedFallbackImageSize:v175];

      if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters onlyShowIcon])
      {
        v177 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v177 setRequireFixedSize:0];

        v178 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v178 setScalesToFitParent:1];
      }

      v179 = +[LPPointUnit zero];
      v180 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v181 = [v180 margin];
      [v181 setLeading:v179];

      v182 = cardHeadingVerticalIconMargin(self->_platform, self->_sizeClassParameters);
      v183 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v184 = [v183 margin];
      [v184 setTop:v182];

      v185 = cardHeadingVerticalIconMargin(self->_platform, self->_sizeClassParameters);
      v186 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v187 = [v186 margin];
      [v187 setBottom:v185];

      v188 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v188 setFilter:14];

      applyCommonCardHeadingCaptionBarProperties(self->_captionBar, self->_platform, self->_style, self->_sizeClass, self->_isFallbackIcon);
      v189 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
      [v189 setShowSeparator:0];

      v190 = self->_platform;
      if (v190 == 5)
      {
        v191 = +[LPPointUnit zero];
        v192 = [(LPCaptionBarStyle *)self->_captionBar button];
        v193 = [v192 margin];
        [v193 setBottom:v191];

        v194 = +[LPPointUnit zero];
        v195 = [(LPCaptionBarStyle *)self->_captionBar button];
        v196 = [v195 margin];
        [v196 setTop:v194];

        v197 = +[LPPointUnit zero];
        v198 = [(LPCaptionBarStyle *)self->_captionBar button];
        v199 = [v198 margin];
        [v199 setTrailing:v197];

        v200 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [v200 setIgnoreSafeAreaInset:1];

        v190 = self->_platform;
      }

      if (v190 == 1)
      {
        if (self->_hasButton)
        {
          v201 = +[LPPointUnit zero];
          v202 = [(LPCaptionBarStyle *)self->_captionBar button];
          v203 = [v202 margin];
          [v203 setLeading:v201];

          v204 = +[LPPointUnit zero];
          v205 = [(LPCaptionBarStyle *)self->_captionBar button];
          v206 = [v205 margin];
          [v206 setBottom:v204];

          v207 = [[LPPointUnit alloc] initWithValue:12.0];
          v208 = [(LPCaptionBarStyle *)self->_captionBar button];
          v209 = [v208 margin];
          [v209 setTop:v207];

          v210 = +[LPPointUnit zero];
          v211 = [(LPCaptionBarStyle *)self->_captionBar button];
          v212 = [v211 margin];
          [v212 setTrailing:v210];

          [(LPCaptionBarStyle *)self->_captionBar setUsesOutOfLineButton:1];
          [(LPCaptionBarStyle *)self->_captionBar setAddFullWidthLineForButton:1];
          [(LPCaptionBarStyle *)self->_captionBar setButtonIgnoresTextSafeAreaInsets:1];
          v213 = [[LPPointUnit alloc] initWithValue:4.0];
        }

        else
        {
          v213 = [[LPPointUnit alloc] initWithValue:12.0];
        }

        v214 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v215 = [v214 margin];
        [v215 setTop:v213];

        v216 = +[LPPointUnit zero];
        v217 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v218 = [v217 margin];
        [v218 setBottom:v216];

        v294 = [[LPPointUnit alloc] initWithValue:2.0];
        v295 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v296 = [v295 padding];
        [v296 setTop:v294];

        v297 = [[LPPointUnit alloc] initWithValue:0.5];
        v298 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v299 = [v298 padding];
        [v299 setBottom:v297];

        v300 = [[LPPointUnit alloc] initWithValue:6.0];
        v301 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v302 = [v301 padding];
        [v302 setLeading:v300];

        v303 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v304 = [v303 padding];
        v305 = [v304 leading];
        v306 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v307 = [v306 padding];
        [v307 setTrailing:v305];

        v308 = [[LPPointUnit alloc] initWithValue:5.0];
        v309 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [v309 setCornerRadius:v308];
      }

      else
      {
        v219 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [v219 setUseFullWidth:0];
      }

      return;
    }

    if (![(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters needsSpaceAffordanceForDeleteButton])
    {
      v126 = +[LPPointUnit zero];
      [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v126];
    }

    v127 = self->_platform;
    if (v127 <= 6 && ((1 << v127) & 0x75) != 0)
    {
      v128 = &tinyIconSize_iOSSize;
      v129 = tinyIconSize_iOSSize;
      if (tinyIconSize_iOSSize)
      {
LABEL_183:
        v609 = v129;
        v610 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v610 setFixedFallbackImageSize:v609];

        v611 = [LPSize alloc];
        v612 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v613 = [v612 fixedFallbackImageSize];
        v614 = [(LPSize *)v611 initWithSquarePoints:v613];
        v615 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v615 setFixedSize:v614];

        v616 = [[LPPointUnit alloc] initWithValue:6.0];
        v617 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v618 = [v617 margin];
        [v618 setLeading:v616];

        v619 = +[LPPointUnit zero];
        v620 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v621 = [v620 margin];
        [v621 setTrailing:v619];

        v622 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v623 = [v622 margin];
        [v623 setTop:v616];

        v624 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v625 = [v624 margin];
        [v625 setBottom:v616];

        v626 = [[LPPointUnit alloc] initWithValue:5.0];
        v627 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v627 setCornerRadius:v626];

        if (self->_isFallbackIcon)
        {
          v628 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [v628 setFilter:12];

          v629 = [MEMORY[0x1E69DC888] secondaryLabelColor];
          v630 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [v630 setMaskColor:v629];

          v631 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [v631 setScalingMode:3];

          v632 = [[LPPointUnit alloc] initWithValue:-3.0];
          v633 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          v634 = [v633 padding];
          [v634 setTop:v632];

          v635 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          v636 = [v635 padding];
          [v636 setLeading:v632];

          v637 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          v638 = [v637 padding];
          [v638 setBottom:v632];

          v639 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          v640 = [v639 padding];
          [v640 setTrailing:v632];
        }

        v641 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v642 = [v641 captionTextPadding];
        [v642 setLeading:v616];

        v643 = [[LPPointUnit alloc] initWithValue:8.0];
        v644 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v645 = [v644 captionTextPadding];
        [v645 setTrailing:v643];

        v646 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v1203[0] = MEMORY[0x1E69E9820];
        v1203[1] = 3221225472;
        v1203[2] = __25__LPTheme_adjustForStyle__block_invoke;
        v1203[3] = &unk_1E7A36C48;
        v1203[4] = self;
        [v646 applyToAllTextViewStyles:v1203];

        v647 = +[LPPointUnit zero];
        v648 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v648 setFirstLineLeading:v647];

        v649 = +[LPPointUnit zero];
        v650 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v650 setLastLineDescent:v649];

        v651 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v651 setShouldAlignToBaselines:0];

        style = self->_style;
        if (style == 12)
        {
          v653 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [v653 setFilter:5];

          style = self->_style;
        }

        if (style == 18)
        {
          v654 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [v654 setFilter:7];
        }

        return;
      }

      v130 = 24.0;
    }

    else
    {
      v128 = &tinyIconSize_macSize;
      v129 = tinyIconSize_macSize;
      if (tinyIconSize_macSize)
      {
        goto LABEL_183;
      }

      v130 = 16.0;
    }

    v131 = [[LPPointUnit alloc] initWithValue:v130];
    v132 = *v128;
    *v128 = v131;

    v129 = *v128;
    goto LABEL_183;
  }

  switch(sizeClass)
  {
    case 6:
      v40 = [MEMORY[0x1E69DC888] clearColor];
      v41 = self->_backgroundColor;
      self->_backgroundColor = v40;

      v42 = [[LPSize alloc] initWithSquareSize:26.0];
      v43 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v43 setFixedSize:v42];

      v44 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v44 setOpacity:0.5];

      v45 = [[LPPointUnit alloc] initWithValue:8.0];
      v46 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v46 setCornerRadius:v45];

      v47 = [[LPPointUnit alloc] initWithValue:6.0];
      v48 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v49 = [v48 margin];
      [v49 setTop:v47];

      v50 = [[LPPointUnit alloc] initWithValue:6.0];
      v51 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v52 = [v51 margin];
      [v52 setLeading:v50];

      v53 = [[LPPointUnit alloc] initWithValue:6.0];
      v54 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v55 = [v54 captionTextPadding];
      [v55 setLeading:v53];

      v56 = [[LPPointUnit alloc] initWithValue:14.0];
      v57 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v58 = [v57 captionTextPadding];
      [v58 setTrailing:v56];

      v59 = [[LPPointUnit alloc] initWithValue:7.0];
      v60 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v61 = [v60 captionTextPadding];
      [v61 setTop:v59];

      v62 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v63 = [v62 captionTextPadding];
      v64 = [v63 top];
      v65 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v66 = [v65 captionTextPadding];
      [v66 setBottom:v64];

      v67 = +[LPPointUnit zero];
      v68 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v68 setFirstLineLeading:v67];

      v69 = +[LPPointUnit zero];
      v70 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v70 setLastLineDescent:v69];

      v71 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v71 setShouldAlignToBaselines:0];

      v72 = [MEMORY[0x1E69DC888] labelColor];
      v73 = [v72 colorWithAlphaComponent:0.5];

      v74 = [MEMORY[0x1E69DC888] labelColor];
      v75 = [v74 colorWithAlphaComponent:0.25];

      v76 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v77 = [v76 aboveTopCaption];
      v1197[0] = MEMORY[0x1E69E9820];
      v1197[1] = 3221225472;
      v1197[2] = __25__LPTheme_adjustForStyle__block_invoke_6;
      v1197[3] = &unk_1E7A36C48;
      v78 = v73;
      v1198 = v78;
      [v77 applyToAllTextViewStyles:v1197];

      v79 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v80 = [v79 topCaption];
      v1195[0] = MEMORY[0x1E69E9820];
      v1195[1] = 3221225472;
      v1195[2] = __25__LPTheme_adjustForStyle__block_invoke_7;
      v1195[3] = &unk_1E7A36C48;
      v81 = v78;
      v1196 = v81;
      [v80 applyToAllTextViewStyles:v1195];

      v82 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v83 = [v82 bottomCaption];
      v1193[0] = MEMORY[0x1E69E9820];
      v1193[1] = 3221225472;
      v1193[2] = __25__LPTheme_adjustForStyle__block_invoke_8;
      v1193[3] = &unk_1E7A36C48;
      v84 = v75;
      v1194 = v84;
      [v83 applyToAllTextViewStyles:v1193];

      v85 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v86 = [v85 belowBottomCaption];
      v1191[0] = MEMORY[0x1E69E9820];
      v1191[1] = 3221225472;
      v1191[2] = __25__LPTheme_adjustForStyle__block_invoke_9;
      v1191[3] = &unk_1E7A36C48;
      v87 = v84;
      v1192 = v87;
      [v86 applyToAllTextViewStyles:v1191];

      v88 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v88 applyToAllTextViewStyles:&__block_literal_global_1093];

      if (self->_isFallbackIcon)
      {
        v89 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        applyFallbackIconProperties(v89, self->_platform, self->_style, self->_sizeClass);
      }

      return;
    case 7:
      v90 = [MEMORY[0x1E69DC888] clearColor];
      v91 = self->_backgroundColor;
      self->_backgroundColor = v90;

      v92 = [[LPSize alloc] initWithSquareSize:26.0];
      v93 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v93 setFixedSize:v92];

      v94 = [[LPPointUnit alloc] initWithValue:8.0];
      v95 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v95 setCornerRadius:v94];

      v96 = [[LPPointUnit alloc] initWithValue:4.0];
      v97 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v98 = [v97 margin];
      [v98 setTop:v96];

      v99 = [[LPPointUnit alloc] initWithValue:4.0];
      v100 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v101 = [v100 margin];
      [v101 setLeading:v99];

      v102 = [[LPPointUnit alloc] initWithValue:6.0];
      v103 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v104 = [v103 captionTextPadding];
      [v104 setLeading:v102];

      v105 = [[LPPointUnit alloc] initWithValue:4.0];
      v106 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v107 = [v106 captionTextPadding];
      [v107 setTrailing:v105];

      v108 = [[LPPointUnit alloc] initWithValue:5.0];
      v109 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v110 = [v109 captionTextPadding];
      [v110 setTop:v108];

      v111 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v112 = [v111 captionTextPadding];
      v113 = [v112 top];
      v114 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v115 = [v114 captionTextPadding];
      [v115 setBottom:v113];

      v116 = +[LPPointUnit zero];
      v117 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v117 setFirstLineLeading:v116];

      v118 = +[LPPointUnit zero];
      v119 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v119 setLastLineDescent:v118];

      v120 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v120 setShouldAlignToBaselines:0];

      v121 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v121 applyToAllTextViewStyles:&__block_literal_global_1095];

      v122 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v123 = [v122 topCaption];
      [v123 applyToAllTextViewStyles:&__block_literal_global_1097];

      v124 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v125 = [v124 bottomCaption];
      [v125 applyToAllTextViewStyles:&__block_literal_global_1099];

      if (!self->_isFallbackIcon)
      {
        return;
      }

      v1182 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      applyFallbackIconProperties(v1182, self->_platform, self->_style, self->_sizeClass);
      goto LABEL_25;
    case 13:
      if (self->_platform == 5)
      {
        v7 = 64.0;
      }

      else
      {
        v7 = 50.0;
      }

      v8 = [[LPSize alloc] initWithSquareSize:v7];
      v9 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v9 setFixedSize:v8];

      v10 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v10 setRequireFixedSize:1];

      v11 = self->_platform;
      if (v11 >= 5)
      {
        if (v11 == 5)
        {
          v12 = &listIconCornerRadius_visionSize;
          v13 = listIconCornerRadius_visionSize;
          if (listIconCornerRadius_visionSize)
          {
            goto LABEL_12;
          }

          v14 = 10.0;
          goto LABEL_11;
        }

        if (v11 != 6)
        {
          goto LABEL_13;
        }
      }

      v12 = &listIconCornerRadius_normalSize;
      v13 = listIconCornerRadius_normalSize;
      if (listIconCornerRadius_normalSize)
      {
LABEL_12:
        v10 = v13;
LABEL_13:
        v17 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v17 setCornerRadius:v10];

        v18 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v18 setFilter:14];

        v19 = listIconOuterMargin_normalSize;
        if (!listIconOuterMargin_normalSize)
        {
          v20 = [[LPPointUnit alloc] initWithValue:12.0];
          v21 = listIconOuterMargin_normalSize;
          listIconOuterMargin_normalSize = v20;

          v19 = listIconOuterMargin_normalSize;
        }

        v1182 = v19;
        v22 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v23 = [v22 margin];
        [v23 setLeading:v1182];

        v24 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v25 = [v24 margin];
        [v25 setTop:v1182];

        v26 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v27 = [v26 margin];
        [v27 setBottom:v1182];

        v28 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v28 applyToAllTextViewStyles:&__block_literal_global_1089];

        v29 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v30 = [v29 topCaption];
        [v30 applyToAllTextViewStyles:&__block_literal_global_1091];

        v31 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v31 setMaximumNumberOfLines:2];

        v32 = +[LPPointUnit zero];
        v33 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v33 setFirstLineLeading:v32];

        v34 = +[LPPointUnit zero];
        v35 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v35 setLastLineDescent:v34];

        v36 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v36 setShouldAlignToBaselines:0];

        applyCommonListOrCaptionBarIconProperties(self->_captionBar, self->_platform, self->_style, self->_sizeClass, self->_isFallbackIcon);
LABEL_25:

        return;
      }

      v14 = 14.0;
LABEL_11:
      v15 = [[LPPointUnit alloc] initWithValue:v14];
      v16 = *v12;
      *v12 = v15;

      v13 = *v12;
      goto LABEL_12;
  }

LABEL_35:
  v133 = self->_style;
  if (v133 != 3)
  {
    goto LABEL_87;
  }

  v2 = self->_platform;
  if (!+[LPTestingOverrides forceMonospaceFonts])
  {
    if (v2 <= 6)
    {
      if (((1 << v2) & 0x53) != 0)
      {
        v134 = fontWithTraits(*MEMORY[0x1E69DDD00], 0, sizeClass);
        goto LABEL_75;
      }

      if (v2 == 2)
      {
        v134 = fontWithTraits(*MEMORY[0x1E69DDD38], 0x8000, sizeClass);
        goto LABEL_75;
      }

      if (v2 == 5)
      {
        v134 = fontWithTraits(*MEMORY[0x1E69DDCF8], 0, sizeClass);
        goto LABEL_75;
      }
    }

    v134 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB988]];
    goto LABEL_75;
  }

  v134 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:11.0 weight:*MEMORY[0x1E69DB988]];
LABEL_75:
  v223 = v134;
  [(LPTextViewStyle *)self->_quotedText setFont:v134];

  [(LPQuotedTextViewStyle *)self->_quotedText setMaximumLinesToConsiderShort:0];
  [(LPTextViewStyle *)self->_quotedText setMaximumCharacters:0];
  if (self->_platform == 2)
  {
    v224 = 7;
  }

  else
  {
    v224 = 30;
  }

  [(LPTextViewStyle *)self->_quotedText setMaximumLines:v224];
  [(LPTextViewStyle *)self->_quotedText setMaximumLinesWithMedia:7];
  [(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters minimumMediaCornerRadius];
  v226 = v225;
  if (v225 == 0.0)
  {
    v227 = self->_platform;
    if (v227 <= 6)
    {
      v223 = [[LPPointUnit alloc] initWithValue:dbl_1AE9C6890[v227]];
    }

    v228 = [(LPTextViewStyle *)self->_quotedText padding];
    [v228 setTop:v223];

    v229 = +[LPPointUnit zero];
    v2 = [(LPTextViewStyle *)self->_quotedText padding];
    [v2 setBottom:v229];
  }

  [(LPQuotedTextViewStyle *)self->_quotedText setShowQuoteIndicator:0];
  [(LPQuotedTextViewStyle *)self->_quotedText setShowCharacterLimitIndicator:0];
  v230 = [MEMORY[0x1E69DC888] clearColor];
  mediaBackgroundColor = self->_mediaBackgroundColor;
  self->_mediaBackgroundColor = v230;

  if (self->_sizeClass != 8)
  {
    if (v226 == 0.0)
    {
      v232 = pt(self->_leadingScalingFactor * 24.0);
      v233 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v233 setFirstLineLeading:v232];

      v234 = pt(self->_leadingScalingFactor * 13.0);
      v235 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v235 setLastLineDescent:v234];

      v236 = tweetTextToIconPadding(self->_platform);
      v237 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v238 = [v237 captionTextPadding];
      [v238 setLeading:v236];

      v239 = tweetTextOuterPadding(self->_platform);
      v240 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v241 = [v240 captionTextPadding];
      [v241 setTrailing:v239];
    }

    v242 = outerHorizontalTextMargin(self->_platform);
    v243 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v244 = [v243 margin];
    [v244 setLeading:v242];

    v245 = +[LPPointUnit zero];
    v246 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v247 = [v246 margin];
    [v247 setTrailing:v245];

    v248 = [[LPSize alloc] initWithSquareSize:25.0];
    v2 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v2 setFixedSize:v248];
  }

  v133 = self->_style;
LABEL_87:
  if (v133 == 2)
  {
    if (![(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters needsSpaceAffordanceForDeleteButton])
    {
      v249 = +[LPPointUnit zero];
      [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v249];
    }

    v250 = [[LPSize alloc] initWithSquareSize:32.0];
    v251 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v251 setFixedSize:v250];

    v252 = +[LPPointUnit zero];
    v253 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v254 = [v253 margin];
    [v254 setTop:v252];

    v255 = +[LPPointUnit zero];
    v256 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v257 = [v256 margin];
    [v257 setBottom:v255];

    v258 = [[LPPointUnit alloc] initWithValue:24.0];
    v259 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v259 setFixedFallbackImageSize:v258];

    v260 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v261 = [v260 fixedSize];
    v262 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v262 setFixedSize:v261];

    v263 = +[LPPointUnit zero];
    v264 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    v265 = [v264 margin];
    [v265 setTop:v263];

    v266 = +[LPPointUnit zero];
    v267 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    v268 = [v267 margin];
    [v268 setBottom:v266];

    v269 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v270 = [v269 fixedFallbackImageSize];
    v271 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v271 setFixedFallbackImageSize:v270];

    v272 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v273 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v1189[0] = MEMORY[0x1E69E9820];
    v1189[1] = 3221225472;
    v1189[2] = __25__LPTheme_adjustForStyle__block_invoke_14;
    v1189[3] = &unk_1E7A36C48;
    v2 = v272;
    v1190 = v2;
    [(LPPointUnit *)v273 applyToAllTextViewStyles:v1189];

    v274 = self->_platform;
    if (v274 <= 6)
    {
      v273 = [[LPPointUnit alloc] initWithValue:self->_leadingScalingFactor * dbl_1AE9C68C8[v274]];
    }

    v275 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [v275 setFirstLineLeading:v273];

    v276 = self->_platform;
    if (v276 <= 6)
    {
      v273 = [[LPPointUnit alloc] initWithValue:self->_leadingScalingFactor * dbl_1AE9C6900[v276]];
    }

    v277 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [v277 setLastLineDescent:v273];

    v133 = self->_style;
  }

  if (v133 == 15)
  {
    v278 = [[LPTapToLoadViewStyle alloc] initWithPlatform:self->_platform sizeClass:self->_sizeClass fontScalingFactor:self->_leadingScalingFactor];
    tapToLoad = self->_tapToLoad;
    self->_tapToLoad = v278;

    if (![(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters needsSpaceAffordanceForDeleteButton])
    {
      v280 = +[LPPointUnit zero];
      [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v280];
    }

    v281 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v2 = [v281 topCaption];
    v282 = [v2 leading];
    [v282 setMaximumLines:1];

    v133 = self->_style;
  }

  if (v133 == 4)
  {
    if (![(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters needsSpaceAffordanceForDeleteButton])
    {
      v283 = +[LPPointUnit zero];
      [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v283];
    }

    v284 = [[LPGlyphStyle alloc] initSearchGlyph];
    v285 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v286 = [v285 topCaption];
    v287 = [v286 leading];
    [v287 setLeadingGlyph:v284];

    v288 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v289 = [v288 topCaption];
    v290 = [v289 leading];
    [v290 setMaximumLines:1];

    v291 = [[LPSize alloc] initWithSquareSize:24.0];
    v2 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v2 setFixedSize:v291];

    v133 = self->_style;
  }

  if (v133 <= 0x2A && ((1 << v133) & 0x40000480020) != 0)
  {
    if (rowConfigurationForSizeClass(self->_sizeClass) == 3)
    {
      v292 = sizeClassRequiresTrailingIcon(self->_sizeClass);
      captionBar = self->_captionBar;
      if (v292)
      {
        [(LPCaptionBarStyle *)captionBar trailingIcon];
      }

      else
      {
        [(LPCaptionBarStyle *)captionBar leadingIcon];
      }
      v310 = ;

      v311 = self->_platform;
      v312 = 0.0;
      if (v311 <= 6)
      {
        v312 = dbl_1AE9C6938[v311];
      }

      v313 = [[LPSize alloc] initWithSquareSize:v312];
      [v310 setFixedSize:v313];

      v314 = [[LPPointUnit alloc] initWithValue:4.0];
      [v310 setCornerRadius:v314];

      v315 = [[LPPointUnit alloc] initWithValue:12.0];
      v316 = [v310 margin];
      [v316 setTop:v315];

      v317 = [[LPPointUnit alloc] initWithValue:12.0];
      v318 = [v310 margin];
      [v318 setBottom:v317];

      if (![(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters needsSpaceAffordanceForDeleteButton])
      {
        v319 = self->_platform;
        if (v319 <= 6)
        {
          v317 = [[LPPointUnit alloc] initWithValue:dbl_1AE9C6970[v319]];
        }

        [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v317];
      }
    }

    v320 = [MEMORY[0x1E69DC888] labelColor];
    v2 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v321 = [v2 bottomCaption];
    v322 = [v321 leading];
    [v322 setColor:v320];

    v133 = self->_style;
    if (v133 == 42)
    {
      v1206 = *MEMORY[0x1E69DB8F0];
      v1204 = *MEMORY[0x1E69DB990];
      v323 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
      v1205 = v323;
      v324 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1205 forKeys:&v1204 count:1];
      v1207[0] = v324;
      v325 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v1207 forKeys:&v1206 count:1];
      v326 = fontWithTraitsAndAttributes(*MEMORY[0x1E69DDDC8], 32770, v325, self->_sizeClass);
      [(LPTextViewStyle *)self->_quotedText setFont:v326];

      [(LPQuotedTextViewStyle *)self->_quotedText setMaximumLinesToConsiderShort:0];
      [(LPTextViewStyle *)self->_quotedText setMaximumCharacters:0];
      [(LPQuotedTextViewStyle *)self->_quotedText setShowQuoteIndicator:0];
      [(LPQuotedTextViewStyle *)self->_quotedText setShowCharacterLimitIndicator:0];
      v327 = [[LPPointUnit alloc] initWithValue:6.0];
      [(LPTextViewStyle *)self->_quotedText setParagraphSpacing:v327];

      [(LPTextViewStyle *)self->_quotedText setMaximumLines:20];
      v328 = [MEMORY[0x1E69DC888] whiteColor];
      [(LPTextViewStyle *)self->_quotedText setColor:v328];

      v329 = [[LPPointUnit alloc] initWithValue:15.0];
      v330 = [(LPTextViewStyle *)self->_quotedText padding];
      [v330 setTop:v329];

      v331 = [(LPTextViewStyle *)self->_quotedText padding];
      v332 = [v331 top];
      v333 = [(LPTextViewStyle *)self->_quotedText padding];
      [v333 setBottom:v332];

      v334 = [[LPPointUnit alloc] initWithValue:16.0];
      v335 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v336 = [v335 captionTextPadding];
      [v336 setLeading:v334];

      v337 = [[LPPointUnit alloc] initWithValue:self->_leadingScalingFactor * 46.0];
      v338 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v339 = [v338 captionTextPadding];
      [v339 setTrailing:v337];

      v340 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v341 = [v340 captionTextPadding];
      v342 = [v341 leading];
      v343 = [(LPTextViewStyle *)self->_quotedText padding];
      [v343 setLeading:v342];

      v344 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v345 = [v344 captionTextPadding];
      v346 = [v345 trailing];
      v347 = [(LPTextViewStyle *)self->_quotedText padding];
      [v347 setTrailing:v346];

      v348 = fontWithTraits(*MEMORY[0x1E69DDD10], 0, self->_sizeClass);
      v349 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
      v350 = [v349 topCaption];
      v351 = [v350 trailing];
      [v351 setFont:v348];

      v352 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.45];
      v353 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
      v354 = [v353 topCaption];
      v355 = [v354 trailing];
      [v355 setColor:v352];

      v356 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
      v357 = [v356 topCaption];
      v358 = [v357 trailing];
      v359 = *MEMORY[0x1E6979CF8];
      [v358 setCompositingFilter:*MEMORY[0x1E6979CF8]];

      v360 = [[LPPointUnit alloc] initWithValue:16.0];
      v361 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
      v362 = [v361 captionTextPadding];
      [v362 setTrailing:v360];

      v363 = [[LPPointUnit alloc] initWithValue:14.0];
      v364 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
      [v364 setLastLineDescent:v363];

      v365 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v365 applyToAllTextViewStyles:&__block_literal_global_1105];

      v366 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
      v367 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v368 = [v367 belowBottomCaption];
      v369 = [v368 leading];
      [v369 setColor:v366];

      v2 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v370 = [v2 belowBottomCaption];
      v371 = [v370 leading];
      [v371 setCompositingFilter:v359];

      v372 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
      [(LPCaptionBarStyle *)self->_captionBar setBackgroundColor:v372];

      v373 = [MEMORY[0x1E69DC888] clearColor];
      v374 = self->_mediaBackgroundColor;
      self->_mediaBackgroundColor = v373;

      v133 = self->_style;
    }
  }

  if (v133 == 61)
  {
    v375 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [v375 applyToAllTextViewStyles:&__block_literal_global_1107];

    v376 = fontWithTraits(*MEMORY[0x1E69DDD40], 0, self->_sizeClass);
    v377 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v378 = [v377 topCaption];
    v379 = [v378 leading];
    [v379 setFont:v376];

    v380 = fontWithTraits(*MEMORY[0x1E69DDD80], 2, self->_sizeClass);
    v381 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v382 = [v381 bottomCaption];
    v383 = [v382 leading];
    [v383 setFont:v380];

    v384 = fontWithTraits(*MEMORY[0x1E69DDD28], 0, self->_sizeClass);
    v385 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v386 = [v385 belowBottomCaption];
    v387 = [v386 leading];
    [v387 setFont:v384];

    v388 = [[LPSize alloc] initWithSquareSize:40.0];
    v389 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v389 setFixedSize:v388];

    v390 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v390 setFilter:5];

    v391 = [[LPPointUnit alloc] initWithValue:20.0];
    v392 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v392 setCornerRadius:v391];

    v393 = [[LPPointUnit alloc] initWithValue:12.0];
    v394 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v395 = [v394 captionTextPadding];
    [v395 setLeading:v393];

    v396 = [[LPPointUnit alloc] initWithValue:12.0];
    v2 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v397 = [v2 captionTextPadding];
    [v397 setLeading:v396];

    v133 = self->_style;
  }

  if (v133 <= 0x38 && ((1 << v133) & 0x100000000300240) != 0)
  {
    v398 = [MEMORY[0x1E69DC888] labelColor];
    v2 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v399 = [v2 bottomCaption];
    v400 = [v399 leading];
    [v400 setColor:v398];

    if (!sizeClassAllowsInsetMedia(self->_sizeClass) || (sizeClassUsesVisualRefresh(self->_sizeClass) & 1) != 0)
    {
      goto LABEL_132;
    }

    v401 = [[LPSize alloc] initWithSquareSize:172.0];
    [(LPImageViewStyle *)self->_mediaImage setFixedSize:v401];

    p_mediaImage = &self->_mediaImage;
    [(LPImageViewStyle *)self->_mediaImage setFilter:14];
    [(LPImageViewStyle *)self->_mediaImage setScalingMode:2];
    v403 = self->_platform;
    if (v403 >= 5)
    {
      if (v403 == 5)
      {
        v404 = &musicAlbumCornerRadius_visionSize;
        v405 = musicAlbumCornerRadius_visionSize;
        if (musicAlbumCornerRadius_visionSize)
        {
          goto LABEL_130;
        }

        v406 = 7.0;
        goto LABEL_129;
      }

      if (v403 != 6)
      {
        goto LABEL_131;
      }
    }

    v404 = &musicAlbumCornerRadius_normalSize;
    v405 = musicAlbumCornerRadius_normalSize;
    if (musicAlbumCornerRadius_normalSize)
    {
LABEL_130:
      p_mediaImage = v405;
LABEL_131:
      [(LPImageViewStyle *)self->_mediaImage setCornerRadius:p_mediaImage];

      v409 = outerHorizontalTextMargin(self->_platform);
      v410 = [(LPImageViewStyle *)self->_mediaImage padding];
      [v410 setLeading:v409];

      v411 = outerHorizontalTextMargin(self->_platform);
      v412 = [(LPImageViewStyle *)self->_mediaImage padding];
      [v412 setTrailing:v411];

      v413 = outerHorizontalTextMargin(self->_platform);
      v2 = [(LPImageViewStyle *)self->_mediaImage padding];
      [v2 setTop:v413];

LABEL_132:
      v414 = [MEMORY[0x1E69DC888] clearColor];
      [(LPImageViewStyle *)self->_mediaImage setBackgroundColor:v414];

      v415 = [MEMORY[0x1E69DC888] clearColor];
      v416 = self->_mediaBackgroundColor;
      self->_mediaBackgroundColor = v415;

      v133 = self->_style;
      goto LABEL_133;
    }

    v406 = 4.0;
LABEL_129:
    v407 = [[LPPointUnit alloc] initWithValue:v406];
    v408 = *v404;
    *v404 = v407;

    v405 = *v404;
    goto LABEL_130;
  }

LABEL_133:
  if ((v133 == 40 || v133 == 7) && p_quotedText)
  {
    v417 = [LPSize alloc];
    v418 = self->_platform;
    if (v418 >= 5)
    {
      if (v418 == 5)
      {
        v419 = &musicArtistDiameter_visionSize;
        v420 = musicArtistDiameter_visionSize;
        if (musicArtistDiameter_visionSize)
        {
          goto LABEL_140;
        }

        v421 = 163.0;
        goto LABEL_139;
      }

      if (v418 != 6)
      {
        goto LABEL_141;
      }
    }

    v419 = &musicArtistDiameter_normalSize;
    v420 = musicArtistDiameter_normalSize;
    if (musicArtistDiameter_normalSize)
    {
LABEL_140:
      v2 = v420;
LABEL_141:
      v424 = [(LPSize *)v417 initWithSquarePoints:v2];
      [(LPImageViewStyle *)self->_mediaImage setFixedSize:v424];

      [(LPImageViewStyle *)self->_mediaImage setFilter:13];
      [(LPImageViewStyle *)self->_mediaImage setScalingMode:2];
      v426 = musicArtistOuterPadding(self->_platform, v425);
      v427 = [(LPImageViewStyle *)self->_mediaImage padding];
      [v427 setLeading:v426];

      v429 = musicArtistOuterPadding(self->_platform, v428);
      v430 = [(LPImageViewStyle *)self->_mediaImage padding];
      [v430 setTrailing:v429];

      v432 = musicArtistOuterPadding(self->_platform, v431);
      v433 = [(LPImageViewStyle *)self->_mediaImage padding];
      [v433 setTop:v432];

      v434 = [MEMORY[0x1E69DC888] clearColor];
      [(LPImageViewStyle *)self->_mediaImage setBackgroundColor:v434];

      v435 = [MEMORY[0x1E69DC888] clearColor];
      v436 = self->_mediaBackgroundColor;
      self->_mediaBackgroundColor = v435;

      v437 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v438 = [v437 topCaption];
      v439 = [v438 leading];
      [v439 setTextAlignment:2];

      v440 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v441 = [v440 bottomCaption];
      v442 = [v441 leading];
      [v442 setTextAlignment:2];

      v443 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v444 = [v443 belowBottomCaption];
      v445 = [v444 leading];
      [v445 setTextAlignment:2];

      v133 = self->_style;
      goto LABEL_142;
    }

    v421 = 172.0;
LABEL_139:
    v422 = [[LPPointUnit alloc] initWithValue:v421];
    v423 = *v419;
    *v419 = v422;

    v420 = *v419;
    goto LABEL_140;
  }

LABEL_142:
  if (v133 <= 0x38 && ((1 << v133) & 0x100000000000300) != 0)
  {
    v446 = [MEMORY[0x1E69DC888] labelColor];
    v447 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v448 = [v447 bottomCaption];
    v449 = [v448 leading];
    [v449 setColor:v446];

    v133 = self->_style;
  }

  if (v133 == 17)
  {
    v450 = [[LPSize alloc] initWithSquareSize:18.0];
    v451 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    [v451 setFixedSize:v450];

    v452 = [[LPPointUnit alloc] initWithValue:8.0];
    v453 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    v454 = [v453 margin];
    [v454 setLeading:v452];

    v455 = [[LPPointUnit alloc] initWithValue:8.0];
    v456 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    v457 = [v456 margin];
    [v457 setTop:v455];

    v458 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    [v458 setFilter:3];

    v459 = [[LPPointUnit alloc] initWithValue:5.0];
    v460 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    [v460 setCornerRadius:v459];

    v133 = self->_style;
  }

  if (v133 == 24)
  {
    v461 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v462 = [v461 topCaption];
    v463 = [v462 leading];
    [v463 setMaximumLines:0];

    v464 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v465 = [v464 bottomCaption];
    v466 = [v465 leading];
    [v466 setMaximumLines:0];

    v467 = bottomCaptionFont(self->_platform, self->_sizeClass);
    v468 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v469 = [v468 topCaption];
    v470 = [v469 leading];
    [v470 setFont:v467];

    v471 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v472 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v473 = [v472 topCaption];
    v474 = [v473 leading];
    [v474 setColor:v471];

    v475 = topCaptionFont(self->_platform, self->_sizeClass);
    v476 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v477 = [v476 bottomCaption];
    v478 = [v477 leading];
    [v478 setFont:v475];

    v479 = [MEMORY[0x1E69DC888] labelColor];
    v480 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v481 = [v480 bottomCaption];
    v482 = [v481 leading];
    [v482 setColor:v479];

    v133 = self->_style;
  }

  if (v133 == 27)
  {
    v483 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v484 = [v483 topCaption];
    v485 = [v484 leading];
    [v485 setMaximumLines:0];

    v486 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v487 = [v486 bottomCaption];
    v488 = [v487 leading];
    [v488 setMaximumLines:0];

    v489 = topCaptionFont(self->_platform, self->_sizeClass);
    v490 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v491 = [v490 bottomCaption];
    v492 = [v491 leading];
    [v492 setFont:v489];

    v493 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v493 setFilter:1];

    v494 = businessChatApplePayIconSize_normalSize;
    if (!businessChatApplePayIconSize_normalSize)
    {
      v495 = [[LPSize alloc] initWithSize:60.0, 30.0];
      v496 = businessChatApplePayIconSize_normalSize;
      businessChatApplePayIconSize_normalSize = v495;

      v494 = businessChatApplePayIconSize_normalSize;
    }

    v497 = v494;
    v498 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v498 setFixedSize:v497];

    v499 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v499 setVerticalAlignment:1];

    v500 = [[LPPointUnit alloc] initWithValue:8.0];
    v501 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    v502 = [v501 margin];
    [v502 setTop:v500];

    v503 = [[LPPointUnit alloc] initWithValue:263.0];
    maximumWidth = self->_maximumWidth;
    self->_maximumWidth = v503;

    v505 = [[LPPointUnit alloc] initWithValue:222.0];
    [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v505];

    v133 = self->_style;
  }

  if (v133 == 30)
  {
    v506 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v507 = [v506 topCaption];
    v508 = [v507 leading];
    [v508 setMaximumLines:0];

    v509 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v510 = [v509 bottomCaption];
    v511 = [v510 leading];
    [v511 setMaximumLines:0];

    v512 = topCaptionFont(self->_platform, self->_sizeClass);
    v513 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v514 = [v513 bottomCaption];
    v515 = [v514 leading];
    [v515 setFont:v512];

    v516 = [[LPPointUnit alloc] initWithValue:263.0];
    v517 = self->_maximumWidth;
    self->_maximumWidth = v516;

    v518 = [[LPPointUnit alloc] initWithValue:222.0];
    [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v518];

    v133 = self->_style;
  }

  if (v133 == 29)
  {
    v519 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v520 = [v519 topCaption];
    v521 = [v520 leading];
    [v521 setMaximumLines:0];

    v522 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v523 = [v522 bottomCaption];
    v524 = [v523 leading];
    [v524 setMaximumLines:0];

    v525 = topCaptionFont(self->_platform, self->_sizeClass);
    v526 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v527 = [v526 bottomCaption];
    v528 = [v527 leading];
    [v528 setFont:v525];

    v529 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v529 setFilter:3];

    v530 = [[LPPointUnit alloc] initWithValue:10.0];
    v531 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v531 setCornerRadius:v530];

    v532 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v532 setFilter:3];

    v533 = [[LPPointUnit alloc] initWithValue:10.0];
    v534 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v534 setCornerRadius:v533];

    v535 = businessChatImageSmallSize();
    v536 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v536 setFixedSize:v535];

    v537 = businessChatImageSmallSize();
    v538 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v538 setFixedSize:v537];

    v539 = [[LPPointUnit alloc] initWithValue:10.0];
    v540 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    v541 = [v540 margin];
    [v541 setTop:v539];

    v542 = [[LPPointUnit alloc] initWithValue:10.0];
    v543 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    v544 = [v543 margin];
    [v544 setBottom:v542];

    v545 = [[LPPointUnit alloc] initWithValue:10.0];
    v546 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v547 = [v546 margin];
    [v547 setTop:v545];

    v548 = [[LPPointUnit alloc] initWithValue:10.0];
    v549 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v550 = [v549 margin];
    [v550 setBottom:v548];

    v551 = [[LPPointUnit alloc] initWithValue:263.0];
    v552 = self->_maximumWidth;
    self->_maximumWidth = v551;

    v553 = [[LPPointUnit alloc] initWithValue:222.0];
    [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v553];

    v133 = self->_style;
  }

  if (v133 == 28)
  {
    v554 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v555 = [v554 topCaption];
    v556 = [v555 leading];
    [v556 setMaximumLines:0];

    v557 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v558 = [v557 bottomCaption];
    v559 = [v558 leading];
    [v559 setMaximumLines:0];

    v560 = topCaptionFont(self->_platform, self->_sizeClass);
    v561 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    v562 = [v561 bottomCaption];
    v563 = [v562 leading];
    [v563 setFont:v560];

    v564 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v564 setFilter:3];

    v565 = [[LPPointUnit alloc] initWithValue:10.0];
    v566 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v566 setCornerRadius:v565];

    v567 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v567 setFilter:3];

    v568 = [[LPPointUnit alloc] initWithValue:10.0];
    v569 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v569 setCornerRadius:v568];

    v570 = businessChatImageIconSize();
    v571 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v571 setFixedSize:v570];

    v572 = businessChatImageIconSize();
    v573 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v573 setFixedSize:v572];

    v574 = [[LPPointUnit alloc] initWithValue:10.0];
    v575 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    v576 = [v575 margin];
    [v576 setTop:v574];

    v577 = [[LPPointUnit alloc] initWithValue:10.0];
    v578 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    v579 = [v578 margin];
    [v579 setBottom:v577];

    v580 = [[LPPointUnit alloc] initWithValue:10.0];
    v581 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v582 = [v581 margin];
    [v582 setTop:v580];

    v583 = [[LPPointUnit alloc] initWithValue:10.0];
    v584 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v585 = [v584 margin];
    [v585 setBottom:v583];

    v586 = [[LPPointUnit alloc] initWithValue:263.0];
    v587 = self->_maximumWidth;
    self->_maximumWidth = v586;

    v588 = [[LPPointUnit alloc] initWithValue:222.0];
    [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v588];

    v133 = self->_style;
  }

  if (v133 == 12)
  {
    v589 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v589 setFilter:5];

    v133 = self->_style;
  }

  if (v133 == 18)
  {
    v590 = iMessageAppLinkIconSize(self->_platform);
    v591 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v591 setFixedSize:v590];

    v592 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v592 setFilter:7];

    v133 = self->_style;
  }

  if (v133 == 46 || v133 == 16)
  {
    v593 = sizeClassRequiresTrailingIcon(self->_sizeClass);
    v594 = self->_captionBar;
    if (v593)
    {
      [(LPCaptionBarStyle *)v594 trailingIcon];
    }

    else
    {
      [(LPCaptionBarStyle *)v594 leadingIcon];
    }
    v595 = ;

    v596 = [[LPPointUnit alloc] initWithValue:9.0];
    v597 = [v595 margin];
    [v597 setLeading:v596];

    v598 = [v595 margin];
    [v598 setTop:v596];

    v599 = [v595 margin];
    [v599 setBottom:v596];

    v600 = self->_platform;
    if (self->_style == 46)
    {
      if (v600 > 3)
      {
        if (v600 != 6)
        {
          if (v600 == 5)
          {
            v601 = faceTimeIconSize_visionSize;
            if (faceTimeIconSize_visionSize)
            {
              goto LABEL_196;
            }

            v602 = [[LPSize alloc] initWithSize:44.0, 56.0];
            v603 = &faceTimeIconSize_visionSize;
            goto LABEL_195;
          }

          if (v600 != 4)
          {
            goto LABEL_197;
          }
        }
      }

      else if (v600 >= 2)
      {
        if (v600 == 2)
        {
          v601 = faceTimeIconSize_watchSize;
          if (faceTimeIconSize_watchSize)
          {
            goto LABEL_196;
          }

          v602 = [[LPSize alloc] initWithSquareSize:22.0];
          v603 = &faceTimeIconSize_watchSize;
        }

        else
        {
          if (v600 != 3)
          {
            goto LABEL_197;
          }

          v601 = faceTimeIconSize_htmlSize;
          if (faceTimeIconSize_htmlSize)
          {
            goto LABEL_196;
          }

          v602 = [[LPSize alloc] initWithSize:30.0, 20.0];
          v603 = &faceTimeIconSize_htmlSize;
        }

        goto LABEL_195;
      }

      v601 = faceTimeIconSize_normalSize;
      if (faceTimeIconSize_normalSize)
      {
LABEL_196:
        v599 = v601;
LABEL_197:
        [v595 setFixedSize:v599];

        if (self->_platform == 5)
        {
          [v595 setFixedFallbackImageWeight:&unk_1F2483590];
          [v595 setFixedFallbackImageFontTextStyle:*MEMORY[0x1E69DDDC8]];
        }

        goto LABEL_199;
      }

      v602 = [[LPSize alloc] initWithSquareSize:30.0];
      v603 = &faceTimeIconSize_normalSize;
LABEL_195:
      v655 = *v603;
      *v603 = v602;

      v601 = *v603;
      goto LABEL_196;
    }

    if (v600 > 6)
    {
LABEL_181:
      [v595 setFixedSize:v599];

LABEL_199:
      if (!sizeClassRequiresTrailingIcon(self->_sizeClass))
      {
        v656 = [[LPPointUnit alloc] initWithValue:8.0];
        v657 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v658 = [v657 captionTextPadding];
        [v658 setLeading:v656];
      }

      if (self->_style != 46 || (sizeClassAllowsPillButton(self->_sizeClass) & 1) == 0)
      {
        v659 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v660 = [v659 topCaption];
        v661 = [v660 leading];
        [v661 setMaximumLines:1];
      }

      v133 = self->_style;
      goto LABEL_205;
    }

    if (v600 == 2)
    {
      v604 = &iCloudDocumentShareIconSize_watchSize;
      v605 = iCloudDocumentShareIconSize_watchSize;
      if (iCloudDocumentShareIconSize_watchSize)
      {
        goto LABEL_180;
      }

      v606 = 22.0;
    }

    else
    {
      v604 = &iCloudDocumentShareIconSize_normalSize;
      v605 = iCloudDocumentShareIconSize_normalSize;
      if (iCloudDocumentShareIconSize_normalSize)
      {
LABEL_180:
        v599 = v605;
        goto LABEL_181;
      }

      v606 = 30.0;
    }

    v607 = [[LPSize alloc] initWithSquareSize:v606];
    v608 = *v604;
    *v604 = v607;

    v605 = *v604;
    goto LABEL_180;
  }

LABEL_205:
  if (v133 == 26)
  {
    v662 = sizeClassRequiresTrailingIcon(self->_sizeClass);
    v663 = self->_captionBar;
    if (v662)
    {
      [(LPCaptionBarStyle *)v663 trailingIcon];
    }

    else
    {
      [(LPCaptionBarStyle *)v663 leadingIcon];
    }
    v664 = ;

    [v664 setFilter:7];
    v665 = iMessageAppLinkIconSize(self->_platform);
    [v664 setFixedSize:v665];

    v666 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    [v666 setFilter:7];

    v667 = iMessageAppLinkIconSize(self->_platform);
    v668 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    [v668 setFixedSize:v667];

    v133 = self->_style;
  }

  if (v133 == 31)
  {
    v669 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v670 = [v669 topCaption];
    v671 = [v670 leading];
    [v671 setMaximumLines:10];

    v672 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v673 = [v672 bottomCaption];
    v674 = [v673 leading];
    [v674 setMaximumLines:10];

    v675 = [[LPPointUnit alloc] initWithValue:17.0];
    v676 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v676 setFixedFallbackImageSize:v675];

    v677 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v678 = [v677 fixedFallbackImageSize];
    v679 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [v679 setFixedFallbackImageSize:v678];

    v133 = self->_style;
  }

  if (v133 == 59)
  {
    v680 = [[LPSize alloc] initWithSquareSize:60.0];
    [(LPImageViewStyle *)self->_mediaImage setMaximumSize:v680];
    [(LPImageViewStyle *)self->_mediaImage setFixedSize:v680];
    [(LPImageViewStyle *)self->_mediaImage setScalingMode:1];
    v681 = [[LPPointUnit alloc] initWithValue:10.0];
    v682 = [(LPImageViewStyle *)self->_mediaImage padding];
    [v682 setTop:v681];

    v683 = [[LPPointUnit alloc] initWithValue:10.0];
    v684 = [(LPImageViewStyle *)self->_mediaImage padding];
    [v684 setBottom:v683];

    [(LPImageViewStyle *)self->_mediaImage setDarkeningAmount:0.0];
    if ((sizeClassRequiresLeadingIcon(self->_sizeClass) & 1) == 0)
    {
      v685 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v686 = [v685 topCaption];
      v687 = [v686 leading];
      [v687 setTextAlignment:2];

      v688 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v689 = [v688 bottomCaption];
      v690 = [v689 leading];
      [v690 setTextAlignment:2];
    }

    v133 = self->_style;
  }

  if (v133 == 32)
  {
    v691 = [[LPGlyphStyle alloc] initSearchGlyph];
    v692 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v693 = [v692 topCaption];
    v694 = [v693 leading];
    [v694 setLeadingGlyph:v691];

    v695 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v696 = [v695 topCaption];
    v697 = [v696 leading];
    [v697 setMaximumLines:10];

    v133 = self->_style;
  }

  if (v133 == 33)
  {
    v698 = sizeClassRequiresTrailingIcon(self->_sizeClass);
    v699 = self->_captionBar;
    if (v698)
    {
      [(LPCaptionBarStyle *)v699 trailingIcon];
    }

    else
    {
      [(LPCaptionBarStyle *)v699 leadingIcon];
    }
    v700 = ;

    [v700 setFilter:1];
    v133 = self->_style;
  }

  if (v133 == 36)
  {
    v701 = self->_platform;
    v702 = self->_sizeClass;
    if (+[LPTestingOverrides forceMonospaceFonts])
    {
      v703 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:24.0 weight:*MEMORY[0x1E69DB958]];
LABEL_247:
      v707 = v703;
      v708 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar textStack];
      v709 = [v708 topCaption];
      v710 = [v709 leading];
      [v710 setFont:v707];

      v711 = self->_platform;
      v712 = self->_sizeClass;
      if (+[LPTestingOverrides forceMonospaceFonts])
      {
        v713 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
      }

      else if (v711 <= 6 && ((1 << v711) & 0x65) != 0)
      {
        v713 = fontWithTraits(*MEMORY[0x1E69DDD80], 0, v712);
      }

      else
      {
        v713 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
      }

      v714 = v713;
      v715 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar textStack];
      v716 = [v715 bottomCaption];
      v717 = [v716 leading];
      [v717 setFont:v714];

      v718 = [[LPPointUnit alloc] initWithValue:30.0];
      v719 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar textStack];
      [v719 setFirstLineLeading:v718];

      v720 = [[LPPointUnit alloc] initWithValue:18.0];
      v721 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar textStack];
      v722 = [v721 bottomCaption];
      v723 = [v722 leading];
      [v723 setFirstLineLeading:v720];

      v133 = self->_style;
      goto LABEL_253;
    }

    if (v701 > 4)
    {
      if (v701 == 5)
      {
        v703 = fontWithTraits(*MEMORY[0x1E69DDDC0], 2, v702);
        goto LABEL_247;
      }

      if (v701 != 6)
      {
        goto LABEL_229;
      }
    }

    else if (v701 && v701 != 2)
    {
LABEL_229:
      v703 = [MEMORY[0x1E69DB878] systemFontOfSize:24.0 weight:*MEMORY[0x1E69DB958]];
      goto LABEL_247;
    }

    v703 = fontWithTraits(*MEMORY[0x1E69DDDC0], 32770, v702);
    goto LABEL_247;
  }

LABEL_253:
  if (v133 <= 0x39 && ((1 << v133) & 0x200000000006000) != 0)
  {
    v724 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v725 = [v724 topCaption];
    v726 = [v725 leading];
    v727 = [v726 color];
    v728 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v729 = [v728 bottomCaption];
    v730 = [v729 leading];
    [v730 setColor:v727];

    v133 = self->_style;
  }

  if (p_quotedText)
  {
    if (v133 - 13 > 1)
    {
      goto LABEL_263;
    }

    v731 = [MEMORY[0x1E69DC888] clearColor];
    v732 = self->_mediaBackgroundColor;
    self->_mediaBackgroundColor = v731;

    v733 = [[LPPointUnit alloc] initWithValue:-10.0];
    v734 = [(LPImageViewStyle *)self->_mediaImage padding];
    [v734 setBottom:v733];

    p_quotedText = [[LPSize alloc] initWithSquareSize:300.0];
    [(LPImageViewStyle *)self->_mediaImage setFixedSize:p_quotedText];

    v4 = [(LPImageViewStyle *)self->_mediaImage setScalingMode:1];
    v133 = self->_style;
  }

  if (v133 == 13)
  {
    p_quotedText = [[LPPointUnit alloc] initWithValue:20.0];
    v735 = [(LPImageViewStyle *)self->_mediaImage padding];
    [v735 setTop:p_quotedText];

    v133 = self->_style;
  }

  if (v133 == 14)
  {
    p_quotedText = [[LPPointUnit alloc] initWithValue:10.0];
    v736 = [(LPImageViewStyle *)self->_mediaImage padding];
    [v736 setTop:p_quotedText];

    v133 = self->_style;
  }

LABEL_263:
  if (v133 == 41)
  {
    [(LPQuotedTextViewStyle *)self->_quotedText setShowQuoteIndicator:0];
    p_quotedText = [[LPSize alloc] initWithSquareSize:40.0];
    v737 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v737 setFixedSize:p_quotedText];

    v133 = self->_style;
  }

  if (v133 == 53 || v133 == 44)
  {
    v738 = [MEMORY[0x1E69DC888] blackColor];
    v739 = [(LPCaptionBarStyle *)self->_captionBar button];
    [v739 setBackgroundColor:v738];

    p_quotedText = [[LPPointUnit alloc] initWithValue:8.0];
    v740 = [(LPCaptionBarStyle *)self->_captionBar button];
    [v740 setImagePadding:p_quotedText];

    v133 = self->_style;
  }

  if (v133 == 56)
  {
    v4 = [(LPTheme *)self _adjustForAppleMusicCollaborativePlaylistStyle];
    v133 = self->_style;
  }

  if (v133 == 58)
  {
    v4 = [(LPTheme *)self _adjustForEnrichedBusinessChatStyle];
    v133 = self->_style;
  }

  if (v133 == 46)
  {
    self->_backgroundMaterial = 9;
    v741 = [MEMORY[0x1E69DC888] whiteColor];
    v742 = [(LPCaptionBarStyle *)self->_captionBar button];
    [v742 setBackgroundColor:v741];

    v743 = +[LPResources faceTimeBackgroundColor];
    v744 = [(LPCaptionBarStyle *)self->_captionBar button];
    [v744 setForegroundColor:v743];

    p_quotedText = [MEMORY[0x1E69DC888] whiteColor];
    v745 = [(LPSize *)p_quotedText colorWithAlphaComponent:0.6];
    [(LPImageViewStyle *)self->_placeholderImage setMaskColor:v745];

    v133 = self->_style;
  }

  if (v133 == 50)
  {
    p_quotedText = [[LPSize alloc] initWithSquareSize:60.0];
    [(LPImageViewStyle *)self->_mediaImage setMaximumSize:p_quotedText];
    [(LPImageViewStyle *)self->_mediaImage setFixedSize:p_quotedText];
    [(LPImageViewStyle *)self->_mediaImage setScalingMode:1];
    v746 = [[LPPointUnit alloc] initWithValue:14.0];
    v747 = [(LPImageViewStyle *)self->_mediaImage padding];
    [v747 setTop:v746];

    v748 = [[LPPointUnit alloc] initWithValue:14.0];
    v749 = [(LPImageViewStyle *)self->_mediaImage padding];
    [v749 setBottom:v748];

    [(LPImageViewStyle *)self->_mediaImage setFilter:5];
    v133 = self->_style;
  }

  if (v133 == 48)
  {
    p_quotedText = [[LPSize alloc] initWithSquareSize:60.0];
    [(LPImageViewStyle *)self->_mediaImage setMaximumSize:p_quotedText];
    [(LPImageViewStyle *)self->_mediaImage setFixedSize:p_quotedText];
    [(LPImageViewStyle *)self->_mediaImage setScalingMode:1];
    v750 = [[LPPointUnit alloc] initWithValue:10.0];
    v751 = [(LPImageViewStyle *)self->_mediaImage padding];
    [v751 setTop:v750];

    v752 = [[LPPointUnit alloc] initWithValue:10.0];
    v753 = [(LPImageViewStyle *)self->_mediaImage padding];
    [v753 setBottom:v752];

    [(LPImageViewStyle *)self->_mediaImage setDarkeningAmount:0.0];
    v133 = self->_style;
  }

  if (v133 == 51)
  {
    v754 = [MEMORY[0x1E69DC888] labelColor];
    v755 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v756 = [v755 bottomCaption];
    v757 = [v756 leading];
    [v757 setColor:v754];

    p_quotedText = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v758 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v759 = [v758 belowBottomCaption];
    v760 = [v759 leading];
    [v760 setColor:p_quotedText];

    v133 = self->_style;
  }

  if (v133 == 47 && !self->_sizeClass)
  {
    v761 = self->_platform;
    if (v761 <= 6)
    {
      p_quotedText = [[LPSize alloc] initWithSquareSize:dbl_1AE9C69A8[v761]];
    }

    v762 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v762 setFixedSize:p_quotedText];

    v763 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v763 setRequireFixedSize:0];

    v764 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v764 setScalingMode:1];

    v765 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v765 setFilter:14];

    v766 = [[LPPointUnit alloc] initWithValue:4.0];
    v767 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v767 setCornerRadius:v766];

    v768 = +[LPShadowStyle collaborationPreviewShadow];
    v769 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v769 setShadow:v768];

    v770 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v770 setCanAdjustVerticalPaddingForFixedSize:1];

    v771 = [[LPPointUnit alloc] initWithValue:0.5];
    v772 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v772 setBorderWidth:v771];

    v773 = [MEMORY[0x1E69DC888] blackColor];
    v774 = [v773 colorWithAlphaComponent:0.3];
    v775 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v775 setBorderColor:v774];

    if (self->_platform != 5)
    {
      p_quotedText = pt(275.0);
      [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:p_quotedText];

      v779 = self->_platform;
      if (v779 > 6)
      {
        goto LABEL_293;
      }

      if (((1 << v779) & 0x5B) != 0)
      {
        v776 = &sharedObjectAutomaticIconOuterMargin_normalSize;
        v777 = sharedObjectAutomaticIconOuterMargin_normalSize;
        if (!sharedObjectAutomaticIconOuterMargin_normalSize)
        {
          v778 = 12.0;
          goto LABEL_291;
        }

LABEL_292:
        p_quotedText = v777;
LABEL_293:
        v782 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v783 = [v782 margin];
        [v783 setLeading:p_quotedText];

        v784 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v785 = [v784 margin];
        [v785 setTop:p_quotedText];

        v786 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        v787 = [v786 margin];
        [v787 setBottom:p_quotedText];

        if (self->_platform == 2)
        {
          v788 = [[LPSize alloc] initWithSquareSize:15.0];
        }

        else
        {
          v788 = [[LPSize alloc] initWithSquareSize:20.0];
        }

        v789 = [(LPCaptionBarStyle *)self->_captionBar leadingIconBadge];
        [v789 setFixedSize:v788];

        if (self->_platform == 5)
        {
          v790 = +[LPPointUnit zero];
          v791 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v792 = [v791 captionTextPadding];
          [v792 setLeading:v790];

          v793 = +[LPPointUnit zero];
          v794 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          v795 = [v794 padding];
          [v795 setTrailing:v793];

          v796 = pt(12.0);
          v797 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          v798 = [v797 margin];
          [v798 setTrailing:v796];
        }

        v799 = [(LPCaptionBarStyle *)self->_captionBar leadingIconBadge];
        v800 = [v799 fixedSize];
        v801 = [(LPCaptionBarStyle *)self->_captionBar trailingIconBadge];
        [v801 setFixedSize:v800];

        v802 = [(LPCaptionBarStyle *)self->_captionBar leadingIconBadge];
        v803 = [v802 fixedSize];
        v804 = [v803 width];
        [v804 value];
        v806 = v805;
        v807 = [(LPCaptionBarStyle *)self->_captionBar leadingIconBadge];
        [v807 setOffset:v806 * 0.5 + -2.0];

        v808 = [(LPCaptionBarStyle *)self->_captionBar leadingIconBadge];
        [v808 offset];
        v810 = v809;
        v811 = [(LPCaptionBarStyle *)self->_captionBar trailingIconBadge];
        [v811 setOffset:v810];

        v812 = fallbackIconSize(self->_platform);
        v813 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v813 setFixedFallbackImageSize:v812];

        if (self->_hasButton)
        {
          v814 = pt(1.0);
          v815 = [(LPCaptionBarStyle *)self->_captionBar button];
          v816 = [v815 margin];
          [v816 setTop:v814];

          if (self->_platform == 5)
          {
            v817 = pt(12.0);
            v818 = [(LPCaptionBarStyle *)self->_captionBar button];
            v819 = [v818 margin];
            [v819 setLeading:v817];

            pt(20.0);
          }

          else
          {
            pt(16.0);
          }
          v820 = ;
          v821 = [(LPCaptionBarStyle *)self->_captionBar button];
          v822 = [v821 margin];
          [v822 setTrailing:v820];

          v823 = pt(12.0);
          v824 = [(LPCaptionBarStyle *)self->_captionBar button];
          v825 = [v824 margin];
          [v825 setBottom:v823];

          v826 = pt(3.0);
          v827 = [(LPCaptionBarStyle *)self->_captionBar button];
          [v827 setAdditionalVerticalPadding:v826];

          [(LPCaptionBarStyle *)self->_captionBar setUsesOutOfLineButton:1];
          [(LPCaptionBarStyle *)self->_captionBar setCanAddLineForButton:1];
          [(LPCaptionBarStyle *)self->_captionBar setButtonRespectsTextStackPadding:1];
          [(LPCaptionBarStyle *)self->_captionBar setPositionButtonRelativeToTextStack:1];
          [(LPCaptionBarStyle *)self->_captionBar setAlignButtonWithCaptionTextLeadingEdge:1];
          [(LPCaptionBarStyle *)self->_captionBar setExpandButtonToCaptionEdge:1];
          [(LPCaptionBarStyle *)self->_captionBar setButtonIgnoresTextSafeAreaInsets:1];
          v828 = pt(12.0);
          v829 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          v830 = [v829 margin];
          [v830 setTop:v828];
        }

        v831 = +[LPPointUnit zero];
        v832 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v833 = [v832 margin];
        [v833 setBottom:v831];

        v834 = [[LPPointUnit alloc] initWithValue:8.0];
        v835 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v836 = [v835 padding];
        [v836 setBottom:v834];

        v837 = [[LPPointUnit alloc] initWithValue:9.0];
        v838 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v839 = [v838 separatorMargin];
        [v839 setBottom:v837];

        v840 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [v840 setUseFullWidthDuringSizing:0];

        v841 = [MEMORY[0x1E69DC888] labelColor];
        v842 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v843 = [v842 options];
        [v843 setColor:v841];

        v844 = self->_platform;
        if (v844 == 5)
        {
          v845 = pt(11.0);
          v846 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          [v846 setCornerRadius:v845];

          v844 = self->_platform;
        }

        v847 = [LPPointUnit alloc];
        v848 = 25.0;
        if (v844 == 2)
        {
          v848 = 20.0;
        }

        v849 = [(LPPointUnit *)v847 initWithValue:v848];
        v850 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v850 setFirstLineLeading:v849];

        v851 = [[LPPointUnit alloc] initWithValue:11.0];
        v852 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v852 setLastLineDescent:v851];

        goto LABEL_309;
      }

      if (v779 == 2)
      {
        v776 = &sharedObjectAutomaticIconOuterMargin_watchSize;
        v777 = sharedObjectAutomaticIconOuterMargin_watchSize;
        if (sharedObjectAutomaticIconOuterMargin_watchSize)
        {
          goto LABEL_292;
        }

        v778 = 10.0;
        goto LABEL_291;
      }
    }

    v776 = &sharedObjectAutomaticIconOuterMargin_visionSize;
    v777 = sharedObjectAutomaticIconOuterMargin_visionSize;
    if (!sharedObjectAutomaticIconOuterMargin_visionSize)
    {
      v778 = 14.0;
LABEL_291:
      v780 = [[LPPointUnit alloc] initWithValue:v778];
      v781 = *v776;
      *v776 = v780;

      v777 = *v776;
      goto LABEL_292;
    }

    goto LABEL_292;
  }

LABEL_309:
  if (self->_isFallbackIcon)
  {
    v853 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    applyFallbackIconProperties(v853, self->_platform, self->_style, self->_sizeClass);

    p_quotedText = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    applyFallbackIconProperties(p_quotedText, self->_platform, self->_style, self->_sizeClass);
  }

  v854 = self->_sizeClass;
  if (v854 == 5)
  {
    if (self->_platform == 5)
    {
      v855 = [[LPPointUnit alloc] initWithValue:11.0];
      cornerRadius = self->_cornerRadius;
      self->_cornerRadius = v855;
    }

    v857 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [v857 applyToAllTextViewStyles:&__block_literal_global_1112];

    p_quotedText = &self->_quotedText;
    [(LPQuotedTextViewStyle *)self->_quotedText setShowQuoteIndicator:0];
    v4 = [(LPQuotedTextViewStyle *)self->_quotedText setShowCharacterLimitIndicator:0];
    v854 = self->_sizeClass;
  }

  if (v854 != 8)
  {
    goto LABEL_343;
  }

  v858 = self->_platform;
  if (v858 <= 6)
  {
    if (((1 << v858) & 0x65) != 0)
    {
      p_quotedText = &smallDetailedCornerRadius_normalSize;
      v859 = smallDetailedCornerRadius_normalSize;
      if (!smallDetailedCornerRadius_normalSize)
      {
        v860 = 16.0;
LABEL_322:
        v861 = [[LPPointUnit alloc] initWithValue:v860];
        isa = p_quotedText->super.isa;
        p_quotedText->super.isa = v861;

        v859 = p_quotedText->super.isa;
      }
    }

    else
    {
      p_quotedText = &smallDetailedCornerRadius_macSize;
      v859 = smallDetailedCornerRadius_macSize;
      if (!smallDetailedCornerRadius_macSize)
      {
        v860 = 12.0;
        goto LABEL_322;
      }
    }

    v4 = v859;
  }

  v863 = self->_cornerRadius;
  self->_cornerRadius = v4;

  v864 = self->_platform;
  if (v864 <= 6)
  {
    if (((1 << v864) & 0x65) != 0)
    {
      v865 = &smallDetailedIconSize_normalSize;
      v866 = smallDetailedIconSize_normalSize;
      if (!smallDetailedIconSize_normalSize)
      {
        v867 = 48.0;
LABEL_330:
        v868 = [[LPSize alloc] initWithSquareSize:v867];
        v869 = *v865;
        *v865 = v868;

        v866 = *v865;
      }
    }

    else
    {
      v865 = &smallDetailedIconSize_macSize;
      v866 = smallDetailedIconSize_macSize;
      if (!smallDetailedIconSize_macSize)
      {
        v867 = 42.0;
        goto LABEL_330;
      }
    }

    p_quotedText = v866;
  }

  v870 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  [v870 setFixedSize:p_quotedText];

  v871 = self->_platform;
  if (v871 > 6)
  {
    goto LABEL_340;
  }

  if (((1 << v871) & 0x65) != 0)
  {
    v872 = &smallDetailedIconCornerRadius_normalSize;
    v873 = smallDetailedIconCornerRadius_normalSize;
    if (!smallDetailedIconCornerRadius_normalSize)
    {
      v874 = 6.0;
LABEL_338:
      v875 = [[LPPointUnit alloc] initWithValue:v874];
      v876 = *v872;
      *v872 = v875;

      v873 = *v872;
    }
  }

  else
  {
    v872 = &smallDetailedIconCornerRadius_macSize;
    v873 = smallDetailedIconCornerRadius_macSize;
    if (!smallDetailedIconCornerRadius_macSize)
    {
      v874 = 2.0;
      goto LABEL_338;
    }
  }

  p_quotedText = v873;
LABEL_340:
  v877 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  [v877 setCornerRadius:p_quotedText];

  v878 = adjustForStyle_smallDetailedIconMargin;
  if (!adjustForStyle_smallDetailedIconMargin)
  {
    v879 = [[LPPointUnit alloc] initWithValue:12.0];
    v880 = adjustForStyle_smallDetailedIconMargin;
    adjustForStyle_smallDetailedIconMargin = v879;

    v878 = adjustForStyle_smallDetailedIconMargin;
  }

  v881 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  v882 = [v881 margin];
  [v882 setTrailing:v878];

  v883 = adjustForStyle_smallDetailedIconMargin;
  v884 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  v885 = [v884 margin];
  [v885 setTop:v883];

  v886 = adjustForStyle_smallDetailedIconMargin;
  v887 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  v888 = [v887 margin];
  [v888 setBottom:v886];

  v889 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  v890 = [v889 fixedSize];
  v891 = [(LPCaptionBarStyle *)self->_captionBar playButton];
  [v891 setSize:v890];

  v892 = [[LPPointUnit alloc] initWithValue:20.0];
  v893 = [(LPCaptionBarStyle *)self->_captionBar playButton];
  [v893 setGlyphSize:v892];

  v894 = adjustForStyle_smallDetailedIconMargin;
  v895 = [(LPCaptionBarStyle *)self->_captionBar playButtonPadding];
  [v895 setTrailing:v894];

  v896 = adjustForStyle_smallDetailedIconMargin;
  v897 = [(LPCaptionBarStyle *)self->_captionBar playButtonPadding];
  [v897 setTop:v896];

  v898 = adjustForStyle_smallDetailedIconMargin;
  v899 = [(LPCaptionBarStyle *)self->_captionBar playButtonPadding];
  [v899 setBottom:v898];

  p_quotedText = [(LPCaptionBarStyle *)self->_captionBar textStack];
  [(LPSize *)p_quotedText setMaximumNumberOfLines:3];

  [(LPCaptionBarStyle *)self->_captionBar setMinimumNumberOfLinesToVerticallyCenter:3];
  v854 = self->_sizeClass;
LABEL_343:
  if (v854 - 10 <= 2)
  {
    v900 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v900 setFilter:14];

    v901 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v901 setScalingMode:2];

    v902 = [[LPPointUnit alloc] initWithValue:5.0];
    v903 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v903 setCornerRadius:v902];

    v904 = +[LPPointUnit zero];
    v905 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v906 = [v905 margin];
    [v906 setTrailing:v904];

    if (self->_platform == 5)
    {
      v907 = [[LPSize alloc] initWithSize:0.0, 44.0];
      v908 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v908 setMinimumSize:v907];
    }

    v909 = +[LPPointUnit zero];
    v910 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [v910 setFirstLineLeading:v909];

    v911 = +[LPPointUnit zero];
    v912 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [v912 setLastLineDescent:v911];

    v913 = mediumOrLargeHorizontalFillColor(self->_platform);
    v914 = [(LPCaptionBarStyle *)self->_captionBar button];
    [v914 setBackgroundColor:v913];

    v915 = mediumOrLargeHorizontalForegroundColor(self->_platform);
    v916 = [(LPCaptionBarStyle *)self->_captionBar button];
    [v916 setForegroundColor:v915];

    v917 = self->_platform;
    if (v917 <= 6)
    {
      v915 = [[LPPointUnit alloc] initWithValue:dbl_1AE9C69E0[v917]];
    }

    [(LPContactsBadgeStyle *)self->_contactsBadgeStyle setSize:v915];

    p_quotedText = &self->_contactsBadgeStyle;
    [(LPContactsBadgeStyle *)self->_contactsBadgeStyle setMargin:0.0];
    [(LPContactsBadgeStyle *)self->_contactsBadgeStyle setUseShadow:0];
    [(LPContactsBadgeStyle *)self->_contactsBadgeStyle setLocation:1];
    if (self->_isFallbackIcon)
    {
      v918 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v918 setFilter:12];

      p_quotedText = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [(LPSize *)p_quotedText setScalingMode:3];
    }

    if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters onlyShowIcon])
    {
      v919 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v919 setRequireFixedSize:0];

      p_quotedText = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [(LPSize *)p_quotedText setScalesToFitParent:1];
    }
  }

  v920 = self->_sizeClass;
  if ((v920 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v921 = self->_platform;
    if (v921 == 5)
    {
      v922 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v923 = self->_backgroundColor;
      self->_backgroundColor = v922;

      v921 = self->_platform;
    }

    if (v921 <= 6)
    {
      p_quotedText = [[LPPointUnit alloc] initWithValue:dbl_1AE9C6A18[v921]];
    }

    v924 = [(LPCaptionBarStyle *)self->_captionBar button];
    v925 = [v924 margin];
    [v925 setTrailing:p_quotedText];

    v920 = self->_sizeClass;
    if (v920 == 10)
    {
      v926 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v926 setScalesToFitParent:1];

      if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters preserveIconAspectRatioAndAlignmentWhenScaling])
      {
        v927 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v927 setScalingMode:1];

        v928 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v928 setPreservesEdgeAlignmentWhenScaling:1];
      }

      v929 = fallbackIconSize(self->_platform);
      v930 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v930 setFixedFallbackImageSize:v929];

      v931 = adjustForStyle_leadingOuterMargin;
      if (!adjustForStyle_leadingOuterMargin)
      {
        v932 = [[LPPointUnit alloc] initWithValue:16.0];
        v933 = adjustForStyle_leadingOuterMargin;
        adjustForStyle_leadingOuterMargin = v932;

        v931 = adjustForStyle_leadingOuterMargin;
      }

      v934 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v935 = [v934 margin];
      [v935 setLeading:v931];

      v936 = adjustForStyle_leadingOuterMargin;
      v937 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v938 = [v937 margin];
      [v938 setTop:v936];

      v939 = adjustForStyle_leadingOuterMargin;
      v940 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v941 = [v940 margin];
      [v941 setBottom:v939];

      v942 = outerHorizontalTextMargin(self->_platform);
      v943 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v944 = [v943 captionTextPadding];
      [v944 setLeading:v942];

      v945 = adjustForStyle_leadingOuterMargin;
      v946 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v947 = [v946 captionTextPadding];
      [v947 setTop:v945];

      v948 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v948 setMaximumNumberOfLines:0];

      [(LPCaptionBarStyle *)self->_captionBar setMinimumNumberOfLinesToVerticallyCenter:0xFFFFFFFFLL];
      [(LPCaptionBarStyle *)self->_captionBar setUsesOutOfLineButton:1];
      if (self->_isFallbackIcon)
      {
        v949 = mediumOrLargeHorizontalForegroundColor(self->_platform);
        v950 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v950 setMaskColor:v949];

        v951 = mediumOrLargeHorizontalFillColor(self->_platform);
        v952 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v952 setBackgroundColor:v951];
      }

      v920 = self->_sizeClass;
    }
  }

  if (v920 == 11)
  {
    v968 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v968 setScalesToFitParent:1];

    if (self->_platform == 5)
    {
      v969 = 56.0;
    }

    else
    {
      v969 = 42.0;
    }

    v970 = [[LPSize alloc] initWithSquareSize:v969];
    v971 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v971 setFixedSize:v970];

    v972 = [[LPPointUnit alloc] initWithValue:v969];
    v973 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v973 setFixedFallbackImageSize:v972];

    v974 = fontWithTraits(*MEMORY[0x1E69DDCF8], 0, self->_sizeClass);
    v975 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v975 setFixedFallbackImageFont:v974];

    v976 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v976 setFixedFallbackImageScale:&unk_1F24835A8];

    if (self->_platform == 5)
    {
      [(LPContactsBadgeStyle *)self->_contactsBadgeStyle setIconOffset:-8.0];
      v977 = [[LPPointUnit alloc] initWithValue:6.0];
      v978 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v978 setCornerRadius:v977];

      v979 = [[LPPointUnit alloc] initWithValue:16.0];
      v980 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v981 = [v980 margin];
      [v981 setLeading:v979];

      v982 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v983 = [v982 margin];
      [v983 setTop:v979];

      v984 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v985 = [v984 margin];
      [v985 setBottom:v979];

      v986 = [[LPPointUnit alloc] initWithValue:12.0];
      v987 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v988 = [v987 captionTextPadding];
      [v988 setLeading:v986];
    }

    else
    {
      v998 = [[LPPointUnit alloc] initWithValue:14.0];
      v999 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v1000 = [v999 margin];
      [v1000 setLeading:v998];

      v1001 = [[LPPointUnit alloc] initWithValue:9.0];
      v1002 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v1003 = [v1002 margin];
      [v1003 setTop:v1001];

      v1004 = [[LPPointUnit alloc] initWithValue:9.0];
      v1005 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v1006 = [v1005 margin];
      [v1006 setBottom:v1004];

      v979 = [[LPPointUnit alloc] initWithValue:10.0];
      v986 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      v987 = [(LPPointUnit *)v986 captionTextPadding];
      [v987 setLeading:v979];
    }

    v1007 = [[LPPointUnit alloc] initWithValue:13.0];
    v1008 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v1009 = [v1008 captionTextPadding];
    [v1009 setTop:v1007];

    v1010 = [[LPPointUnit alloc] initWithValue:13.0];
    v1011 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v1012 = [v1011 captionTextPadding];
    [v1012 setBottom:v1010];

    v1013 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [v1013 setMaximumNumberOfLines:2];

    v1014 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [v1014 setShouldAlignToBaselines:0];

    v1015 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [v1015 applyToAllTextViewStyles:&__block_literal_global_1125];

    if (self->_isFallbackIcon)
    {
      v1016 = [MEMORY[0x1E69DC888] whiteColor];
      v1017 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v1017 setMaskColor:v1016];

      v1018 = mediumOrLargeHorizontalFillColor(self->_platform);
      v1019 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v1019 setBackgroundColor:v1018];
    }
  }

  else if (v920 == 12)
  {
    v953 = [MEMORY[0x1E69DC888] clearColor];
    v954 = self->_backgroundColor;
    self->_backgroundColor = v953;

    v955 = [[LPPointUnit alloc] initWithValue:428.0];
    v956 = self->_maximumWidth;
    self->_maximumWidth = v955;

    v957 = fallbackIconSize(self->_platform);
    v958 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v958 setFixedFallbackImageSize:v957];

    v959 = +[LPPointUnit zero];
    v960 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v961 = [v960 margin];
    [v961 setLeading:v959];

    if (+[LPSettings useOnGlassShareSheetAppearance])
    {
      v962 = +[LPPointUnit zero];
      v963 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v964 = [v963 margin];
      [v964 setTop:v962];

      +[LPPointUnit zero];
    }

    else
    {
      v989 = cardHeadingVerticalIconMargin(self->_platform, self->_sizeClassParameters);
      v990 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      v991 = [v990 margin];
      [v991 setTop:v989];

      cardHeadingVerticalIconMargin(self->_platform, self->_sizeClassParameters);
    }
    v965 = ;
    v966 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v967 = [v966 margin];
    [v967 setBottom:v965];

    v992 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v992 setRequireFixedSize:1];

    v993 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v993 setVerticalAlignment:1];

    v994 = self->_platform;
    v996 = self->_sizeClassParameters;
    if (v994 == 5)
    {
      v997 = cardHeadingIconSize(5uLL, v995);
    }

    else
    {
      if (!largeCardHeadingIconSize_largeSize)
      {
        v1032 = [[LPSize alloc] initWithSquareSize:90.0];
        v1033 = largeCardHeadingIconSize_largeSize;
        largeCardHeadingIconSize_largeSize = v1032;
      }

      if (!largeCardHeadingIconSize_normalSize)
      {
        v1034 = [[LPSize alloc] initWithSquareSize:60.0];
        v1035 = largeCardHeadingIconSize_normalSize;
        largeCardHeadingIconSize_normalSize = v1034;
      }

      if (!largeCardHeadingIconSize_onGlassSize)
      {
        v1036 = [[LPSize alloc] initWithSquareSize:64.0];
        v1037 = largeCardHeadingIconSize_onGlassSize;
        largeCardHeadingIconSize_onGlassSize = v1036;
      }

      if (+[LPSettings useOnGlassShareSheetAppearance])
      {
        v1038 = &largeCardHeadingIconSize_onGlassSize;
      }

      else
      {
        v1039 = [(LPLinkRendererSizeClassParameters *)v996 alignButtonWithCaptionTextLeadingEdge];
        v1038 = &largeCardHeadingIconSize_largeSize;
        if (v1039)
        {
          v1038 = &largeCardHeadingIconSize_normalSize;
        }
      }

      v997 = *v1038;
    }

    v1040 = v997;

    v1041 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v1041 setFixedSize:v1040];

    v1042 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v1043 = [v1042 fixedSize];
    v1044 = [v1043 scaledBy:0.7];
    v1045 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [v1045 setMinimumSize:v1044];

    if (self->_platform != 5)
    {
      v1046 = +[LPShadowStyle cardHeadingIconShadow];
      v1047 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v1047 setShadow:v1046];
    }

    if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters alignButtonWithCaptionTextLeadingEdge])
    {
      if (!self->_isFallbackIcon)
      {
        v1049 = pt(4.0);
        v1050 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v1050 setCornerRadius:v1049];

        if (self->_platform != 5)
        {
          v1051 = +[LPShadowStyle collaborationPreviewShadow];
          v1052 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [v1052 setShadow:v1051];
        }

        v1053 = self->_style;
        if (v1053 <= 0x2F && ((1 << v1053) & 0x800200010000) != 0)
        {
          v1054 = pt(0.5);
          v1055 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [v1055 setBorderWidth:v1054];

          v1056 = [MEMORY[0x1E69DC888] blackColor];
          v1057 = [v1056 colorWithAlphaComponent:0.3];
          v1058 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [v1058 setBorderColor:v1057];
        }
      }

      if (self->_hasButton)
      {
        [(LPCaptionBarStyle *)self->_captionBar setButtonRespectsTextStackPadding:1];
        v1059 = pt(191.0);
        v1060 = [(LPCaptionBarStyle *)self->_captionBar button];
        [v1060 setMenuMinimumWidth:v1059];

        v1061 = pt(1.0);
        v1062 = [(LPCaptionBarStyle *)self->_captionBar button];
        [v1062 setAdditionalVerticalPadding:v1061];

        v1063 = [(LPCaptionBarStyle *)self->_captionBar button];
        [v1063 setShowsChevronForSingleAction:1];

        v1064 = self->_captionBar;
        if (self->_platform == 5)
        {
          v1065 = [(LPCaptionBarStyle *)v1064 button];
          [v1065 setUseSegmentedControl:1];

          v1066 = pt(11.0);
          v1067 = [(LPCaptionBarStyle *)self->_captionBar button];
          v1068 = [v1067 padding];
          [v1068 setTop:v1066];

          v1069 = +[LPPointUnit zero];
          v1070 = [(LPCaptionBarStyle *)self->_captionBar button];
          v1071 = [v1070 margin];
          [v1071 setTrailing:v1069];

          v1072 = +[LPPointUnit zero];
          v1073 = [(LPCaptionBarStyle *)self->_captionBar button];
          v1074 = [v1073 margin];
          [v1074 setLeading:v1072];

          [(LPCaptionBarStyle *)self->_captionBar setAddFullWidthLineForButton:1];
          [(LPCaptionBarStyle *)self->_captionBar setUsesOutOfLineButton:1];
          [(LPCaptionBarStyle *)self->_captionBar setButtonIgnoresTextSafeAreaInsets:1];
        }

        else
        {
          [(LPCaptionBarStyle *)v1064 setPositionButtonRelativeToTextStack:1];
        }
      }

      if (self->_platform == 5)
      {
        v1081 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [v1081 setUseFullWidth:1];

        v1082 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
        v1083 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [v1083 setBackgroundColor:v1082];

        v1084 = pt(14.0);
        v1085 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v1086 = [v1085 margin];
        [v1086 setTop:v1084];

        v1087 = +[LPPointUnit zero];
        v1088 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v1089 = [v1088 margin];
        [v1089 setBottom:v1087];

        v1090 = pt(14.0);
        v1091 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [v1091 setCornerRadius:v1090];

        v1092 = pt(23.0);
        v1093 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v1094 = [v1093 padding];
        [v1094 setBottom:v1092];

        v1095 = pt(27.0);
        v1096 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v1097 = [v1096 padding];
        [v1097 setLeading:v1095];

        v1098 = pt(27.0);
        v1099 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        v1100 = [v1099 padding];
        [v1100 setTrailing:v1098];

        [(LPCaptionBarStyle *)self->_captionBar setMinimumNumberOfLinesToVerticallyCenter:1];
        v1079 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [v1079 setVerticalAlignment:3];
LABEL_428:

        if (+[LPSettings useOnGlassShareSheetAppearance])
        {
          v1101 = [[LPPointUnit alloc] initWithValue:15.0];
          v1102 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [v1102 setCornerRadius:v1101];
        }

        applyCommonCardHeadingCaptionBarProperties(self->_captionBar, self->_platform, self->_style, self->_sizeClass, self->_isFallbackIcon);
        if (!adjustForStyle_outerMargin)
        {
          v1103 = [[LPPointUnit alloc] initWithValue:16.0];
          v1104 = adjustForStyle_outerMargin;
          adjustForStyle_outerMargin = v1103;
        }

        if (self->_hasButton)
        {
          if (![(LPCaptionBarStyle *)self->_captionBar addFullWidthLineForButton])
          {
            v1105 = adjustForStyle_outerMargin;
            v1106 = [(LPCaptionBarStyle *)self->_captionBar button];
            v1107 = [v1106 margin];
            [v1107 setLeading:v1105];
          }

          if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters alignButtonWithCaptionTextLeadingEdge])
          {
            +[LPPointUnit zero];
          }

          else
          {
            pt(10.0);
          }
          v1108 = ;
          v1109 = [(LPCaptionBarStyle *)self->_captionBar button];
          v1110 = [v1109 margin];
          [v1110 setTop:v1108];

          v1111 = +[LPPointUnit zero];
          v1112 = [(LPCaptionBarStyle *)self->_captionBar button];
          v1113 = [v1112 margin];
          [v1113 setTrailing:v1111];

          if (+[LPSettings useOnGlassShareSheetAppearance])
          {
            v1114 = [(LPCaptionBarStyle *)self->_captionBar button];
            [v1114 setUseGlassButtonAppearance:1];
          }

          else
          {
            v1114 = [MEMORY[0x1E69DC888] clearColor];
            v1115 = [(LPCaptionBarStyle *)self->_captionBar button];
            [v1115 setMenuBackgroundColor:v1114];
          }

          v1116 = +[LPPointUnit zero];
          v1117 = [(LPCaptionBarStyle *)self->_captionBar button];
          [v1117 setHeight:v1116];

          v1118 = [(LPCaptionBarStyle *)self->_captionBar button];
          [v1118 setIgnoresInvertColors:1];

          v1119 = [(LPCaptionBarStyle *)self->_captionBar button];
          [v1119 setEnableUserInteractionForDecorativeButton:0];

          if (self->_platform == 5 || +[LPSettings useOnGlassShareSheetAppearance])
          {
            v1120 = +[LPPointUnit zero];
            v1121 = [(LPCaptionBarStyle *)self->_captionBar button];
            v1122 = [v1121 margin];
            [v1122 setTop:v1120];

            v1123 = +[LPPointUnit zero];
            v1124 = [(LPCaptionBarStyle *)self->_captionBar button];
            v1125 = [v1124 margin];
            [v1125 setBottom:v1123];
          }

          else
          {
            v1126 = adjustForStyle_outerMargin;
            v1123 = [(LPCaptionBarStyle *)self->_captionBar button];
            v1124 = [v1123 margin];
            [v1124 setBottom:v1126];
          }
        }

        if (self->_platform == 5)
        {
          v1127 = +[LPPointUnit zero];
          v1128 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v1129 = [v1128 captionTextPadding];
          [v1129 setTop:v1127];

          v1130 = +[LPPointUnit zero];
          v1131 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v1132 = [v1131 captionTextPadding];
          [v1132 setBottom:v1130];

          v1133 = +[LPPointUnit zero];
          v1134 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          [v1134 setLastLineDescent:v1133];
        }

        else if (+[LPSettings useOnGlassShareSheetAppearance])
        {
          v1135 = +[LPPointUnit zero];
          v1136 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v1137 = [v1136 captionTextPadding];
          [v1137 setTop:v1135];

          v1133 = +[LPPointUnit zero];
          v1134 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v1138 = [v1134 captionTextPadding];
          [v1138 setBottom:v1133];
        }

        else
        {
          v1139 = adjustForStyle_outerMargin;
          v1133 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v1134 = [v1133 captionTextPadding];
          [v1134 setTop:v1139];
        }

        v1140 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [v1140 applyToAllTextViewStyles:&__block_literal_global_1115];

        v1141 = [MEMORY[0x1E69DC888] labelColor];
        v1142 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v1143 = [v1142 topCaption];
        v1144 = [v1143 leading];
        [v1144 setColor:v1141];

        v1145 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v1146 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v1147 = [v1146 bottomCaption];
        v1148 = [v1147 leading];
        [v1148 setColor:v1145];

        v1149 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v1150 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v1151 = [v1150 belowBottomCaption];
        v1152 = [v1151 leading];
        [v1152 setColor:v1149];

        LOBYTE(v1151) = UIContentSizeCategoryCompareToCategory(self->_preferredContentSizeCategory, *MEMORY[0x1E69DDC60]) != NSOrderedAscending;
        v1153 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v1187[0] = MEMORY[0x1E69E9820];
        v1187[1] = 3221225472;
        v1187[2] = __25__LPTheme_adjustForStyle__block_invoke_3_1116;
        v1187[3] = &__block_descriptor_33_e25_v16__0__LPTextViewStyle_8l;
        v1188 = v1151;
        [v1153 applyToAllTextViewStyles:v1187];

        v1154 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v1155 = [v1154 topCaption];
        v1185[0] = MEMORY[0x1E69E9820];
        v1185[1] = 3221225472;
        v1185[2] = __25__LPTheme_adjustForStyle__block_invoke_4_1117;
        v1185[3] = &__block_descriptor_33_e25_v16__0__LPTextViewStyle_8l;
        v1186 = v1151;
        [v1155 applyToAllTextViewStyles:v1185];

        if (+[LPSettings useOnGlassShareSheetAppearance])
        {
          v1156 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          [v1156 setShouldApplyFallbackFontForTruncatedSingleLine:1];

          v1157 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v1184[0] = MEMORY[0x1E69E9820];
          v1184[1] = 3221225472;
          v1184[2] = __25__LPTheme_adjustForStyle__block_invoke_5_1118;
          v1184[3] = &unk_1E7A36CD0;
          v1184[4] = self;
          [v1157 applyToLowerTextRowStyles:v1184];
        }

        if (self->_hasButton)
        {
          if (!+[LPSettings useOnGlassShareSheetAppearance]&& (self->_platform != 5 || ![(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters alignButtonWithCaptionTextLeadingEdge]))
          {
            [(LPCaptionBarStyle *)self->_captionBar setMinimumNumberOfLinesToVerticallyCenter:0xFFFFFFFFLL];
          }

          if (!+[LPSettings useOnGlassShareSheetAppearance]|| [(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters alignButtonWithCaptionTextLeadingEdge])
          {
            [(LPCaptionBarStyle *)self->_captionBar setUsesOutOfLineButton:1];
            [(LPCaptionBarStyle *)self->_captionBar setCanAddLineForButton:1];
            [(LPCaptionBarStyle *)self->_captionBar setButtonIgnoresTextSafeAreaInsets:1];
          }

          if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters alignButtonWithCaptionTextLeadingEdge])
          {
            [(LPCaptionBarStyle *)self->_captionBar setAlignButtonWithCaptionTextLeadingEdge:1];
          }
        }

        v1158 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [v1158 setShowSeparator:0];

        if (self->_platform == 5)
        {
          v1159 = [[LPPointUnit alloc] initWithValue:11.0];
          v1160 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          v1161 = [v1160 margin];
          [v1161 setTop:v1159];

          v1162 = [[LPPointUnit alloc] initWithValue:22.0];
          v1163 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          v1164 = [v1163 margin];
          [v1164 setBottom:v1162];

          v1165 = [[LPPointUnit alloc] initWithValue:22.0];
          v1166 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          v1167 = [v1166 padding];
          [v1167 setTop:v1165];

          v1168 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          [(LPPointUnit *)v1168 setIgnoreSafeAreaInset:1];
        }

        else
        {
          v1169 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          [v1169 setUseFullWidth:0];

          v1170 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          [v1170 setUseInlineIndicator:1];

          v1171 = [[LPPointUnit alloc] initWithValue:10.0];
          v1172 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          v1173 = [v1172 margin];
          [v1173 setTop:v1171];

          v1168 = [[LPPointUnit alloc] initWithValue:13.0];
          v1174 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          v1175 = [v1174 margin];
          [v1175 setBottom:v1168];
        }

        v1176 = [(LPCaptionBarStyle *)self->_captionBar button];
        v1177 = [v1176 copy];
        [(LPCaptionBarStyle *)self->_captionBar setSecondaryButton:v1177];

        v1178 = [[LPPointUnit alloc] initWithValue:11.0];
        v1179 = [(LPCaptionBarStyle *)self->_captionBar secondaryButton];
        v1180 = [v1179 margin];
        [v1180 setLeading:v1178];

        v1181 = [(LPCaptionBarStyle *)self->_captionBar secondaryButton];
        [v1181 setShowsChevronForSingleAction:0];

        return;
      }

      v1079 = pt(11.0);
      v1080 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [v1080 setLastLineDescent:v1079];
    }

    else
    {
      if (self->_platform == 5)
      {
        v1075 = cardHeadingIconSize(5uLL, v1048);
      }

      else
      {
        v1076 = largeCardHeadingReducedIconSize_normalSize;
        if (!largeCardHeadingReducedIconSize_normalSize)
        {
          v1077 = [[LPSize alloc] initWithSquareSize:72.0];
          v1078 = largeCardHeadingReducedIconSize_normalSize;
          largeCardHeadingReducedIconSize_normalSize = v1077;

          v1076 = largeCardHeadingReducedIconSize_normalSize;
        }

        v1075 = v1076;
      }

      v1079 = v1075;
      v1080 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [v1080 setReducedSize:v1079];
    }

    goto LABEL_428;
  }

  v1183[0] = MEMORY[0x1E69E9820];
  v1183[1] = 3221225472;
  v1183[2] = __25__LPTheme_adjustForStyle__block_invoke_2_1126;
  v1183[3] = &unk_1E7A36CF8;
  v1183[4] = self;
  if (__25__LPTheme_adjustForStyle__block_invoke_2_1126(v1183))
  {
    v1020 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v1021 = [v1020 margin];
    v1022 = [v1021 leading];
    [v1022 value];
    v1024 = v1023;
    v1025 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v1026 = [v1025 captionTextPadding];
    v1027 = [v1026 leading];
    [v1027 value];
    v1029 = [[LPPointUnit alloc] initWithValue:v1024 - v1028];
    v1030 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    v1031 = [v1030 margin];
    [v1031 setTrailing:v1029];
  }
}

void __25__LPTheme_adjustForStyle__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 setMaximumLines:1];
  v3 = [MEMORY[0x1E69DC888] labelColor];
  [v7 setColor:v3];

  v4 = *(*(a1 + 32) + 32);
  if (v4 <= 6 && ((0x75u >> v4) & 1) != 0)
  {
    v5 = fontWithTraits(**(&unk_1E7A36D88 + v4), 0, 1);
  }

  else
  {
    v5 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB978]];
  }

  v6 = v5;
  [v7 setFont:v5];
}

void __25__LPTheme_adjustForStyle__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  LODWORD(v4) = 1036831949;
  if (!*(a1 + 32))
  {
    *&v4 = 0.0;
  }

  v7 = v3;
  [v3 setHyphenationFactor:v4];
  if (*(a1 + 32))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v7 setMaximumLines:v5];
  v6 = +[LPPointUnit zero];
  [v7 setFirstLineLeading:v6];

  [v7 setMaximumLineCountScalingBehavior:0];
}

void __25__LPTheme_adjustForStyle__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v6 = v3;
  [v3 setMaximumLines:v4];
  v5 = +[LPPointUnit zero];
  [v6 setFirstLineLeading:v5];

  [v6 setMaximumLineCountScalingBehavior:0];
}

void __25__LPTheme_adjustForStyle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setMaximumLines:1];
  [v2 setMaximumLineCountScalingBehavior:0];
}

void __25__LPTheme_adjustForStyle__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[LPPointUnit zero];
  [v3 setFirstLineLeading:v2];
}

void __25__LPTheme_adjustForStyle__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setMaximumLines:1];
  v2 = +[LPPointUnit zero];
  [v3 setFirstLineLeading:v2];

  [v3 setMaximumLineCountScalingBehavior:0];
}

void __25__LPTheme_adjustForStyle__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setMaximumLines:1];
  v2 = +[LPPointUnit zero];
  [v3 setFirstLineLeading:v2];

  [v3 setMaximumLineCountScalingBehavior:0];
}

void __25__LPTheme_adjustForStyle__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[LPTestingOverrides forceMonospaceFonts])
  {
    [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
  }

  else
  {
    fontWithTraits(*MEMORY[0x1E69DDD28], 32770, 7);
  }
  v2 = ;
  [v3 setFont:v2];
}

void __25__LPTheme_adjustForStyle__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[LPTestingOverrides forceMonospaceFonts])
  {
    [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
  }

  else
  {
    fontWithTraits(*MEMORY[0x1E69DDD28], 0x8000, 7);
  }
  v2 = ;
  [v3 setFont:v2];
}

void __25__LPTheme_adjustForStyle__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setMaximumLines:1];
  [v3 setColor:*(a1 + 32)];
}

void __25__LPTheme_adjustForStyle__block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [MEMORY[0x1E69DC888] whiteColor];
  [v3 setColor:v2];
}

void __25__LPTheme_adjustForStyle__block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [MEMORY[0x1E69DC888] labelColor];
  [v3 setColor:v2];
}

void __25__LPTheme_adjustForStyle__block_invoke_1110(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setMaximumLines:1];
  [v2 setMaximumLineCountScalingBehavior:1];
}

void __25__LPTheme_adjustForStyle__block_invoke_2_1113(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[LPPointUnit zero];
  [v3 setFirstLineLeading:v2];
}

void __25__LPTheme_adjustForStyle__block_invoke_3_1116(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = v3;
  [v3 setMaximumLines:v4];
  [v5 setMaximumLineCountScalingBehavior:0];
}

uint64_t __25__LPTheme_adjustForStyle__block_invoke_4_1117(uint64_t a1, void *a2, double a3)
{
  LODWORD(a3) = 1036831949;
  if (!*(a1 + 32))
  {
    *&a3 = 0.0;
  }

  return [a2 setHyphenationFactor:a3];
}

uint64_t __25__LPTheme_adjustForStyle__block_invoke_5_1118(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __25__LPTheme_adjustForStyle__block_invoke_6_1119;
  v3[3] = &unk_1E7A36C48;
  v3[4] = *(a1 + 32);
  return [a2 applyToAllTextViewStyles:v3];
}

void __25__LPTheme_adjustForStyle__block_invoke_6_1119(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = fontWithTraits(*MEMORY[0x1E69DDD28], 0x8000, *(*(a1 + 32) + 16));
  [v4 setFallbackFontForTruncatedSingleLine:v3];
}

void __25__LPTheme_adjustForStyle__block_invoke_1123(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[LPPointUnit zero];
  [v3 setFirstLineLeading:v2];
}

uint64_t __25__LPTheme_adjustForStyle__block_invoke_2_1126(uint64_t a1)
{
  result = stylePrefersLeadingIcon(*(*(a1 + 32) + 8));
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    return v4 != 3 && (v4 != 47 || *(v3 + 32) != 5);
  }

  return result;
}

+ (void)addClient:(id)a3
{
  v4 = a3;
  v3 = +[LPThemeParametersObserver shared];
  [v3 addClient:v4];
}

+ (void)removeClient:(id)a3
{
  v4 = a3;
  v3 = +[LPThemeParametersObserver shared];
  [v3 removeClient:v4];
}

- (id)valueForThemeProperty:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"-" withString:@"."];
  v5 = [(LPTheme *)self valueForKeyPath:v4];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)CSSTextForThemeProperty:(id)a3
{
  v4 = a3;
  v5 = [(LPTheme *)self valueForThemeProperty:v4];
  if (v5)
  {
    v6 = [(LPTheme *)self CSSTextForProperty:v4 withValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)CSSTextForProperty:(id)a3 withValue:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v12 = v5;
    v7 = [v6 _lp_CSSText];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  return v8;
}

+ (double)platterizedIconScaleForReason:(int64_t)a3
{
  result = 0.65;
  if (a3 != 1)
  {
    return 0.5;
  }

  return result;
}

+ (void)invalidateThemeCache
{
  v2 = +[LPThemeParametersObserver shared];
  [v2 didChangeThemeParameters];
}

@end