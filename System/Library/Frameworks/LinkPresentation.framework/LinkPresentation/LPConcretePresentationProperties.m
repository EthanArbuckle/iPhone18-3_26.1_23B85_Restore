@interface LPConcretePresentationProperties
- (BOOL)hasMedia;
- (LPConcretePresentationProperties)initWithParameters:(id)a3 properties:(id)a4;
@end

@implementation LPConcretePresentationProperties

- (LPConcretePresentationProperties)initWithParameters:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v157.receiver = self;
  v157.super_class = LPConcretePresentationProperties;
  v8 = [(LPConcretePresentationProperties *)&v157 init];

  if (!v8)
  {
    goto LABEL_185;
  }

  v9 = [v6 captionButton];
  captionButton = v8->_captionButton;
  v8->_captionButton = v9;

  v11 = [v6 captionTextButton];
  captionTextButton = v8->_captionTextButton;
  v8->_captionTextButton = v11;

  v13 = [v6 secondaryCaptionButton];
  secondaryCaptionButton = v8->_secondaryCaptionButton;
  v8->_secondaryCaptionButton = v13;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__LPConcretePresentationProperties_initWithParameters_properties___block_invoke;
  aBlock[3] = &unk_1E7A371F8;
  v15 = v8;
  v156 = v15;
  v152 = _Block_copy(aBlock);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 overrideURL], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v148 = v16;
    [(LPWebLinkPresentationProperties *)v15 setOverrideURL:v16];
    v17 = objc_opt_respondsToSelector();
    if (v17)
    {
      v18 = [v7 overrideAllowOpeningSensitiveURLs];
    }

    else
    {
      v18 = 0;
    }

    [(LPWebLinkPresentationProperties *)v15 setOverrideAllowOpeningSensitiveURLs:v18];
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
    v19 = [v7 isPreliminary];
  }

  else
  {
    v19 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setPreliminary:v19];
  if (objc_opt_respondsToSelector())
  {
    v20 = [v7 style];
  }

  else
  {
    v20 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setStyle:v20];
  if (objc_opt_respondsToSelector())
  {
    v21 = [v7 topCaption];
  }

  else
  {
    v21 = 0;
  }

  v150 = v21;
  if (objc_opt_respondsToSelector())
  {
    v154 = [v7 bottomCaption];
  }

  else
  {
    v154 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v153 = [v7 trailingTopCaption];
  }

  else
  {
    v153 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v151 = [v7 trailingBottomCaption];

    if (v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v151 = 0;
    if (v21)
    {
LABEL_31:
      v24 = objc_alloc_init(LPCaptionBarPresentationProperties);
      [(LPWebLinkPresentationProperties *)v15 setCaptionBar:v24];

      v25 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      v26 = [v25 top];
      v27 = [v26 leading];
      [v27 setText:v150];

      v28 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      v29 = [v28 bottom];
      v30 = [v29 leading];
      [v30 setText:v154];

      v31 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      v32 = [v31 top];
      v33 = [v32 trailing];
      [v33 setText:v153];

      v23 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      v34 = [v23 bottom];
      v35 = [v34 trailing];
      [v35 setText:v151];

LABEL_34:
      goto LABEL_35;
    }
  }

  if (v154 || v153 || v151)
  {
    goto LABEL_31;
  }

  v22 = objc_opt_respondsToSelector();
  if (v22)
  {
    v23 = [v7 captionBar];
  }

  else
  {
    v23 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setCaptionBar:v23];
  if (v22)
  {
    goto LABEL_34;
  }

LABEL_35:
  v36 = [v6 overrideSubtitle];

  if (v36)
  {
    v37 = [v6 overrideSubtitle];
    v38 = [(LPWebLinkPresentationProperties *)v15 captionBar];
    v39 = [v38 bottom];
    v40 = [v39 leading];
    [v40 setAttributedText:v37];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 icon], v41 = objc_claimAutoreleasedReturnValue(), v41, (v149 = v41) != 0))
  {
    v42 = [(LPWebLinkPresentationProperties *)v15 captionBar];
    [v42 setTrailingIcon:v149];
  }

  else
  {
    v149 = 0;
  }

  if (([v6 usesComputedPresentationProperties] & 1) == 0 && -[LPWebLinkPresentationProperties style](v15, "style") == 44)
  {
    v43 = +[LPWalletPresentationSpecialization captionButtonPropertiesForPasses];
    v152[2](v152, v43, 1);
  }

  if (([v6 usesComputedPresentationProperties] & 1) == 0 && -[LPWebLinkPresentationProperties style](v15, "style") == 53)
  {
    v44 = +[LPWalletPresentationSpecialization captionButtonPropertiesForOrders];
    v152[2](v152, v44, 1);
  }

  if (sizeClassAllowsPillButtonFromSpecialization([v6 effectiveSizeClass]))
  {
    if ([(LPWebLinkPresentationProperties *)v15 style]== 46)
    {
      v45 = +[LPFaceTimeInvitePresentationSpecialization captionButtonProperties];
      v152[2](v152, v45, [v6 allowsTapping]);
    }

    if ([(LPWebLinkPresentationProperties *)v15 style]== 61)
    {
      v46 = +[LPGameActivityPresentationSpecialization captionButtonProperties];
      v152[2](v152, v46, [v6 allowsTapping]);
    }

    if ([(LPWebLinkPresentationProperties *)v15 style]== 48)
    {
      v47 = +[LPPasswordsInvitePresentationSpecialization captionButtonProperties];
      v152[2](v152, v47, [v6 allowsTapping]);
    }
  }

  if (([v6 inComposeContext] & 1) == 0 && sizeClassAllowsPillButtonFromSpecialization(objc_msgSend(v6, "effectiveSizeClass")) && -[LPWebLinkPresentationProperties style](v15, "style") == 50 && (objc_msgSend(v6, "inSenderContext") & 1) == 0)
  {
    v48 = +[LPApplePhotosSharedLibraryInvitationPresentationSpecialization captionButtonProperties];
    v152[2](v152, v48, 1);
  }

  v49 = [(LPWebLinkPresentationProperties *)v15 captionBar];
  v50 = [v49 playButton];

  if (!v50)
  {
    v51 = objc_alloc_init(LPPlayButtonPresentationProperties);
    v52 = [(LPWebLinkPresentationProperties *)v15 captionBar];
    [v52 setPlayButton:v51];
  }

  v53 = [v6 allowsTapping];
  v54 = [(LPWebLinkPresentationProperties *)v15 captionBar];
  v55 = [v54 playButton];
  [v55 setDisabled:v53 ^ 1u];

  if ([(LPWebLinkPresentationProperties *)v15 style]== 47)
  {
    if (!v8->_captionTextButton)
    {
      goto LABEL_72;
    }

    v56 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(LPCaptionButtonPresentationProperties *)v8->_captionTextButton setForegroundColor:v56];
  }

  v57 = v8->_captionTextButton;
  if (v57)
  {
    if ([(LPCaptionButtonPresentationProperties *)v57 type]== 2)
    {
      v58 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      v59 = [v58 bottom];
      v60 = [v59 leading];
      [v60 setText:0];

      v61 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      v62 = [v61 bottom];
      v63 = [v62 trailing];
      [v63 setText:0];

      v64 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      v65 = [v64 belowBottom];
      v66 = [v65 leading];
      [v66 setText:0];

      v67 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      v68 = [v67 belowBottom];
      v69 = [v68 trailing];
      [v69 setText:0];
    }

    v70 = [v6 overrideSubtitleButtonColor];

    if (v70)
    {
      v71 = [v6 overrideSubtitleButtonColor];
      [(LPCaptionButtonPresentationProperties *)v8->_captionTextButton setBackgroundColor:v71];
    }

    v72 = [(LPWebLinkPresentationProperties *)v15 captionBar];
    v73 = [v72 bottom];

    if (([v73 hasAnyContent] & 1) == 0)
    {
      v74 = [v73 leading];
      [v74 setText:@"​"];
    }

    [v73 setButton:v8->_captionTextButton];
  }

