@interface LPTheme
+ (LPTheme)themeWithStyle:(int64_t)style icon:(id)icon platform:(int64_t)platform sizeClass:(unint64_t)class sizeClassParameters:(id)parameters hasButton:(BOOL)button preferredContentSizeCategory:(id)category;
+ (double)platterizedIconScaleForReason:(int64_t)reason;
+ (void)addClient:(id)client;
+ (void)invalidateThemeCache;
+ (void)removeClient:(id)client;
- (LPTheme)initWithStyle:(int64_t)style icon:(id)icon platform:(int64_t)platform sizeClass:(unint64_t)class sizeClassParameters:(id)parameters hasButton:(BOOL)button preferredContentSizeCategory:(id)category;
- (id)CSSTextForProperty:(id)property withValue:(id)value;
- (id)CSSTextForThemeProperty:(id)property;
- (id)valueForThemeProperty:(id)property;
- (void)_adjustForAppleMusicCollaborativePlaylistStyle;
- (void)_adjustForEnrichedBusinessChatStyle;
- (void)_adjustForStyleWithFullWidthBottomButton;
- (void)adjustForStyle;
@end

@implementation LPTheme

+ (LPTheme)themeWithStyle:(int64_t)style icon:(id)icon platform:(int64_t)platform sizeClass:(unint64_t)class sizeClassParameters:(id)parameters hasButton:(BOOL)button preferredContentSizeCategory:(id)category
{
  buttonCopy = button;
  iconCopy = icon;
  parametersCopy = parameters;
  categoryCopy = category;
  v14 = themeCache();
  v15 = iconCopy;
  v16 = parametersCopy;
  v17 = categoryCopy;
  v18 = MEMORY[0x1E696AEC0];
  _isFallbackIcon = [v15 _isFallbackIcon];
  _cacheKey = [v16 _cacheKey];
  v21 = [v18 stringWithFormat:@"%ld-%d-%ld-%ld-%@-%d-%@", style, _isFallbackIcon, platform, class, _cacheKey, buttonCopy, v17];

  v22 = [v14 objectForKey:v21];
  if (!v22)
  {
    if ([v14 count] >= 4)
    {
      allKeys = [v14 allKeys];
      firstObject = [allKeys firstObject];
      [v14 removeObjectForKey:firstObject];
    }

    v22 = [[LPTheme alloc] initWithStyle:style icon:v15 platform:platform sizeClass:class sizeClassParameters:v16 hasButton:buttonCopy preferredContentSizeCategory:v17];
    [v14 setObject:v22 forKey:v21];
  }

  v25 = v22;

  return v25;
}

