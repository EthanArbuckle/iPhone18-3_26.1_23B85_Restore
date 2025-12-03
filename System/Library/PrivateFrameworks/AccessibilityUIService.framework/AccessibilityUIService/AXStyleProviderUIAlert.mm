@interface AXStyleProviderUIAlert
- (AXStyleProviderUIAlert)initWithType:(unint64_t)type text:(id)text subtitleText:(id)subtitleText iconImage:(id)image styleProvider:(id)provider userInfo:(id)info;
- (void)_appendParagraphWithText:(id)text withImage:(id)image withTextColor:(id)color font:(id)font textAlignment:(int64_t)alignment lineSpacing:(double)spacing paragraphSpacingBefore:(double)before toAttributedString:(id)self0;
- (void)_appendParagraphWithText:(id)text withTextColor:(id)color font:(id)font textAlignment:(int64_t)alignment lineSpacing:(double)spacing paragraphSpacingBefore:(double)before toAttributedString:(id)string;
- (void)_cancelDismissalWithPanGesture:(id)gesture;
- (void)_endDismissalWithPanGesture:(id)gesture;
- (void)_handlePanGestureRecognizer:(id)recognizer;
- (void)_handleTapGestureRecognizer:(id)recognizer;
- (void)_updateDismissalWithPanGesture:(id)gesture;
- (void)_updateViewForDismissalPercentage:(double)percentage;
- (void)addToContainerView:(id)view;
- (void)layoutSubviews;
@end

@implementation AXStyleProviderUIAlert