LABEL_72:
  if (v8->_captionButton)
  {
    v75 = [v6 overrideActionButtonColor];

    if (v75)
    {
      v76 = [v6 overrideActionButtonColor];
      [(LPCaptionButtonPresentationProperties *)v8->_captionButton setBackgroundColor:v76];
    }

    if ((sizeClassAllowsPillButton([v6 effectiveSizeClass]) & 1) != 0 || sizeClassAllowsButtonActions(objc_msgSend(v6, "effectiveSizeClass")) && (-[LPConcretePresentationProperties captionButton](v15, "captionButton"), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v77, "actions"), v78 = objc_claimAutoreleasedReturnValue(), v78, v77, v78))
    {
      v79 = v8->_captionButton;
      v80 = [(LPWebLinkPresentationProperties *)v15 captionBar];
      [v80 setButton:v79];

      if (sizeClassAllowsSecondaryButton([v6 effectiveSizeClass]))
      {
        v81 = v8->_secondaryCaptionButton;
        v82 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        [v82 setSecondaryButton:v81];
      }

      if ([v6 effectiveSizeClass] == 12)
      {
        v83 = [(LPConcretePresentationProperties *)v15 captionButton];
        v84 = [v83 actions];
        if ([v84 count] >= 2)
        {
        }

        else
        {
          v85 = [(LPConcretePresentationProperties *)v15 captionButton];
          v86 = [v85 actions];
          if ([v86 count] != 1)
          {

LABEL_92:
            goto LABEL_93;
          }

          v147 = [(LPConcretePresentationProperties *)v15 captionButton];
          v146 = [v147 actions];
          v87 = [v146 firstObject];
          v88 = [v87 handler];

          if (v88)
          {
            goto LABEL_93;
          }
        }

        v89 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        v90 = [v89 bottom];
        v91 = [v90 leading];
        [v91 setText:0];

        v92 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        v93 = [v92 bottom];
        v94 = [v93 trailing];
        [v94 setText:0];

        v95 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        v96 = [v95 belowBottom];
        v97 = [v96 leading];
        [v97 setText:0];

        v98 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        v99 = [v98 belowBottom];
        v100 = [v99 trailing];
        [v100 setText:0];

        v101 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        v102 = [v101 top];
        LOBYTE(v100) = [v102 hasAnyContent];

        if (v100)
        {
          goto LABEL_93;
        }

        v83 = [(LPWebLinkPresentationProperties *)v15 captionBar];
        v84 = [v83 top];
        v85 = [v84 leading];
        [v85 setText:@"​"];
        goto LABEL_92;
      }
    }
  }