- (LPTheme)initWithStyle:(int64_t)style icon:(id)icon platform:(int64_t)platform sizeClass:(unint64_t)class sizeClassParameters:(id)parameters hasButton:(BOOL)button preferredContentSizeCategory:(id)category
{
  v109[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  parametersCopy = parameters;
  categoryCopy = category;
  v104.receiver = self;
  v104.super_class = LPTheme;
  v16 = [(LPTheme *)&v104 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_32;
  }

  v16->_style = style;
  v16->_sizeClass = class;
  objc_storeStrong(&v16->_sizeClassParameters, parameters);
  v17->_platform = platform;
  v17->_isFallbackIcon = [iconCopy _isFallbackIcon];
  v17->_hasButton = button;
  v18 = [categoryCopy copy];
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
  if (platform == 6)
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

  v38 = [[LPCaptionBarStyle alloc] initWithPlatform:platform sizeClass:class sizeClassParameters:parametersCopy fontScalingFactor:v17->_leadingScalingFactor];
  captionBar = v17->_captionBar;
  v17->_captionBar = v38;

  v40 = [[LPCollaborationFooterStyle alloc] initWithPlatform:platform sizeClass:class fontScalingFactor:v17->_leadingScalingFactor];
  [(LPCaptionBarStyle *)v17->_captionBar setCollaborationFooter:v40];

  v41 = [[LPQuotedTextViewStyle alloc] initWithPlatform:platform sizeClass:class fontScalingFactor:v17->_leadingScalingFactor];
  quotedText = v17->_quotedText;
  v17->_quotedText = v41;

  v43 = defaultBackgroundColor(platform);
  backgroundColor = v17->_backgroundColor;
  v17->_backgroundColor = v43;

  v45 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_1297];
  mediaBackgroundColor = v17->_mediaBackgroundColor;
  v17->_mediaBackgroundColor = v45;

  if (platform > 6)
  {
    v47 = 6;
  }

  else
  {
    v47 = qword_1AE9C6858[platform];
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
  if (platform == 2)
  {
    v52 = 0.0;
  }

  [(LPImageViewStyle *)v17->_mediaImage setDarkeningAmount:v52];
  v53 = [[LPVisualMediaViewStyle alloc] initWithPlatform:platform];
  mediaVideo = v17->_mediaVideo;
  v17->_mediaVideo = v53;

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v55 = [[LPCaptionBarStyle alloc] initWithPlatform:platform sizeClass:class sizeClassParameters:parametersCopy fontScalingFactor:v17->_leadingScalingFactor];
  mediaTopCaptionBar = v17->_mediaTopCaptionBar;
  v17->_mediaTopCaptionBar = v55;

  textStack = [(LPCaptionBarStyle *)v17->_mediaTopCaptionBar textStack];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __108__LPTheme_initWithStyle_icon_platform_sizeClass_sizeClassParameters_hasButton_preferredContentSizeCategory___block_invoke_3;
  v102[3] = &unk_1E7A36C48;
  v58 = whiteColor;
  v103 = v58;
  [textStack applyToAllTextViewStyles:v102];

  v59 = [[LPCaptionBarStyle alloc] initWithPlatform:platform sizeClass:class sizeClassParameters:parametersCopy fontScalingFactor:v17->_leadingScalingFactor];
  mediaBottomCaptionBar = v17->_mediaBottomCaptionBar;
  v17->_mediaBottomCaptionBar = v59;

  textStack2 = [(LPCaptionBarStyle *)v17->_mediaBottomCaptionBar textStack];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __108__LPTheme_initWithStyle_icon_platform_sizeClass_sizeClassParameters_hasButton_preferredContentSizeCategory___block_invoke_4;
  v100[3] = &unk_1E7A36C48;
  v62 = v58;
  v101 = v62;
  [textStack2 applyToAllTextViewStyles:v100];

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
  quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  [(LPImageViewStyle *)v17->_placeholderImage setMaskColor:quaternaryLabelColor];

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
    v69 = fontWithTraitsAndAttributes(*MEMORY[0x1E69DDD08], 0, v72, class);
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
  v78 = [[LPContactsBadgeStyle alloc] initWithPlatform:platform];
  contactsBadgeStyle = v17->_contactsBadgeStyle;
  v17->_contactsBadgeStyle = v78;

  v80 = [[LPIndeterminateProgressSpinnerStyle alloc] initWithPlatform:platform sizeClass:class fontScalingFactor:v17->_leadingScalingFactor];
  progressSpinner = v17->_progressSpinner;
  v17->_progressSpinner = v80;

  if (platform < 5)
  {
    goto LABEL_15;
  }

  if (platform == 5)
  {
    if (class == 13)
    {
      v83 = defaultCornerRadius_listOuterCornerRadius_1298;
      if (defaultCornerRadius_listOuterCornerRadius_1298)
      {
        goto LABEL_24;
      }

      v84 = pt(22.0);
      v85 = &defaultCornerRadius_listOuterCornerRadius_1298;
    }

    else if (class == 1)
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

  if (platform == 6)
  {
LABEL_15:
    if (class == 13)
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
  textStack3 = [(LPCaptionBarStyle *)v17->_captionBar textStack];
  captionTextPadding = [textStack3 captionTextPadding];

  if (captionTextPadding && [parametersCopy alignTextAndMediaHorizontalEdges])
  {
    v90 = +[LPPointUnit zero];
    [captionTextPadding setLeading:v90];

    v91 = +[LPPointUnit zero];
    [captionTextPadding setTrailing:v91];
  }

  padding = [(LPTextViewStyle *)v17->_quotedText padding];
  if (padding && [parametersCopy alignTextAndMediaHorizontalEdges])
  {
    v93 = +[LPPointUnit zero];
    [padding setLeading:v93];

    v94 = +[LPPointUnit zero];
    [padding setTrailing:v94];
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
  quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  button = [(LPCaptionBarStyle *)self->_captionBar button];
  [button setMenuBackgroundColor:quaternarySystemFillColor];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  button2 = [(LPCaptionBarStyle *)self->_captionBar button];
  [button2 setForegroundColor:labelColor];

  v17 = fontWithTraits(*MEMORY[0x1E69DDD08], 2, self->_sizeClass);
  button3 = [(LPCaptionBarStyle *)self->_captionBar button];
  [button3 setMenuFont:v17];

  button4 = [(LPCaptionBarStyle *)self->_captionBar button];
  [button4 setPrefersBehavioralStylePad:1];

  [(LPCaptionBarStyle *)self->_captionBar setUsesOutOfLineButton:1];
  [(LPCaptionBarStyle *)self->_captionBar setButtonIgnoresTextSafeAreaInsets:1];
  [(LPCaptionBarStyle *)self->_captionBar setAddFullWidthLineForButton:1];
  v19 = outerHorizontalTextMargin(self->_platform);
  button5 = [(LPCaptionBarStyle *)self->_captionBar button];
  margin = [button5 margin];
  [margin setLeading:v19];

  button6 = [(LPCaptionBarStyle *)self->_captionBar button];
  margin2 = [button6 margin];
  [margin2 setTrailing:v19];

  button7 = [(LPCaptionBarStyle *)self->_captionBar button];
  margin3 = [button7 margin];
  [margin3 setBottom:v19];

  v12 = +[LPPointUnit zero];
  button8 = [(LPCaptionBarStyle *)self->_captionBar button];
  margin4 = [button8 margin];
  [margin4 setTop:v12];
}

- (void)_adjustForEnrichedBusinessChatStyle
{
  [(LPTheme *)self _adjustForStyleWithFullWidthBottomButton];
  button = [(LPCaptionBarStyle *)self->_captionBar button];
  [button setBehavior:1];
}

- (void)_adjustForAppleMusicCollaborativePlaylistStyle
{
  [(LPTheme *)self _adjustForStyleWithFullWidthBottomButton];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  collaborationFooter = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  options = [collaborationFooter options];
  [options setColor:labelColor];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  collaborationFooter2 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  handle = [collaborationFooter2 handle];
  [handle setColor:secondaryLabelColor];

  collaborationFooter3 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  [collaborationFooter3 setUseFullWidth:1];

  collaborationFooter4 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  [collaborationFooter4 setUseSafeAreaInsetWithPadding:1];

  v33 = outerHorizontalTextMargin(self->_platform);
  collaborationFooter5 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  margin = [collaborationFooter5 margin];
  [margin setLeading:v33];

  collaborationFooter6 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  margin2 = [collaborationFooter6 margin];
  [margin2 setTrailing:v33];

  v11 = +[LPPointUnit zero];
  collaborationFooter7 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  margin3 = [collaborationFooter7 margin];
  [margin3 setTop:v11];

  v14 = +[LPPointUnit zero];
  collaborationFooter8 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  margin4 = [collaborationFooter8 margin];
  [margin4 setBottom:v14];

  v17 = +[LPPointUnit zero];
  collaborationFooter9 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  padding = [collaborationFooter9 padding];
  [padding setTop:v17];

  v20 = [[LPPointUnit alloc] initWithValue:10.0];
  collaborationFooter10 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  padding2 = [collaborationFooter10 padding];
  [padding2 setBottom:v20];

  v23 = [[LPPointUnit alloc] initWithValue:4.0];
  collaborationFooter11 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  separatorMargin = [collaborationFooter11 separatorMargin];
  [separatorMargin setBottom:v23];

  v26 = +[LPPointUnit zero];
  collaborationFooter12 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
  separatorMargin2 = [collaborationFooter12 separatorMargin];
  [separatorMargin2 setTop:v26];
}

- (void)adjustForStyle
{
  v1207[1] = *MEMORY[0x1E69E9840];
  _adjustForAppleMusicCollaborativePlaylistStyle = sizeClassAllowsMedia(self->_sizeClass);
  p_quotedText = _adjustForAppleMusicCollaborativePlaylistStyle;
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

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      backgroundColor = self->_backgroundColor;
      self->_backgroundColor = clearColor;

      textStack = [(LPCaptionBarStyle *)self->_captionBar textStack];
      topCaption = [textStack topCaption];
      v1201[0] = MEMORY[0x1E69E9820];
      v1201[1] = 3221225472;
      v1201[2] = __25__LPTheme_adjustForStyle__block_invoke_2;
      v1201[3] = &__block_descriptor_33_e25_v16__0__LPTextViewStyle_8l;
      v1202 = v39;
      [topCaption applyToAllTextViewStyles:v1201];

      v139 = +[LPPointUnit zero];
      textStack2 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack2 setFirstLineLeading:v139];

      v141 = +[LPPointUnit zero];
      textStack3 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack3 setLastLineDescent:v141];

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

      textStack4 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack4 setMaximumNumberOfLines:v144];

      platform = self->_platform;
      if (platform <= 6)
      {
        if (((1 << platform) & 0x59) != 0)
        {
          v147 = [[LPPointUnit alloc] initWithValue:17.0];
          textStack5 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding = [textStack5 captionTextPadding];
          [captionTextPadding setTop:v147];

          v150 = [[LPPointUnit alloc] initWithValue:18.0];
          textStack6 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding2 = [textStack6 captionTextPadding];
          [captionTextPadding2 setBottom:v150];
        }

        else if (platform == 2)
        {
          v704 = [[LPPointUnit alloc] initWithValue:3.0];
          textStack7 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding3 = [textStack7 captionTextPadding];
          [captionTextPadding3 setTop:v704];

          v150 = [[LPPointUnit alloc] initWithValue:4.0];
          textStack6 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding2 = [textStack6 captionTextPadding];
          [captionTextPadding2 setBottom:v150];
        }

        else
        {
          if (platform != 5)
          {
            goto LABEL_51;
          }

          v220 = [[LPPointUnit alloc] initWithValue:22.0];
          textStack8 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding4 = [textStack8 captionTextPadding];
          [captionTextPadding4 setTop:v220];

          v150 = [[LPPointUnit alloc] initWithValue:22.0];
          textStack6 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding2 = [textStack6 captionTextPadding];
          [captionTextPadding2 setBottom:v150];
        }
      }

LABEL_51:
      textStack9 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      bottomCaption = [textStack9 bottomCaption];
      v1199[0] = MEMORY[0x1E69E9820];
      v1199[1] = 3221225472;
      v1199[2] = __25__LPTheme_adjustForStyle__block_invoke_3;
      v1199[3] = &__block_descriptor_33_e25_v16__0__LPTextViewStyle_8l;
      v1200 = v37;
      [bottomCaption applyToAllTextViewStyles:v1199];

      if (self->_platform == 2)
      {
        leadingIcon5 = cardHeadingIconSize(2uLL, v155);
        v157 = [LPSize alloc];
        height = [leadingIcon5 height];
        [height value];
        v159 = [(LPSize *)v157 initWithSize:0.0, v159];
        leadingIcon = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon setMinimumSize:v159];

        leadingIcon2 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon2 setFixedSize:leadingIcon5];
      }

      else
      {
        v163 = [[LPSize alloc] initWithSquareSize:28.0];
        leadingIcon3 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon3 setMinimumSize:v163];

        v166 = cardHeadingIconSize(self->_platform, v165);
        leadingIcon4 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon4 setFixedSize:v166];

        leadingIcon5 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon5 setRequireFixedSize:1];
      }

      v168 = stylePrefersSmallerCornerRadiusInCardHeading(self->_style);
      v169 = [LPPointUnit alloc];
      v170 = 4.0;
      if (v168)
      {
        v170 = 3.0;
      }

      v171 = [(LPPointUnit *)v169 initWithValue:v170];
      leadingIcon6 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon6 setCornerRadius:v171];

      if (self->_platform != 5)
      {
        v173 = +[LPShadowStyle cardHeadingIconShadow];
        leadingIcon7 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon7 setShadow:v173];
      }

      v175 = [[LPPointUnit alloc] initWithValue:17.0];
      leadingIcon8 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon8 setFixedFallbackImageSize:v175];

      if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters onlyShowIcon])
      {
        leadingIcon9 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon9 setRequireFixedSize:0];

        leadingIcon10 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon10 setScalesToFitParent:1];
      }

      v179 = +[LPPointUnit zero];
      leadingIcon11 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin = [leadingIcon11 margin];
      [margin setLeading:v179];

      v182 = cardHeadingVerticalIconMargin(self->_platform, self->_sizeClassParameters);
      leadingIcon12 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin2 = [leadingIcon12 margin];
      [margin2 setTop:v182];

      v185 = cardHeadingVerticalIconMargin(self->_platform, self->_sizeClassParameters);
      leadingIcon13 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin3 = [leadingIcon13 margin];
      [margin3 setBottom:v185];

      leadingIcon14 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon14 setFilter:14];

      applyCommonCardHeadingCaptionBarProperties(self->_captionBar, self->_platform, self->_style, self->_sizeClass, self->_isFallbackIcon);
      collaborationFooter = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
      [collaborationFooter setShowSeparator:0];

      v190 = self->_platform;
      if (v190 == 5)
      {
        v191 = +[LPPointUnit zero];
        button = [(LPCaptionBarStyle *)self->_captionBar button];
        margin4 = [button margin];
        [margin4 setBottom:v191];

        v194 = +[LPPointUnit zero];
        button2 = [(LPCaptionBarStyle *)self->_captionBar button];
        margin5 = [button2 margin];
        [margin5 setTop:v194];

        v197 = +[LPPointUnit zero];
        button3 = [(LPCaptionBarStyle *)self->_captionBar button];
        margin6 = [button3 margin];
        [margin6 setTrailing:v197];

        collaborationFooter2 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [collaborationFooter2 setIgnoreSafeAreaInset:1];

        v190 = self->_platform;
      }

      if (v190 == 1)
      {
        if (self->_hasButton)
        {
          v201 = +[LPPointUnit zero];
          button4 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin7 = [button4 margin];
          [margin7 setLeading:v201];

          v204 = +[LPPointUnit zero];
          button5 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin8 = [button5 margin];
          [margin8 setBottom:v204];

          v207 = [[LPPointUnit alloc] initWithValue:12.0];
          button6 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin9 = [button6 margin];
          [margin9 setTop:v207];

          v210 = +[LPPointUnit zero];
          button7 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin10 = [button7 margin];
          [margin10 setTrailing:v210];

          [(LPCaptionBarStyle *)self->_captionBar setUsesOutOfLineButton:1];
          [(LPCaptionBarStyle *)self->_captionBar setAddFullWidthLineForButton:1];
          [(LPCaptionBarStyle *)self->_captionBar setButtonIgnoresTextSafeAreaInsets:1];
          v213 = [[LPPointUnit alloc] initWithValue:4.0];
        }

        else
        {
          v213 = [[LPPointUnit alloc] initWithValue:12.0];
        }

        collaborationFooter3 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        margin11 = [collaborationFooter3 margin];
        [margin11 setTop:v213];

        v216 = +[LPPointUnit zero];
        collaborationFooter4 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        margin12 = [collaborationFooter4 margin];
        [margin12 setBottom:v216];

        v294 = [[LPPointUnit alloc] initWithValue:2.0];
        collaborationFooter5 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        padding = [collaborationFooter5 padding];
        [padding setTop:v294];

        v297 = [[LPPointUnit alloc] initWithValue:0.5];
        collaborationFooter6 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        padding2 = [collaborationFooter6 padding];
        [padding2 setBottom:v297];

        v300 = [[LPPointUnit alloc] initWithValue:6.0];
        collaborationFooter7 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        padding3 = [collaborationFooter7 padding];
        [padding3 setLeading:v300];

        collaborationFooter8 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        padding4 = [collaborationFooter8 padding];
        leading = [padding4 leading];
        collaborationFooter9 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        padding5 = [collaborationFooter9 padding];
        [padding5 setTrailing:leading];

        v308 = [[LPPointUnit alloc] initWithValue:5.0];
        collaborationFooter10 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [collaborationFooter10 setCornerRadius:v308];
      }

      else
      {
        collaborationFooter11 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [collaborationFooter11 setUseFullWidth:0];
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
        leadingIcon15 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon15 setFixedFallbackImageSize:v609];

        v611 = [LPSize alloc];
        leadingIcon16 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        fixedFallbackImageSize = [leadingIcon16 fixedFallbackImageSize];
        v614 = [(LPSize *)v611 initWithSquarePoints:fixedFallbackImageSize];
        leadingIcon17 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon17 setFixedSize:v614];

        v616 = [[LPPointUnit alloc] initWithValue:6.0];
        leadingIcon18 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        margin13 = [leadingIcon18 margin];
        [margin13 setLeading:v616];

        v619 = +[LPPointUnit zero];
        leadingIcon19 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        margin14 = [leadingIcon19 margin];
        [margin14 setTrailing:v619];

        leadingIcon20 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        margin15 = [leadingIcon20 margin];
        [margin15 setTop:v616];

        leadingIcon21 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        margin16 = [leadingIcon21 margin];
        [margin16 setBottom:v616];

        v626 = [[LPPointUnit alloc] initWithValue:5.0];
        leadingIcon22 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon22 setCornerRadius:v626];

        if (self->_isFallbackIcon)
        {
          leadingIcon23 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [leadingIcon23 setFilter:12];

          secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
          leadingIcon24 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [leadingIcon24 setMaskColor:secondaryLabelColor];

          leadingIcon25 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [leadingIcon25 setScalingMode:3];

          v632 = [[LPPointUnit alloc] initWithValue:-3.0];
          leadingIcon26 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          padding6 = [leadingIcon26 padding];
          [padding6 setTop:v632];

          leadingIcon27 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          padding7 = [leadingIcon27 padding];
          [padding7 setLeading:v632];

          leadingIcon28 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          padding8 = [leadingIcon28 padding];
          [padding8 setBottom:v632];

          leadingIcon29 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          padding9 = [leadingIcon29 padding];
          [padding9 setTrailing:v632];
        }

        textStack10 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        captionTextPadding5 = [textStack10 captionTextPadding];
        [captionTextPadding5 setLeading:v616];

        v643 = [[LPPointUnit alloc] initWithValue:8.0];
        textStack11 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        captionTextPadding6 = [textStack11 captionTextPadding];
        [captionTextPadding6 setTrailing:v643];

        textStack12 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v1203[0] = MEMORY[0x1E69E9820];
        v1203[1] = 3221225472;
        v1203[2] = __25__LPTheme_adjustForStyle__block_invoke;
        v1203[3] = &unk_1E7A36C48;
        v1203[4] = self;
        [textStack12 applyToAllTextViewStyles:v1203];

        v647 = +[LPPointUnit zero];
        textStack13 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack13 setFirstLineLeading:v647];

        v649 = +[LPPointUnit zero];
        textStack14 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack14 setLastLineDescent:v649];

        textStack15 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack15 setShouldAlignToBaselines:0];

        style = self->_style;
        if (style == 12)
        {
          leadingIcon30 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [leadingIcon30 setFilter:5];

          style = self->_style;
        }

        if (style == 18)
        {
          leadingIcon31 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [leadingIcon31 setFilter:7];
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
      clearColor2 = [MEMORY[0x1E69DC888] clearColor];
      v41 = self->_backgroundColor;
      self->_backgroundColor = clearColor2;

      v42 = [[LPSize alloc] initWithSquareSize:26.0];
      leadingIcon32 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon32 setFixedSize:v42];

      leadingIcon33 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon33 setOpacity:0.5];

      v45 = [[LPPointUnit alloc] initWithValue:8.0];
      leadingIcon34 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon34 setCornerRadius:v45];

      v47 = [[LPPointUnit alloc] initWithValue:6.0];
      leadingIcon35 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin17 = [leadingIcon35 margin];
      [margin17 setTop:v47];

      v50 = [[LPPointUnit alloc] initWithValue:6.0];
      leadingIcon36 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin18 = [leadingIcon36 margin];
      [margin18 setLeading:v50];

      v53 = [[LPPointUnit alloc] initWithValue:6.0];
      textStack16 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding7 = [textStack16 captionTextPadding];
      [captionTextPadding7 setLeading:v53];

      v56 = [[LPPointUnit alloc] initWithValue:14.0];
      textStack17 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding8 = [textStack17 captionTextPadding];
      [captionTextPadding8 setTrailing:v56];

      v59 = [[LPPointUnit alloc] initWithValue:7.0];
      textStack18 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding9 = [textStack18 captionTextPadding];
      [captionTextPadding9 setTop:v59];

      textStack19 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding10 = [textStack19 captionTextPadding];
      v64 = [captionTextPadding10 top];
      textStack20 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding11 = [textStack20 captionTextPadding];
      [captionTextPadding11 setBottom:v64];

      v67 = +[LPPointUnit zero];
      textStack21 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack21 setFirstLineLeading:v67];

      v69 = +[LPPointUnit zero];
      textStack22 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack22 setLastLineDescent:v69];

      textStack23 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack23 setShouldAlignToBaselines:0];

      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v73 = [labelColor colorWithAlphaComponent:0.5];

      labelColor2 = [MEMORY[0x1E69DC888] labelColor];
      v75 = [labelColor2 colorWithAlphaComponent:0.25];

      textStack24 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      aboveTopCaption = [textStack24 aboveTopCaption];
      v1197[0] = MEMORY[0x1E69E9820];
      v1197[1] = 3221225472;
      v1197[2] = __25__LPTheme_adjustForStyle__block_invoke_6;
      v1197[3] = &unk_1E7A36C48;
      v78 = v73;
      v1198 = v78;
      [aboveTopCaption applyToAllTextViewStyles:v1197];

      textStack25 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      topCaption2 = [textStack25 topCaption];
      v1195[0] = MEMORY[0x1E69E9820];
      v1195[1] = 3221225472;
      v1195[2] = __25__LPTheme_adjustForStyle__block_invoke_7;
      v1195[3] = &unk_1E7A36C48;
      v81 = v78;
      v1196 = v81;
      [topCaption2 applyToAllTextViewStyles:v1195];

      textStack26 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      bottomCaption2 = [textStack26 bottomCaption];
      v1193[0] = MEMORY[0x1E69E9820];
      v1193[1] = 3221225472;
      v1193[2] = __25__LPTheme_adjustForStyle__block_invoke_8;
      v1193[3] = &unk_1E7A36C48;
      v84 = v75;
      v1194 = v84;
      [bottomCaption2 applyToAllTextViewStyles:v1193];

      textStack27 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      belowBottomCaption = [textStack27 belowBottomCaption];
      v1191[0] = MEMORY[0x1E69E9820];
      v1191[1] = 3221225472;
      v1191[2] = __25__LPTheme_adjustForStyle__block_invoke_9;
      v1191[3] = &unk_1E7A36C48;
      v87 = v84;
      v1192 = v87;
      [belowBottomCaption applyToAllTextViewStyles:v1191];

      textStack28 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack28 applyToAllTextViewStyles:&__block_literal_global_1093];

      if (self->_isFallbackIcon)
      {
        leadingIcon37 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        applyFallbackIconProperties(leadingIcon37, self->_platform, self->_style, self->_sizeClass);
      }

      return;
    case 7:
      clearColor3 = [MEMORY[0x1E69DC888] clearColor];
      v91 = self->_backgroundColor;
      self->_backgroundColor = clearColor3;

      v92 = [[LPSize alloc] initWithSquareSize:26.0];
      leadingIcon38 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon38 setFixedSize:v92];

      v94 = [[LPPointUnit alloc] initWithValue:8.0];
      leadingIcon39 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon39 setCornerRadius:v94];

      v96 = [[LPPointUnit alloc] initWithValue:4.0];
      leadingIcon40 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin19 = [leadingIcon40 margin];
      [margin19 setTop:v96];

      v99 = [[LPPointUnit alloc] initWithValue:4.0];
      leadingIcon41 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin20 = [leadingIcon41 margin];
      [margin20 setLeading:v99];

      v102 = [[LPPointUnit alloc] initWithValue:6.0];
      textStack29 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding12 = [textStack29 captionTextPadding];
      [captionTextPadding12 setLeading:v102];

      v105 = [[LPPointUnit alloc] initWithValue:4.0];
      textStack30 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding13 = [textStack30 captionTextPadding];
      [captionTextPadding13 setTrailing:v105];

      v108 = [[LPPointUnit alloc] initWithValue:5.0];
      textStack31 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding14 = [textStack31 captionTextPadding];
      [captionTextPadding14 setTop:v108];

      textStack32 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding15 = [textStack32 captionTextPadding];
      v113 = [captionTextPadding15 top];
      textStack33 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding16 = [textStack33 captionTextPadding];
      [captionTextPadding16 setBottom:v113];

      v116 = +[LPPointUnit zero];
      textStack34 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack34 setFirstLineLeading:v116];

      v118 = +[LPPointUnit zero];
      textStack35 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack35 setLastLineDescent:v118];

      textStack36 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack36 setShouldAlignToBaselines:0];

      textStack37 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack37 applyToAllTextViewStyles:&__block_literal_global_1095];

      textStack38 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      topCaption3 = [textStack38 topCaption];
      [topCaption3 applyToAllTextViewStyles:&__block_literal_global_1097];

      textStack39 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      bottomCaption3 = [textStack39 bottomCaption];
      [bottomCaption3 applyToAllTextViewStyles:&__block_literal_global_1099];

      if (!self->_isFallbackIcon)
      {
        return;
      }

      leadingIcon42 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      applyFallbackIconProperties(leadingIcon42, self->_platform, self->_style, self->_sizeClass);
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
      leadingIcon43 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon43 setFixedSize:v8];

      leadingIcon44 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon44 setRequireFixedSize:1];

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
        leadingIcon44 = v13;