- (AXStyleProviderUIAlert)initWithType:(unint64_t)type text:(id)text subtitleText:(id)subtitleText iconImage:(id)image styleProvider:(id)provider userInfo:(id)info
{
  textCopy = text;
  subtitleTextCopy = subtitleText;
  imageCopy = image;
  providerCopy = provider;
  infoCopy = info;
  v201.receiver = self;
  v201.super_class = AXStyleProviderUIAlert;
  v18 = [(AXStyleProviderUIAlert *)&v201 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_144;
  }

  v190 = infoCopy;
  [(AXUIAlert *)v18 setUserInfo:infoCopy];
  v20 = [providerCopy alertBackgroundStyleForType:type];
  v21 = v20;
  v22 = 0;
  v23 = 0x277D75000uLL;
  v199 = providerCopy;
  if (v20 > 3)
  {
    if (v20 > 5)
    {
      if (v20 != 6)
      {
        v24 = 0;
        if (v20 == 7)
        {
          v22 = objc_alloc_init(MEMORY[0x277D75D18]);
          v24 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
          [v24 _setContinuousCornerRadius:47.0];
          [v22 addSubview:v24];
          layer = [v22 layer];
          [layer setShadowRadius:25.0];

          layer2 = [v22 layer];
          LODWORD(v38) = 1036831949;
          [layer2 setShadowOpacity:v38];

          layer3 = [v22 layer];
          [layer3 setShadowOffset:{0.0, 15.0}];

          layer4 = [v22 layer];
          blackColor = [MEMORY[0x277D75348] blackColor];
          [layer4 setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

          v23 = 0x277D75000;
        }

        goto LABEL_35;
      }

      v22 = objc_alloc_init(MEMORY[0x277D75D18]);
      v52 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      traitCollection = [(AXStyleProviderUIAlert *)v19 traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      v196 = imageCopy;
      if (userInterfaceStyle == 2)
      {
        v29 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      }

      else
      {
        v29 = v52;
      }

      v57 = 20.0;
    }

    else
    {
      if (v20 == 4)
      {
        if (_UISolariumEnabled())
        {
          v50 = objc_alloc_init(MEMORY[0x277D75D68]);
        }

        else
        {
          v55 = objc_alloc(MEMORY[0x277D75D68]);
          v56 = [MEMORY[0x277D75210] effectWithStyle:1200];
          v50 = [v55 initWithEffect:v56];

          v23 = 0x277D75000uLL;
        }

        v51 = v50;
        goto LABEL_27;
      }

      v22 = objc_alloc_init(MEMORY[0x277D75D18]);
      v26 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
      traitCollection2 = [(AXStyleProviderUIAlert *)v19 traitCollection];
      userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

      v196 = imageCopy;
      if (userInterfaceStyle2 == 2)
      {
        v29 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      }

      else
      {
        v29 = v26;
      }

      v57 = 30.0;
      if (type == 3)
      {
        v57 = 10.0;
      }
    }

    [v29 _setContinuousCornerRadius:v57];
    layer5 = [v29 layer];
    [layer5 setShadowRadius:10.0];

    layer6 = [v29 layer];
    LODWORD(v60) = 1050253722;
    [layer6 setShadowOpacity:v60];

    layer7 = [v29 layer];
    [layer7 setShadowOffset:{0.0, 10.0}];

    layer8 = [v29 layer];
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [layer8 setShadowColor:{objc_msgSend(blackColor2, "CGColor")}];

    [v22 addSubview:v29];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v64 = MEMORY[0x277CCAAD0];
    v65 = _NSDictionaryOfVariableBindings(&cfstr_Backdropview.isa, v29, 0);
    v66 = [v64 constraintsWithVisualFormat:@"H:|-[backdropView]-|" options:0 metrics:0 views:v65];
    [v22 addConstraints:v66];

    v24 = v29;
    v67 = MEMORY[0x277CCAAD0];
    v68 = _NSDictionaryOfVariableBindings(&cfstr_Backdropview.isa, v29, 0);
    v69 = [v67 constraintsWithVisualFormat:@"V:|-[backdropView]-|" options:0 metrics:0 views:v68];
    [v22 addConstraints:v69];

    imageCopy = v196;
LABEL_34:
    v23 = 0x277D75000uLL;
    goto LABEL_35;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v25 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      goto LABEL_22;
    }

    v22 = objc_alloc_init(MEMORY[0x277D75D18]);
    v24 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    [v24 _setContinuousCornerRadius:10.0];
    [v22 addSubview:v24];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = MEMORY[0x277CCAAD0];
    v31 = _NSDictionaryOfVariableBindings(&cfstr_Backdropview.isa, v24, 0);
    v32 = [v30 constraintsWithVisualFormat:@"H:|-[backdropView]-|" options:0 metrics:0 views:v31];
    [v22 addConstraints:v32];

    v33 = MEMORY[0x277CCAAD0];
    providerCopy = v199;
    v34 = _NSDictionaryOfVariableBindings(&cfstr_Backdropview.isa, v24, 0);
    v35 = [v33 constraintsWithVisualFormat:@"V:|-[backdropView]-|" options:0 metrics:0 views:v34];
    [v22 addConstraints:v35];

    goto LABEL_34;
  }

  if (v20)
  {
    v24 = 0;
    if (v20 == 1)
    {
      v25 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
LABEL_22:
      v51 = v25;
LABEL_27:
      v22 = v51;
      v24 = v51;
    }
  }

  else
  {
    v42 = [providerCopy alertBackgroundImageForType:type];
    [providerCopy alertBackgroundImageCapInsetsForType:type];
    v44.f64[0] = v43;
    v44.f64[1] = v45;
    v47.f64[0] = v46;
    v47.f64[1] = v48;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v44, *MEMORY[0x277D768C8]), vceqq_f64(v47, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
    {
      v49 = [v42 resizableImageWithCapInsets:?];

      v42 = v49;
      v23 = 0x277D75000uLL;
    }

    v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v42];

    v24 = 0;
  }

LABEL_35:
  [v24 _continuousCornerRadius];
  v71 = v70;
  if (objc_opt_respondsToSelector())
  {
    [providerCopy alertBackgroundCornerRadiusForType:type];
    v71 = v72;
    if (fabs(v72) >= 2.22044605e-16)
    {
      [v24 _setContinuousCornerRadius:v72];
    }
  }

  v193 = textCopy;
  if (_UISolariumEnabled())
  {
    [v24 ax_setWantsGlassAppearance:1];
    layer9 = [v24 layer];
    [layer9 setCornerRadius:v71];

    [(AXStyleProviderUIAlert *)v19 setGlassView:v24];
  }

  v189 = v24;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v195 = v22;
  [(AXStyleProviderUIAlert *)v19 addSubview:v22];
  layer10 = [(AXStyleProviderUIAlert *)v19 layer];
  [layer10 setAllowsGroupOpacity:v21 == 0];

  v75 = *(v23 + 3352);
  v76 = objc_opt_new();
  [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AXStyleProviderUIAlert *)v19 addSubview:v76];
  v77 = imageCopy == 0;
  v78 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_284FF7328 attributes:0];
  v194 = v78;
  if (type == 7)
  {
    v79 = [v199 alertTextColorForType:7];
    v80 = [v199 alertTextFontForType:7];
    [v199 alertTextLineHeightOffsetForType:7];
    [AXStyleProviderUIAlert _appendParagraphWithText:v19 withImage:"_appendParagraphWithText:withImage:withTextColor:font:textAlignment:lineSpacing:paragraphSpacingBefore:toAttributedString:" withTextColor:v193 font:imageCopy textAlignment:v79 lineSpacing:v80 paragraphSpacingBefore:1 toAttributedString:v78];

    v188 = 0;
    imageCopy = 0;
LABEL_45:
    v200 = type == 7;
    goto LABEL_46;
  }

  v81 = [v199 alertTextColorForType:type];
  v82 = [v199 alertTextFontForType:type];
  [v199 alertTextLineHeightOffsetForType:type];
  [AXStyleProviderUIAlert _appendParagraphWithText:v19 withTextColor:"_appendParagraphWithText:withTextColor:font:textAlignment:lineSpacing:paragraphSpacingBefore:toAttributedString:" font:v193 textAlignment:v81 lineSpacing:v82 paragraphSpacingBefore:imageCopy == 0 toAttributedString:v78];

  v188 = type == 8;
  v200 = 1;
  if (type != 6 && type != 8)
  {
    goto LABEL_45;
  }

