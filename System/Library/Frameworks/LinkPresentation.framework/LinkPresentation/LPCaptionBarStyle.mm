@interface LPCaptionBarStyle
- (LPCaptionBarStyle)initWithPlatform:(int64_t)platform sizeClass:(unint64_t)class sizeClassParameters:(id)parameters fontScalingFactor:(double)factor;
- (id)leftAccessory;
- (id)leftIcon;
- (id)rightAccessory;
- (id)rightIcon;
@end

@implementation LPCaptionBarStyle

- (LPCaptionBarStyle)initWithPlatform:(int64_t)platform sizeClass:(unint64_t)class sizeClassParameters:(id)parameters fontScalingFactor:(double)factor
{
  parametersCopy = parameters;
  v88.receiver = self;
  v88.super_class = LPCaptionBarStyle;
  v11 = [(LPCaptionBarStyle *)&v88 init];
  if (!v11)
  {
    goto LABEL_48;
  }

  if (platform == 2)
  {
    v12 = [LPPointUnit alloc];
    v13 = 100.0;
LABEL_6:
    v14 = [(LPPointUnit *)v12 initWithValue:v13];
    goto LABEL_8;
  }

  if ([parametersCopy needsSpaceAffordanceForDeleteButton])
  {
    v12 = [LPPointUnit alloc];
    v13 = 140.0;
    goto LABEL_6;
  }

  v14 = [[LPPointUnit alloc] initWithValue:150.0];
LABEL_8:
  minimumWidth = v11->_minimumWidth;
  v11->_minimumWidth = v14;

  if (!initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin)
  {
    v16 = [[LPPointUnit alloc] initWithValue:6.0];
    v17 = initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin;
    initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin = v16;
  }

  v18 = objc_alloc_init(LPImageViewStyle);
  leadingIcon = v11->_leadingIcon;
  v11->_leadingIcon = v18;

  v20 = [[LPPointUnit alloc] initWithValue:3.0];
  [(LPImageViewStyle *)v11->_leadingIcon setCornerRadius:v20];

  if (class == 5)
  {
    v21 = 14;
  }

  else
  {
    v21 = 3;
  }

  [(LPImageViewStyle *)v11->_leadingIcon setFilter:v21];
  v22 = iconSize(platform);
  [(LPImageViewStyle *)v11->_leadingIcon setFixedSize:v22];

  v23 = outerHorizontalIconMargin(platform);
  margin = [(LPImageViewStyle *)v11->_leadingIcon margin];
  [margin setLeading:v23];

  v25 = initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin;
  margin2 = [(LPImageViewStyle *)v11->_leadingIcon margin];
  [margin2 setTop:v25];

  v27 = initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin;
  margin3 = [(LPImageViewStyle *)v11->_leadingIcon margin];
  [margin3 setBottom:v27];

  v29 = fallbackIconSize(platform);
  [(LPImageViewStyle *)v11->_leadingIcon setFixedFallbackImageSize:v29];

  v30 = objc_alloc_init(LPImageViewStyle);
  trailingIcon = v11->_trailingIcon;
  v11->_trailingIcon = v30;

  cornerRadius = [(LPImageViewStyle *)v11->_leadingIcon cornerRadius];
  [(LPImageViewStyle *)v11->_trailingIcon setCornerRadius:cornerRadius];

  [(LPImageViewStyle *)v11->_trailingIcon setFilter:v21];
  v33 = iconSize(platform);
  [(LPImageViewStyle *)v11->_trailingIcon setFixedSize:v33];

  v34 = outerHorizontalIconMargin(platform);
  margin4 = [(LPImageViewStyle *)v11->_trailingIcon margin];
  [margin4 setTrailing:v34];

  v36 = initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin;
  margin5 = [(LPImageViewStyle *)v11->_trailingIcon margin];
  [margin5 setTop:v36];

  v38 = initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin;
  margin6 = [(LPImageViewStyle *)v11->_trailingIcon margin];
  [margin6 setBottom:v38];

  fixedFallbackImageSize = [(LPImageViewStyle *)v11->_leadingIcon fixedFallbackImageSize];
  [(LPImageViewStyle *)v11->_trailingIcon setFixedFallbackImageSize:fixedFallbackImageSize];

  v41 = objc_alloc_init(LPIconBadgeStyle);
  leadingIconBadge = v11->_leadingIconBadge;
  v11->_leadingIconBadge = v41;

  v43 = [LPSize alloc];
  +[LPTheme badgeIconSizeInPoints];
  v44 = [(LPSize *)v43 initWithSquareSize:?];
  [(LPImageViewStyle *)v11->_leadingIconBadge setFixedSize:v44];

  [(LPIconBadgeStyle *)v11->_leadingIconBadge setOffset:3.0];
  if (platform == 4 || platform == 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = 5;
  }

  [(LPImageViewStyle *)v11->_leadingIconBadge setFilter:v46];
  v47 = objc_alloc_init(LPIconBadgeStyle);
  trailingIconBadge = v11->_trailingIconBadge;
  v11->_trailingIconBadge = v47;

  fixedSize = [(LPImageViewStyle *)v11->_leadingIconBadge fixedSize];
  [(LPImageViewStyle *)v11->_trailingIconBadge setFixedSize:fixedSize];

  [(LPIconBadgeStyle *)v11->_leadingIconBadge offset];
  [(LPIconBadgeStyle *)v11->_trailingIconBadge setOffset:?];
  [(LPImageViewStyle *)v11->_trailingIconBadge setFilter:[(LPImageViewStyle *)v11->_leadingIconBadge filter]];
  v50 = [[LPVerticalTextStackViewStyle alloc] initWithPlatform:platform sizeClass:class fontScalingFactor:factor];
  textStack = v11->_textStack;
  v11->_textStack = v50;

  if (platform <= 2)
  {
    if (!platform)
    {
      goto LABEL_29;
    }

    if (platform != 1)
    {
      if (platform != 2)
      {
        goto LABEL_32;
      }

      v52 = [LPPointUnit alloc];
      v53 = 15.0;
      goto LABEL_30;
    }

LABEL_28:
    v52 = [LPPointUnit alloc];
    v54 = 18.0;
LABEL_31:
    fixedSize = [(LPPointUnit *)v52 initWithValue:v54];
    goto LABEL_32;
  }

  if ((platform - 3) < 2)
  {
    goto LABEL_28;
  }

  if (platform == 5)
  {
    v52 = [LPPointUnit alloc];
    if (class == 5)
    {
      v53 = 24.0;
    }

    else
    {
      v53 = 27.0;
    }

    goto LABEL_30;
  }

  if (platform == 6)
  {
LABEL_29:
    v52 = [LPPointUnit alloc];
    v53 = 23.0;
LABEL_30:
    v54 = factor * v53;
    goto LABEL_31;
  }

LABEL_32:
  [(LPVerticalTextStackViewStyle *)v11->_textStack setFirstLineLeading:fixedSize];

  if (platform > 2)
  {
    if ((platform - 3) >= 2)
    {
      if (platform == 5)
      {
        v55 = [LPPointUnit alloc];
        if (class == 5)
        {
          v56 = 13.0;
        }

        else
        {
          v56 = 16.0;
        }

        goto LABEL_43;
      }

      if (platform != 6)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    goto LABEL_41;
  }

  switch(platform)
  {
    case 0:
LABEL_42:
      v55 = [LPPointUnit alloc];
      v56 = 12.0;
      goto LABEL_43;
    case 1:
LABEL_41:
      v55 = [LPPointUnit alloc];
      v57 = 10.0;
LABEL_44:
      fixedSize = [(LPPointUnit *)v55 initWithValue:v57];
      break;
    case 2:
      v55 = [LPPointUnit alloc];
      v56 = 9.0;
LABEL_43:
      v57 = factor * v56;
      goto LABEL_44;
  }

LABEL_45:
  [(LPVerticalTextStackViewStyle *)v11->_textStack setLastLineDescent:fixedSize];

  v58 = [[LPAudioPlayButtonStyle alloc] initWithPlatform:platform];
  playButton = v11->_playButton;
  v11->_playButton = v58;

  v60 = objc_alloc_init(LPPadding);
  playButtonPadding = v11->_playButtonPadding;
  v11->_playButtonPadding = v60;

  v62 = [[LPPointUnit alloc] initWithValue:8.0];
  [(LPPadding *)v11->_playButtonPadding setLeading:v62];

  v63 = [[LPPointUnit alloc] initWithValue:15.0];
  [(LPPadding *)v11->_playButtonPadding setTrailing:v63];

  v64 = objc_alloc_init(LPCaptionBarAccessoryStyle);
  leadingAccessory = v11->_leadingAccessory;
  v11->_leadingAccessory = v64;

  v66 = outerHorizontalIconMargin(platform);
  margin7 = [(LPCaptionBarAccessoryStyle *)v11->_leadingAccessory margin];
  [margin7 setLeading:v66];

  v68 = initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin;
  margin8 = [(LPCaptionBarAccessoryStyle *)v11->_leadingAccessory margin];
  [margin8 setTop:v68];

  v70 = initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin;
  margin9 = [(LPCaptionBarAccessoryStyle *)v11->_leadingAccessory margin];
  [margin9 setBottom:v70];

  v72 = objc_alloc_init(LPCaptionBarAccessoryStyle);
  trailingAccessory = v11->_trailingAccessory;
  v11->_trailingAccessory = v72;

  v74 = outerHorizontalIconMargin(platform);
  margin10 = [(LPCaptionBarAccessoryStyle *)v11->_trailingAccessory margin];
  [margin10 setTrailing:v74];

  v76 = initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin;
  margin11 = [(LPCaptionBarAccessoryStyle *)v11->_trailingAccessory margin];
  [margin11 setTop:v76];

  v78 = initWithPlatform_sizeClass_sizeClassParameters_fontScalingFactor__defaultVerticalMargin;
  margin12 = [(LPCaptionBarAccessoryStyle *)v11->_trailingAccessory margin];
  [margin12 setBottom:v78];

  if ([parametersCopy needsSpaceAffordanceForDeleteButton])
  {
    v80 = [[LPPointUnit alloc] initWithValue:30.0];
    trailingPaddingForPresenceOfLeadingIcon = v11->_trailingPaddingForPresenceOfLeadingIcon;
    v11->_trailingPaddingForPresenceOfLeadingIcon = v80;
  }

  v82 = [LPButtonStyle systemPillButtonStyleForPlatform:platform sizeClass:class];
  button = v11->_button;
  v11->_button = v82;

  secondaryButton = v11->_secondaryButton;
  v11->_secondaryButton = 0;

  backgroundColor = v11->_backgroundColor;
  v11->_backgroundColor = 0;

  v11->_minimumNumberOfLinesToVerticallyCenter = 0;
  v86 = v11;
LABEL_48:

  return v11;
}

- (id)leftIcon
{
  if (appIsLTR())
  {
    [(LPCaptionBarStyle *)self leadingIcon];
  }

  else
  {
    [(LPCaptionBarStyle *)self trailingIcon];
  }
  v3 = ;

  return v3;
}

- (id)rightIcon
{
  if (appIsLTR())
  {
    [(LPCaptionBarStyle *)self trailingIcon];
  }

  else
  {
    [(LPCaptionBarStyle *)self leadingIcon];
  }
  v3 = ;

  return v3;
}

- (id)leftAccessory
{
  if (appIsLTR())
  {
    [(LPCaptionBarStyle *)self leadingAccessory];
  }

  else
  {
    [(LPCaptionBarStyle *)self trailingAccessory];
  }
  v3 = ;

  return v3;
}

- (id)rightAccessory
{
  if (appIsLTR())
  {
    [(LPCaptionBarStyle *)self trailingAccessory];
  }

  else
  {
    [(LPCaptionBarStyle *)self leadingAccessory];
  }
  v3 = ;

  return v3;
}

@end