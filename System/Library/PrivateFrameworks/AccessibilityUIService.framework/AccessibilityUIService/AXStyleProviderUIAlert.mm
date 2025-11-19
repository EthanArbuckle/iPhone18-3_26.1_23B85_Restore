@interface AXStyleProviderUIAlert
- (AXStyleProviderUIAlert)initWithType:(unint64_t)a3 text:(id)a4 subtitleText:(id)a5 iconImage:(id)a6 styleProvider:(id)a7 userInfo:(id)a8;
- (void)_appendParagraphWithText:(id)a3 withImage:(id)a4 withTextColor:(id)a5 font:(id)a6 textAlignment:(int64_t)a7 lineSpacing:(double)a8 paragraphSpacingBefore:(double)a9 toAttributedString:(id)a10;
- (void)_appendParagraphWithText:(id)a3 withTextColor:(id)a4 font:(id)a5 textAlignment:(int64_t)a6 lineSpacing:(double)a7 paragraphSpacingBefore:(double)a8 toAttributedString:(id)a9;
- (void)_cancelDismissalWithPanGesture:(id)a3;
- (void)_endDismissalWithPanGesture:(id)a3;
- (void)_handlePanGestureRecognizer:(id)a3;
- (void)_handleTapGestureRecognizer:(id)a3;
- (void)_updateDismissalWithPanGesture:(id)a3;
- (void)_updateViewForDismissalPercentage:(double)a3;
- (void)addToContainerView:(id)a3;
- (void)layoutSubviews;
@end

@implementation AXStyleProviderUIAlert