LABEL_46:
  v197 = imageCopy;
  v83 = objc_opt_new();
  [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
  v192 = v83;
  if (subtitleTextCopy)
  {
    v84 = v200 ^ 1;
    if (type == 3)
    {
      v84 = 0;
    }

    if (v84)
    {
      v85 = [v199 alertSubtitleTextColorForType:type];
      v91 = [v199 alertSubtitleTextFontForType:type];
      [v199 alertSubtitleTextLineHeightOffsetForType:type];
      v93 = v92;
      [v199 alertSubtitleTextVerticalSpacingHeightWithTextForType:type];
      [(AXStyleProviderUIAlert *)v19 _appendParagraphWithText:subtitleTextCopy withTextColor:v85 font:v91 textAlignment:v77 lineSpacing:v194 paragraphSpacingBefore:v93 toAttributedString:v94];
    }

    else
    {
      v85 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_284FF7328 attributes:0];
      v86 = [v199 alertSubtitleTextColorForType:type];
      v87 = [v199 alertSubtitleTextFontForType:type];
      [v199 alertSubtitleTextLineHeightOffsetForType:type];
      v89 = v88;
      [v199 alertSubtitleTextVerticalSpacingHeightWithTextForType:type];
      [(AXStyleProviderUIAlert *)v19 _appendParagraphWithText:subtitleTextCopy withTextColor:v86 font:v87 textAlignment:v77 lineSpacing:v85 paragraphSpacingBefore:v89 toAttributedString:v90];

      [v83 setNumberOfLines:2];
      [v83 setAttributedText:v85];
      [v83 setLineBreakMode:4];
    }
  }

  [v76 addSubview:v83];
  v95 = objc_opt_new();
  [v95 setNumberOfLines:0];
  [v95 setAttributedText:v194];
  [v95 setLineBreakMode:0];
  [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (type == 3)
  {
    [v95 setNumberOfLines:1];
    if ((v200 & 1) == 0 && !_UISolariumEnabled())
    {
      v96 = objc_alloc(MEMORY[0x277D75D68]);
      v97 = MEMORY[0x277D75D00];
      v98 = [MEMORY[0x277D75210] effectWithStyle:5];
      v99 = [v97 effectForBlurEffect:v98];
      v100 = [v96 initWithEffect:v99];

LABEL_59:
      [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v76 addSubview:v100];
      contentView = [v100 contentView];
      [contentView addSubview:v95];

      contentView2 = [v100 contentView];
      v103 = MEMORY[0x277CCAAD0];
      _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v95, 0);
      v105 = v104 = v100;
      v106 = [v103 constraintsWithVisualFormat:@"H:|[label]|" options:0 metrics:0 views:v105];
      [contentView2 addConstraints:v106];

      v191 = v104;
      contentView3 = [v104 contentView];
      v108 = MEMORY[0x277CCAAD0];
      v109 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v95, 0);
      v110 = [v108 constraintsWithVisualFormat:@"V:|[label]|" options:0 metrics:0 views:v109];
      [contentView3 addConstraints:v110];

      providerCopy = v199;
      v22 = v195;
      goto LABEL_61;
    }

LABEL_58:
    v100 = objc_alloc_init(MEMORY[0x277D75D68]);
    goto LABEL_59;
  }

  providerCopy = v199;
  if (v200)
  {
    goto LABEL_58;
  }

  [v76 addSubview:v95];
  v191 = 0;
