@interface LPConcretePresentationProperties
- (BOOL)hasMedia;
- (LPConcretePresentationProperties)initWithParameters:(id)parameters properties:(id)properties;
@end

@implementation LPConcretePresentationProperties

- (LPConcretePresentationProperties)initWithParameters:(id)parameters properties:(id)properties
{
  parametersCopy = parameters;
  propertiesCopy = properties;
  v157.receiver = self;
  v157.super_class = LPConcretePresentationProperties;
  v8 = [(LPConcretePresentationProperties *)&v157 init];

  if (!v8)
  {
    goto LABEL_185;
  }

  captionButton = [parametersCopy captionButton];
  captionButton = v8->_captionButton;
  v8->_captionButton = captionButton;

  captionTextButton = [parametersCopy captionTextButton];
  captionTextButton = v8->_captionTextButton;
  v8->_captionTextButton = captionTextButton;

  secondaryCaptionButton = [parametersCopy secondaryCaptionButton];
  secondaryCaptionButton = v8->_secondaryCaptionButton;
  v8->_secondaryCaptionButton = secondaryCaptionButton;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__LPConcretePresentationProperties_initWithParameters_properties___block_invoke;
  aBlock[3] = &unk_1E7A371F8;
  v15 = v8;
  v156 = v15;
  v152 = _Block_copy(aBlock);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([propertiesCopy overrideURL], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v148 = v16;
    [(LPWebLinkPresentationProperties *)v15 setOverrideURL:v16];
    v17 = objc_opt_respondsToSelector();
    if (v17)
    {
      overrideAllowOpeningSensitiveURLs = [propertiesCopy overrideAllowOpeningSensitiveURLs];
    }

    else
    {
      overrideAllowOpeningSensitiveURLs = 0;
    }

    [(LPWebLinkPresentationProperties *)v15 setOverrideAllowOpeningSensitiveURLs:overrideAllowOpeningSensitiveURLs];
    if (v17)
    {
    }
  }

  else
  {
    v148 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    isPreliminary = [propertiesCopy isPreliminary];
  }

  else
  {
    isPreliminary = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setPreliminary:isPreliminary];
  if (objc_opt_respondsToSelector())
  {
    style = [propertiesCopy style];
  }

  else
  {
    style = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setStyle:style];
  if (objc_opt_respondsToSelector())
  {
    topCaption = [propertiesCopy topCaption];
  }

  else
  {
    topCaption = 0;
  }

  v150 = topCaption;
  if (objc_opt_respondsToSelector())
  {
    bottomCaption = [propertiesCopy bottomCaption];
  }

  else
  {
    bottomCaption = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    trailingTopCaption = [propertiesCopy trailingTopCaption];
  }

  else
  {
    trailingTopCaption = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    trailingBottomCaption = [propertiesCopy trailingBottomCaption];

    if (topCaption)
    {
      goto LABEL_31;
    }
  }

  else
  {
    trailingBottomCaption = 0;
    if (topCaption)
    {
LABEL_31:
      v24 = objc_alloc_init(LPCaptionBarPresentationProperties);
      [(LPWebLinkPresentationProperties *)v15 setCaptionBar:v24];

      captionBar = [(LPWebLinkPresentationProperties *)v15 captionBar];
      v26 = [captionBar top];
      leading = [v26 leading];
      [leading setText:v150];

      captionBar2 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      bottom = [captionBar2 bottom];
      leading2 = [bottom leading];
      [leading2 setText:bottomCaption];

      captionBar3 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      v32 = [captionBar3 top];
      trailing = [v32 trailing];
      [trailing setText:trailingTopCaption];

      captionBar4 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      bottom2 = [captionBar4 bottom];
      trailing2 = [bottom2 trailing];
      [trailing2 setText:trailingBottomCaption];

LABEL_34:
      goto LABEL_35;
    }
  }

  if (bottomCaption || trailingTopCaption || trailingBottomCaption)
  {
    goto LABEL_31;
  }

  v22 = objc_opt_respondsToSelector();
  if (v22)
  {
    captionBar4 = [propertiesCopy captionBar];
  }

  else
  {
    captionBar4 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setCaptionBar:captionBar4];
  if (v22)
  {
    goto LABEL_34;
  }

LABEL_35:
  overrideSubtitle = [parametersCopy overrideSubtitle];

  if (overrideSubtitle)
  {
    overrideSubtitle2 = [parametersCopy overrideSubtitle];
    captionBar5 = [(LPWebLinkPresentationProperties *)v15 captionBar];
    bottom3 = [captionBar5 bottom];
    leading3 = [bottom3 leading];
    [leading3 setAttributedText:overrideSubtitle2];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([propertiesCopy icon], v41 = objc_claimAutoreleasedReturnValue(), v41, (v149 = v41) != 0))
  {
    captionBar6 = [(LPWebLinkPresentationProperties *)v15 captionBar];
    [captionBar6 setTrailingIcon:v149];
  }

  else
  {
    v149 = 0;
  }

  if (([parametersCopy usesComputedPresentationProperties] & 1) == 0 && -[LPWebLinkPresentationProperties style](v15, "style") == 44)
  {
    v43 = +[LPWalletPresentationSpecialization captionButtonPropertiesForPasses];
    v152[2](v152, v43, 1);
  }

  if (([parametersCopy usesComputedPresentationProperties] & 1) == 0 && -[LPWebLinkPresentationProperties style](v15, "style") == 53)
  {
    v44 = +[LPWalletPresentationSpecialization captionButtonPropertiesForOrders];
    v152[2](v152, v44, 1);
  }

  if (sizeClassAllowsPillButtonFromSpecialization([parametersCopy effectiveSizeClass]))
  {
    if ([(LPWebLinkPresentationProperties *)v15 style]== 46)
    {
      v45 = +[LPFaceTimeInvitePresentationSpecialization captionButtonProperties];
      v152[2](v152, v45, [parametersCopy allowsTapping]);
    }

    if ([(LPWebLinkPresentationProperties *)v15 style]== 61)
    {
      v46 = +[LPGameActivityPresentationSpecialization captionButtonProperties];
      v152[2](v152, v46, [parametersCopy allowsTapping]);
    }

    if ([(LPWebLinkPresentationProperties *)v15 style]== 48)
    {
      v47 = +[LPPasswordsInvitePresentationSpecialization captionButtonProperties];
      v152[2](v152, v47, [parametersCopy allowsTapping]);
    }
  }

  if (([parametersCopy inComposeContext] & 1) == 0 && sizeClassAllowsPillButtonFromSpecialization(objc_msgSend(parametersCopy, "effectiveSizeClass")) && -[LPWebLinkPresentationProperties style](v15, "style") == 50 && (objc_msgSend(parametersCopy, "inSenderContext") & 1) == 0)
  {
    v48 = +[LPApplePhotosSharedLibraryInvitationPresentationSpecialization captionButtonProperties];
    v152[2](v152, v48, 1);
  }

  captionBar7 = [(LPWebLinkPresentationProperties *)v15 captionBar];
  playButton = [captionBar7 playButton];

  if (!playButton)
  {
    v51 = objc_alloc_init(LPPlayButtonPresentationProperties);
    captionBar8 = [(LPWebLinkPresentationProperties *)v15 captionBar];
    [captionBar8 setPlayButton:v51];
  }

  allowsTapping = [parametersCopy allowsTapping];
  captionBar9 = [(LPWebLinkPresentationProperties *)v15 captionBar];
  playButton2 = [captionBar9 playButton];
  [playButton2 setDisabled:allowsTapping ^ 1u];

  if ([(LPWebLinkPresentationProperties *)v15 style]== 47)
  {
    if (!v8->_captionTextButton)
    {
      goto LABEL_72;
    }

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(LPCaptionButtonPresentationProperties *)v8->_captionTextButton setForegroundColor:secondaryLabelColor];
  }

  v57 = v8->_captionTextButton;
  if (v57)
  {
    if ([(LPCaptionButtonPresentationProperties *)v57 type]== 2)
    {
      captionBar10 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      bottom4 = [captionBar10 bottom];
      leading4 = [bottom4 leading];
      [leading4 setText:0];

      captionBar11 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      bottom5 = [captionBar11 bottom];
      trailing3 = [bottom5 trailing];
      [trailing3 setText:0];

      captionBar12 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      belowBottom = [captionBar12 belowBottom];
      leading5 = [belowBottom leading];
      [leading5 setText:0];

      captionBar13 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      belowBottom2 = [captionBar13 belowBottom];
      trailing4 = [belowBottom2 trailing];
      [trailing4 setText:0];
    }

    overrideSubtitleButtonColor = [parametersCopy overrideSubtitleButtonColor];

    if (overrideSubtitleButtonColor)
    {
      overrideSubtitleButtonColor2 = [parametersCopy overrideSubtitleButtonColor];
      [(LPCaptionButtonPresentationProperties *)v8->_captionTextButton setBackgroundColor:overrideSubtitleButtonColor2];
    }

    captionBar14 = [(LPWebLinkPresentationProperties *)v15 captionBar];
    bottom6 = [captionBar14 bottom];

    if (([bottom6 hasAnyContent] & 1) == 0)
    {
      leading6 = [bottom6 leading];
      [leading6 setText:@"​"];
    }

    [bottom6 setButton:v8->_captionTextButton];
  }