- (AXStyleProviderUIAlert)initWithType:(unint64_t)a3 text:(id)a4 subtitleText:(id)a5 iconImage:(id)a6 styleProvider:(id)a7 userInfo:(id)a8
{
  v14 = a4;
  v198 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v201.receiver = self;
  v201.super_class = AXStyleProviderUIAlert;
  v18 = [(AXStyleProviderUIAlert *)&v201 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_144;
  }

  v190 = v17;
  [(AXUIAlert *)v18 setUserInfo:v17];
  v20 = [v16 alertBackgroundStyleForType:a3];
  v21 = v20;
  v22 = 0;
  v23 = 0x277D75000uLL;
  v199 = v16;
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
          v36 = [v22 layer];
          [v36 setShadowRadius:25.0];

          v37 = [v22 layer];
          LODWORD(v38) = 1036831949;
          [v37 setShadowOpacity:v38];

          v39 = [v22 layer];
          [v39 setShadowOffset:{0.0, 15.0}];

          v40 = [v22 layer];
          v41 = [MEMORY[0x277D75348] blackColor];
          [v40 setShadowColor:{objc_msgSend(v41, "CGColor")}];

          v23 = 0x277D75000;
        }

        goto LABEL_35;
      }

      v22 = objc_alloc_init(MEMORY[0x277D75D18]);
      v52 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      v53 = [(AXStyleProviderUIAlert *)v19 traitCollection];
      v54 = [v53 userInterfaceStyle];

      v196 = v15;
      if (v54 == 2)
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
      v27 = [(AXStyleProviderUIAlert *)v19 traitCollection];
      v28 = [v27 userInterfaceStyle];

      v196 = v15;
      if (v28 == 2)
      {
        v29 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      }

      else
      {
        v29 = v26;
      }

      v57 = 30.0;
      if (a3 == 3)
      {
        v57 = 10.0;
      }
    }

    [v29 _setContinuousCornerRadius:v57];
    v58 = [v29 layer];
    [v58 setShadowRadius:10.0];

    v59 = [v29 layer];
    LODWORD(v60) = 1050253722;
    [v59 setShadowOpacity:v60];

    v61 = [v29 layer];
    [v61 setShadowOffset:{0.0, 10.0}];

    v62 = [v29 layer];
    v63 = [MEMORY[0x277D75348] blackColor];
    [v62 setShadowColor:{objc_msgSend(v63, "CGColor")}];

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

    v15 = v196;
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
    v16 = v199;
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
    v42 = [v16 alertBackgroundImageForType:a3];
    [v16 alertBackgroundImageCapInsetsForType:a3];
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
    [v16 alertBackgroundCornerRadiusForType:a3];
    v71 = v72;
    if (fabs(v72) >= 2.22044605e-16)
    {
      [v24 _setContinuousCornerRadius:v72];
    }
  }

  v193 = v14;
  if (_UISolariumEnabled())
  {
    [v24 ax_setWantsGlassAppearance:1];
    v73 = [v24 layer];
    [v73 setCornerRadius:v71];

    [(AXStyleProviderUIAlert *)v19 setGlassView:v24];
  }

  v189 = v24;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v195 = v22;
  [(AXStyleProviderUIAlert *)v19 addSubview:v22];
  v74 = [(AXStyleProviderUIAlert *)v19 layer];
  [v74 setAllowsGroupOpacity:v21 == 0];

  v75 = *(v23 + 3352);
  v76 = objc_opt_new();
  [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AXStyleProviderUIAlert *)v19 addSubview:v76];
  v77 = v15 == 0;
  v78 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_284FF7328 attributes:0];
  v194 = v78;
  if (a3 == 7)
  {
    v79 = [v199 alertTextColorForType:7];
    v80 = [v199 alertTextFontForType:7];
    [v199 alertTextLineHeightOffsetForType:7];
    [AXStyleProviderUIAlert _appendParagraphWithText:v19 withImage:"_appendParagraphWithText:withImage:withTextColor:font:textAlignment:lineSpacing:paragraphSpacingBefore:toAttributedString:" withTextColor:v193 font:v15 textAlignment:v79 lineSpacing:v80 paragraphSpacingBefore:1 toAttributedString:v78];

    v188 = 0;
    v15 = 0;
LABEL_45:
    v200 = a3 == 7;
    goto LABEL_46;
  }

  v81 = [v199 alertTextColorForType:a3];
  v82 = [v199 alertTextFontForType:a3];
  [v199 alertTextLineHeightOffsetForType:a3];
  [AXStyleProviderUIAlert _appendParagraphWithText:v19 withTextColor:"_appendParagraphWithText:withTextColor:font:textAlignment:lineSpacing:paragraphSpacingBefore:toAttributedString:" font:v193 textAlignment:v81 lineSpacing:v82 paragraphSpacingBefore:v15 == 0 toAttributedString:v78];

  v188 = a3 == 8;
  v200 = 1;
  if (a3 != 6 && a3 != 8)
  {
    goto LABEL_45;
  }

LABEL_46:
  v197 = v15;
  v83 = objc_opt_new();
  [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
  v192 = v83;
  if (v198)
  {
    v84 = v200 ^ 1;
    if (a3 == 3)
    {
      v84 = 0;
    }

    if (v84)
    {
      v85 = [v199 alertSubtitleTextColorForType:a3];
      v91 = [v199 alertSubtitleTextFontForType:a3];
      [v199 alertSubtitleTextLineHeightOffsetForType:a3];
      v93 = v92;
      [v199 alertSubtitleTextVerticalSpacingHeightWithTextForType:a3];
      [(AXStyleProviderUIAlert *)v19 _appendParagraphWithText:v198 withTextColor:v85 font:v91 textAlignment:v77 lineSpacing:v194 paragraphSpacingBefore:v93 toAttributedString:v94];
    }

    else
    {
      v85 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_284FF7328 attributes:0];
      v86 = [v199 alertSubtitleTextColorForType:a3];
      v87 = [v199 alertSubtitleTextFontForType:a3];
      [v199 alertSubtitleTextLineHeightOffsetForType:a3];
      v89 = v88;
      [v199 alertSubtitleTextVerticalSpacingHeightWithTextForType:a3];
      [(AXStyleProviderUIAlert *)v19 _appendParagraphWithText:v198 withTextColor:v86 font:v87 textAlignment:v77 lineSpacing:v85 paragraphSpacingBefore:v89 toAttributedString:v90];

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
  if (a3 == 3)
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
      v101 = [v100 contentView];
      [v101 addSubview:v95];

      v102 = [v100 contentView];
      v103 = MEMORY[0x277CCAAD0];
      _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v95, 0);
      v105 = v104 = v100;
      v106 = [v103 constraintsWithVisualFormat:@"H:|[label]|" options:0 metrics:0 views:v105];
      [v102 addConstraints:v106];

      v191 = v104;
      v107 = [v104 contentView];
      v108 = MEMORY[0x277CCAAD0];
      v109 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v95, 0);
      v110 = [v108 constraintsWithVisualFormat:@"V:|[label]|" options:0 metrics:0 views:v109];
      [v107 addConstraints:v110];

      v16 = v199;
      v22 = v195;
      goto LABEL_61;
    }