LABEL_61:
  imageCopy = v197;
  infoCopy = v190;
  if (!v197)
  {
    if (type == 3)
    {
      v126 = 1;
    }

    else
    {
      v126 = v200;
    }

    if (v126)
    {
      goto LABEL_73;
    }

    [v95 ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:v76];
    goto LABEL_83;
  }

  v111 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v197];
  [v111 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (type == 3)
  {
    v112 = 1;
  }

  else
  {
    v112 = v200;
  }

  if ((v112 & 1) == 0)
  {
    [v76 addSubview:v111];
    [v95 ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:v76];
    if (v111)
    {
LABEL_84:
      [v95 ax_constrainLayoutAttribute:2 asEqualToValueOfView:v76];
      [v95 ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:v76];
      LODWORD(v132) = 1144750080;
      [v95 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v76 priority:v132];
      LODWORD(v133) = 1144750080;
      [v95 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v76 priority:v133];
      if (!v111)
      {
        goto LABEL_115;
      }

      v134 = 0;
      goto LABEL_101;
    }

LABEL_83:
    [v95 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v76];
    v111 = 0;
    goto LABEL_84;
  }

  layer11 = [v111 layer];
  [layer11 setCornerRadius:4.0];

  layer12 = [v111 layer];
  [layer12 setMasksToBounds:1];

  [v76 addSubview:v111];
  if (v111)
  {
    v115 = [MEMORY[0x277CCAAD0] constraintWithItem:v191 attribute:5 relatedBy:0 toItem:v111 attribute:6 multiplier:1.0 constant:10.0];
    [v76 addConstraint:v115];

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    v118 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D767F8]);

    if (v118 == NSOrderedDescending)
    {
      [v95 setNumberOfLines:0];
      v119 = MEMORY[0x277CCAAD0];
      v120 = 1.0;
      v121 = 10.0;
      v122 = v191;
      v123 = 3;
      v124 = v76;
      v125 = 3;
    }

    else
    {
      v119 = MEMORY[0x277CCAAD0];
      v120 = 1.0;
      v121 = 0.0;
      v122 = v191;
      v123 = 10;
      v124 = v111;
      v125 = 10;
    }

    v135 = [v119 constraintWithItem:v122 attribute:v123 relatedBy:0 toItem:v124 attribute:v125 multiplier:v120 constant:v121];
    [v76 addConstraint:v135];

    v131 = [MEMORY[0x277CCAAD0] constraintWithItem:v191 attribute:6 relatedBy:0 toItem:v76 attribute:6 multiplier:1.0 constant:-5.0];
    goto LABEL_88;
  }

LABEL_73:
  if (v200)
  {
    v127 = 24.0;
  }

  else
  {
    v127 = 5.0;
  }

  if (v200)
  {
    v128 = 8.0;
  }

  else
  {
    v128 = 13.0;
  }

  v129 = [MEMORY[0x277CCAAD0] constraintWithItem:v191 attribute:5 relatedBy:0 toItem:v76 attribute:5 multiplier:1.0 constant:v127];
  [v76 addConstraint:v129];

  v130 = [MEMORY[0x277CCAAD0] constraintWithItem:v191 attribute:6 relatedBy:0 toItem:v76 attribute:6 multiplier:1.0 constant:-v127];
  [v76 addConstraint:v130];

  v131 = [MEMORY[0x277CCAAD0] constraintWithItem:v191 attribute:3 relatedBy:0 toItem:v76 attribute:3 multiplier:1.0 constant:v128];
  v111 = 0;