LABEL_13:
        leadingIcon45 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon45 setCornerRadius:leadingIcon44];

        leadingIcon46 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon46 setFilter:14];

        v19 = listIconOuterMargin_normalSize;
        if (!listIconOuterMargin_normalSize)
        {
          v20 = [[LPPointUnit alloc] initWithValue:12.0];
          v21 = listIconOuterMargin_normalSize;
          listIconOuterMargin_normalSize = v20;

          v19 = listIconOuterMargin_normalSize;
        }

        leadingIcon42 = v19;
        leadingIcon47 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        margin21 = [leadingIcon47 margin];
        [margin21 setLeading:leadingIcon42];

        leadingIcon48 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        margin22 = [leadingIcon48 margin];
        [margin22 setTop:leadingIcon42];

        leadingIcon49 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        margin23 = [leadingIcon49 margin];
        [margin23 setBottom:leadingIcon42];

        textStack40 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack40 applyToAllTextViewStyles:&__block_literal_global_1089];

        textStack41 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        topCaption4 = [textStack41 topCaption];
        [topCaption4 applyToAllTextViewStyles:&__block_literal_global_1091];

        textStack42 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack42 setMaximumNumberOfLines:2];

        v32 = +[LPPointUnit zero];
        textStack43 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack43 setFirstLineLeading:v32];

        v34 = +[LPPointUnit zero];
        textStack44 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack44 setLastLineDescent:v34];

        textStack45 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack45 setShouldAlignToBaselines:0];

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

  padding11 = self->_platform;
  if (!+[LPTestingOverrides forceMonospaceFonts])
  {
    if (padding11 <= 6)
    {
      if (((1 << padding11) & 0x53) != 0)
      {
        v134 = fontWithTraits(*MEMORY[0x1E69DDD00], 0, sizeClass);
        goto LABEL_75;
      }

      if (padding11 == 2)
      {
        v134 = fontWithTraits(*MEMORY[0x1E69DDD38], 0x8000, sizeClass);
        goto LABEL_75;
      }

      if (padding11 == 5)
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

    padding10 = [(LPTextViewStyle *)self->_quotedText padding];
    [padding10 setTop:v223];

    v229 = +[LPPointUnit zero];
    padding11 = [(LPTextViewStyle *)self->_quotedText padding];
    [padding11 setBottom:v229];
  }

  [(LPQuotedTextViewStyle *)self->_quotedText setShowQuoteIndicator:0];
  [(LPQuotedTextViewStyle *)self->_quotedText setShowCharacterLimitIndicator:0];
  clearColor4 = [MEMORY[0x1E69DC888] clearColor];
  mediaBackgroundColor = self->_mediaBackgroundColor;
  self->_mediaBackgroundColor = clearColor4;

  if (self->_sizeClass != 8)
  {
    if (v226 == 0.0)
    {
      v232 = pt(self->_leadingScalingFactor * 24.0);
      textStack46 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack46 setFirstLineLeading:v232];

      v234 = pt(self->_leadingScalingFactor * 13.0);
      textStack47 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack47 setLastLineDescent:v234];

      v236 = tweetTextToIconPadding(self->_platform);
      textStack48 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding17 = [textStack48 captionTextPadding];
      [captionTextPadding17 setLeading:v236];

      v239 = tweetTextOuterPadding(self->_platform);
      textStack49 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding18 = [textStack49 captionTextPadding];
      [captionTextPadding18 setTrailing:v239];
    }

    v242 = outerHorizontalTextMargin(self->_platform);
    leadingIcon50 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin24 = [leadingIcon50 margin];
    [margin24 setLeading:v242];

    v245 = +[LPPointUnit zero];
    leadingIcon51 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin25 = [leadingIcon51 margin];
    [margin25 setTrailing:v245];

    v248 = [[LPSize alloc] initWithSquareSize:25.0];
    padding11 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [padding11 setFixedSize:v248];
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
    leadingIcon52 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon52 setFixedSize:v250];

    v252 = +[LPPointUnit zero];
    leadingIcon53 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin26 = [leadingIcon53 margin];
    [margin26 setTop:v252];

    v255 = +[LPPointUnit zero];
    leadingIcon54 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin27 = [leadingIcon54 margin];
    [margin27 setBottom:v255];

    v258 = [[LPPointUnit alloc] initWithValue:24.0];
    leadingIcon55 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon55 setFixedFallbackImageSize:v258];

    leadingIcon56 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    fixedSize = [leadingIcon56 fixedSize];
    trailingIcon = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon setFixedSize:fixedSize];

    v263 = +[LPPointUnit zero];
    trailingIcon2 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    margin28 = [trailingIcon2 margin];
    [margin28 setTop:v263];

    v266 = +[LPPointUnit zero];
    trailingIcon3 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    margin29 = [trailingIcon3 margin];
    [margin29 setBottom:v266];

    leadingIcon57 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    fixedFallbackImageSize2 = [leadingIcon57 fixedFallbackImageSize];
    trailingIcon4 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon4 setFixedFallbackImageSize:fixedFallbackImageSize2];

    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    textStack50 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    v1189[0] = MEMORY[0x1E69E9820];
    v1189[1] = 3221225472;
    v1189[2] = __25__LPTheme_adjustForStyle__block_invoke_14;
    v1189[3] = &unk_1E7A36C48;
    padding11 = secondaryLabelColor2;
    v1190 = padding11;
    [(LPPointUnit *)textStack50 applyToAllTextViewStyles:v1189];

    v274 = self->_platform;
    if (v274 <= 6)
    {
      textStack50 = [[LPPointUnit alloc] initWithValue:self->_leadingScalingFactor * dbl_1AE9C68C8[v274]];
    }

    textStack51 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [textStack51 setFirstLineLeading:textStack50];

    v276 = self->_platform;
    if (v276 <= 6)
    {
      textStack50 = [[LPPointUnit alloc] initWithValue:self->_leadingScalingFactor * dbl_1AE9C6900[v276]];
    }

    textStack52 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [textStack52 setLastLineDescent:textStack50];

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

    textStack53 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    padding11 = [textStack53 topCaption];
    leading2 = [padding11 leading];
    [leading2 setMaximumLines:1];

    v133 = self->_style;
  }

  if (v133 == 4)
  {
    if (![(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters needsSpaceAffordanceForDeleteButton])
    {
      v283 = +[LPPointUnit zero];
      [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v283];
    }

    initSearchGlyph = [[LPGlyphStyle alloc] initSearchGlyph];
    textStack54 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    topCaption5 = [textStack54 topCaption];
    leading3 = [topCaption5 leading];
    [leading3 setLeadingGlyph:initSearchGlyph];

    textStack55 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    topCaption6 = [textStack55 topCaption];
    leading4 = [topCaption6 leading];
    [leading4 setMaximumLines:1];

    v291 = [[LPSize alloc] initWithSquareSize:24.0];
    padding11 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [padding11 setFixedSize:v291];

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
      margin30 = [v310 margin];
      [margin30 setTop:v315];

      v317 = [[LPPointUnit alloc] initWithValue:12.0];
      margin31 = [v310 margin];
      [margin31 setBottom:v317];

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

    labelColor3 = [MEMORY[0x1E69DC888] labelColor];
    padding11 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    bottomCaption4 = [padding11 bottomCaption];
    leading5 = [bottomCaption4 leading];
    [leading5 setColor:labelColor3];

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
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(LPTextViewStyle *)self->_quotedText setColor:whiteColor];

      v329 = [[LPPointUnit alloc] initWithValue:15.0];
      padding12 = [(LPTextViewStyle *)self->_quotedText padding];
      [padding12 setTop:v329];

      padding13 = [(LPTextViewStyle *)self->_quotedText padding];
      v332 = [padding13 top];
      padding14 = [(LPTextViewStyle *)self->_quotedText padding];
      [padding14 setBottom:v332];

      v334 = [[LPPointUnit alloc] initWithValue:16.0];
      textStack56 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding19 = [textStack56 captionTextPadding];
      [captionTextPadding19 setLeading:v334];

      v337 = [[LPPointUnit alloc] initWithValue:self->_leadingScalingFactor * 46.0];
      textStack57 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding20 = [textStack57 captionTextPadding];
      [captionTextPadding20 setTrailing:v337];

      textStack58 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding21 = [textStack58 captionTextPadding];
      leading6 = [captionTextPadding21 leading];
      padding15 = [(LPTextViewStyle *)self->_quotedText padding];
      [padding15 setLeading:leading6];

      textStack59 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding22 = [textStack59 captionTextPadding];
      trailing = [captionTextPadding22 trailing];
      padding16 = [(LPTextViewStyle *)self->_quotedText padding];
      [padding16 setTrailing:trailing];

      v348 = fontWithTraits(*MEMORY[0x1E69DDD10], 0, self->_sizeClass);
      textStack60 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
      topCaption7 = [textStack60 topCaption];
      trailing2 = [topCaption7 trailing];
      [trailing2 setFont:v348];

      v352 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.45];
      textStack61 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
      topCaption8 = [textStack61 topCaption];
      trailing3 = [topCaption8 trailing];
      [trailing3 setColor:v352];

      textStack62 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
      topCaption9 = [textStack62 topCaption];
      trailing4 = [topCaption9 trailing];
      v359 = *MEMORY[0x1E6979CF8];
      [trailing4 setCompositingFilter:*MEMORY[0x1E6979CF8]];

      v360 = [[LPPointUnit alloc] initWithValue:16.0];
      textStack63 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
      captionTextPadding23 = [textStack63 captionTextPadding];
      [captionTextPadding23 setTrailing:v360];

      v363 = [[LPPointUnit alloc] initWithValue:14.0];
      textStack64 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
      [textStack64 setLastLineDescent:v363];

      textStack65 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack65 applyToAllTextViewStyles:&__block_literal_global_1105];

      v366 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
      textStack66 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      belowBottomCaption2 = [textStack66 belowBottomCaption];
      leading7 = [belowBottomCaption2 leading];
      [leading7 setColor:v366];

      padding11 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      belowBottomCaption3 = [padding11 belowBottomCaption];
      leading8 = [belowBottomCaption3 leading];
      [leading8 setCompositingFilter:v359];

      v372 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
      [(LPCaptionBarStyle *)self->_captionBar setBackgroundColor:v372];

      clearColor5 = [MEMORY[0x1E69DC888] clearColor];
      v374 = self->_mediaBackgroundColor;
      self->_mediaBackgroundColor = clearColor5;

      v133 = self->_style;
    }
  }

  if (v133 == 61)
  {
    textStack67 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [textStack67 applyToAllTextViewStyles:&__block_literal_global_1107];

    v376 = fontWithTraits(*MEMORY[0x1E69DDD40], 0, self->_sizeClass);
    textStack68 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    topCaption10 = [textStack68 topCaption];
    leading9 = [topCaption10 leading];
    [leading9 setFont:v376];

    v380 = fontWithTraits(*MEMORY[0x1E69DDD80], 2, self->_sizeClass);
    textStack69 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    bottomCaption5 = [textStack69 bottomCaption];
    leading10 = [bottomCaption5 leading];
    [leading10 setFont:v380];

    v384 = fontWithTraits(*MEMORY[0x1E69DDD28], 0, self->_sizeClass);
    textStack70 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    belowBottomCaption4 = [textStack70 belowBottomCaption];
    leading11 = [belowBottomCaption4 leading];
    [leading11 setFont:v384];

    v388 = [[LPSize alloc] initWithSquareSize:40.0];
    leadingIcon58 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon58 setFixedSize:v388];

    leadingIcon59 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon59 setFilter:5];

    v391 = [[LPPointUnit alloc] initWithValue:20.0];
    leadingIcon60 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon60 setCornerRadius:v391];

    v393 = [[LPPointUnit alloc] initWithValue:12.0];
    textStack71 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    captionTextPadding24 = [textStack71 captionTextPadding];
    [captionTextPadding24 setLeading:v393];

    v396 = [[LPPointUnit alloc] initWithValue:12.0];
    padding11 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    captionTextPadding25 = [padding11 captionTextPadding];
    [captionTextPadding25 setLeading:v396];

    v133 = self->_style;
  }

  if (v133 <= 0x38 && ((1 << v133) & 0x100000000300240) != 0)
  {
    labelColor4 = [MEMORY[0x1E69DC888] labelColor];
    padding11 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    bottomCaption6 = [padding11 bottomCaption];
    leading12 = [bottomCaption6 leading];
    [leading12 setColor:labelColor4];

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
      padding17 = [(LPImageViewStyle *)self->_mediaImage padding];
      [padding17 setLeading:v409];

      v411 = outerHorizontalTextMargin(self->_platform);
      padding18 = [(LPImageViewStyle *)self->_mediaImage padding];
      [padding18 setTrailing:v411];

      v413 = outerHorizontalTextMargin(self->_platform);
      padding11 = [(LPImageViewStyle *)self->_mediaImage padding];
      [padding11 setTop:v413];

LABEL_132:
      clearColor6 = [MEMORY[0x1E69DC888] clearColor];
      [(LPImageViewStyle *)self->_mediaImage setBackgroundColor:clearColor6];

      clearColor7 = [MEMORY[0x1E69DC888] clearColor];
      v416 = self->_mediaBackgroundColor;
      self->_mediaBackgroundColor = clearColor7;

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
      padding11 = v420;
LABEL_141:
      v424 = [(LPSize *)v417 initWithSquarePoints:padding11];
      [(LPImageViewStyle *)self->_mediaImage setFixedSize:v424];

      [(LPImageViewStyle *)self->_mediaImage setFilter:13];
      [(LPImageViewStyle *)self->_mediaImage setScalingMode:2];
      v426 = musicArtistOuterPadding(self->_platform, v425);
      padding19 = [(LPImageViewStyle *)self->_mediaImage padding];
      [padding19 setLeading:v426];

      v429 = musicArtistOuterPadding(self->_platform, v428);
      padding20 = [(LPImageViewStyle *)self->_mediaImage padding];
      [padding20 setTrailing:v429];

      v432 = musicArtistOuterPadding(self->_platform, v431);
      padding21 = [(LPImageViewStyle *)self->_mediaImage padding];
      [padding21 setTop:v432];

      clearColor8 = [MEMORY[0x1E69DC888] clearColor];
      [(LPImageViewStyle *)self->_mediaImage setBackgroundColor:clearColor8];

      clearColor9 = [MEMORY[0x1E69DC888] clearColor];
      v436 = self->_mediaBackgroundColor;
      self->_mediaBackgroundColor = clearColor9;

      textStack72 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      topCaption11 = [textStack72 topCaption];
      leading13 = [topCaption11 leading];
      [leading13 setTextAlignment:2];

      textStack73 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      bottomCaption7 = [textStack73 bottomCaption];
      leading14 = [bottomCaption7 leading];
      [leading14 setTextAlignment:2];

      textStack74 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      belowBottomCaption5 = [textStack74 belowBottomCaption];
      leading15 = [belowBottomCaption5 leading];
      [leading15 setTextAlignment:2];

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
    labelColor5 = [MEMORY[0x1E69DC888] labelColor];
    textStack75 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    bottomCaption8 = [textStack75 bottomCaption];
    leading16 = [bottomCaption8 leading];
    [leading16 setColor:labelColor5];

    v133 = self->_style;
  }

  if (v133 == 17)
  {
    v450 = [[LPSize alloc] initWithSquareSize:18.0];
    leadingIcon61 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    [leadingIcon61 setFixedSize:v450];

    v452 = [[LPPointUnit alloc] initWithValue:8.0];
    leadingIcon62 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    margin32 = [leadingIcon62 margin];
    [margin32 setLeading:v452];

    v455 = [[LPPointUnit alloc] initWithValue:8.0];
    leadingIcon63 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    margin33 = [leadingIcon63 margin];
    [margin33 setTop:v455];

    leadingIcon64 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    [leadingIcon64 setFilter:3];

    v459 = [[LPPointUnit alloc] initWithValue:5.0];
    leadingIcon65 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    [leadingIcon65 setCornerRadius:v459];

    v133 = self->_style;
  }

  if (v133 == 24)
  {
    textStack76 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    topCaption12 = [textStack76 topCaption];
    leading17 = [topCaption12 leading];
    [leading17 setMaximumLines:0];

    textStack77 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    bottomCaption9 = [textStack77 bottomCaption];
    leading18 = [bottomCaption9 leading];
    [leading18 setMaximumLines:0];

    v467 = bottomCaptionFont(self->_platform, self->_sizeClass);
    textStack78 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    topCaption13 = [textStack78 topCaption];
    leading19 = [topCaption13 leading];
    [leading19 setFont:v467];

    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    textStack79 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    topCaption14 = [textStack79 topCaption];
    leading20 = [topCaption14 leading];
    [leading20 setColor:secondaryLabelColor3];

    v475 = topCaptionFont(self->_platform, self->_sizeClass);
    textStack80 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    bottomCaption10 = [textStack80 bottomCaption];
    leading21 = [bottomCaption10 leading];
    [leading21 setFont:v475];

    labelColor6 = [MEMORY[0x1E69DC888] labelColor];
    textStack81 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    bottomCaption11 = [textStack81 bottomCaption];
    leading22 = [bottomCaption11 leading];
    [leading22 setColor:labelColor6];

    v133 = self->_style;
  }

  if (v133 == 27)
  {
    textStack82 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    topCaption15 = [textStack82 topCaption];
    leading23 = [topCaption15 leading];
    [leading23 setMaximumLines:0];

    textStack83 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    bottomCaption12 = [textStack83 bottomCaption];
    leading24 = [bottomCaption12 leading];
    [leading24 setMaximumLines:0];

    v489 = topCaptionFont(self->_platform, self->_sizeClass);
    textStack84 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    bottomCaption13 = [textStack84 bottomCaption];
    leading25 = [bottomCaption13 leading];
    [leading25 setFont:v489];

    trailingIcon5 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon5 setFilter:1];

    v494 = businessChatApplePayIconSize_normalSize;
    if (!businessChatApplePayIconSize_normalSize)
    {
      v495 = [[LPSize alloc] initWithSize:60.0, 30.0];
      v496 = businessChatApplePayIconSize_normalSize;
      businessChatApplePayIconSize_normalSize = v495;

      v494 = businessChatApplePayIconSize_normalSize;
    }

    v497 = v494;
    trailingIcon6 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon6 setFixedSize:v497];

    trailingIcon7 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon7 setVerticalAlignment:1];

    v500 = [[LPPointUnit alloc] initWithValue:8.0];
    trailingIcon8 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    margin34 = [trailingIcon8 margin];
    [margin34 setTop:v500];

    v503 = [[LPPointUnit alloc] initWithValue:263.0];
    maximumWidth = self->_maximumWidth;
    self->_maximumWidth = v503;

    v505 = [[LPPointUnit alloc] initWithValue:222.0];
    [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v505];

    v133 = self->_style;
  }

  if (v133 == 30)
  {
    textStack85 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    topCaption16 = [textStack85 topCaption];
    leading26 = [topCaption16 leading];
    [leading26 setMaximumLines:0];

    textStack86 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    bottomCaption14 = [textStack86 bottomCaption];
    leading27 = [bottomCaption14 leading];
    [leading27 setMaximumLines:0];

    v512 = topCaptionFont(self->_platform, self->_sizeClass);
    textStack87 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    bottomCaption15 = [textStack87 bottomCaption];
    leading28 = [bottomCaption15 leading];
    [leading28 setFont:v512];

    v516 = [[LPPointUnit alloc] initWithValue:263.0];
    v517 = self->_maximumWidth;
    self->_maximumWidth = v516;

    v518 = [[LPPointUnit alloc] initWithValue:222.0];
    [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v518];

    v133 = self->_style;
  }

  if (v133 == 29)
  {
    textStack88 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    topCaption17 = [textStack88 topCaption];
    leading29 = [topCaption17 leading];
    [leading29 setMaximumLines:0];

    textStack89 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    bottomCaption16 = [textStack89 bottomCaption];
    leading30 = [bottomCaption16 leading];
    [leading30 setMaximumLines:0];

    v525 = topCaptionFont(self->_platform, self->_sizeClass);
    textStack90 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    bottomCaption17 = [textStack90 bottomCaption];
    leading31 = [bottomCaption17 leading];
    [leading31 setFont:v525];

    trailingIcon9 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon9 setFilter:3];

    v530 = [[LPPointUnit alloc] initWithValue:10.0];
    trailingIcon10 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon10 setCornerRadius:v530];

    leadingIcon66 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon66 setFilter:3];

    v533 = [[LPPointUnit alloc] initWithValue:10.0];
    leadingIcon67 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon67 setCornerRadius:v533];

    v535 = businessChatImageSmallSize();
    trailingIcon11 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon11 setFixedSize:v535];

    v537 = businessChatImageSmallSize();
    leadingIcon68 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon68 setFixedSize:v537];

    v539 = [[LPPointUnit alloc] initWithValue:10.0];
    trailingIcon12 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    margin35 = [trailingIcon12 margin];
    [margin35 setTop:v539];

    v542 = [[LPPointUnit alloc] initWithValue:10.0];
    trailingIcon13 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    margin36 = [trailingIcon13 margin];
    [margin36 setBottom:v542];

    v545 = [[LPPointUnit alloc] initWithValue:10.0];
    leadingIcon69 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin37 = [leadingIcon69 margin];
    [margin37 setTop:v545];

    v548 = [[LPPointUnit alloc] initWithValue:10.0];
    leadingIcon70 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin38 = [leadingIcon70 margin];
    [margin38 setBottom:v548];

    v551 = [[LPPointUnit alloc] initWithValue:263.0];
    v552 = self->_maximumWidth;
    self->_maximumWidth = v551;

    v553 = [[LPPointUnit alloc] initWithValue:222.0];
    [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v553];

    v133 = self->_style;
  }

  if (v133 == 28)
  {
    textStack91 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    topCaption18 = [textStack91 topCaption];
    leading32 = [topCaption18 leading];
    [leading32 setMaximumLines:0];

    textStack92 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    bottomCaption18 = [textStack92 bottomCaption];
    leading33 = [bottomCaption18 leading];
    [leading33 setMaximumLines:0];

    v560 = topCaptionFont(self->_platform, self->_sizeClass);
    textStack93 = [(LPCaptionBarStyle *)self->_mediaBottomCaptionBar textStack];
    bottomCaption19 = [textStack93 bottomCaption];
    leading34 = [bottomCaption19 leading];
    [leading34 setFont:v560];

    trailingIcon14 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon14 setFilter:3];

    v565 = [[LPPointUnit alloc] initWithValue:10.0];
    trailingIcon15 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon15 setCornerRadius:v565];

    leadingIcon71 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon71 setFilter:3];

    v568 = [[LPPointUnit alloc] initWithValue:10.0];
    leadingIcon72 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon72 setCornerRadius:v568];

    v570 = businessChatImageIconSize();
    trailingIcon16 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon16 setFixedSize:v570];

    v572 = businessChatImageIconSize();
    leadingIcon73 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon73 setFixedSize:v572];

    v574 = [[LPPointUnit alloc] initWithValue:10.0];
    trailingIcon17 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    margin39 = [trailingIcon17 margin];
    [margin39 setTop:v574];

    v577 = [[LPPointUnit alloc] initWithValue:10.0];
    trailingIcon18 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    margin40 = [trailingIcon18 margin];
    [margin40 setBottom:v577];

    v580 = [[LPPointUnit alloc] initWithValue:10.0];
    leadingIcon74 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin41 = [leadingIcon74 margin];
    [margin41 setTop:v580];

    v583 = [[LPPointUnit alloc] initWithValue:10.0];
    leadingIcon75 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin42 = [leadingIcon75 margin];
    [margin42 setBottom:v583];

    v586 = [[LPPointUnit alloc] initWithValue:263.0];
    v587 = self->_maximumWidth;
    self->_maximumWidth = v586;

    v588 = [[LPPointUnit alloc] initWithValue:222.0];
    [(LPCaptionBarStyle *)self->_captionBar setMinimumWidth:v588];

    v133 = self->_style;
  }

  if (v133 == 12)
  {
    leadingIcon76 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon76 setFilter:5];

    v133 = self->_style;
  }

  if (v133 == 18)
  {
    v590 = iMessageAppLinkIconSize(self->_platform);
    leadingIcon77 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon77 setFixedSize:v590];

    leadingIcon78 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon78 setFilter:7];

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
    margin43 = [v595 margin];
    [margin43 setLeading:v596];

    margin44 = [v595 margin];
    [margin44 setTop:v596];

    margin45 = [v595 margin];
    [margin45 setBottom:v596];

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
        margin45 = v601;