LABEL_93:
  if (objc_opt_respondsToSelector())
  {
    v103 = [v7 mediaTopCaption];
  }

  else
  {
    v103 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v104 = [v7 mediaBottomCaption];
  }

  else
  {
    v104 = 0;
  }

  if (v103 | v104)
  {
    v105 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [(LPWebLinkPresentationProperties *)v15 setMediaBottomCaptionBar:v105];

    v106 = [(LPWebLinkPresentationProperties *)v15 mediaBottomCaptionBar];
    v107 = [v106 top];
    v108 = [v107 leading];
    [v108 setText:v103];

    v109 = [(LPWebLinkPresentationProperties *)v15 mediaBottomCaptionBar];
    v110 = [v109 bottom];
    v111 = [v110 leading];
    [v111 setText:v104];
  }

  else
  {
    v112 = objc_opt_respondsToSelector();
    if (v112)
    {
      v109 = [v7 mediaBottomCaptionBar];
    }

    else
    {
      v109 = 0;
    }

    [(LPWebLinkPresentationProperties *)v15 setMediaBottomCaptionBar:v109];
    if ((v112 & 1) == 0)
    {
      goto LABEL_106;
    }
  }

LABEL_106:
  v113 = objc_opt_respondsToSelector();
  if (v113)
  {
    v114 = [v7 mediaTopCaptionBar];
  }

  else
  {
    v114 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setMediaTopCaptionBar:v114];
  if (v113)
  {
  }

  v115 = objc_opt_respondsToSelector();
  if (v115)
  {
    v116 = [v7 quotedText];
  }

  else
  {
    v116 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setQuotedText:v116];
  if (v115)
  {
  }

  v117 = objc_opt_respondsToSelector();
  if (v117)
  {
    v118 = [v7 image];
  }

  else
  {
    v118 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setImage:v118];
  if (v117)
  {
  }

  v119 = objc_opt_respondsToSelector();
  if (v119)
  {
    v120 = [v7 imageProperties];
  }

  else
  {
    v120 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setImageProperties:v120];
  if (v119)
  {
  }

  v121 = objc_opt_respondsToSelector();
  if (v121)
  {
    v122 = [v7 alternateImages];
  }

  else
  {
    v122 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setAlternateImages:v122];
  if (v121)
  {
  }

  v123 = objc_opt_respondsToSelector();
  if (v123)
  {
    v124 = [v7 arAsset];
  }

  else
  {
    v124 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setArAsset:v124];
  if (v123)
  {
  }

  v125 = objc_opt_respondsToSelector();
  if (v125)
  {
    v126 = [v7 video];
  }

  else
  {
    v126 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setVideo:v126];
  if (v125)
  {
  }

  v127 = objc_opt_respondsToSelector();
  if (v127)
  {
    v128 = [v7 inlinePlaybackInformation];
  }

  else
  {
    v128 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setInlinePlaybackInformation:v128];
  if (v127)
  {
  }

  v129 = objc_opt_respondsToSelector();
  if (v129)
  {
    v130 = [v7 backgroundColor];
  }

  else
  {
    v130 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setBackgroundColor:v130];
  if (v129)
  {
  }

  v131 = objc_opt_respondsToSelector();
  if (v131)
  {
    v132 = [v7 dominantImageBackgroundColor];
  }

  else
  {
    v132 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setDominantImageBackgroundColor:v132];
  if (v131)
  {
  }

  if (objc_opt_respondsToSelector())
  {
    v133 = [v7 allowsDominantImageBackgroundColorAsCaptionBackground];
  }

  else
  {
    v133 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setAllowsDominantImageBackgroundColorAsCaptionBackground:v133];
  v134 = objc_opt_respondsToSelector();
  if (v134)
  {
    v135 = [v7 minimumHeight];
  }

  else
  {
    v135 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setMinimumHeight:v135];
  if (v134)
  {
  }

  v136 = objc_opt_respondsToSelector();
  if (v136)
  {
    v137 = [v7 domainNameForIndicator];
  }

  else
  {
    v137 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setDomainNameForIndicator:v137];
  if (v136)
  {
  }

  v138 = objc_opt_respondsToSelector();
  if (v138)
  {
    v139 = [v7 backgroundImage];
  }

  else
  {
    v139 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setBackgroundImage:v139];
  if (v138)
  {
  }

  v140 = objc_opt_respondsToSelector();
  if (v140)
  {
    v141 = [v7 backgroundImageProperties];
  }

  else
  {
    v141 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setBackgroundImageProperties:v141];
  if (v140)
  {
  }

  v142 = objc_opt_respondsToSelector();
  if (v142)
  {
    v143 = [v7 progressSpinner];
  }

  else
  {
    v143 = 0;
  }

  [(LPWebLinkPresentationProperties *)v15 setProgressSpinner:v143];
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
  v3 = [(LPWebLinkPresentationProperties *)self image];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(LPWebLinkPresentationProperties *)self video];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(LPWebLinkPresentationProperties *)self arAsset];
      if (v6)
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