LABEL_88:
  [v76 addConstraint:v131];

  if (v192)
  {
    v136 = 0.0;
    if (v200)
    {
      v137 = 24.0;
    }

    else
    {
      v136 = 5.0;
      v137 = 15.0;
    }

    if (v200)
    {
      v138 = -8.0;
    }

    else
    {
      v138 = -10.0;
    }

    if (v200)
    {
      v139 = -24.0;
    }

    else
    {
      v139 = -12.0;
    }

    v140 = [MEMORY[0x277CCAAD0] constraintWithItem:v192 attribute:3 relatedBy:0 toItem:v191 attribute:4 multiplier:1.0 constant:v136];
    [v76 addConstraint:v140];

    v141 = [MEMORY[0x277CCAAD0] constraintWithItem:v192 attribute:4 relatedBy:0 toItem:v76 attribute:4 multiplier:1.0 constant:v138];
    [v76 addConstraint:v141];

    v142 = [MEMORY[0x277CCAAD0] constraintWithItem:v192 attribute:5 relatedBy:0 toItem:v76 attribute:5 multiplier:1.0 constant:v137];
    [v76 addConstraint:v142];

    v143 = [MEMORY[0x277CCAAD0] constraintWithItem:v192 attribute:6 relatedBy:0 toItem:v76 attribute:6 multiplier:1.0 constant:v139];
    [v76 addConstraint:v143];
  }

  imageCopy = v197;
  providerCopy = v199;
  infoCopy = v190;
  if (v111)
  {
    [v111 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v76 withOffset:13.0];
    v134 = 1;
    [v111 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v76 withOffset:13.0];
LABEL_101:
    if (type == 7)
    {
      [v111 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v76 withOffset:13.0];
      [v111 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v76 withOffset:18.0];
    }

    else
    {
      [providerCopy alertIconImageEdgeInsetsForType:type];
      v145 = v144;
      v147 = v146;
      v149 = v148;
      [v111 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v76 withOffset:v150];
      [v111 ax_constrainLayoutAttribute:2 asEqualToLayoutAttribute:1 ofView:v95 withOffset:-v149];
      [v111 ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:v76 withOffset:v145];
      [v111 ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:v76 withOffset:-v147];
      [v111 ax_constrainLayoutAttribute:10 asEqualToValueOfView:v76 withOffset:(v145 - v147) * 0.5];
      LODWORD(v151) = 1132068864;
      [v111 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v76 withOffset:v145 priority:v151];
      LODWORD(v152) = 1132068864;
      [v111 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v76 withOffset:-v147 priority:v152];
    }

    [imageCopy size];
    v155 = v154;
    if (v134)
    {
      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      preferredContentSizeCategory2 = [mEMORY[0x277D75128]2 preferredContentSizeCategory];
      v158 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory2, *MEMORY[0x277D767F8]);

      if (v158 == NSOrderedDescending)
      {
        v159 = 40.0;
      }

      else
      {
        mEMORY[0x277D75128]3 = [MEMORY[0x277D75128] sharedApplication];
        preferredContentSizeCategory3 = [mEMORY[0x277D75128]3 preferredContentSizeCategory];
        v163 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory3, *MEMORY[0x277D76818]);

        v159 = 30.0;
        if (v163 != NSOrderedDescending)
        {
          mEMORY[0x277D75128]4 = [MEMORY[0x277D75128] sharedApplication];
          preferredContentSizeCategory4 = [mEMORY[0x277D75128]4 preferredContentSizeCategory];
          v166 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory4, *MEMORY[0x277D76828]);

          v159 = 20.0;
          if (v166 == NSOrderedDescending)
          {
            v159 = 25.0;
          }
        }
      }

      if (v159 < v155)
      {
        v155 = v159;
      }

      v160 = v155;
      imageCopy = v197;
      providerCopy = v199;
    }

    else
    {
      v160 = v153;
    }

    [v111 ax_constrainLayoutAttribute:7 asEqualToConstant:v155];
    [v111 ax_constrainLayoutAttribute:8 asEqualToConstant:v160];
  }

LABEL_115:
  [providerCopy alertBackgroundSizeForType:type];
  v169 = v167;
  v170 = v168;
  v171 = v167 > 0.0 && vabdd_f64(v167, *&AXUIAlertSizeMetricFitting) >= 2.22044605e-16 && vabdd_f64(v167, *&AXUIAlertSizeMetricFillingContainer) >= 2.22044605e-16;
  if (v168 > 0.0 && vabdd_f64(v168, *&AXUIAlertSizeMetricFitting) >= 2.22044605e-16)
  {
    v172 = vabdd_f64(v168, *&AXUIAlertSizeMetricFillingContainer) >= 2.22044605e-16;
    if (!v171)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v172 = 0;
    if (!v171)
    {
LABEL_126:
      if (v172)
      {
        goto LABEL_127;
      }

      goto LABEL_134;
    }
  }

  if ([providerCopy alertShouldGrowInAxis:0 forType:type])
  {
    [v22 ax_constrainLayoutAttribute:7 asGreaterThanOrEqualToConstant:v169];
    goto LABEL_126;
  }

  [v22 ax_constrainLayoutAttribute:7 asEqualToConstant:v169];
  if (v172)
  {
LABEL_127:
    if ([providerCopy alertShouldGrowInAxis:1 forType:type])
    {
      [v22 ax_constrainLayoutAttribute:8 asGreaterThanOrEqualToConstant:v170];
    }

    else if (type != 3 && v200 != type)
    {
      [v22 ax_constrainLayoutAttribute:8 asEqualToConstant:v170];
    }
  }