LABEL_197:
        [v595 setFixedSize:margin45];

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
      [v595 setFixedSize:margin45];

LABEL_199:
      if (!sizeClassRequiresTrailingIcon(self->_sizeClass))
      {
        v656 = [[LPPointUnit alloc] initWithValue:8.0];
        textStack94 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        captionTextPadding26 = [textStack94 captionTextPadding];
        [captionTextPadding26 setLeading:v656];
      }

      if (self->_style != 46 || (sizeClassAllowsPillButton(self->_sizeClass) & 1) == 0)
      {
        textStack95 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        topCaption19 = [textStack95 topCaption];
        leading35 = [topCaption19 leading];
        [leading35 setMaximumLines:1];
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
        margin45 = v605;
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

    leadingIcon79 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    [leadingIcon79 setFilter:7];

    v667 = iMessageAppLinkIconSize(self->_platform);
    leadingIcon80 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar leadingIcon];
    [leadingIcon80 setFixedSize:v667];

    v133 = self->_style;
  }

  if (v133 == 31)
  {
    textStack96 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    topCaption20 = [textStack96 topCaption];
    leading36 = [topCaption20 leading];
    [leading36 setMaximumLines:10];

    textStack97 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    bottomCaption20 = [textStack97 bottomCaption];
    leading37 = [bottomCaption20 leading];
    [leading37 setMaximumLines:10];

    v675 = [[LPPointUnit alloc] initWithValue:17.0];
    leadingIcon81 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon81 setFixedFallbackImageSize:v675];

    leadingIcon82 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    fixedFallbackImageSize3 = [leadingIcon82 fixedFallbackImageSize];
    trailingIcon19 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
    [trailingIcon19 setFixedFallbackImageSize:fixedFallbackImageSize3];

    v133 = self->_style;
  }

  if (v133 == 59)
  {
    v680 = [[LPSize alloc] initWithSquareSize:60.0];
    [(LPImageViewStyle *)self->_mediaImage setMaximumSize:v680];
    [(LPImageViewStyle *)self->_mediaImage setFixedSize:v680];
    [(LPImageViewStyle *)self->_mediaImage setScalingMode:1];
    v681 = [[LPPointUnit alloc] initWithValue:10.0];
    padding22 = [(LPImageViewStyle *)self->_mediaImage padding];
    [padding22 setTop:v681];

    v683 = [[LPPointUnit alloc] initWithValue:10.0];
    padding23 = [(LPImageViewStyle *)self->_mediaImage padding];
    [padding23 setBottom:v683];

    [(LPImageViewStyle *)self->_mediaImage setDarkeningAmount:0.0];
    if ((sizeClassRequiresLeadingIcon(self->_sizeClass) & 1) == 0)
    {
      textStack98 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      topCaption21 = [textStack98 topCaption];
      leading38 = [topCaption21 leading];
      [leading38 setTextAlignment:2];

      textStack99 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      bottomCaption21 = [textStack99 bottomCaption];
      leading39 = [bottomCaption21 leading];
      [leading39 setTextAlignment:2];
    }

    v133 = self->_style;
  }

  if (v133 == 32)
  {
    initSearchGlyph2 = [[LPGlyphStyle alloc] initSearchGlyph];
    textStack100 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    topCaption22 = [textStack100 topCaption];
    leading40 = [topCaption22 leading];
    [leading40 setLeadingGlyph:initSearchGlyph2];

    textStack101 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    topCaption23 = [textStack101 topCaption];
    leading41 = [topCaption23 leading];
    [leading41 setMaximumLines:10];

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
      textStack102 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar textStack];
      topCaption24 = [textStack102 topCaption];
      leading42 = [topCaption24 leading];
      [leading42 setFont:v707];

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
      textStack103 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar textStack];
      bottomCaption22 = [textStack103 bottomCaption];
      leading43 = [bottomCaption22 leading];
      [leading43 setFont:v714];

      v718 = [[LPPointUnit alloc] initWithValue:30.0];
      textStack104 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar textStack];
      [textStack104 setFirstLineLeading:v718];

      v720 = [[LPPointUnit alloc] initWithValue:18.0];
      textStack105 = [(LPCaptionBarStyle *)self->_mediaTopCaptionBar textStack];
      bottomCaption23 = [textStack105 bottomCaption];
      leading44 = [bottomCaption23 leading];
      [leading44 setFirstLineLeading:v720];

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
    textStack106 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    topCaption25 = [textStack106 topCaption];
    leading45 = [topCaption25 leading];
    color = [leading45 color];
    textStack107 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    bottomCaption24 = [textStack107 bottomCaption];
    leading46 = [bottomCaption24 leading];
    [leading46 setColor:color];

    v133 = self->_style;
  }

  if (p_quotedText)
  {
    if (v133 - 13 > 1)
    {
      goto LABEL_263;
    }

    clearColor10 = [MEMORY[0x1E69DC888] clearColor];
    v732 = self->_mediaBackgroundColor;
    self->_mediaBackgroundColor = clearColor10;

    v733 = [[LPPointUnit alloc] initWithValue:-10.0];
    padding24 = [(LPImageViewStyle *)self->_mediaImage padding];
    [padding24 setBottom:v733];

    p_quotedText = [[LPSize alloc] initWithSquareSize:300.0];
    [(LPImageViewStyle *)self->_mediaImage setFixedSize:p_quotedText];

    _adjustForAppleMusicCollaborativePlaylistStyle = [(LPImageViewStyle *)self->_mediaImage setScalingMode:1];
    v133 = self->_style;
  }

  if (v133 == 13)
  {
    p_quotedText = [[LPPointUnit alloc] initWithValue:20.0];
    padding25 = [(LPImageViewStyle *)self->_mediaImage padding];
    [padding25 setTop:p_quotedText];

    v133 = self->_style;
  }

  if (v133 == 14)
  {
    p_quotedText = [[LPPointUnit alloc] initWithValue:10.0];
    padding26 = [(LPImageViewStyle *)self->_mediaImage padding];
    [padding26 setTop:p_quotedText];

    v133 = self->_style;
  }