LABEL_72:
  if (v8->_captionButton)
  {
    overrideActionButtonColor = [parametersCopy overrideActionButtonColor];

    if (overrideActionButtonColor)
    {
      overrideActionButtonColor2 = [parametersCopy overrideActionButtonColor];
      [(LPCaptionButtonPresentationProperties *)v8->_captionButton setBackgroundColor:overrideActionButtonColor2];
    }

    if ((sizeClassAllowsPillButton([parametersCopy effectiveSizeClass]) & 1) != 0 || sizeClassAllowsButtonActions(objc_msgSend(parametersCopy, "effectiveSizeClass")) && (-[LPConcretePresentationProperties captionButton](v15, "captionButton"), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v77, "actions"), v78 = objc_claimAutoreleasedReturnValue(), v78, v77, v78))
    {
      v79 = v8->_captionButton;
      captionBar15 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      [captionBar15 setButton:v79];

      if (sizeClassAllowsSecondaryButton([parametersCopy effectiveSizeClass]))
      {
        v81 = v8->_secondaryCaptionButton;
        captionBar16 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        [captionBar16 setSecondaryButton:v81];
      }

      if ([parametersCopy effectiveSizeClass] == 12)
      {
        captionButton2 = [(LPConcretePresentationProperties *)v15 captionButton];
        actions = [captionButton2 actions];
        if ([actions count] >= 2)
        {
        }

        else
        {
          captionButton3 = [(LPConcretePresentationProperties *)v15 captionButton];
          actions2 = [captionButton3 actions];
          if ([actions2 count] != 1)
          {

LABEL_92:
            goto LABEL_93;
          }

          captionButton4 = [(LPConcretePresentationProperties *)v15 captionButton];
          actions3 = [captionButton4 actions];
          firstObject = [actions3 firstObject];
          handler = [firstObject handler];

          if (handler)
          {
            goto LABEL_93;
          }
        }

        captionBar17 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        bottom7 = [captionBar17 bottom];
        leading7 = [bottom7 leading];
        [leading7 setText:0];

        captionBar18 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        bottom8 = [captionBar18 bottom];
        trailing5 = [bottom8 trailing];
        [trailing5 setText:0];

        captionBar19 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        belowBottom3 = [captionBar19 belowBottom];
        leading8 = [belowBottom3 leading];
        [leading8 setText:0];

        captionBar20 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        belowBottom4 = [captionBar20 belowBottom];
        trailing6 = [belowBottom4 trailing];
        [trailing6 setText:0];

        captionBar21 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        v102 = [captionBar21 top];
        LOBYTE(trailing6) = [v102 hasAnyContent];

        if (trailing6)
        {
          goto LABEL_93;
        }

        captionButton2 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        actions = [captionButton2 top];
        captionButton3 = [actions leading];
        [captionButton3 setText:@"​"];
        goto LABEL_92;
      }
    }
  }