LABEL_134:
  [providerCopy alertContentEdgeInsetsForType:type];
  v174 = v173;
  v176 = v175;
  v178 = v177;
  [v76 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v19 withOffset:v179];
  [v76 ax_constrainLayoutAttribute:2 asEqualToValueOfView:v19 withOffset:-v178];
  if ((AXDeviceHasHomeButton() & 1) != 0 || !AXDeviceIsPhone())
  {
    [v76 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v19 withOffset:v174];
  }

  else
  {
    topAnchor = [v76 topAnchor];
    safeAreaLayoutGuide = [(AXStyleProviderUIAlert *)v19 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v183 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v183 setActive:1];

    imageCopy = v197;
    providerCopy = v199;
  }

  [v76 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v19 withOffset:-v176];
  [v22 ax_constrainLayoutAttribute:9 asEqualToValueOfView:v19];
  [v22 ax_constrainLayoutAttribute:7 asEqualToValueOfView:v19];
  if (v200)
  {
    [v22 ax_constrainLayoutAttribute:8 asEqualToValueOfView:v19 withOffset:10.0];
    v184 = 3.0;
    if (v188)
    {
      v184 = -3.0;
    }

    [v22 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v19 withOffset:v184];
  }

  else
  {
    [v22 ax_constrainLayoutAttribute:8 asEqualToValueOfView:v19];
    [v22 ax_constrainLayoutAttribute:10 asEqualToValueOfView:v19];
  }

  [(AXStyleProviderUIAlert *)v19 setAlertType:type];
  [(AXStyleProviderUIAlert *)v19 setStyleProvider:providerCopy];
  v185 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v19 action:sel__handleTapGestureRecognizer_];
  [v76 addGestureRecognizer:v185];
  v186 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v19 action:sel__handlePanGestureRecognizer_];
  [v186 setMaximumNumberOfTouches:1];
  [v76 addGestureRecognizer:v186];

  textCopy = v193;
LABEL_144:

  return v19;
}

- (void)_handleTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [recognizerCopy locationInView:self];
  if (-[AXStyleProviderUIAlert pointInside:withEvent:](self, "pointInside:withEvent:", 0) && (!recognizerCopy || [recognizerCopy state] == 3))
  {
    context = [(AXUIAlert *)self context];
    service = [context service];
    if ([service conformsToProtocol:&unk_2850141E0])
    {
      context2 = [(AXUIAlert *)self context];
      service2 = [context2 service];
    }

    else
    {
      service2 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      context3 = [(AXUIAlert *)self context];
      identifier = [context3 identifier];
      userInfo = [(AXUIAlert *)self userInfo];
      [service2 alertWithIdentifierWasActivated:identifier userInfo:userInfo];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }

      context3 = [(AXUIAlert *)self context];
      identifier = [context3 identifier];
      [service2 alertWithIdentifierWasActivated:identifier];
    }

    goto LABEL_12;
  }

LABEL_13:

  MEMORY[0x2821F96F8]();
}

- (void)_handlePanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [recognizerCopy locationInView:self];
      self->_dismissalGestureYOffset = v7;
      [(AXStyleProviderUIAlert *)self frame];
      self->_backgroundViewDismissalOrigin.x = v8;
      self->_backgroundViewDismissalOrigin.y = v9;
    }

    else
    {
      v5 = state == 2;
      v6 = recognizerCopy;
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    [(AXStyleProviderUIAlert *)self _updateDismissalWithPanGesture:recognizerCopy];
LABEL_12:
    v6 = recognizerCopy;
    goto LABEL_13;
  }

  if (state == 3)
  {
    [(AXStyleProviderUIAlert *)self _endDismissalWithPanGesture:recognizerCopy];
    goto LABEL_12;
  }

  v5 = state == 4;
  v6 = recognizerCopy;
  if (v5)
  {
    [(AXStyleProviderUIAlert *)self _cancelDismissalWithPanGesture:recognizerCopy];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateDismissalWithPanGesture:(id)gesture
{
  [gesture translationInView:self];
  v5 = v4;
  [(AXStyleProviderUIAlert *)self frame];
  if (self->_backgroundViewDismissalOrigin.y >= v5 + self->_dismissalGestureYOffset)
  {
    v6 = v5 + self->_dismissalGestureYOffset;
  }

  [(AXStyleProviderUIAlert *)self setFrame:?];
  [(AXStyleProviderUIAlert *)self frame];
  v7 = -v5 / CGRectGetHeight(v9);

  [(AXStyleProviderUIAlert *)self _updateViewForDismissalPercentage:v7];
}

- (void)_updateViewForDismissalPercentage:(double)percentage
{
  if (percentage <= 0.0)
  {
    [(AXStyleProviderUIAlert *)self frame];
    x = self->_backgroundViewDismissalOrigin.x;
    y = self->_backgroundViewDismissalOrigin.y;

    [(AXStyleProviderUIAlert *)self setFrame:x, y];
  }

  else if (percentage > 0.3)
  {

    [(AXStyleProviderUIAlert *)self _endDismissalWithPanGesture:0];
  }
}

- (void)_endDismissalWithPanGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy translationInView:self];
  v6 = v5;
  [gestureCopy velocityInView:self];
  v8 = v7;

  [(AXStyleProviderUIAlert *)self frame];
  Height = CGRectGetHeight(v24);
  if (v8 > 800.0 || (Height = -v6 / Height, Height > 0.3))
  {
    context = [(AXUIAlert *)self context];
    service = [context service];
    if ([service conformsToProtocol:&unk_2850141E0])
    {
      context2 = [(AXUIAlert *)self context];
      service2 = [context2 service];
    }

    else
    {
      service2 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      context3 = [(AXUIAlert *)self context];
      identifier = [context3 identifier];
      [service2 alertWithIdentifierDidDisappear:identifier];
    }

    v15 = +[AXUIDisplayManager sharedDisplayManager];
    context4 = [(AXUIAlert *)self context];
    identifier2 = [context4 identifier];
    context5 = [(AXUIAlert *)self context];
    service3 = [context5 service];
    [v15 hideAlertWithIdentifier:identifier2 forService:service3];
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__AXStyleProviderUIAlert__endDismissalWithPanGesture___block_invoke;
    v22[3] = &unk_278BF3050;
    v22[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v22 animations:0.2];
  }
}