LABEL_263:
  if (v133 == 41)
  {
    [(LPQuotedTextViewStyle *)self->_quotedText setShowQuoteIndicator:0];
    p_quotedText = [[LPSize alloc] initWithSquareSize:40.0];
    leadingIcon83 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon83 setFixedSize:p_quotedText];

    v133 = self->_style;
  }

  if (v133 == 53 || v133 == 44)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    button8 = [(LPCaptionBarStyle *)self->_captionBar button];
    [button8 setBackgroundColor:blackColor];

    p_quotedText = [[LPPointUnit alloc] initWithValue:8.0];
    button9 = [(LPCaptionBarStyle *)self->_captionBar button];
    [button9 setImagePadding:p_quotedText];

    v133 = self->_style;
  }

  if (v133 == 56)
  {
    _adjustForAppleMusicCollaborativePlaylistStyle = [(LPTheme *)self _adjustForAppleMusicCollaborativePlaylistStyle];
    v133 = self->_style;
  }

  if (v133 == 58)
  {
    _adjustForAppleMusicCollaborativePlaylistStyle = [(LPTheme *)self _adjustForEnrichedBusinessChatStyle];
    v133 = self->_style;
  }

  if (v133 == 46)
  {
    self->_backgroundMaterial = 9;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    button10 = [(LPCaptionBarStyle *)self->_captionBar button];
    [button10 setBackgroundColor:whiteColor2];

    v743 = +[LPResources faceTimeBackgroundColor];
    button11 = [(LPCaptionBarStyle *)self->_captionBar button];
    [button11 setForegroundColor:v743];

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
    padding27 = [(LPImageViewStyle *)self->_mediaImage padding];
    [padding27 setTop:v746];

    v748 = [[LPPointUnit alloc] initWithValue:14.0];
    padding28 = [(LPImageViewStyle *)self->_mediaImage padding];
    [padding28 setBottom:v748];

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
    padding29 = [(LPImageViewStyle *)self->_mediaImage padding];
    [padding29 setTop:v750];

    v752 = [[LPPointUnit alloc] initWithValue:10.0];
    padding30 = [(LPImageViewStyle *)self->_mediaImage padding];
    [padding30 setBottom:v752];

    [(LPImageViewStyle *)self->_mediaImage setDarkeningAmount:0.0];
    v133 = self->_style;
  }

  if (v133 == 51)
  {
    labelColor7 = [MEMORY[0x1E69DC888] labelColor];
    textStack108 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    bottomCaption25 = [textStack108 bottomCaption];
    leading47 = [bottomCaption25 leading];
    [leading47 setColor:labelColor7];

    p_quotedText = [MEMORY[0x1E69DC888] secondaryLabelColor];
    textStack109 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    belowBottomCaption6 = [textStack109 belowBottomCaption];
    leading48 = [belowBottomCaption6 leading];
    [leading48 setColor:p_quotedText];

    v133 = self->_style;
  }

  if (v133 == 47 && !self->_sizeClass)
  {
    v761 = self->_platform;
    if (v761 <= 6)
    {
      p_quotedText = [[LPSize alloc] initWithSquareSize:dbl_1AE9C69A8[v761]];
    }

    leadingIcon84 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon84 setFixedSize:p_quotedText];

    leadingIcon85 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon85 setRequireFixedSize:0];

    leadingIcon86 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon86 setScalingMode:1];

    leadingIcon87 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon87 setFilter:14];

    v766 = [[LPPointUnit alloc] initWithValue:4.0];
    leadingIcon88 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon88 setCornerRadius:v766];

    v768 = +[LPShadowStyle collaborationPreviewShadow];
    leadingIcon89 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon89 setShadow:v768];

    leadingIcon90 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon90 setCanAdjustVerticalPaddingForFixedSize:1];

    v771 = [[LPPointUnit alloc] initWithValue:0.5];
    leadingIcon91 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon91 setBorderWidth:v771];

    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    v774 = [blackColor2 colorWithAlphaComponent:0.3];
    leadingIcon92 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon92 setBorderColor:v774];

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
        leadingIcon93 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        margin46 = [leadingIcon93 margin];
        [margin46 setLeading:p_quotedText];

        leadingIcon94 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        margin47 = [leadingIcon94 margin];
        [margin47 setTop:p_quotedText];

        leadingIcon95 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        margin48 = [leadingIcon95 margin];
        [margin48 setBottom:p_quotedText];

        if (self->_platform == 2)
        {
          v788 = [[LPSize alloc] initWithSquareSize:15.0];
        }

        else
        {
          v788 = [[LPSize alloc] initWithSquareSize:20.0];
        }

        leadingIconBadge = [(LPCaptionBarStyle *)self->_captionBar leadingIconBadge];
        [leadingIconBadge setFixedSize:v788];

        if (self->_platform == 5)
        {
          v790 = +[LPPointUnit zero];
          textStack110 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding27 = [textStack110 captionTextPadding];
          [captionTextPadding27 setLeading:v790];

          v793 = +[LPPointUnit zero];
          leadingIcon96 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          padding31 = [leadingIcon96 padding];
          [padding31 setTrailing:v793];

          v796 = pt(12.0);
          leadingIcon97 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          margin49 = [leadingIcon97 margin];
          [margin49 setTrailing:v796];
        }

        leadingIconBadge2 = [(LPCaptionBarStyle *)self->_captionBar leadingIconBadge];
        fixedSize2 = [leadingIconBadge2 fixedSize];
        trailingIconBadge = [(LPCaptionBarStyle *)self->_captionBar trailingIconBadge];
        [trailingIconBadge setFixedSize:fixedSize2];

        leadingIconBadge3 = [(LPCaptionBarStyle *)self->_captionBar leadingIconBadge];
        fixedSize3 = [leadingIconBadge3 fixedSize];
        width = [fixedSize3 width];
        [width value];
        v806 = v805;
        leadingIconBadge4 = [(LPCaptionBarStyle *)self->_captionBar leadingIconBadge];
        [leadingIconBadge4 setOffset:v806 * 0.5 + -2.0];

        leadingIconBadge5 = [(LPCaptionBarStyle *)self->_captionBar leadingIconBadge];
        [leadingIconBadge5 offset];
        v810 = v809;
        trailingIconBadge2 = [(LPCaptionBarStyle *)self->_captionBar trailingIconBadge];
        [trailingIconBadge2 setOffset:v810];

        v812 = fallbackIconSize(self->_platform);
        leadingIcon98 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon98 setFixedFallbackImageSize:v812];

        if (self->_hasButton)
        {
          v814 = pt(1.0);
          button12 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin50 = [button12 margin];
          [margin50 setTop:v814];

          if (self->_platform == 5)
          {
            v817 = pt(12.0);
            button13 = [(LPCaptionBarStyle *)self->_captionBar button];
            margin51 = [button13 margin];
            [margin51 setLeading:v817];

            pt(20.0);
          }

          else
          {
            pt(16.0);
          }
          v820 = ;
          button14 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin52 = [button14 margin];
          [margin52 setTrailing:v820];

          v823 = pt(12.0);
          button15 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin53 = [button15 margin];
          [margin53 setBottom:v823];

          v826 = pt(3.0);
          button16 = [(LPCaptionBarStyle *)self->_captionBar button];
          [button16 setAdditionalVerticalPadding:v826];

          [(LPCaptionBarStyle *)self->_captionBar setUsesOutOfLineButton:1];
          [(LPCaptionBarStyle *)self->_captionBar setCanAddLineForButton:1];
          [(LPCaptionBarStyle *)self->_captionBar setButtonRespectsTextStackPadding:1];
          [(LPCaptionBarStyle *)self->_captionBar setPositionButtonRelativeToTextStack:1];
          [(LPCaptionBarStyle *)self->_captionBar setAlignButtonWithCaptionTextLeadingEdge:1];
          [(LPCaptionBarStyle *)self->_captionBar setExpandButtonToCaptionEdge:1];
          [(LPCaptionBarStyle *)self->_captionBar setButtonIgnoresTextSafeAreaInsets:1];
          v828 = pt(12.0);
          collaborationFooter12 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          margin54 = [collaborationFooter12 margin];
          [margin54 setTop:v828];
        }

        v831 = +[LPPointUnit zero];
        collaborationFooter13 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        margin55 = [collaborationFooter13 margin];
        [margin55 setBottom:v831];

        v834 = [[LPPointUnit alloc] initWithValue:8.0];
        collaborationFooter14 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        padding32 = [collaborationFooter14 padding];
        [padding32 setBottom:v834];

        v837 = [[LPPointUnit alloc] initWithValue:9.0];
        collaborationFooter15 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        separatorMargin = [collaborationFooter15 separatorMargin];
        [separatorMargin setBottom:v837];

        collaborationFooter16 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [collaborationFooter16 setUseFullWidthDuringSizing:0];

        labelColor8 = [MEMORY[0x1E69DC888] labelColor];
        collaborationFooter17 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        options = [collaborationFooter17 options];
        [options setColor:labelColor8];

        v844 = self->_platform;
        if (v844 == 5)
        {
          v845 = pt(11.0);
          collaborationFooter18 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          [collaborationFooter18 setCornerRadius:v845];

          v844 = self->_platform;
        }

        v847 = [LPPointUnit alloc];
        v848 = 25.0;
        if (v844 == 2)
        {
          v848 = 20.0;
        }

        v849 = [(LPPointUnit *)v847 initWithValue:v848];
        textStack111 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack111 setFirstLineLeading:v849];

        v851 = [[LPPointUnit alloc] initWithValue:11.0];
        textStack112 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack112 setLastLineDescent:v851];

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
    leadingIcon99 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    applyFallbackIconProperties(leadingIcon99, self->_platform, self->_style, self->_sizeClass);

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

    textStack113 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [textStack113 applyToAllTextViewStyles:&__block_literal_global_1112];

    p_quotedText = &self->_quotedText;
    [(LPQuotedTextViewStyle *)self->_quotedText setShowQuoteIndicator:0];
    _adjustForAppleMusicCollaborativePlaylistStyle = [(LPQuotedTextViewStyle *)self->_quotedText setShowCharacterLimitIndicator:0];
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

    _adjustForAppleMusicCollaborativePlaylistStyle = v859;
  }

  v863 = self->_cornerRadius;
  self->_cornerRadius = _adjustForAppleMusicCollaborativePlaylistStyle;

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

  trailingIcon20 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  [trailingIcon20 setFixedSize:p_quotedText];

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
  trailingIcon21 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  [trailingIcon21 setCornerRadius:p_quotedText];

  v878 = adjustForStyle_smallDetailedIconMargin;
  if (!adjustForStyle_smallDetailedIconMargin)
  {
    v879 = [[LPPointUnit alloc] initWithValue:12.0];
    v880 = adjustForStyle_smallDetailedIconMargin;
    adjustForStyle_smallDetailedIconMargin = v879;

    v878 = adjustForStyle_smallDetailedIconMargin;
  }

  trailingIcon22 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  margin56 = [trailingIcon22 margin];
  [margin56 setTrailing:v878];

  v883 = adjustForStyle_smallDetailedIconMargin;
  trailingIcon23 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  margin57 = [trailingIcon23 margin];
  [margin57 setTop:v883];

  v886 = adjustForStyle_smallDetailedIconMargin;
  trailingIcon24 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  margin58 = [trailingIcon24 margin];
  [margin58 setBottom:v886];

  trailingIcon25 = [(LPCaptionBarStyle *)self->_captionBar trailingIcon];
  fixedSize4 = [trailingIcon25 fixedSize];
  playButton = [(LPCaptionBarStyle *)self->_captionBar playButton];
  [playButton setSize:fixedSize4];

  v892 = [[LPPointUnit alloc] initWithValue:20.0];
  playButton2 = [(LPCaptionBarStyle *)self->_captionBar playButton];
  [playButton2 setGlyphSize:v892];

  v894 = adjustForStyle_smallDetailedIconMargin;
  playButtonPadding = [(LPCaptionBarStyle *)self->_captionBar playButtonPadding];
  [playButtonPadding setTrailing:v894];

  v896 = adjustForStyle_smallDetailedIconMargin;
  playButtonPadding2 = [(LPCaptionBarStyle *)self->_captionBar playButtonPadding];
  [playButtonPadding2 setTop:v896];

  v898 = adjustForStyle_smallDetailedIconMargin;
  playButtonPadding3 = [(LPCaptionBarStyle *)self->_captionBar playButtonPadding];
  [playButtonPadding3 setBottom:v898];

  p_quotedText = [(LPCaptionBarStyle *)self->_captionBar textStack];
  [(LPSize *)p_quotedText setMaximumNumberOfLines:3];

  [(LPCaptionBarStyle *)self->_captionBar setMinimumNumberOfLinesToVerticallyCenter:3];
  v854 = self->_sizeClass;