LABEL_93:
  if (objc_opt_respondsToSelector())
  {
    mediaTopCaption = [propertiesCopy mediaTopCaption];
  }

  else
  {
    mediaTopCaption = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    mediaBottomCaption = [propertiesCopy mediaBottomCaption];
  }

  else
  {
    mediaBottomCaption = 0;
  }

  if (mediaTopCaption | mediaBottomCaption)
  {
    v105 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [(LPWebLinkPresentationProperties *)v15 setMediaBottomCaptionBar:v105];

    mediaBottomCaptionBar = [(LPWebLinkPresentationProperties *)v15 mediaBottomCaptionBar];
    v107 = [mediaBottomCaptionBar top];
    leading9 = [v107 leading];
    [leading9 setText:mediaTopCaption];

    mediaBottomCaptionBar2 = [(LPWebLinkPresentationProperties *)v15 mediaBottomCaptionBar];
    bottom9 = [mediaBottomCaptionBar2 bottom];
    leading10 = [bottom9 leading];
    [leading10 setText:mediaBottomCaption];
  }

  else
  {
    v112 = objc_opt_respondsToSelector();
    if (v112)
    {
      mediaBottomCaptionBar2 = [propertiesCopy mediaBottomCaptionBar];
    }

    else
    {
      mediaBottomCaptionBar2 = 0;
    }

    [(LPWebLinkPresentationProperties *)v15 setMediaBottomCaptionBar:mediaBottomCaptionBar2];
    if ((v112 & 1) == 0)
    {
      goto LABEL_106;
    }
  }