- (void)_cancelDismissalWithPanGesture:(id)gesture
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__AXStyleProviderUIAlert__cancelDismissalWithPanGesture___block_invoke;
  v3[3] = &unk_278BF3050;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.2];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = AXStyleProviderUIAlert;
  [(AXStyleProviderUIAlert *)&v30 layoutSubviews];
  if (_UISolariumEnabled())
  {
    glassView = [(AXStyleProviderUIAlert *)self glassView];
    superview = [glassView superview];
    [superview layoutIfNeeded];

    if ([(AXStyleProviderUIAlert *)self alertType]== 2 || [(AXStyleProviderUIAlert *)self alertType]== 4)
    {
      window = [(AXStyleProviderUIAlert *)self window];
      screen = [window screen];
      traitCollection = [screen traitCollection];
      [traitCollection displayCornerRadius];
      v9 = v8;

      glassView2 = [(AXStyleProviderUIAlert *)self glassView];
      layer = [glassView2 layer];
      memset(v25, 0, sizeof(v25));
      v26 = v9;
      v27 = v9;
      v28 = v9;
      v29 = v9;
      [layer setCornerRadii:v25];
    }

    else
    {
      alertType = [(AXStyleProviderUIAlert *)self alertType];
      glassView3 = [(AXStyleProviderUIAlert *)self glassView];
      v14 = glassView3;
      if (alertType)
      {
        [glassView3 _continuousCornerRadius];
        v16 = v15;
        glassView4 = [(AXStyleProviderUIAlert *)self glassView];
        [glassView4 frame];
        v19 = v18 * 0.5;
        glassView5 = [(AXStyleProviderUIAlert *)self glassView];
        [glassView5 frame];
        v22 = fmin(v16, fmin(v19, v21 * 0.5));
      }

      else
      {
        [glassView3 frame];
        AXCornerRadiusForBackgroundWithSize();
        v22 = v23;
      }

      glassView6 = [(AXStyleProviderUIAlert *)self glassView];
      [glassView6 _setContinuousCornerRadius:v22];

      glassView2 = [(AXStyleProviderUIAlert *)self glassView];
      layer = [glassView2 layer];
      [layer setCornerRadius:v22];
    }
  }
}