LABEL_343:
  if (v854 - 10 <= 2)
  {
    leadingIcon100 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon100 setFilter:14];

    leadingIcon101 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon101 setScalingMode:2];

    v902 = [[LPPointUnit alloc] initWithValue:5.0];
    leadingIcon102 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon102 setCornerRadius:v902];

    v904 = +[LPPointUnit zero];
    leadingIcon103 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin59 = [leadingIcon103 margin];
    [margin59 setTrailing:v904];

    if (self->_platform == 5)
    {
      v907 = [[LPSize alloc] initWithSize:0.0, 44.0];
      leadingIcon104 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon104 setMinimumSize:v907];
    }

    v909 = +[LPPointUnit zero];
    textStack114 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [textStack114 setFirstLineLeading:v909];

    v911 = +[LPPointUnit zero];
    textStack115 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [textStack115 setLastLineDescent:v911];

    v913 = mediumOrLargeHorizontalFillColor(self->_platform);
    button17 = [(LPCaptionBarStyle *)self->_captionBar button];
    [button17 setBackgroundColor:v913];

    v915 = mediumOrLargeHorizontalForegroundColor(self->_platform);
    button18 = [(LPCaptionBarStyle *)self->_captionBar button];
    [button18 setForegroundColor:v915];

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
      leadingIcon105 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon105 setFilter:12];

      p_quotedText = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [(LPSize *)p_quotedText setScalingMode:3];
    }

    if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters onlyShowIcon])
    {
      leadingIcon106 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon106 setRequireFixedSize:0];

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
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v923 = self->_backgroundColor;
      self->_backgroundColor = systemBackgroundColor;

      v921 = self->_platform;
    }

    if (v921 <= 6)
    {
      p_quotedText = [[LPPointUnit alloc] initWithValue:dbl_1AE9C6A18[v921]];
    }

    button19 = [(LPCaptionBarStyle *)self->_captionBar button];
    margin60 = [button19 margin];
    [margin60 setTrailing:p_quotedText];

    v920 = self->_sizeClass;
    if (v920 == 10)
    {
      leadingIcon107 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon107 setScalesToFitParent:1];

      if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters preserveIconAspectRatioAndAlignmentWhenScaling])
      {
        leadingIcon108 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon108 setScalingMode:1];

        leadingIcon109 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon109 setPreservesEdgeAlignmentWhenScaling:1];
      }

      v929 = fallbackIconSize(self->_platform);
      leadingIcon110 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon110 setFixedFallbackImageSize:v929];

      v931 = adjustForStyle_leadingOuterMargin;
      if (!adjustForStyle_leadingOuterMargin)
      {
        v932 = [[LPPointUnit alloc] initWithValue:16.0];
        v933 = adjustForStyle_leadingOuterMargin;
        adjustForStyle_leadingOuterMargin = v932;

        v931 = adjustForStyle_leadingOuterMargin;
      }

      leadingIcon111 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin61 = [leadingIcon111 margin];
      [margin61 setLeading:v931];

      v936 = adjustForStyle_leadingOuterMargin;
      leadingIcon112 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin62 = [leadingIcon112 margin];
      [margin62 setTop:v936];

      v939 = adjustForStyle_leadingOuterMargin;
      leadingIcon113 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin63 = [leadingIcon113 margin];
      [margin63 setBottom:v939];

      v942 = outerHorizontalTextMargin(self->_platform);
      textStack116 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding28 = [textStack116 captionTextPadding];
      [captionTextPadding28 setLeading:v942];

      v945 = adjustForStyle_leadingOuterMargin;
      textStack117 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding29 = [textStack117 captionTextPadding];
      [captionTextPadding29 setTop:v945];

      textStack118 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack118 setMaximumNumberOfLines:0];

      [(LPCaptionBarStyle *)self->_captionBar setMinimumNumberOfLinesToVerticallyCenter:0xFFFFFFFFLL];
      [(LPCaptionBarStyle *)self->_captionBar setUsesOutOfLineButton:1];
      if (self->_isFallbackIcon)
      {
        v949 = mediumOrLargeHorizontalForegroundColor(self->_platform);
        leadingIcon114 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon114 setMaskColor:v949];

        v951 = mediumOrLargeHorizontalFillColor(self->_platform);
        leadingIcon115 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon115 setBackgroundColor:v951];
      }

      v920 = self->_sizeClass;
    }
  }

  if (v920 == 11)
  {
    leadingIcon116 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon116 setScalesToFitParent:1];

    if (self->_platform == 5)
    {
      v969 = 56.0;
    }

    else
    {
      v969 = 42.0;
    }

    v970 = [[LPSize alloc] initWithSquareSize:v969];
    leadingIcon117 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon117 setFixedSize:v970];

    v972 = [[LPPointUnit alloc] initWithValue:v969];
    leadingIcon118 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon118 setFixedFallbackImageSize:v972];

    v974 = fontWithTraits(*MEMORY[0x1E69DDCF8], 0, self->_sizeClass);
    leadingIcon119 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon119 setFixedFallbackImageFont:v974];

    leadingIcon120 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon120 setFixedFallbackImageScale:&unk_1F24835A8];

    if (self->_platform == 5)
    {
      [(LPContactsBadgeStyle *)self->_contactsBadgeStyle setIconOffset:-8.0];
      v977 = [[LPPointUnit alloc] initWithValue:6.0];
      leadingIcon121 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon121 setCornerRadius:v977];

      v979 = [[LPPointUnit alloc] initWithValue:16.0];
      leadingIcon122 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin64 = [leadingIcon122 margin];
      [margin64 setLeading:v979];

      leadingIcon123 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin65 = [leadingIcon123 margin];
      [margin65 setTop:v979];

      leadingIcon124 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin66 = [leadingIcon124 margin];
      [margin66 setBottom:v979];

      textStack120 = [[LPPointUnit alloc] initWithValue:12.0];
      textStack119 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      captionTextPadding30 = [textStack119 captionTextPadding];
      [captionTextPadding30 setLeading:textStack120];
    }

    else
    {
      v998 = [[LPPointUnit alloc] initWithValue:14.0];
      leadingIcon125 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin67 = [leadingIcon125 margin];
      [margin67 setLeading:v998];

      v1001 = [[LPPointUnit alloc] initWithValue:9.0];
      leadingIcon126 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin68 = [leadingIcon126 margin];
      [margin68 setTop:v1001];

      v1004 = [[LPPointUnit alloc] initWithValue:9.0];
      leadingIcon127 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin69 = [leadingIcon127 margin];
      [margin69 setBottom:v1004];

      v979 = [[LPPointUnit alloc] initWithValue:10.0];
      textStack120 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      textStack119 = [(LPPointUnit *)textStack120 captionTextPadding];
      [textStack119 setLeading:v979];
    }

    v1007 = [[LPPointUnit alloc] initWithValue:13.0];
    textStack121 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    captionTextPadding31 = [textStack121 captionTextPadding];
    [captionTextPadding31 setTop:v1007];

    v1010 = [[LPPointUnit alloc] initWithValue:13.0];
    textStack122 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    captionTextPadding32 = [textStack122 captionTextPadding];
    [captionTextPadding32 setBottom:v1010];

    textStack123 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [textStack123 setMaximumNumberOfLines:2];

    textStack124 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [textStack124 setShouldAlignToBaselines:0];

    textStack125 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    [textStack125 applyToAllTextViewStyles:&__block_literal_global_1125];

    if (self->_isFallbackIcon)
    {
      whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
      leadingIcon128 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon128 setMaskColor:whiteColor3];

      v1018 = mediumOrLargeHorizontalFillColor(self->_platform);
      leadingIcon129 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon129 setBackgroundColor:v1018];
    }
  }

  else if (v920 == 12)
  {
    clearColor11 = [MEMORY[0x1E69DC888] clearColor];
    v954 = self->_backgroundColor;
    self->_backgroundColor = clearColor11;

    v955 = [[LPPointUnit alloc] initWithValue:428.0];
    v956 = self->_maximumWidth;
    self->_maximumWidth = v955;

    v957 = fallbackIconSize(self->_platform);
    leadingIcon130 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon130 setFixedFallbackImageSize:v957];

    v959 = +[LPPointUnit zero];
    leadingIcon131 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin70 = [leadingIcon131 margin];
    [margin70 setLeading:v959];

    if (+[LPSettings useOnGlassShareSheetAppearance])
    {
      v962 = +[LPPointUnit zero];
      leadingIcon132 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin71 = [leadingIcon132 margin];
      [margin71 setTop:v962];

      +[LPPointUnit zero];
    }

    else
    {
      v989 = cardHeadingVerticalIconMargin(self->_platform, self->_sizeClassParameters);
      leadingIcon133 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      margin72 = [leadingIcon133 margin];
      [margin72 setTop:v989];

      cardHeadingVerticalIconMargin(self->_platform, self->_sizeClassParameters);
    }
    v965 = ;
    leadingIcon134 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin73 = [leadingIcon134 margin];
    [margin73 setBottom:v965];

    leadingIcon135 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon135 setRequireFixedSize:1];

    leadingIcon136 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon136 setVerticalAlignment:1];

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
        alignButtonWithCaptionTextLeadingEdge = [(LPLinkRendererSizeClassParameters *)v996 alignButtonWithCaptionTextLeadingEdge];
        v1038 = &largeCardHeadingIconSize_largeSize;
        if (alignButtonWithCaptionTextLeadingEdge)
        {
          v1038 = &largeCardHeadingIconSize_normalSize;
        }
      }

      v997 = *v1038;
    }

    v1040 = v997;

    leadingIcon137 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon137 setFixedSize:v1040];

    leadingIcon138 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    fixedSize5 = [leadingIcon138 fixedSize];
    v1044 = [fixedSize5 scaledBy:0.7];
    leadingIcon139 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    [leadingIcon139 setMinimumSize:v1044];

    if (self->_platform != 5)
    {
      v1046 = +[LPShadowStyle cardHeadingIconShadow];
      leadingIcon140 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [leadingIcon140 setShadow:v1046];
    }

    if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters alignButtonWithCaptionTextLeadingEdge])
    {
      if (!self->_isFallbackIcon)
      {
        v1049 = pt(4.0);
        leadingIcon141 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon141 setCornerRadius:v1049];

        if (self->_platform != 5)
        {
          v1051 = +[LPShadowStyle collaborationPreviewShadow];
          leadingIcon142 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [leadingIcon142 setShadow:v1051];
        }

        v1053 = self->_style;
        if (v1053 <= 0x2F && ((1 << v1053) & 0x800200010000) != 0)
        {
          v1054 = pt(0.5);
          leadingIcon143 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [leadingIcon143 setBorderWidth:v1054];

          blackColor3 = [MEMORY[0x1E69DC888] blackColor];
          v1057 = [blackColor3 colorWithAlphaComponent:0.3];
          leadingIcon144 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [leadingIcon144 setBorderColor:v1057];
        }
      }

      if (self->_hasButton)
      {
        [(LPCaptionBarStyle *)self->_captionBar setButtonRespectsTextStackPadding:1];
        v1059 = pt(191.0);
        button20 = [(LPCaptionBarStyle *)self->_captionBar button];
        [button20 setMenuMinimumWidth:v1059];

        v1061 = pt(1.0);
        button21 = [(LPCaptionBarStyle *)self->_captionBar button];
        [button21 setAdditionalVerticalPadding:v1061];

        button22 = [(LPCaptionBarStyle *)self->_captionBar button];
        [button22 setShowsChevronForSingleAction:1];

        v1064 = self->_captionBar;
        if (self->_platform == 5)
        {
          button23 = [(LPCaptionBarStyle *)v1064 button];
          [button23 setUseSegmentedControl:1];

          v1066 = pt(11.0);
          button24 = [(LPCaptionBarStyle *)self->_captionBar button];
          padding33 = [button24 padding];
          [padding33 setTop:v1066];

          v1069 = +[LPPointUnit zero];
          button25 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin74 = [button25 margin];
          [margin74 setTrailing:v1069];

          v1072 = +[LPPointUnit zero];
          button26 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin75 = [button26 margin];
          [margin75 setLeading:v1072];

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
        collaborationFooter19 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [collaborationFooter19 setUseFullWidth:1];

        v1082 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
        collaborationFooter20 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [collaborationFooter20 setBackgroundColor:v1082];

        v1084 = pt(14.0);
        collaborationFooter21 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        margin76 = [collaborationFooter21 margin];
        [margin76 setTop:v1084];

        v1087 = +[LPPointUnit zero];
        collaborationFooter22 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        margin77 = [collaborationFooter22 margin];
        [margin77 setBottom:v1087];

        v1090 = pt(14.0);
        collaborationFooter23 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [collaborationFooter23 setCornerRadius:v1090];

        v1092 = pt(23.0);
        collaborationFooter24 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        padding34 = [collaborationFooter24 padding];
        [padding34 setBottom:v1092];

        v1095 = pt(27.0);
        collaborationFooter25 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        padding35 = [collaborationFooter25 padding];
        [padding35 setLeading:v1095];

        v1098 = pt(27.0);
        collaborationFooter26 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        padding36 = [collaborationFooter26 padding];
        [padding36 setTrailing:v1098];

        [(LPCaptionBarStyle *)self->_captionBar setMinimumNumberOfLinesToVerticallyCenter:1];
        leadingIcon145 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
        [leadingIcon145 setVerticalAlignment:3];
LABEL_428:

        if (+[LPSettings useOnGlassShareSheetAppearance])
        {
          v1101 = [[LPPointUnit alloc] initWithValue:15.0];
          leadingIcon146 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
          [leadingIcon146 setCornerRadius:v1101];
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
            button27 = [(LPCaptionBarStyle *)self->_captionBar button];
            margin78 = [button27 margin];
            [margin78 setLeading:v1105];
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
          button28 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin79 = [button28 margin];
          [margin79 setTop:v1108];

          v1111 = +[LPPointUnit zero];
          button29 = [(LPCaptionBarStyle *)self->_captionBar button];
          margin80 = [button29 margin];
          [margin80 setTrailing:v1111];

          if (+[LPSettings useOnGlassShareSheetAppearance])
          {
            button30 = [(LPCaptionBarStyle *)self->_captionBar button];
            [button30 setUseGlassButtonAppearance:1];
          }

          else
          {
            button30 = [MEMORY[0x1E69DC888] clearColor];
            button31 = [(LPCaptionBarStyle *)self->_captionBar button];
            [button31 setMenuBackgroundColor:button30];
          }

          v1116 = +[LPPointUnit zero];
          button32 = [(LPCaptionBarStyle *)self->_captionBar button];
          [button32 setHeight:v1116];

          button33 = [(LPCaptionBarStyle *)self->_captionBar button];
          [button33 setIgnoresInvertColors:1];

          button34 = [(LPCaptionBarStyle *)self->_captionBar button];
          [button34 setEnableUserInteractionForDecorativeButton:0];

          if (self->_platform == 5 || +[LPSettings useOnGlassShareSheetAppearance])
          {
            v1120 = +[LPPointUnit zero];
            button35 = [(LPCaptionBarStyle *)self->_captionBar button];
            margin81 = [button35 margin];
            [margin81 setTop:v1120];

            button37 = +[LPPointUnit zero];
            button36 = [(LPCaptionBarStyle *)self->_captionBar button];
            margin82 = [button36 margin];
            [margin82 setBottom:button37];
          }

          else
          {
            v1126 = adjustForStyle_outerMargin;
            button37 = [(LPCaptionBarStyle *)self->_captionBar button];
            button36 = [button37 margin];
            [button36 setBottom:v1126];
          }
        }

        if (self->_platform == 5)
        {
          v1127 = +[LPPointUnit zero];
          textStack126 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding33 = [textStack126 captionTextPadding];
          [captionTextPadding33 setTop:v1127];

          v1130 = +[LPPointUnit zero];
          textStack127 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding34 = [textStack127 captionTextPadding];
          [captionTextPadding34 setBottom:v1130];

          textStack130 = +[LPPointUnit zero];
          textStack128 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          [textStack128 setLastLineDescent:textStack130];
        }

        else if (+[LPSettings useOnGlassShareSheetAppearance])
        {
          v1135 = +[LPPointUnit zero];
          textStack129 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding35 = [textStack129 captionTextPadding];
          [captionTextPadding35 setTop:v1135];

          textStack130 = +[LPPointUnit zero];
          textStack128 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          captionTextPadding36 = [textStack128 captionTextPadding];
          [captionTextPadding36 setBottom:textStack130];
        }

        else
        {
          v1139 = adjustForStyle_outerMargin;
          textStack130 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          textStack128 = [textStack130 captionTextPadding];
          [textStack128 setTop:v1139];
        }

        textStack131 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        [textStack131 applyToAllTextViewStyles:&__block_literal_global_1115];

        labelColor9 = [MEMORY[0x1E69DC888] labelColor];
        textStack132 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        topCaption26 = [textStack132 topCaption];
        leading49 = [topCaption26 leading];
        [leading49 setColor:labelColor9];

        secondaryLabelColor4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        textStack133 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        bottomCaption26 = [textStack133 bottomCaption];
        leading50 = [bottomCaption26 leading];
        [leading50 setColor:secondaryLabelColor4];

        secondaryLabelColor5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        textStack134 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        belowBottomCaption7 = [textStack134 belowBottomCaption];
        leading51 = [belowBottomCaption7 leading];
        [leading51 setColor:secondaryLabelColor5];

        LOBYTE(belowBottomCaption7) = UIContentSizeCategoryCompareToCategory(self->_preferredContentSizeCategory, *MEMORY[0x1E69DDC60]) != NSOrderedAscending;
        textStack135 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        v1187[0] = MEMORY[0x1E69E9820];
        v1187[1] = 3221225472;
        v1187[2] = __25__LPTheme_adjustForStyle__block_invoke_3_1116;
        v1187[3] = &__block_descriptor_33_e25_v16__0__LPTextViewStyle_8l;
        v1188 = belowBottomCaption7;
        [textStack135 applyToAllTextViewStyles:v1187];

        textStack136 = [(LPCaptionBarStyle *)self->_captionBar textStack];
        topCaption27 = [textStack136 topCaption];
        v1185[0] = MEMORY[0x1E69E9820];
        v1185[1] = 3221225472;
        v1185[2] = __25__LPTheme_adjustForStyle__block_invoke_4_1117;
        v1185[3] = &__block_descriptor_33_e25_v16__0__LPTextViewStyle_8l;
        v1186 = belowBottomCaption7;
        [topCaption27 applyToAllTextViewStyles:v1185];

        if (+[LPSettings useOnGlassShareSheetAppearance])
        {
          textStack137 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          [textStack137 setShouldApplyFallbackFontForTruncatedSingleLine:1];

          textStack138 = [(LPCaptionBarStyle *)self->_captionBar textStack];
          v1184[0] = MEMORY[0x1E69E9820];
          v1184[1] = 3221225472;
          v1184[2] = __25__LPTheme_adjustForStyle__block_invoke_5_1118;
          v1184[3] = &unk_1E7A36CD0;
          v1184[4] = self;
          [textStack138 applyToLowerTextRowStyles:v1184];
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

        collaborationFooter27 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
        [collaborationFooter27 setShowSeparator:0];

        if (self->_platform == 5)
        {
          v1159 = [[LPPointUnit alloc] initWithValue:11.0];
          collaborationFooter28 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          margin83 = [collaborationFooter28 margin];
          [margin83 setTop:v1159];

          v1162 = [[LPPointUnit alloc] initWithValue:22.0];
          collaborationFooter29 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          margin84 = [collaborationFooter29 margin];
          [margin84 setBottom:v1162];

          v1165 = [[LPPointUnit alloc] initWithValue:22.0];
          collaborationFooter30 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          padding37 = [collaborationFooter30 padding];
          [padding37 setTop:v1165];

          collaborationFooter31 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          [(LPPointUnit *)collaborationFooter31 setIgnoreSafeAreaInset:1];
        }

        else
        {
          collaborationFooter32 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          [collaborationFooter32 setUseFullWidth:0];

          collaborationFooter33 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          [collaborationFooter33 setUseInlineIndicator:1];

          v1171 = [[LPPointUnit alloc] initWithValue:10.0];
          collaborationFooter34 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          margin85 = [collaborationFooter34 margin];
          [margin85 setTop:v1171];

          collaborationFooter31 = [[LPPointUnit alloc] initWithValue:13.0];
          collaborationFooter35 = [(LPCaptionBarStyle *)self->_captionBar collaborationFooter];
          margin86 = [collaborationFooter35 margin];
          [margin86 setBottom:collaborationFooter31];
        }

        button38 = [(LPCaptionBarStyle *)self->_captionBar button];
        v1177 = [button38 copy];
        [(LPCaptionBarStyle *)self->_captionBar setSecondaryButton:v1177];

        v1178 = [[LPPointUnit alloc] initWithValue:11.0];
        secondaryButton = [(LPCaptionBarStyle *)self->_captionBar secondaryButton];
        margin87 = [secondaryButton margin];
        [margin87 setLeading:v1178];

        secondaryButton2 = [(LPCaptionBarStyle *)self->_captionBar secondaryButton];
        [secondaryButton2 setShowsChevronForSingleAction:0];

        return;
      }

      leadingIcon145 = pt(11.0);
      textStack139 = [(LPCaptionBarStyle *)self->_captionBar textStack];
      [textStack139 setLastLineDescent:leadingIcon145];
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

      leadingIcon145 = v1075;
      textStack139 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
      [textStack139 setReducedSize:leadingIcon145];
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
    leadingIcon147 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin88 = [leadingIcon147 margin];
    leading52 = [margin88 leading];
    [leading52 value];
    v1024 = v1023;
    textStack140 = [(LPCaptionBarStyle *)self->_captionBar textStack];
    captionTextPadding37 = [textStack140 captionTextPadding];
    leading53 = [captionTextPadding37 leading];
    [leading53 value];
    v1028 = [[LPPointUnit alloc] initWithValue:v1024 - v1028];
    leadingIcon148 = [(LPCaptionBarStyle *)self->_captionBar leadingIcon];
    margin89 = [leadingIcon148 margin];
    [margin89 setTrailing:v1028];
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

+ (void)addClient:(id)client
{
  clientCopy = client;
  v3 = +[LPThemeParametersObserver shared];
  [v3 addClient:clientCopy];
}

+ (void)removeClient:(id)client
{
  clientCopy = client;
  v3 = +[LPThemeParametersObserver shared];
  [v3 removeClient:clientCopy];
}

- (id)valueForThemeProperty:(id)property
{
  v4 = [property stringByReplacingOccurrencesOfString:@"-" withString:@"."];
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

- (id)CSSTextForThemeProperty:(id)property
{
  propertyCopy = property;
  v5 = [(LPTheme *)self valueForThemeProperty:propertyCopy];
  if (v5)
  {
    v6 = [(LPTheme *)self CSSTextForProperty:propertyCopy withValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)CSSTextForProperty:(id)property withValue:(id)value
{
  v13[1] = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  valueCopy = value;
  if (objc_opt_respondsToSelector())
  {
    v12 = propertyCopy;
    _lp_CSSText = [valueCopy _lp_CSSText];
    v13[0] = _lp_CSSText;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v10 = propertyCopy;
    v11 = valueCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  return v8;
}

+ (double)platterizedIconScaleForReason:(int64_t)reason
{
  result = 0.65;
  if (reason != 1)
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