LABEL_106:
  v113 = objc_opt_respondsToSelector();
  if (v113)
  {
    mediaTopCaptionBar = [propertiesCopy mediaTopCaptionBar];
  }

  else
  {
    mediaTopCaptionBar = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setMediaTopCaptionBar:mediaTopCaptionBar];
  if (v113)
  {
  }

  v115 = objc_opt_respondsToSelector();
  if (v115)
  {
    quotedText = [propertiesCopy quotedText];
  }

  else
  {
    quotedText = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setQuotedText:quotedText];
  if (v115)
  {
  }

  v117 = objc_opt_respondsToSelector();
  if (v117)
  {
    image = [propertiesCopy image];
  }

  else
  {
    image = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setImage:image];
  if (v117)
  {
  }

  v119 = objc_opt_respondsToSelector();
  if (v119)
  {
    imageProperties = [propertiesCopy imageProperties];
  }

  else
  {
    imageProperties = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setImageProperties:imageProperties];
  if (v119)
  {
  }

  v121 = objc_opt_respondsToSelector();
  if (v121)
  {
    alternateImages = [propertiesCopy alternateImages];
  }

  else
  {
    alternateImages = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setAlternateImages:alternateImages];
  if (v121)
  {
  }

  v123 = objc_opt_respondsToSelector();
  if (v123)
  {
    arAsset = [propertiesCopy arAsset];
  }

  else
  {
    arAsset = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setArAsset:arAsset];
  if (v123)
  {
  }

  v125 = objc_opt_respondsToSelector();
  if (v125)
  {
    video = [propertiesCopy video];
  }

  else
  {
    video = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setVideo:video];
  if (v125)
  {
  }

  v127 = objc_opt_respondsToSelector();
  if (v127)
  {
    inlinePlaybackInformation = [propertiesCopy inlinePlaybackInformation];
  }

  else
  {
    inlinePlaybackInformation = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setInlinePlaybackInformation:inlinePlaybackInformation];
  if (v127)
  {
  }

  v129 = objc_opt_respondsToSelector();
  if (v129)
  {
    backgroundColor = [propertiesCopy backgroundColor];
  }

  else
  {
    backgroundColor = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setBackgroundColor:backgroundColor];
  if (v129)
  {
  }

  v131 = objc_opt_respondsToSelector();
  if (v131)
  {
    dominantImageBackgroundColor = [propertiesCopy dominantImageBackgroundColor];
  }

  else
  {
    dominantImageBackgroundColor = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setDominantImageBackgroundColor:dominantImageBackgroundColor];
  if (v131)
  {
  }

  if (objc_opt_respondsToSelector())
  {
    allowsDominantImageBackgroundColorAsCaptionBackground = [propertiesCopy allowsDominantImageBackgroundColorAsCaptionBackground];
  }

  else
  {
    allowsDominantImageBackgroundColorAsCaptionBackground = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setAllowsDominantImageBackgroundColorAsCaptionBackground:allowsDominantImageBackgroundColorAsCaptionBackground];
  v134 = objc_opt_respondsToSelector();
  if (v134)
  {
    minimumHeight = [propertiesCopy minimumHeight];
  }

  else
  {
    minimumHeight = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setMinimumHeight:minimumHeight];
  if (v134)
  {
  }

  v136 = objc_opt_respondsToSelector();
  if (v136)
  {
    domainNameForIndicator = [propertiesCopy domainNameForIndicator];
  }

  else
  {
    domainNameForIndicator = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setDomainNameForIndicator:domainNameForIndicator];
  if (v136)
  {
  }

  v138 = objc_opt_respondsToSelector();
  if (v138)
  {
    backgroundImage = [propertiesCopy backgroundImage];
  }

  else
  {
    backgroundImage = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setBackgroundImage:backgroundImage];
  if (v138)
  {
  }

  v140 = objc_opt_respondsToSelector();
  if (v140)
  {
    backgroundImageProperties = [propertiesCopy backgroundImageProperties];
  }

  else
  {
    backgroundImageProperties = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setBackgroundImageProperties:backgroundImageProperties];
  if (v140)
  {
  }

  v142 = objc_opt_respondsToSelector();
  if (v142)
  {
    progressSpinner = [propertiesCopy progressSpinner];
  }

  else
  {
    progressSpinner = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setProgressSpinner:progressSpinner];
  if (v142)
  {
  }

  v144 = v15;

LABEL_185:
  return v8;
}

void __66__LPConcretePresentationProperties_initWithParameters_properties___block_invoke(uint64_t a1, void *a2, int a3)
{
  v8 = a2;
  v6 = [v8 type];
  v7 = *(a1 + 32);
  if (v6 == 1)
  {
    objc_storeStrong((v7 + 184), a2);
    [*(*(a1 + 32) + 184) setDisabled:a3 ^ 1u];
  }

  else
  {
    objc_storeStrong((v7 + 192), a2);
  }
}

- (BOOL)hasMedia
{
  image = [(LPWebLinkPresentationProperties *)self image];
  if (image)
  {
    v4 = 1;
  }

  else
  {
    video = [(LPWebLinkPresentationProperties *)self video];
    if (video)
    {
      v4 = 1;
    }

    else
    {
      arAsset = [(LPWebLinkPresentationProperties *)self arAsset];
      if (arAsset)
      {
        v4 = 1;
      }

      else
      {
        v4 = [(LPWebLinkPresentationProperties *)self style]== 15;
      }
    }
  }

  return v4;
}

@end