- (void)addToContainerView:(id)view
{
  viewCopy = view;
  [(AXStyleProviderUIAlert *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:self];
  styleProvider = [(AXStyleProviderUIAlert *)self styleProvider];
  alertType = [(AXStyleProviderUIAlert *)self alertType];
  [styleProvider alertEdgeInsetsForType:alertType];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [styleProvider alertPositionForType:alertType];
  [styleProvider alertBackgroundSizeForType:alertType];
  v16 = vabdd_f64(v15, *&AXUIAlertSizeMetricFillingContainer);
  v18 = vabdd_f64(v17, *&AXUIAlertSizeMetricFillingContainer);
  v19 = v14 - 1;
  if ((v14 - 1) > 7)
  {
    v21 = -1;
    v20 = 1;
    v22 = 1;
    v23 = -1;
  }

  else
  {
    v20 = qword_23DBF3E30[v19];
    v21 = qword_23DBF3E70[v19];
    v22 = qword_23DBF3EB0[v19];
    v23 = qword_23DBF3EF0[v19];
  }

  if (v16 >= 2.22044605e-16)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if (v16 >= 2.22044605e-16)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v18 >= 2.22044605e-16)
  {
    v26 = v20;
  }

  else
  {
    v26 = 0;
  }

  if (v18 >= 2.22044605e-16)
  {
    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:3 relatedBy:v26 toItem:viewCopy attribute:3 multiplier:1.0 constant:v7];
  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:4 relatedBy:v27 toItem:viewCopy attribute:4 multiplier:1.0 constant:-v11];
  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:1 relatedBy:v24 toItem:viewCopy attribute:1 multiplier:1.0 constant:v9];
  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:2 relatedBy:v25 toItem:viewCopy attribute:2 multiplier:1.0 constant:-v13];
  if (v24)
  {
    v28 = v25 == 0;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:9 asEqualToValueOfView:viewCopy];
  }

  if (v26)
  {
    v29 = v27 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:10 asEqualToValueOfView:viewCopy];
  }

  if (v16 < 2.22044605e-16)
  {
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:7 asEqualToValueOfView:viewCopy withOffset:-(v9 + v13)];
  }

  if (v18 < 2.22044605e-16)
  {
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:8 asEqualToValueOfView:viewCopy withOffset:-(v7 + v11)];
  }
}

- (void)_appendParagraphWithText:(id)text withTextColor:(id)color font:(id)font textAlignment:(int64_t)alignment lineSpacing:(double)spacing paragraphSpacingBefore:(double)before toAttributedString:(id)string
{
  v41[1] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  stringCopy = string;
  fontCopy = font;
  textCopy = text;
  v19 = [stringCopy length];
  v20 = MEMORY[0x277D74118];
  if (v19)
  {
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v22 = [defaultParagraphStyle mutableCopy];

    v23 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] labelFontSize];
    v24 = [v23 systemFontOfSize:?];
    [v24 lineHeight];
    [v22 setParagraphSpacingBefore:before - v25];

    v40 = *v20;
    v41[0] = v22;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v27 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n\n" attributes:v26];
    [stringCopy appendAttributedString:v27];
  }

  defaultParagraphStyle2 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v29 = [defaultParagraphStyle2 mutableCopy];

  [v29 setAlignment:alignment];
  if (fabs(spacing) >= 2.22044605e-16)
  {
    [v29 setLineSpacing:spacing];
  }

  v30 = colorCopy;
  v31 = v30;
  if (!v30)
  {
    v32 = v20;
    traitCollection = [(AXStyleProviderUIAlert *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v31 = ;
    v20 = v32;
  }

  v35 = objc_alloc(MEMORY[0x277CBEAC0]);
  v36 = [v35 initWithObjectsAndKeys:{v29, *v20, fontCopy, *MEMORY[0x277D740A8], v31, *MEMORY[0x277D740C0], 0}];

  v37 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v36];
  [stringCopy appendAttributedString:v37];

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_appendParagraphWithText:(id)text withImage:(id)image withTextColor:(id)color font:(id)font textAlignment:(int64_t)alignment lineSpacing:(double)spacing paragraphSpacingBefore:(double)before toAttributedString:(id)self0
{
  colorCopy = color;
  v18 = MEMORY[0x277D74248];
  stringCopy = string;
  fontCopy = font;
  imageCopy = image;
  textCopy = text;
  defaultParagraphStyle = [v18 defaultParagraphStyle];
  v24 = [defaultParagraphStyle mutableCopy];

  [v24 setAlignment:alignment];
  if (fabs(spacing) >= 2.22044605e-16)
  {
    [v24 setLineSpacing:spacing];
  }

  v25 = colorCopy;
  v34 = v25;
  if (!v25)
  {
    traitCollection = [(AXStyleProviderUIAlert *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v25 = ;
  }

  v28 = objc_alloc(MEMORY[0x277CBEAC0]);
  v29 = [v28 initWithObjectsAndKeys:{v24, *MEMORY[0x277D74118], fontCopy, *MEMORY[0x277D740A8], v25, *MEMORY[0x277D740C0], 0}];

  v30 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v29];
  v31 = objc_alloc_init(MEMORY[0x277D74270]);
  [v31 setImage:imageCopy];

  v32 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v31 attributes:v29];
  [stringCopy appendAttributedString:v32];

  v33 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"  "];
  [stringCopy appendAttributedString:v33];

  [stringCopy appendAttributedString:v30];
}

@end