LABEL_58:
    v100 = objc_alloc_init(MEMORY[0x277D75D68]);
    goto LABEL_59;
  }

  v16 = v199;
  if (v200)
  {
    goto LABEL_58;
  }

  [v76 addSubview:v95];
  v191 = 0;
LABEL_61:
  v15 = v197;
  v17 = v190;
  if (!v197)
  {
    if (a3 == 3)
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
  if (a3 == 3)
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

  v113 = [v111 layer];
  [v113 setCornerRadius:4.0];

  v114 = [v111 layer];
  [v114 setMasksToBounds:1];

  [v76 addSubview:v111];
  if (v111)
  {
    v115 = [MEMORY[0x277CCAAD0] constraintWithItem:v191 attribute:5 relatedBy:0 toItem:v111 attribute:6 multiplier:1.0 constant:10.0];
    [v76 addConstraint:v115];

    v116 = [MEMORY[0x277D75128] sharedApplication];
    v117 = [v116 preferredContentSizeCategory];
    v118 = UIContentSizeCategoryCompareToCategory(v117, *MEMORY[0x277D767F8]);

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

  v15 = v197;
  v16 = v199;
  v17 = v190;
  if (v111)
  {
    [v111 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v76 withOffset:13.0];
    v134 = 1;
    [v111 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v76 withOffset:13.0];
LABEL_101:
    if (a3 == 7)
    {
      [v111 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v76 withOffset:13.0];
      [v111 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v76 withOffset:18.0];
    }

    else
    {
      [v16 alertIconImageEdgeInsetsForType:a3];
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

    [v15 size];
    v155 = v154;
    if (v134)
    {
      v156 = [MEMORY[0x277D75128] sharedApplication];
      v157 = [v156 preferredContentSizeCategory];
      v158 = UIContentSizeCategoryCompareToCategory(v157, *MEMORY[0x277D767F8]);

      if (v158 == NSOrderedDescending)
      {
        v159 = 40.0;
      }

      else
      {
        v161 = [MEMORY[0x277D75128] sharedApplication];
        v162 = [v161 preferredContentSizeCategory];
        v163 = UIContentSizeCategoryCompareToCategory(v162, *MEMORY[0x277D76818]);

        v159 = 30.0;
        if (v163 != NSOrderedDescending)
        {
          v164 = [MEMORY[0x277D75128] sharedApplication];
          v165 = [v164 preferredContentSizeCategory];
          v166 = UIContentSizeCategoryCompareToCategory(v165, *MEMORY[0x277D76828]);

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
      v15 = v197;
      v16 = v199;
    }

    else
    {
      v160 = v153;
    }

    [v111 ax_constrainLayoutAttribute:7 asEqualToConstant:v155];
    [v111 ax_constrainLayoutAttribute:8 asEqualToConstant:v160];
  }

LABEL_115:
  [v16 alertBackgroundSizeForType:a3];
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

  if ([v16 alertShouldGrowInAxis:0 forType:a3])
  {
    [v22 ax_constrainLayoutAttribute:7 asGreaterThanOrEqualToConstant:v169];
    goto LABEL_126;
  }

  [v22 ax_constrainLayoutAttribute:7 asEqualToConstant:v169];
  if (v172)
  {
LABEL_127:
    if ([v16 alertShouldGrowInAxis:1 forType:a3])
    {
      [v22 ax_constrainLayoutAttribute:8 asGreaterThanOrEqualToConstant:v170];
    }

    else if (a3 != 3 && v200 != a3)
    {
      [v22 ax_constrainLayoutAttribute:8 asEqualToConstant:v170];
    }
  }

LABEL_134:
  [v16 alertContentEdgeInsetsForType:a3];
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
    v180 = [v76 topAnchor];
    v181 = [(AXStyleProviderUIAlert *)v19 safeAreaLayoutGuide];
    v182 = [v181 topAnchor];
    v183 = [v180 constraintEqualToAnchor:v182];
    [v183 setActive:1];

    v15 = v197;
    v16 = v199;
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

  [(AXStyleProviderUIAlert *)v19 setAlertType:a3];
  [(AXStyleProviderUIAlert *)v19 setStyleProvider:v16];
  v185 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v19 action:sel__handleTapGestureRecognizer_];
  [v76 addGestureRecognizer:v185];
  v186 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v19 action:sel__handlePanGestureRecognizer_];
  [v186 setMaximumNumberOfTouches:1];
  [v76 addGestureRecognizer:v186];

  v14 = v193;
LABEL_144:

  return v19;
}

- (void)_handleTapGestureRecognizer:(id)a3
{
  v11 = a3;
  [v11 locationInView:self];
  if (-[AXStyleProviderUIAlert pointInside:withEvent:](self, "pointInside:withEvent:", 0) && (!v11 || [v11 state] == 3))
  {
    v4 = [(AXUIAlert *)self context];
    v5 = [v4 service];
    if ([v5 conformsToProtocol:&unk_2850141E0])
    {
      v6 = [(AXUIAlert *)self context];
      v7 = [v6 service];
    }

    else
    {
      v7 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [(AXUIAlert *)self context];
      v9 = [v8 identifier];
      v10 = [(AXUIAlert *)self userInfo];
      [v7 alertWithIdentifierWasActivated:v9 userInfo:v10];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }

      v8 = [(AXUIAlert *)self context];
      v9 = [v8 identifier];
      [v7 alertWithIdentifierWasActivated:v9];
    }

    goto LABEL_12;
  }

LABEL_13:

  MEMORY[0x2821F96F8]();
}

- (void)_handlePanGestureRecognizer:(id)a3
{
  v10 = a3;
  v4 = [v10 state];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      [v10 locationInView:self];
      self->_dismissalGestureYOffset = v7;
      [(AXStyleProviderUIAlert *)self frame];
      self->_backgroundViewDismissalOrigin.x = v8;
      self->_backgroundViewDismissalOrigin.y = v9;
    }

    else
    {
      v5 = v4 == 2;
      v6 = v10;
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    [(AXStyleProviderUIAlert *)self _updateDismissalWithPanGesture:v10];
LABEL_12:
    v6 = v10;
    goto LABEL_13;
  }

  if (v4 == 3)
  {
    [(AXStyleProviderUIAlert *)self _endDismissalWithPanGesture:v10];
    goto LABEL_12;
  }

  v5 = v4 == 4;
  v6 = v10;
  if (v5)
  {
    [(AXStyleProviderUIAlert *)self _cancelDismissalWithPanGesture:v10];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateDismissalWithPanGesture:(id)a3
{
  [a3 translationInView:self];
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

- (void)_updateViewForDismissalPercentage:(double)a3
{
  if (a3 <= 0.0)
  {
    [(AXStyleProviderUIAlert *)self frame];
    x = self->_backgroundViewDismissalOrigin.x;
    y = self->_backgroundViewDismissalOrigin.y;

    [(AXStyleProviderUIAlert *)self setFrame:x, y];
  }

  else if (a3 > 0.3)
  {

    [(AXStyleProviderUIAlert *)self _endDismissalWithPanGesture:0];
  }
}

- (void)_endDismissalWithPanGesture:(id)a3
{
  v4 = a3;
  [v4 translationInView:self];
  v6 = v5;
  [v4 velocityInView:self];
  v8 = v7;

  [(AXStyleProviderUIAlert *)self frame];
  Height = CGRectGetHeight(v24);
  if (v8 > 800.0 || (Height = -v6 / Height, Height > 0.3))
  {
    v10 = [(AXUIAlert *)self context];
    v11 = [v10 service];
    if ([v11 conformsToProtocol:&unk_2850141E0])
    {
      v12 = [(AXUIAlert *)self context];
      v20 = [v12 service];
    }

    else
    {
      v20 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [(AXUIAlert *)self context];
      v14 = [v13 identifier];
      [v20 alertWithIdentifierDidDisappear:v14];
    }

    v15 = +[AXUIDisplayManager sharedDisplayManager];
    v16 = [(AXUIAlert *)self context];
    v17 = [v16 identifier];
    v18 = [(AXUIAlert *)self context];
    v19 = [v18 service];
    [v15 hideAlertWithIdentifier:v17 forService:v19];
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

- (void)_cancelDismissalWithPanGesture:(id)a3
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
    v3 = [(AXStyleProviderUIAlert *)self glassView];
    v4 = [v3 superview];
    [v4 layoutIfNeeded];

    if ([(AXStyleProviderUIAlert *)self alertType]== 2 || [(AXStyleProviderUIAlert *)self alertType]== 4)
    {
      v5 = [(AXStyleProviderUIAlert *)self window];
      v6 = [v5 screen];
      v7 = [v6 traitCollection];
      [v7 displayCornerRadius];
      v9 = v8;

      v10 = [(AXStyleProviderUIAlert *)self glassView];
      v11 = [v10 layer];
      memset(v25, 0, sizeof(v25));
      v26 = v9;
      v27 = v9;
      v28 = v9;
      v29 = v9;
      [v11 setCornerRadii:v25];
    }

    else
    {
      v12 = [(AXStyleProviderUIAlert *)self alertType];
      v13 = [(AXStyleProviderUIAlert *)self glassView];
      v14 = v13;
      if (v12)
      {
        [v13 _continuousCornerRadius];
        v16 = v15;
        v17 = [(AXStyleProviderUIAlert *)self glassView];
        [v17 frame];
        v19 = v18 * 0.5;
        v20 = [(AXStyleProviderUIAlert *)self glassView];
        [v20 frame];
        v22 = fmin(v16, fmin(v19, v21 * 0.5));
      }

      else
      {
        [v13 frame];
        AXCornerRadiusForBackgroundWithSize();
        v22 = v23;
      }

      v24 = [(AXStyleProviderUIAlert *)self glassView];
      [v24 _setContinuousCornerRadius:v22];

      v10 = [(AXStyleProviderUIAlert *)self glassView];
      v11 = [v10 layer];
      [v11 setCornerRadius:v22];
    }
  }
}

- (void)addToContainerView:(id)a3
{
  v30 = a3;
  [(AXStyleProviderUIAlert *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 addSubview:self];
  v4 = [(AXStyleProviderUIAlert *)self styleProvider];
  v5 = [(AXStyleProviderUIAlert *)self alertType];
  [v4 alertEdgeInsetsForType:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 alertPositionForType:v5];
  [v4 alertBackgroundSizeForType:v5];
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

  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:3 relatedBy:v26 toItem:v30 attribute:3 multiplier:1.0 constant:v7];
  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:4 relatedBy:v27 toItem:v30 attribute:4 multiplier:1.0 constant:-v11];
  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:1 relatedBy:v24 toItem:v30 attribute:1 multiplier:1.0 constant:v9];
  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:2 relatedBy:v25 toItem:v30 attribute:2 multiplier:1.0 constant:-v13];
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
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:9 asEqualToValueOfView:v30];
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
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:10 asEqualToValueOfView:v30];
  }

  if (v16 < 2.22044605e-16)
  {
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:7 asEqualToValueOfView:v30 withOffset:-(v9 + v13)];
  }

  if (v18 < 2.22044605e-16)
  {
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:8 asEqualToValueOfView:v30 withOffset:-(v7 + v11)];
  }
}

- (void)_appendParagraphWithText:(id)a3 withTextColor:(id)a4 font:(id)a5 textAlignment:(int64_t)a6 lineSpacing:(double)a7 paragraphSpacingBefore:(double)a8 toAttributedString:(id)a9
{
  v41[1] = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a9;
  v17 = a5;
  v18 = a3;
  v19 = [v16 length];
  v20 = MEMORY[0x277D74118];
  if (v19)
  {
    v21 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v22 = [v21 mutableCopy];

    v23 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] labelFontSize];
    v24 = [v23 systemFontOfSize:?];
    [v24 lineHeight];
    [v22 setParagraphSpacingBefore:a8 - v25];

    v40 = *v20;
    v41[0] = v22;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v27 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n\n" attributes:v26];
    [v16 appendAttributedString:v27];
  }

  v28 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v29 = [v28 mutableCopy];

  [v29 setAlignment:a6];
  if (fabs(a7) >= 2.22044605e-16)
  {
    [v29 setLineSpacing:a7];
  }

  v30 = v15;
  v31 = v30;
  if (!v30)
  {
    v32 = v20;
    v33 = [(AXStyleProviderUIAlert *)self traitCollection];
    v34 = [v33 userInterfaceStyle];

    if (v34 == 2)
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
  v36 = [v35 initWithObjectsAndKeys:{v29, *v20, v17, *MEMORY[0x277D740A8], v31, *MEMORY[0x277D740C0], 0}];

  v37 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v18 attributes:v36];
  [v16 appendAttributedString:v37];

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_appendParagraphWithText:(id)a3 withImage:(id)a4 withTextColor:(id)a5 font:(id)a6 textAlignment:(int64_t)a7 lineSpacing:(double)a8 paragraphSpacingBefore:(double)a9 toAttributedString:(id)a10
{
  v17 = a5;
  v18 = MEMORY[0x277D74248];
  v19 = a10;
  v20 = a6;
  v21 = a4;
  v22 = a3;
  v23 = [v18 defaultParagraphStyle];
  v24 = [v23 mutableCopy];

  [v24 setAlignment:a7];
  if (fabs(a8) >= 2.22044605e-16)
  {
    [v24 setLineSpacing:a8];
  }

  v25 = v17;
  v34 = v25;
  if (!v25)
  {
    v26 = [(AXStyleProviderUIAlert *)self traitCollection];
    v27 = [v26 userInterfaceStyle];

    if (v27 == 2)
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
  v29 = [v28 initWithObjectsAndKeys:{v24, *MEMORY[0x277D74118], v20, *MEMORY[0x277D740A8], v25, *MEMORY[0x277D740C0], 0}];

  v30 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v22 attributes:v29];
  v31 = objc_alloc_init(MEMORY[0x277D74270]);
  [v31 setImage:v21];

  v32 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v31 attributes:v29];
  [v19 appendAttributedString:v32];

  v33 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"  "];
  [v19 appendAttributedString:v33];

  [v19 appendAttributedString:v30];
}

@end