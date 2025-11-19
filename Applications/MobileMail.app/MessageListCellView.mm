@interface MessageListCellView
+ (OS_os_log)log;
- (BOOL)_hasPastReminderForReadLaterDate:(id)a3 displayDate:(id)a4;
- (BOOL)_isLabelValid:(id)a3;
- (BOOL)shouldShowBlockedSenderLabel;
- (BOOL)shouldShowCategorizationInformation;
- (BOOL)verifyContentVisibility:(id *)a3;
- (CGPoint)_dateOriginAlignedWithAddressBaselineForBounds:(CGRect)a3;
- (CGPoint)_dateOriginUnderSummary:(CGRect)a3;
- (CGPoint)_originForChevronBoxWithBounds:(CGRect)a3 addressRect:(CGRect)a4 sizeForChevron:(CGSize)a5;
- (CGRect)_adjustRect:(CGRect)a3 forTrailingRect:(CGRect)a4 padding:(double)a5;
- (CGRect)_rectForAddressWithBounds:(CGRect)a3;
- (CGRect)_rectForAvatarWithBounds:(CGRect)a3;
- (CGRect)_rectForBlockedSenderLabelWithBounds:(CGRect)a3;
- (CGRect)_rectForCategoriesStackViewWithBounds:(CGRect)a3;
- (CGRect)_rectForChevronBoxWithBounds:(CGRect)a3 addressRect:(CGRect)a4 type:(int64_t)a5;
- (CGRect)_rectForChevronWithBounds:(CGRect)a3 addressRect:(CGRect)a4;
- (CGRect)_rectForDateWithBounds:(CGRect)a3 chevronRect:(CGRect)a4;
- (CGRect)_rectForDisclosureButtonWithFrame:(CGRect)a3 boxFrame:(CGRect)a4;
- (CGRect)_rectForMultipleSubjectWithBounds:(CGRect)a3 position:(int64_t)a4;
- (CGRect)_rectForRecipientLabelWithBounds:(CGRect)a3;
- (CGRect)_rectForStatusIndicatorViewsWithPrimaryStatusIndicatorImage:(id)a3;
- (CGRect)_rectForSubjectWithBounds:(CGRect)a3;
- (CGRect)_rectForSummaryWithBounds:(CGRect)a3;
- (CGSize)_sizeForChevron;
- (CGSize)_sizeForChevronWithType:(int64_t)a3;
- (LayoutStatusIndicatorInfo)_layoutStatusIndicatorViews;
- (LayoutStatusIndicatorInfo)_layoutStatusIndicatorViewsWithChevronRect:(SEL)a3;
- (MUIAvatarViewController)avatarController;
- (MessageListCellLayoutValues)layoutValues;
- (MessageListCellView)initWithFrame:(CGRect)a3;
- (MessageListStatusIndicatorManager)statusIndicatorManager;
- (UIButton)disclosureButton;
- (UIImageView)avatarImageView;
- (UIImageView)blockedSenderLabelImageView;
- (UIImageView)chevron;
- (UIImageView)recipientLabelImageView;
- (UILabel)categorizationStateLabel;
- (UILabel)dateLabel;
- (UILabel)primaryLabel;
- (UILabel)secondaryLabel;
- (UILabel)tertiaryLabel;
- (UIStackView)categoriesStackView;
- (UIView)avatarView;
- (id)_addressAttributesWithColor:(id)a3;
- (id)_baselineLabelForIndicator;
- (id)_bodyAttributesWithColor:(id)a3;
- (id)_dateForViewModel:(id)a3;
- (id)_defaultAttributesWithFont:(id)a3 color:(id)a4;
- (id)_formatTertiaryString:(id)a3;
- (id)_highlightedPrimaryString:(id)a3;
- (id)_highlightedSender:(id)a3;
- (id)_highlightedSubject:(id)a3;
- (id)_highlightedSummarySnippet:(id)a3;
- (id)_labelForVerticalPosition:(unint64_t)a3 font:(id *)a4;
- (id)_primaryLabelString;
- (id)_secondaryStringAttributesWithColor:(id)a3;
- (id)_statusIndicatorVeritcalPositionForLabel:(id)a3 font:(id)a4 shouldAlignWithCenter:(BOOL)a5;
- (id)_statusIndicatorVerticalPositionAvatarForItem:(unint64_t)a3 verticalIndicatorCount:(int64_t)a4;
- (void)_animateIndicator:(unint64_t)a3 toState:(BOOL)a4;
- (void)_dynamicTypeDidChange:(id)a3;
- (void)_invalidateCachedValues;
- (void)_layoutChevronForDisclosureStateAnimated:(BOOL)a3;
- (void)_layoutDisclosureButton;
- (void)_layoutValuesDidChange:(id)a3;
- (void)_recalculateAttributedStrings;
- (void)_recalculatePrimaryAttributedStringShouldRehighlight:(BOOL)a3;
- (void)_recalculateSecondaryAttributedStringShouldRehighlight:(BOOL)a3;
- (void)_recalculateTertiaryAttributedStringShouldRehighlight:(BOOL)a3;
- (void)_resetAttributedStrings;
- (void)_resetDateLabel;
- (void)_setupAvatarImageView;
- (void)_setupDisclosureButtonImageIfNecessary;
- (void)_updateAvatarView;
- (void)_updateAvatarViewWithView:(id)a3;
- (void)_updateDateLabelWithDateStyle:(int64_t)a3;
- (void)applyIndicatorPreviewChangeAction:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAnnotatedRelationshipType:(int64_t)a3;
- (void)setBackgroundConfiguration:(id)a3;
- (void)setChevronType:(int64_t)a3;
- (void)setCompact:(BOOL)a3;
- (void)setConfigurationState:(id)a3;
- (void)setContentConfiguration:(id)a3;
- (void)setDisclosureEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setDisplayUnreadDot:(BOOL)a3;
- (void)setDisplayVIP:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)setHasGeneratedSummary:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setRecipientLabelType:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShouldAnnotateReplyOrForward:(BOOL)a3;
- (void)setSummary:(id)a3;
- (void)setViewModel:(id)a3;
@end

@implementation MessageListCellView

- (UIButton)disclosureButton
{
  disclosureButton = self->_disclosureButton;
  if (!disclosureButton)
  {
    v4 = [UIButton buttonWithType:0];
    v5 = self->_disclosureButton;
    self->_disclosureButton = v4;

    v6 = +[UIColor clearColor];
    [(UIButton *)self->_disclosureButton setBackgroundColor:v6];

    [(UIButton *)self->_disclosureButton setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageCellViewDisclosureButton];
    disclosureButton = self->_disclosureButton;
  }

  return disclosureButton;
}

- (void)layoutSubviews
{
  v190.receiver = self;
  v190.super_class = MessageListCellView;
  [(MessageListCellView *)&v190 layoutSubviews];
  [(MessageListCellView *)self _layoutDisclosureButton];
  if ([(MessageListCellView *)self isEditing])
  {
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v3 = [(MessageListCellView *)self statusIndicatorManager];
    v4 = [v3 statusIndicatorViews];

    v5 = [v4 countByEnumeratingWithState:&v186 objects:v191 count:16];
    if (v5)
    {
      v6 = *v187;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v187 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [(MessageListCellView *)self addSubview:*(*(&v186 + 1) + 8 * i)];
        }

        v5 = [v4 countByEnumeratingWithState:&v186 objects:v191 count:16];
      }

      while (v5);
    }
  }

  [(MessageListCellView *)self _recalculateAttributedStrings];
  v8 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

  v9 = [(MessageListCellView *)self viewModel];
  v174 = [(MessageListCellView *)self _dateForViewModel:v9];
  if ([(MessageListCellView *)self isSelected])
  {
    v10 = 1;
  }

  else
  {
    v10 = [(MessageListCellView *)self isHighlighted];
  }

  v178 = [(MessageListCellView *)self dateLabel];
  v11 = [(MessageListCellView *)self dateStyle];
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      if (v10)
      {
LABEL_23:
        sub_10014A83C();
        v14 = LABEL_25:;
        [v178 _setTextEncapsulation:v14];

        v12 = _EFLocalizedString();
        [v178 setText:v12];
        goto LABEL_26;
      }
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_27;
      }

      if (v10)
      {
        goto LABEL_23;
      }
    }

    sub_100023C80();
    goto LABEL_25;
  }

  if (!v11)
  {
    [v174 timeIntervalSince1970];
    [v178 setTimeInterval:v13 + -978307200.0];
    goto LABEL_27;
  }

  if (v11 != 1)
  {
    goto LABEL_27;
  }

  v12 = [NSDateFormatter ef_formatDate:v174 style:2];
  [v178 setText:v12];
LABEL_26:

LABEL_27:
  v15 = [(MessageListCellView *)self dateStyle]& 0xFFFFFFFFFFFFFFFELL;
  if (v174)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15 == 2;
  }

  v17 = v16;
  v18 = v17 & IsAccessibilityCategory;
  v19 = 0.0;
  if (v16)
  {
    v19 = 1.0;
  }

  if (v18 == 1)
  {
    v20 = [v9 style];
    v19 = 0.0;
    if (v20 != 2)
    {
      v19 = 1.0;
    }
  }

  [v178 mf_setAlpha:v19];
  v21 = [(MessageListCellView *)self layoutValues];
  v22 = [(MessageListCellView *)self configurationState];
  v23 = [(MessageListCellView *)self contentConfiguration];
  v24 = [(MessageListCellView *)self backgroundConfiguration];
  v25 = [v21 dateColorForConfigurationState:v22 contentConfiguration:v23 backgroundConfiguration:v24];
  [v178 setTextColor:v25];

  v26 = [v9 hintsBySnippetZone];
  v27 = [v26 objectForKeyedSubscript:EMMessageSnippetHintZoneAuthor];
  if ([v27 count])
  {
  }

  else
  {
    v28 = [v9 hintsBySnippetZone];
    v29 = [v28 objectForKeyedSubscript:EMMessageSnippetHintZoneAuthorEmailAddresses];
    v30 = [v29 count] == 0;

    if (v30)
    {
      goto LABEL_42;
    }
  }

  [(MessageListCellView *)self _recalculatePrimaryAttributedStringShouldRehighlight:1];
LABEL_42:
  v31 = [(MessageListCellView *)self attributedPrimaryString];
  v32 = [(MessageListCellView *)self primaryLabel];
  [v32 setAttributedText:v31];

  v176 = [(MessageListCellView *)self blockedSenderLabelImageView];
  if ([(MessageListCellView *)self shouldShowBlockedSenderLabel])
  {
    [v176 mf_setAlpha:1.0];
    v33 = [UIImage mf_systemImageNamed:MFImageGlyphStatusIndicatorBlockSender forView:9];
    [v176 setImage:v33];

    v34 = +[UIColor systemRedColor];
    [v176 setTintColor:v34];
  }

  else
  {
    [v176 mf_setAlpha:0.0];
  }

  v175 = [(MessageListCellView *)self secondaryLabel];
  v35 = [(MessageListCellView *)self layoutValues];
  v36 = [v35 isSubjectVisible];
  v37 = [(MessageListCellView *)self attributedSecondaryString];
  v38 = [(MessageListCellView *)self accessibilitySecondaryLabel];
  sub_10014CEB0(self, v175, v36, v37, v38);

  v177 = [(MessageListCellView *)self recipientLabelImageView];
  if ([(MessageListCellView *)self recipientLabelType])
  {
    [v177 mf_setAlpha:1.0];
    recipientLabelType = self->_recipientLabelType;
    v40 = [(MessageListCellView *)self traitCollection];
    v41 = sub_10014CFBC(recipientLabelType, [v40 userInterfaceStyle]);
    v42 = [v41 imageWithRenderingMode:2];
    [v177 setImage:v42];

    v43 = [(MessageListCellView *)self layoutValues];
    v44 = [(MessageListCellView *)self configurationState];
    v45 = [(MessageListCellView *)self contentConfiguration];
    v46 = [(MessageListCellView *)self backgroundConfiguration];
    v47 = [v43 recipientColorForConfigurationState:v44 contentConfiguration:v45 backgroundConfiguration:v46];
    [v177 setTintColor:v47];
  }

  else
  {
    [v177 mf_setAlpha:0.0];
  }

  if ([(MessageListCellView *)self chevronType]== 1)
  {
    v48 = [(MessageListCellView *)self chevron];
    [v48 mf_setAlpha:1.0];
    v49 = [UIImage mf_imageForChevronType:1];
    [v48 setImage:v49];

    v50 = [UIImage mf_symbolConfigurationForView:10];
    [v48 setPreferredSymbolConfiguration:v50];

    v51 = +[UIColor tertiaryLabelColor];
    [v48 setTintColor:v51];
  }

  else
  {
    [(UIImageView *)self->_chevron mf_setAlpha:0.0];
  }

  v172 = [(MessageListCellView *)self layoutValues];
  [v172 padding];
  if (MUISolariumFeatureEnabled())
  {
    [v172 indicatorMaxWidth];
    v54 = v53;
    [v172 horizontalSpacing];
    v52 = v54 + v55;
  }

  [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  MFEdgeInsetsFromDirectionalEdgeInsets();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  [(MessageListCellView *)self bounds];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v184[0] = _NSConcreteStackBlock;
  v184[1] = 3221225472;
  v184[2] = sub_100023AD0;
  v184[3] = &unk_100651740;
  v185 = v10;
  v72 = objc_retainBlock(v184);
  if (MUISolariumFeatureEnabled())
  {
    [(MessageListCellView *)self avatarView];
  }

  else
  {
    [(MessageListCellView *)self avatarImageView];
  }
  v173 = ;

  v73 = [UIApp preferredContentSizeCategory];
  v74 = UIContentSizeCategoryIsAccessibilityCategory(v73);

  v181 = v69 - (v59 + v63);
  v182 = v59 + v65;
  v179 = v71 - (v57 + v61);
  v180 = v57 + v67;
  if (v74 || [(MessageListCellView *)self hideMessageListAvatar]|| !EMBlackPearlIsFeatureEnabled())
  {
    if (v173)
    {
      [v173 removeFromSuperview];
      [(MessageListCellView *)self setAvatarView:0];
      [(MessageListCellView *)self setAvatarImageView:0];
      [(MessageListCellView *)self setAvatarController:0];
    }
  }

  else
  {
    [(MessageListCellView *)self _rectForAvatarWithBounds:v182, v180, v181, v179];
    [v173 setFrame:?];
    v75 = [(MessageListCellView *)self viewModel];
    if ([v75 style] == 2)
    {
      v76 = [(MessageListCellView *)self layoutValues];
      [v76 standardAvatarSize];
      v78 = v77;
    }

    else
    {
      [v173 frame];
      v78 = v152;
    }

    if (v78 > 0.0)
    {
      if ([(MessageListCellView *)self effectiveUserInterfaceLayoutDirection]== 1)
      {
        if (MUISolariumFeatureEnabled())
        {
          [v172 avatarTrailingSpacing];
          v154 = v78 + v153;
        }

        else
        {
          v157 = [(MessageListCellView *)self layoutValues];
          [v157 horizontalSpacing];
          v159 = v158;

          v154 = v78 + v159;
        }

        v63 = v63 + v154;
      }

      else
      {
        if (MUISolariumFeatureEnabled())
        {
          [v172 avatarTrailingSpacing];
          v156 = v78 + v155;
        }

        else
        {
          v160 = [(MessageListCellView *)self layoutValues];
          [v160 horizontalSpacing];
          v162 = v161;

          v156 = v78 + v162;
        }

        v59 = v59 + v156;
      }

      v181 = v69 - (v59 + v63);
      v182 = v65 + v59;
    }

    [(MessageListCellView *)self _updateAvatarView];
  }

  v79 = [v9 hintsBySnippetZone];
  v80 = [v79 objectForKeyedSubscript:EMMessageSnippetHintZoneTextContent];
  if ([v80 count])
  {

LABEL_65:
    [(MessageListCellView *)self _recalculateTertiaryAttributedStringShouldRehighlight:1];
    goto LABEL_71;
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable())
  {
    v81 = [(MessageListCellView *)self hasGeneratedSummary];

    if (v81)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

LABEL_71:
  v82 = [(MessageListCellView *)self tertiaryLabel];
  v83 = [(MessageListCellView *)self attributedTertiaryString];
  [v82 setAttributedText:v83];

  v84 = [v82 text];
  v85 = [v84 _isNaturallyRTL];

  if (v85)
  {
    v86 = 2;
  }

  else
  {
    v86 = 0;
  }

  [v82 setTextAlignment:v86];
  [(MessageListCellView *)self _rectForSummaryWithBounds:v182, v180, v181, v179];
  (v72[2])(v72, v82);
  if (EMBlackPearlIsFeatureEnabled())
  {
    v87 = [(MessageListCellView *)self categorizationStateLabel];
    v88 = [v9 categorizationState];
    [v87 setText:v88];

    if (v10)
    {
      sub_10014A83C();
    }

    else
    {
      sub_100023C80();
    }
    v89 = ;
    [v87 _setTextEncapsulation:v89];
  }

  v90 = [(MessageListCellView *)self primaryLabel];
  [(MessageListCellView *)self _rectForAddressWithBounds:v182, v180, v181, v179];
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  (v72[2])(v72, v90);
  v163 = v92;
  v164 = v94;
  v165 = v96;
  v166 = v98;
  [(MessageListCellView *)self _rectForChevronWithBounds:v182 addressRect:v180, v181, v179, v92, v94, v96, v98];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  if (self->_chevronType == 2)
  {
    [(MessageListCellView *)self _setupDisclosureButtonImageIfNecessary];
    v107 = [(MessageListCellView *)self disclosureButton];
    [(MessageListCellView *)self addSubview:v107];

    v108 = [(MessageListCellView *)self disclosureButton];
    [v108 setFrame:{v100, v102, v104, v106}];

    [(MessageListCellView *)self _layoutChevronForDisclosureStateAnimated:0];
  }

  else
  {
    v109 = [(MessageListCellView *)self disclosureButton];
    [v109 removeFromSuperview];
  }

  (v72[2])(v72, self->_chevron, v100, v102, v104, v106);
  [(MessageListCellView *)self _rectForDateWithBounds:v182 chevronRect:v180, v181, v179, v100, v102, v104, v106];
  v170 = v111.n128_f64[0];
  v171 = v110.n128_f64[0];
  v168 = v113.n128_f64[0];
  v169 = v112.n128_f64[0];
  (v72[2])(v72, v178, v110, v111, v112, v113);
  [(MessageListCellView *)self _rectForSubjectWithBounds:v182, v180, v181, v179];
  (v72[2])(v72, v175);
  [(MessageListCellView *)self _rectForRecipientLabelWithBounds:v182, v180, v181, v179];
  (v72[2])(v72, v177);
  if (EMBlackPearlIsFeatureEnabled() && [(MessageListCellView *)self shouldShowCategorizationInformation])
  {
    [(MessageListCellView *)self _rectForCategoriesStackViewWithBounds:v182, v180, v181, v179];
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v122 = [(MessageListCellView *)self categoriesStackView];
    [v122 setFrame:{v115, v117, v119, v121}];
  }

  v123 = [v9 hintsBySnippetZone];
  v124 = [v123 objectForKeyedSubscript:EMMessageSnippetHintZoneSubject];
  v125 = [v124 count];

  if (v125)
  {
    [(MessageListCellView *)self _recalculateSecondaryAttributedStringShouldRehighlight:1];
    v126 = [(MessageListCellView *)self layoutValues];
    v127 = [v126 isSubjectVisible];
    v128 = [(MessageListCellView *)self attributedSecondaryString];
    v129 = [(MessageListCellView *)self accessibilitySecondaryLabel];
    sub_10014CEB0(self, v175, v127, v128, v129);
  }

  v130 = [UIApp preferredContentSizeCategory];
  v131 = UIContentSizeCategoryIsAccessibilityCategory(v130);

  if (v131)
  {
    [(MessageListCellView *)self _adjustRect:v163 forTrailingRect:v164 padding:v165, v166, v100, v102, v104, v106, 0x4024000000000000];
    v133 = v132;
    v135 = v134;
    v137 = v136;
    v139 = v138;
  }

  else
  {
    v140 = [(MessageListCellView *)self layoutValues];
    [v140 horizontalSpacing];
    [(MessageListCellView *)self _adjustRect:v163 forTrailingRect:v164 padding:v165, v166, v171, v170, v169, v168, v141];
    v133 = v142;
    v135 = v143;
    v137 = v144;
    v139 = v145;
  }

  (v72[2])(v72, v90, v133, v135, v137, v139);
  [(MessageListCellView *)self _rectForBlockedSenderLabelWithBounds:v182, v180, v181, v179];
  (v72[2])(v72, v176);
  v146.width = NAN;
  v146.height = NAN;
  v183.origin = v146;
  v183.size = v146;
  [(MessageListCellView *)self _layoutStatusIndicatorViews];
  v192.origin.x = CGRectZero.origin.x;
  v192.origin.y = CGRectZero.origin.y;
  v192.size.width = CGRectZero.size.width;
  v192.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(v183, v192))
  {
    goto LABEL_91;
  }

  v148 = [(MessageListCellView *)self secondaryLabel];
  v149 = [(MessageListCellView *)self _isLabelValid:v148];

  if (v149)
  {
    if (IsAccessibilityCategory)
    {
      goto LABEL_91;
    }

    v150 = [(MessageListCellView *)self secondaryLabel];
  }

  else
  {
    if (![(MessageListCellView *)self _isLabelValid:v82])
    {
      goto LABEL_91;
    }

    v150 = v82;
  }

  v151 = v150;
  if (v150)
  {
    [v150 frame];
    [MessageListCellView _adjustRect:"_adjustRect:forTrailingRect:padding:" forTrailingRect:0x4030000000000000 padding:?];
    (v72[2])(v72, v151);
    v147 = v151;
    goto LABEL_92;
  }

LABEL_91:
  v147 = 0;
LABEL_92:
  [(MessageListCellView *)self mf_activateDebugModeIfEnabled];
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022440;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD2C0 != -1)
  {
    dispatch_once(&qword_1006DD2C0, block);
  }

  v2 = qword_1006DD2B8;

  return v2;
}

- (UILabel)tertiaryLabel
{
  v3 = [(MessageListCellView *)self layoutValues];
  v4 = [v3 linesOfSummaryForCompactHeight:self->_compact];

  tertiaryLabel = self->_tertiaryLabel;
  if (tertiaryLabel)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 < 1;
  }

  if (v6)
  {
    if (v4)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [(UILabel *)tertiaryLabel mf_setAlpha:v7];
  }

  else
  {
    v8 = objc_alloc_init(UILabel);
    v9 = self->_tertiaryLabel;
    self->_tertiaryLabel = v8;

    v10 = +[UIColor clearColor];
    [(UILabel *)self->_tertiaryLabel setBackgroundColor:v10];

    [(UILabel *)self->_tertiaryLabel setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageCellViewSummaryLabel];
    [(UILabel *)self->_tertiaryLabel setNumberOfLines:0];
    [(UILabel *)self->_tertiaryLabel setAdjustsFontForContentSizeCategory:1];
    v11 = [(MessageListCellView *)self layoutValues];
    v12 = [v11 summaryFont];
    [(UILabel *)self->_tertiaryLabel setFont:v12];

    [(MessageListCellView *)self addSubview:self->_tertiaryLabel];
  }

  v13 = self->_tertiaryLabel;

  return v13;
}

- (MessageListCellLayoutValues)layoutValues
{
  v3 = [(MessageListCellView *)self layoutValuesHelper];
  v4 = [(MessageListCellView *)self viewModel];
  v5 = [v3 layoutValuesForStyle:{objc_msgSend(v4, "style")}];

  return v5;
}

- (void)_resetDateLabel
{
  [(UILabel *)self->_dateLabel removeFromSuperview];
  dateLabel = self->_dateLabel;
  self->_dateLabel = 0;
}

- (UILabel)secondaryLabel
{
  secondaryLabel = self->_secondaryLabel;
  if (!secondaryLabel)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = self->_secondaryLabel;
    self->_secondaryLabel = v4;

    v6 = +[UIColor clearColor];
    [(UILabel *)self->_secondaryLabel setBackgroundColor:v6];

    v7 = [(MessageListCellView *)self layoutValues];
    -[UILabel setNumberOfLines:](self->_secondaryLabel, "setNumberOfLines:", [v7 subjectNumberOfLines]);

    [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageCellViewSubjectLabel];
    [(MessageListCellView *)self addSubview:self->_secondaryLabel];
    secondaryLabel = self->_secondaryLabel;
  }

  return secondaryLabel;
}

- (UIView)avatarView
{
  avatarView = self->_avatarView;
  if (!avatarView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->_avatarView;
    self->_avatarView = v4;

    [(MessageListCellView *)self addSubview:self->_avatarView];
    avatarView = self->_avatarView;
  }

  return avatarView;
}

- (UIImageView)chevron
{
  chevron = self->_chevron;
  if (!chevron)
  {
    if (self->_chevronType)
    {
      v4 = objc_alloc_init(UIImageView);
      v5 = self->_chevron;
      self->_chevron = v4;

      [(MessageListCellView *)self addSubview:self->_chevron];
      chevron = self->_chevron;
    }

    else
    {
      chevron = 0;
    }
  }

  return chevron;
}

- (MUIAvatarViewController)avatarController
{
  avatarController = self->_avatarController;
  if (!avatarController)
  {
    v4 = [[MUIAvatarViewController alloc] initWithContacts:&__NSArray0__struct];
    v5 = self->_avatarController;
    self->_avatarController = v4;

    avatarController = self->_avatarController;
  }

  return avatarController;
}

- (id)_primaryLabelString
{
  v3 = [(MessageListCellView *)self isSenderSpecificCell];
  v4 = [(MessageListCellView *)self viewModel];
  v5 = v4;
  if (v3)
  {
    [v4 subject];
  }

  else
  {
    [v4 address];
  }
  v6 = ;

  return v6;
}

- (UILabel)primaryLabel
{
  primaryLabel = self->_primaryLabel;
  if (!primaryLabel)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = self->_primaryLabel;
    self->_primaryLabel = v4;

    v6 = +[UIColor clearColor];
    [(UILabel *)self->_primaryLabel setBackgroundColor:v6];

    [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageCellViewAddressLabel];
    [(MessageListCellView *)self addSubview:self->_primaryLabel];
    primaryLabel = self->_primaryLabel;
  }

  return primaryLabel;
}

- (MessageListStatusIndicatorManager)statusIndicatorManager
{
  statusIndicatorManager = self->_statusIndicatorManager;
  if (!statusIndicatorManager)
  {
    v4 = objc_alloc_init(MessageListStatusIndicatorManager);
    v5 = self->_statusIndicatorManager;
    self->_statusIndicatorManager = v4;

    statusIndicatorManager = self->_statusIndicatorManager;
  }

  return statusIndicatorManager;
}

- (void)_recalculateAttributedStrings
{
  [(MessageListCellView *)self _recalculatePrimaryAttributedString];
  [(MessageListCellView *)self _recalculateSecondaryAttributedString];

  [(MessageListCellView *)self _recalculateTertiaryAttributedString];
}

- (UIImageView)recipientLabelImageView
{
  recipientLabelImageView = self->_recipientLabelImageView;
  if (!recipientLabelImageView)
  {
    if (self->_recipientLabelType)
    {
      v4 = objc_alloc_init(UIImageView);
      v5 = self->_recipientLabelImageView;
      self->_recipientLabelImageView = v4;

      [(UIImageView *)self->_recipientLabelImageView setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageCellViewRecipientImageView];
      [(MessageListCellView *)self addSubview:self->_recipientLabelImageView];
      recipientLabelImageView = self->_recipientLabelImageView;
    }

    else
    {
      recipientLabelImageView = 0;
    }
  }

  return recipientLabelImageView;
}

- (UIImageView)blockedSenderLabelImageView
{
  if (!self->_blockedSenderLabelImageView && [(MessageListCellView *)self shouldShowBlockedSenderLabel])
  {
    v3 = objc_alloc_init(UIImageView);
    blockedSenderLabelImageView = self->_blockedSenderLabelImageView;
    self->_blockedSenderLabelImageView = v3;

    [(UIImageView *)self->_blockedSenderLabelImageView setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageCellViewBlockedSender];
    [(MessageListCellView *)self addSubview:self->_blockedSenderLabelImageView];
  }

  v5 = self->_blockedSenderLabelImageView;

  return v5;
}

- (BOOL)shouldShowBlockedSenderLabel
{
  v2 = [(MessageListCellView *)self viewModel];
  v3 = [v2 isBlockedSender];

  return v3;
}

- (void)_resetAttributedStrings
{
  attributedPrimaryString = self->_attributedPrimaryString;
  self->_attributedPrimaryString = 0;

  attributedSecondaryString = self->_attributedSecondaryString;
  self->_attributedSecondaryString = 0;

  accessibilitySecondaryLabel = self->_accessibilitySecondaryLabel;
  self->_accessibilitySecondaryLabel = 0;

  attributedTertiaryString = self->_attributedTertiaryString;
  self->_attributedTertiaryString = 0;
}

- (UILabel)dateLabel
{
  dateLabel = self->_dateLabel;
  if (!dateLabel)
  {
    [(MessageListCellView *)self _updateDateLabelWithDateStyle:[(MessageListCellView *)self dateStyle]];
    dateLabel = self->_dateLabel;
  }

  return dateLabel;
}

- (void)_layoutDisclosureButton
{
  disclosureButton = self->_disclosureButton;
  v3 = [UIImage mf_symbolConfigurationForView:11];
  [UIButton setPreferredSymbolConfiguration:"setPreferredSymbolConfiguration:forImageInState:" forImageInState:?];
}

- (void)_updateAvatarView
{
  if (MUISolariumFeatureEnabled())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [(MessageListCellView *)self avatarView];
    v4 = [v3 subviews];

    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = [(MessageListCellView *)self avatarView];
          [v9 bounds];
          [v8 setFrame:?];
        }

        v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v10 = [(MessageListCellView *)self avatarResult];
    v11 = [(MessageListCellView *)self avatarView];
    v12 = [v11 traitCollection];
    v13 = [v10 needsBorderFor:{objc_msgSend(v12, "userInterfaceStyle")}];

    v15 = [(MessageListCellView *)self avatarImageView];
    v14 = [(MessageListCellView *)self layoutValues];
    [v14 avatarSize];
    [MUIAvatarImageGenerator roundAvatarView:v15 withBorder:v13 size:?];
  }
}

- (UILabel)categorizationStateLabel
{
  categorizationStateLabel = self->_categorizationStateLabel;
  if (!categorizationStateLabel)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = self->_categorizationStateLabel;
    self->_categorizationStateLabel = v4;

    v6 = [(MessageListCellView *)self categoriesStackView];
    [v6 insertArrangedSubview:self->_categorizationStateLabel atIndex:0];

    categorizationStateLabel = self->_categorizationStateLabel;
  }

  return categorizationStateLabel;
}

- (UIStackView)categoriesStackView
{
  categoriesStackView = self->_categoriesStackView;
  if (!categoriesStackView)
  {
    v4 = +[UIStackView mf_baselineAlignedHorizontalStackView];
    v5 = self->_categoriesStackView;
    self->_categoriesStackView = v4;

    [(UIStackView *)self->_categoriesStackView setSpacing:2.5];
    [(UIStackView *)self->_categoriesStackView setTranslatesAutoresizingMaskIntoConstraints:1];
    [(MessageListCellView *)self addSubview:self->_categoriesStackView];
    categoriesStackView = self->_categoriesStackView;
  }

  return categoriesStackView;
}

- (CGSize)_sizeForChevron
{
  [(MessageListCellView *)self _sizeForChevronWithType:self->_chevronType];
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)shouldShowCategorizationInformation
{
  v2 = [(MessageListCellView *)self viewModel];
  v3 = [v2 categorizationState];
  v4 = [v3 length] != 0;

  return v4;
}

- (LayoutStatusIndicatorInfo)_layoutStatusIndicatorViews
{
  v4 = [(MessageListCellView *)self layoutValues];
  [v4 padding];

  [(MessageListCellView *)self chevronType];
  [(MessageListCellView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  MFEdgeInsetsFromDirectionalEdgeInsets();
  v14 = v6 + v13;
  v16 = v8 + v15;
  v18 = v10 - (v13 + v17);
  v20 = v12 - (v15 + v19);
  [(UILabel *)self->_primaryLabel frame];
  [(MessageListCellView *)self _rectForChevronBoxWithBounds:2 addressRect:v14 type:v16, v18, v20, v21, v22, v23, v24];

  return [(MessageListCellView *)self _layoutStatusIndicatorViewsWithChevronRect:?];
}

- (void)_setupDisclosureButtonImageIfNecessary
{
  v7 = [(MessageListCellView *)self disclosureButton];
  v3 = [v7 imageView];
  v4 = [v3 image];

  if (!v4)
  {
    [(MessageListCellView *)self _layoutDisclosureButton];
    v8 = [(MessageListCellView *)self disclosureButton];
    v5 = [UIImage systemImageNamed:MFImageGlyphMessageListChevronThread];
    [v8 setImage:v5 forState:0];

    v9 = [(MessageListCellView *)self disclosureButton];
    v6 = [v9 imageView];
    [v6 setContentMode:1];
  }
}

- (MessageListCellView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = MessageListCellView;
  v3 = [(MessageListCellView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MessageListCellView *)v3 setClipsToBounds:1];
    [(MessageListCellView *)v4 setAutoresizesSubviews:1];
    [(MessageListCellView *)v4 setAutoresizingMask:18];
    v5 = +[UIColor clearColor];
    [(MessageListCellView *)v4 setBackgroundColor:v5];

    [(MessageListCellView *)v4 setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageCellView];
    v6 = +[NSUserDefaults em_userDefaults];
    v7 = EMUserDefaultHideMessageListAvatar;
    -[MessageListCellView setHideMessageListAvatar:](v4, "setHideMessageListAvatar:", [v6 BOOLForKey:EMUserDefaultHideMessageListAvatar]);
    objc_initWeak(&location, v4);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10014ABC4;
    v14[3] = &unk_10064CB70;
    objc_copyWeak(&v16, &location);
    v8 = v6;
    v15 = v8;
    v9 = [v8 ef_observeKeyPath:v7 options:1 autoCancelToken:1 usingBlock:v14];
    [(MessageListCellView *)v4 setMessageListAvatarUserDefaultObserver:v9];

    v10 = +[UIApplication sharedApplication];
    v11 = [v10 avatarGenerator];
    [(MessageListCellView *)v4 setAvatarGenerator:v11];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v4 selector:"_layoutValuesDidChange:" name:kMessageListCellLayoutValuesDidChangeNotification object:0];
    [v12 addObserver:v4 selector:"_dynamicTypeDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(MessageListCellView *)self messageListAvatarUserDefaultObserver];
  [v4 cancel];

  v5.receiver = self;
  v5.super_class = MessageListCellView;
  [(MessageListCellView *)&v5 dealloc];
}

- (void)_layoutValuesDidChange:(id)a3
{
  v4 = [a3 object];
  v5 = [(MessageListCellView *)self layoutValues];

  if (v4 == v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014ADF4;
    v7[3] = &unk_10064C7E8;
    v7[4] = self;
    v6 = +[EFScheduler mainThreadScheduler];
    [v6 performBlock:v7];
  }
}

- (void)_dynamicTypeDidChange:(id)a3
{
  [(MessageListCellView *)self _resetDateLabel];
  [objc_opt_class() clearCache];

  [(MessageListCellView *)self setNeedsLayout];
}

- (void)setRecipientLabelType:(int64_t)a3
{
  if (self->_recipientLabelType != a3)
  {
    self->_recipientLabelType = a3;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)_invalidateCachedValues
{
  attributedPrimaryString = self->_attributedPrimaryString;
  self->_attributedPrimaryString = 0;

  attributedSecondaryString = self->_attributedSecondaryString;
  self->_attributedSecondaryString = 0;

  accessibilitySecondaryLabel = self->_accessibilitySecondaryLabel;
  self->_accessibilitySecondaryLabel = 0;

  attributedTertiaryString = self->_attributedTertiaryString;
  self->_attributedTertiaryString = 0;

  self->_annotatedRelationshipType = 0;
}

- (void)_updateDateLabelWithDateStyle:(int64_t)a3
{
  v4 = objc_opt_class();
  if (([(UILabel *)self->_dateLabel isMemberOfClass:v4]& 1) == 0)
  {
    [(MessageListCellView *)self _resetDateLabel];
    v5 = objc_alloc_init(v4);
    dateLabel = self->_dateLabel;
    self->_dateLabel = v5;

    v7 = +[UIColor clearColor];
    [(UILabel *)self->_dateLabel setBackgroundColor:v7];

    [(UILabel *)self->_dateLabel setTextAlignment:2];
    v8 = [(MessageListCellView *)self layoutValues];
    v9 = [v8 dateFont];
    [(UILabel *)self->_dateLabel setFont:v9];

    [(UILabel *)self->_dateLabel setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageCellViewDateLabel];
    v10 = self->_dateLabel;

    [(MessageListCellView *)self addSubview:v10];
  }
}

- (UIImageView)avatarImageView
{
  avatarImageView = self->_avatarImageView;
  if (!avatarImageView)
  {
    [(MessageListCellView *)self _setupAvatarImageView];
    avatarImageView = self->_avatarImageView;
  }

  return avatarImageView;
}

- (void)_setupAvatarImageView
{
  v3 = objc_alloc_init(UIImageView);
  avatarImageView = self->_avatarImageView;
  self->_avatarImageView = v3;
  v5 = v3;

  [(MessageListCellView *)self addSubview:self->_avatarImageView];
}

- (void)setChevronType:(int64_t)a3
{
  if (self->_chevronType != a3)
  {
    self->_chevronType = a3;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setViewModel:(id)a3
{
  v6 = a3;
  if (self->_viewModel != v6)
  {
    objc_storeStrong(&self->_viewModel, a3);
    attributedPrimaryString = self->_attributedPrimaryString;
    self->_attributedPrimaryString = 0;

    attributedSecondaryString = self->_attributedSecondaryString;
    self->_attributedSecondaryString = 0;

    accessibilitySecondaryLabel = self->_accessibilitySecondaryLabel;
    self->_accessibilitySecondaryLabel = 0;

    attributedTertiaryString = self->_attributedTertiaryString;
    self->_attributedTertiaryString = 0;

    v11 = [(MessageListCellViewModel *)v6 readLaterDate];
    [(MessageListCellView *)self setRead:[(MessageListCellViewModel *)v6 isRead]];
    [(MessageListCellView *)self setFlagged:[(MessageListCellViewModel *)v6 isFlagged]];
    v12 = [(MessageListCellViewModel *)v6 flagColors];
    [(MessageListCellView *)self setFlagColors:v12];

    [(MessageListCellView *)self setNotify:[(MessageListCellViewModel *)v6 isNotify]];
    [(MessageListCellView *)self setMute:[(MessageListCellViewModel *)v6 isMute]];
    [(MessageListCellView *)self setReadLaterDate:v11];
    [(MessageListCellView *)self setIsReadLater:v11 != 0];
    v13 = +[MessageListCellView log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MessageListCellViewModel *)v6 itemID];
      *buf = 134218498;
      v45 = self;
      v46 = 2114;
      v47 = v14;
      v48 = 1024;
      LODWORD(v49) = [(MessageListCellViewModel *)v6 isRead];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%p: Updating view model for cell with ID %{public}@, read status: %{BOOL}d", buf, 0x1Cu);
    }

    v15 = [(MessageListCellViewModel *)v6 recipientType];
    v16 = 3;
    if (v15 != 2)
    {
      v16 = 0;
    }

    if (v15 == 1)
    {
      v17 = 2;
    }

    else
    {
      v17 = v16;
    }

    [(MessageListCellView *)self setRecipientLabelType:v17];
    v18 = [(MessageListCellViewModel *)v6 sendLaterDate];

    if (v18)
    {
      v19 = 1;
    }

    else if (v11)
    {
      v20 = [(MessageListCellView *)self readLaterDate];
      v21 = [(MessageListCellViewModel *)v6 displayDate];
      v22 = [(MessageListCellView *)self _hasPastReminderForReadLaterDate:v20 displayDate:v21];

      if (v22)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v23 = [(MessageListCellViewModel *)v6 followUp];
      if ([v23 isActive])
      {
        v24 = [(MessageListCellViewModel *)v6 hideFollowUp];

        if (v24)
        {
          v19 = 0;
        }

        else
        {
          v19 = 3;
        }
      }

      else
      {

        v19 = 0;
      }
    }

    [(MessageListCellView *)self setDateStyle:v19];
    [(MessageListCellView *)self _updateDateLabelWithDateStyle:v19];
    [(MessageListCellView *)self setNeedsLayout];
    if (![(MessageListCellView *)self hideMessageListAvatar])
    {
      v25 = [(MessageListCellViewModel *)v6 addressList];
      v26 = [v25 firstObject];

      objc_initWeak(&location, self);
      v27 = [(MessageListCellViewModel *)v6 avatarContext];
      if (MUISolariumFeatureEnabled())
      {
        v28 = +[MessageListCellView log];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = NSStringFromSelector(a2);
          *buf = 134218498;
          v45 = self;
          v46 = 2114;
          v47 = v29;
          v48 = 2048;
          v49 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - generating avatar for context %p", buf, 0x20u);
        }

        v30 = [(MessageListCellView *)self avatarGenerator];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_10014B7B4;
        v39[3] = &unk_1006516F8;
        v31 = v42;
        objc_copyWeak(v42, &location);
        v40 = v26;
        v42[1] = a2;
        v41 = v27;
        v32 = [v30 contactForContext:v41 handler:v39];
        [(MessageListCellView *)self setAvatarToken:v32];

        v33 = &v40;
        v34 = v41;
      }

      else
      {
        v34 = [(MessageListCellView *)self avatarGenerator];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10014BBB8;
        v36[3] = &unk_100651720;
        v31 = &v38;
        objc_copyWeak(&v38, &location);
        v37 = v26;
        v35 = [v34 contactForContext:v27 handler:v36];
        [(MessageListCellView *)self setAvatarToken:v35];

        v33 = &v37;
      }

      objc_destroyWeak(v31);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_updateAvatarViewWithView:(id)a3
{
  v7 = a3;
  v4 = [(MessageListCellView *)self avatarView];
  if (MUISolariumFeatureEnabled())
  {
    v5 = [v7 superview];

    if (v5 != v4)
    {
      v6 = [v4 subviews];
      [v6 makeObjectsPerformSelector:"removeFromSuperview"];

      [v4 addSubview:v7];
      [v4 bounds];
      [v7 setFrame:?];
    }
  }
}

- (void)setSummary:(id)a3
{
  v7 = a3;
  if (self->_summary != v7)
  {
    v4 = [(NSString *)v7 copy];
    summary = self->_summary;
    self->_summary = v4;

    attributedTertiaryString = self->_attributedTertiaryString;
    self->_attributedTertiaryString = 0;

    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setAnnotatedRelationshipType:(int64_t)a3
{
  if (self->_annotatedRelationshipType != a3)
  {
    self->_annotatedRelationshipType = a3;
    attributedPrimaryString = self->_attributedPrimaryString;
    self->_attributedPrimaryString = 0;

    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setShouldAnnotateReplyOrForward:(BOOL)a3
{
  if (self->_shouldAnnotateReplyOrForward != a3)
  {
    self->_shouldAnnotateReplyOrForward = a3;
    attributedPrimaryString = self->_attributedPrimaryString;
    self->_attributedPrimaryString = 0;

    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setCompact:(BOOL)a3
{
  if (self->_compact != a3)
  {
    self->_compact = a3;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setHasGeneratedSummary:(BOOL)a3
{
  if (self->_hasGeneratedSummary != a3)
  {
    self->_hasGeneratedSummary = a3;
    tertiaryLabel = self->_tertiaryLabel;
    v4 = &MSAccessibilityIdentifierMailMessageCellViewGeneratedSummaryLabel;
    if (!a3)
    {
      v4 = &MSAccessibilityIdentifierMailMessageCellViewSummaryLabel;
    }

    [(UILabel *)tertiaryLabel setAccessibilityIdentifier:*v4];
  }
}

- (void)setConfigurationState:(id)a3
{
  v5 = a3;
  if (([(UICellConfigurationState *)self->_configurationState isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_configurationState, a3);
    [(MessageListCellView *)self _resetAttributedStrings];
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setContentConfiguration:(id)a3
{
  v5 = a3;
  if (([(UIListContentConfiguration *)self->_contentConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contentConfiguration, a3);
    [(MessageListCellView *)self _resetAttributedStrings];
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setBackgroundConfiguration:(id)a3
{
  v5 = a3;
  if (([(UIBackgroundConfiguration *)self->_backgroundConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_backgroundConfiguration, a3);
    [(MessageListCellView *)self _resetAttributedStrings];
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setDisclosureEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_disclosureEnabled != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_disclosureEnabled = a3;
    v7 = [(MessageListCellView *)self disclosureButton];
    [v7 setSelected:v5];

    [(MessageListCellView *)self setNeedsLayout];

    [(MessageListCellView *)self _layoutChevronForDisclosureStateAnimated:v4];
  }
}

- (void)applyIndicatorPreviewChangeAction:(id)a3
{
  v10 = a3;
  v4 = [v10 action];
  v5 = 0;
  v6 = 0;
  if (v4 <= 5)
  {
    if (v4 == 2)
    {
      -[MessageListCellView setRead:](self, "setRead:", [v10 flagState]);
      v6 = [(MessageListCellView *)self isRead]^ 1;
      v5 = 1;
    }

    else if (v4 == 3)
    {
      -[MessageListCellView setIsReadLater:](self, "setIsReadLater:", [v10 flagState]);
      v7 = [v10 readLaterDate];
      [(MessageListCellView *)self setReadLaterDate:v7];

      v6 = [(MessageListCellView *)self isReadLater];
      [(MessageListCellView *)self setDateStyle:[(MessageListCellView *)self isReadLater]];
      [(MessageListCellView *)self _updateDateLabelWithDateStyle:[(MessageListCellView *)self dateStyle]];
      v5 = 512;
    }
  }

  else
  {
    switch(v4)
    {
      case 6:
        v8 = [v10 flagColors];
        v6 = v8 != 0;

        [(MessageListCellView *)self setFlagged:v6];
        v9 = [v10 flagColors];
        [(MessageListCellView *)self setFlagColors:v9];

        v5 = 4;
        break;
      case 10:
        -[MessageListCellView setNotify:](self, "setNotify:", [v10 flagState]);
        v6 = [(MessageListCellView *)self isNotify]^ 1;
        v5 = 64;
        break;
      case 11:
        -[MessageListCellView setMute:](self, "setMute:", [v10 flagState]);
        v6 = [(MessageListCellView *)self isMute]^ 1;
        v5 = 128;
        break;
    }
  }

  [(MessageListCellView *)self _animateIndicator:v5 toState:v6];
}

- (void)_animateIndicator:(unint64_t)a3 toState:(BOOL)a4
{
  v4 = a4;
  v7 = [(MessageListCellView *)self statusIndicatorManager];
  v8 = [v7 statusIndicatorViews];

  v9 = [(MessageListCellView *)self statusIndicatorManager];
  v10 = [v9 tierForIndicator:a3];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v24 = &v32;
    v25 = v29;
    v12 = MFMailboxUid_ptr;
    while (v11 < [v8 count])
    {
      if (v10 == v11)
      {
        v13 = [v8 objectAtIndex:v10];
        v14 = [v13 superview];

        if (v14 != self)
        {
          [(MessageListCellView *)self addSubview:v13];
        }

        v15 = objc_alloc(v12[402]);
        if (v4)
        {
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_10014CA98;
          v31[3] = &unk_10064C7E8;
          v16 = v13;
          v32 = v16;
          v17 = [v15 initWithDuration:0 curve:v31 animations:0.4];
          v18 = v12;
          v19 = objc_alloc(v12[402]);
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v29[0] = sub_10014CAA4;
          v29[1] = &unk_10064C7E8;
          v30 = v16;
          v20 = [v19 initWithDuration:v28 dampingRatio:0.8 animations:0.7];
          [v17 startAnimation];
          v12 = v18;
          [v20 startAnimation];

          v21 = v24;
        }

        else
        {
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10014CAF8;
          v26[3] = &unk_10064C7E8;
          v27 = v13;
          v17 = [v15 initWithDuration:0 curve:v26 animations:0.8];
          [v17 startAnimation];
          v21 = &v27;
        }
      }

      ++v11;
    }

    [(MessageListCellView *)self _layoutStatusIndicatorViews];
    v22 = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v22);

    if (IsAccessibilityCategory)
    {
      [(MessageListCellView *)self setNeedsLayout];
    }
  }
}

- (void)setDisplayUnreadDot:(BOOL)a3
{
  v3 = a3;
  v4 = [(MessageListCellView *)self statusIndicatorManager];
  [v4 setHidesUnreadIndicator:!v3];
}

- (void)setDisplayVIP:(BOOL)a3
{
  v3 = a3;
  v4 = [(MessageListCellView *)self statusIndicatorManager];
  [v4 setHidesVIPIndicator:!v3];
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (id)_dateForViewModel:(id)a3
{
  v4 = a3;
  v5 = [v4 sendLaterDate];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 date];
    v9 = [v4 displayDate];
    v10 = +[NSDate now];
    v11 = [v10 ef_isEarlierThanDate:v9];

    if (v11)
    {
      v12 = +[MessageListCellView log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v19 = 134218498;
        v20 = self;
        v21 = 2114;
        v22 = v9;
        v23 = 2114;
        v24 = v4;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%p: Display date (%{public}@) should not be earlier than present for view model: %{public}@", &v19, 0x20u);
      }

      v7 = v9;
    }

    else
    {
      v13 = [(MessageListCellView *)self readLaterDate];
      v14 = v13;
      if (v13)
      {
        if ([v13 ef_isEarlierThanOrEqualDate:v9])
        {
          v15 = v9;
        }

        else
        {
          v15 = v14;
        }

        v7 = v15;
      }

      else
      {
        v16 = [v4 followUp];
        if (v16)
        {
          v17 = v8;
        }

        else
        {
          v17 = v9;
        }

        v7 = v17;
      }
    }
  }

  return v7;
}

- (LayoutStatusIndicatorInfo)_layoutStatusIndicatorViewsWithChevronRect:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(MessageListCellView *)self viewModel];
  v10 = [v9 isVIP];
  v11 = [(MessageListCellView *)self isRead];
  v12 = [v9 isReplied];
  v13 = [v9 isForwarded];
  if (!v9)
  {
    v11 = 1;
  }

  v14 = v10;
  v15 = 1;
  if (v10)
  {
    v15 = 2;
  }

  if (!v11)
  {
    v14 = v15;
  }

  v74 = v14;
  v16 = [(MessageListCellView *)self isNotify];
  v17 = 2;
  if (!v10)
  {
    v17 = 0;
  }

  v18 = v17 | v11 ^ 1;
  if (v12)
  {
    v18 |= 8uLL;
  }

  if (v13)
  {
    v18 |= 0x10uLL;
  }

  if (v16)
  {
    v19 = v18 | 0x40;
  }

  else
  {
    v19 = v18;
  }

  if ([(MessageListCellView *)self isReadLater])
  {
    v20 = [(MessageListCellView *)self readLaterDate];
    v21 = [v9 displayDate];
    v22 = [(MessageListCellView *)self _hasPastReminderForReadLaterDate:v20 displayDate:v21];

    if ((v22 & 1) == 0)
    {
      v19 |= 0x200uLL;
    }
  }

  v23 = [(MessageListCellView *)self isMute];
  v24 = [v9 hasAttachments];
  v25 = [(MessageListCellView *)self isFlagged];
  v26 = v19 | 0x80;
  if (!v23)
  {
    v26 = v19;
  }

  if (v24)
  {
    v26 |= 0x20uLL;
  }

  if (v25)
  {
    v27 = v26 | 4;
  }

  else
  {
    v27 = v26;
  }

  v28 = [(MessageListCellView *)self category];
  v75 = v9;
  v76 = v28;
  if ([v28 isHighImpact] && -[MessageListCellView shouldShowHighImpact](self, "shouldShowHighImpact"))
  {
    v29 = [v28 type];
    v30 = v27 | 0x1000;
    v31 = v27 | 0x800;
    if (v29 != 3)
    {
      v31 = v27;
    }

    if (v29 != 2)
    {
      v30 = v31;
    }

    if (v29 == 1)
    {
      v27 |= 0x400uLL;
    }

    else
    {
      v27 = v30;
    }
  }

  v77 = [(MessageListCellView *)self statusIndicatorManager];
  v32 = [(MessageListCellView *)self flagColors];
  [v77 setFlagColors:v32];

  [v77 setIndicatorOptions:v27];
  v33 = [(MessageListCellView *)self layoutValues];
  v34 = [(MessageListCellView *)self configurationState];
  v35 = [(MessageListCellView *)self backgroundConfiguration];
  [v77 setUseSelectedColors:{objc_msgSend(v33, "useSelectedColorForConfigurationState:backgroundConfiguration:", v34, v35)}];

  v73 = [v77 primaryStatusIndicatorImage];
  [(MessageListCellView *)self _rectForStatusIndicatorViewsWithPrimaryStatusIndicatorImage:v73];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v44);

  v46 = [NSMutableArray arrayWithCapacity:3];
  if (!EMBlackPearlIsFeatureEnabled() || -[MessageListCellView hideMessageListAvatar](self, "hideMessageListAvatar") || ([UIApp preferredContentSizeCategory], v47 = objc_claimAutoreleasedReturnValue(), v48 = UIContentSizeCategoryIsAccessibilityCategory(v47), v47, v48))
  {
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v49 = [NSMutableArray arrayWithCapacity:3];
    v50 = 1;
  }

  v51 = 0;
  v52 = v74 + v12 + v13;
  do
  {
    v79 = 0;
    v53 = [(MessageListCellView *)self _labelForVerticalPosition:v51 font:&v79];
    v54 = v79;
    v55 = v54;
    if (v53 && v54)
    {
      v56 = [(MessageListCellView *)self _statusIndicatorVeritcalPositionForLabel:v53 font:v54 shouldAlignWithCenter:IsAccessibilityCategory];
      [v46 addObject:v56];
    }

    if (v50)
    {
      v57 = [(MessageListCellView *)self _statusIndicatorVerticalPositionAvatarForItem:v51 verticalIndicatorCount:v52];
      [v49 addObject:v57];
    }

    ++v51;
  }

  while (v51 != 3);
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  MidX = CGRectGetMidX(v80);
  v59 = 0.0;
  if ([v46 count] >= 2)
  {
    v60 = [v46 objectAtIndex:1];
    [v60 floatValue];
    v59 = v61;
  }

  v62 = [UIApp preferredContentSizeCategory];
  v63 = UIContentSizeCategoryIsAccessibilityCategory(v62);

  if (v63)
  {
    v78 = 0;
    v64 = [(MessageListCellView *)self _labelForVerticalPosition:3 font:&v78];
    v65 = v78;
    v66 = [(MessageListCellView *)self _statusIndicatorVeritcalPositionForLabel:v64 font:v65 shouldAlignWithCenter:IsAccessibilityCategory];
    [v66 floatValue];
    v68 = v67;
    v69 = v67;

    if (v68 > 0.0)
    {
      v59 = v69;
    }
  }

  v70.width = NAN;
  v70.height = NAN;
  retstr->var0.origin = v70;
  retstr->var0.size = v70;
  retstr->var1 = 0xAAAAAAAAAAAAAAAALL;
  if (v77)
  {
    [v77 layoutStatusIndicatorViewsInRect:self contentView:v46 verticalPositions:v49 avatarVerticalPostions:IsAccessibilityCategory horizontalPoint:v37 shouldAlignWithCenter:{v39, v41, v43, MidX, v59}];
  }

  else
  {
    retstr->var1 = 0;
    retstr->var0.origin = 0u;
    retstr->var0.size = 0u;
  }

  return result;
}

- (id)_statusIndicatorVeritcalPositionForLabel:(id)a3 font:(id)a4 shouldAlignWithCenter:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = &off_1006742B8;
  if (v7 && v8)
  {
    if (v5)
    {
      [v7 frame];
      CGRectGetMinY(v17);
      [v7 _firstBaselineOffsetFromTop];
      [v9 capHeight];
      UIRoundToViewScale();
      v12 = v11;
    }

    else
    {
      if (MUISolariumFeatureEnabled())
      {
        [v7 frame];
        CGRectGetMinY(v18);
        [v7 _firstLineBaseline];
      }

      else
      {
        [v7 frame];
        [v9 mf_baselinePointFromOriginPoint:?];
      }

      v12 = 0.0;
    }

    UIRoundToViewScale();
    v14 = v13 - v12;
    *&v14 = v14;
    v10 = [NSNumber numberWithFloat:v14];
  }

  return v10;
}

- (id)_statusIndicatorVerticalPositionAvatarForItem:(unint64_t)a3 verticalIndicatorCount:(int64_t)a4
{
  if (MUISolariumFeatureEnabled())
  {
    [(MessageListCellView *)self avatarView];
  }

  else
  {
    [(MessageListCellView *)self avatarImageView];
  }
  v7 = ;
  v8 = v7;
  if (a4 == 1)
  {
    [v7 frame];
    v10 = v9;
    [v8 frame];
    v12 = [NSNumber numberWithDouble:v10 + v11 * 0.5];
  }

  else
  {
    [v7 frame];
    [v8 frame];
    UIRoundToViewScale();
    v14 = v13;
    v15 = [(MessageListCellView *)self layoutValues];
    [v15 indicatorMaxWidth];
    v17 = v16;

    v18 = [(MessageListCellView *)self layoutValues];
    if (a3)
    {
      if (a3 == 1)
      {
        MaxY = v14;
      }

      else
      {
        MaxY = 0.0;
        if (a3 == 2)
        {
          if (MUISolariumFeatureEnabled())
          {
            [v18 indicatorVerticalSpacing];
            MaxY = v17 * 0.5 + v14 + v17 * 0.5 + v20;
          }

          else
          {
            [v8 frame];
            MaxY = CGRectGetMaxY(v25);
          }
        }
      }
    }

    else if (MUISolariumFeatureEnabled())
    {
      [v18 indicatorVerticalSpacing];
      MaxY = v14 - v17 * 0.5 - v21 - v17 * 0.5;
    }

    else
    {
      [v8 frame];
      MaxY = CGRectGetMinY(v24);
    }

    v12 = [NSNumber numberWithDouble:MaxY];
  }

  return v12;
}

- (id)_labelForVerticalPosition:(unint64_t)a3 font:(id *)a4
{
  v27 = [(MessageListCellView *)self layoutValues];
  v6 = [(MessageListCellView *)self secondaryLabel];
  v7 = [(MessageListCellView *)self tertiaryLabel];
  v8 = [v27 subjectFont];
  v9 = [v27 summaryFont];
  v10 = [(MessageListCellView *)self _isLabelValid:v6];
  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  if (v10)
  {
    v13 = v7;
  }

  else
  {
    v13 = v6;
  }

  if (v10)
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
  }

  v28 = v11;
  v26 = v12;
  v15 = v13;
  v16 = v14;
  if (![(MessageListCellView *)self _isLabelValid:v15])
  {

    v15 = 0;
    v16 = 0;
  }

  v17 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v17 = v28;
        if (a4)
        {
          *a4 = v26;
        }
      }
    }

    else
    {
      v17 = [(MessageListCellView *)self primaryLabel];
      if (a4)
      {
        *a4 = [v27 addressFont];
      }
    }

    goto LABEL_34;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      goto LABEL_34;
    }

    v18 = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v18);

    if (IsAccessibilityCategory)
    {
      v20 = [(MessageListCellView *)self dateLabel];
      if ([(MessageListCellView *)self _isLabelValid:v20])
      {
        v21 = [(MessageListCellView *)self dateLabel];

        if (a4 && v21)
        {
          *a4 = [v27 dateFont];
        }

        v17 = v21;
        goto LABEL_34;
      }
    }

    v17 = 0;
    goto LABEL_34;
  }

  v17 = v15;
  if (a4)
  {
    v22 = v16;
    *a4 = v16;
  }

LABEL_34:
  v23 = v17;

  return v17;
}

- (CGRect)_rectForStatusIndicatorViewsWithPrimaryStatusIndicatorImage:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellView *)self layoutValues];
  v6 = [v5 addressFont];
  [(UILabel *)self->_primaryLabel frame];
  [v6 mf_baselinePointFromOriginPoint:?];

  v7 = [v5 addressFont];
  [v7 capHeight];

  [v4 size];
  UIRoundToViewScale();
  [(MessageListCellView *)self bounds];
  UIRectInset();
  v9 = v8;
  v11 = v10;
  [v5 padding];
  v13 = v12;
  v14 = v12;
  if (MUISolariumFeatureEnabled())
  {
    [v5 indicatorMaxWidth];
    v14 = v15;
  }

  if ([(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout])
  {
    if (MUISolariumFeatureEnabled())
    {
      [(MessageListCellView *)self bounds];
      MaxX = CGRectGetMaxX(v22);
      [v5 indicatorMaxWidth];
      v13 = MaxX - v13 - v17;
    }

    else
    {
      [(MessageListCellView *)self bounds];
      v13 = CGRectGetMaxX(v23) - v14;
    }
  }

  else if (!MUISolariumFeatureEnabled())
  {
    v13 = 0.0;
  }

  v18 = v13;
  v19 = v9;
  v20 = v14;
  v21 = v11;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)_bodyAttributesWithColor:(id)a3
{
  v4 = a3;
  v5 = +[NSParagraphStyle defaultParagraphStyle];
  v6 = [v5 mutableCopy];

  v7 = [(MessageListCellView *)self layoutValues];
  v8 = [v7 summaryFont];

  v9 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v9);

  if (IsAccessibilityCategory)
  {
    LODWORD(v11) = 1.0;
    [v6 setHyphenationFactor:v11];
  }

  v14[0] = NSFontAttributeName;
  v14[1] = NSParagraphStyleAttributeName;
  v15[0] = v8;
  v15[1] = v6;
  v14[2] = NSForegroundColorAttributeName;
  v15[2] = v4;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

- (id)_defaultAttributesWithFont:(id)a3 color:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSParagraphStyle defaultParagraphStyle];
  v8 = [v7 mutableCopy];

  [v8 setLineBreakMode:4];
  v11[0] = NSFontAttributeName;
  v11[1] = NSParagraphStyleAttributeName;
  v12[0] = v5;
  v12[1] = v8;
  v11[2] = NSForegroundColorAttributeName;
  v12[2] = v6;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (id)_addressAttributesWithColor:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellView *)self layoutValues];
  v6 = [v5 addressFont];
  v7 = [(MessageListCellView *)self _defaultAttributesWithFont:v6 color:v4];

  return v7;
}

- (id)_secondaryStringAttributesWithColor:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellView *)self layoutValues];
  v6 = [v5 subjectFont];
  v7 = [(MessageListCellView *)self _defaultAttributesWithFont:v6 color:v4];

  return v7;
}

- (void)_recalculatePrimaryAttributedStringShouldRehighlight:(BOOL)a3
{
  v3 = a3;
  v5 = [(MessageListCellView *)self _primaryLabelString];
  v40 = v5;
  if (self->_attributedPrimaryString)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6 || [v5 length] && v3)
  {
    v7 = [(MessageListCellView *)self layoutValues];
    v8 = [(MessageListCellView *)self contentConfiguration];
    v9 = [v7 addressColorForContentConfiguration:v8];

    v10 = [(MessageListCellView *)self layoutValues];
    v11 = [(MessageListCellView *)self configurationState];
    v12 = [(MessageListCellView *)self contentConfiguration];
    v13 = [(MessageListCellView *)self backgroundConfiguration];
    v14 = [v10 annotationColorForConfigurationState:v11 contentConfiguration:v12 backgroundConfiguration:v13];

    if (self->_shouldAnnotateReplyOrForward && self->_annotatedRelationshipType)
    {
      v15 = [(MessageListCellView *)self _addressAttributesWithColor:v9];
      v16 = [(MessageListCellView *)self _addressAttributesWithColor:v14];
      annotatedRelationshipType = self->_annotatedRelationshipType;
      switch(annotatedRelationshipType)
      {
        case 1:
          v18 = [NSBundle bundleForClass:objc_opt_class()];
          v19 = [v18 localizedStringForKey:@"REPLY_ANNOTATION_FORMAT" value:&stru_100662A88 table:@"Main"];
          break;
        case 2:
          v18 = [NSBundle bundleForClass:objc_opt_class()];
          v19 = [v18 localizedStringForKey:@"DRAFT_ANNOTATION_FORMAT" value:&stru_100662A88 table:@"Main"];
          break;
        case 3:
          v18 = [NSBundle bundleForClass:objc_opt_class()];
          v19 = [v18 localizedStringForKey:@"FORWARD_ANNOTATION_FORMAT" value:&stru_100662A88 table:@"Main"];
          break;
        default:
LABEL_21:

          goto LABEL_22;
      }

      v31 = v19;

      if (!v31)
      {
        goto LABEL_21;
      }

      v34 = [NSString stringWithFormat:v31, v40];
      v35 = [[NSMutableAttributedString alloc] initWithString:v34 attributes:v16];
      v36 = [v34 rangeOfString:v40];
      [v35 setAttributes:v15 range:{v36, v37}];
      v38 = [(MessageListCellView *)self _highlightedPrimaryString:v35];
      attributedPrimaryString = self->_attributedPrimaryString;
      self->_attributedPrimaryString = v38;
    }

    else
    {
      v15 = v9;
      v20 = [(MessageListCellView *)self viewModel];
      v21 = [v20 addressIsPresent];

      if ((v21 & 1) == 0)
      {
        v22 = [(MessageListCellView *)self layoutValues];
        v23 = [(MessageListCellView *)self configurationState];
        v24 = [(MessageListCellView *)self contentConfiguration];
        v25 = [(MessageListCellView *)self backgroundConfiguration];
        v26 = [v22 absentDataColorForConfigurationState:v23 contentConfiguration:v24 backgroundConfiguration:v25];

        v15 = v26;
      }

      v27 = [NSAttributedString alloc];
      v28 = [(MessageListCellView *)self _addressAttributesWithColor:v15];
      v29 = [v27 initWithString:v40 attributes:v28];

      v30 = [(MessageListCellView *)self viewModel];
      v31 = [v30 attributedAddress];

      if (v31)
      {
        v16 = [[NSMutableAttributedString alloc] initWithAttributedString:v31];
        v32 = [(MessageListCellView *)self _addressAttributesWithColor:v15];
        [v16 addAttributes:v32 range:{0, objc_msgSend(v16, "length")}];
      }

      else
      {
        v16 = v29;
      }

      v33 = [(MessageListCellView *)self _highlightedPrimaryString:v16];
      v34 = self->_attributedPrimaryString;
      self->_attributedPrimaryString = v33;
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_recalculateSecondaryAttributedStringShouldRehighlight:(BOOL)a3
{
  v3 = a3;
  v5 = [(MessageListCellView *)self viewModel];
  v23 = [v5 subject];

  if (self->_attributedSecondaryString)
  {
    v6 = 1;
  }

  else
  {
    v6 = v23 == 0;
  }

  if (!v6 || [v23 length] && v3)
  {
    v7 = [(MessageListCellView *)self layoutValues];
    v8 = [(MessageListCellView *)self contentConfiguration];
    v9 = [v7 subjectColorForContentConfiguration:v8];

    v10 = [(MessageListCellView *)self viewModel];
    LOBYTE(v8) = [v10 subjectIsPresent];

    if ((v8 & 1) == 0)
    {
      v11 = [(MessageListCellView *)self layoutValues];
      v12 = [(MessageListCellView *)self configurationState];
      v13 = [(MessageListCellView *)self contentConfiguration];
      v14 = [(MessageListCellView *)self backgroundConfiguration];
      v15 = [v11 absentDataColorForConfigurationState:v12 contentConfiguration:v13 backgroundConfiguration:v14];

      v9 = v15;
    }

    v16 = [NSAttributedString alloc];
    v17 = [(MessageListCellView *)self _secondaryStringAttributesWithColor:v9];
    v18 = [v16 initWithString:v23 attributes:v17];

    v19 = [v18 string];
    accessibilitySecondaryLabel = self->_accessibilitySecondaryLabel;
    self->_accessibilitySecondaryLabel = v19;

    v21 = [(MessageListCellView *)self _highlightedSubject:v18];
    attributedSecondaryString = self->_attributedSecondaryString;
    self->_attributedSecondaryString = v21;
  }
}

- (void)_recalculateTertiaryAttributedStringShouldRehighlight:(BOOL)a3
{
  v3 = a3;
  v5 = [(MessageListCellView *)self summary];
  v6 = v5;
  if (self->_attributedTertiaryString)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  v12 = v5;
  if (!v7 || (v8 = [v5 length], v6 = v12, v8) && v3)
  {
    v9 = [(MessageListCellView *)self _formatTertiaryString:v6];
    v10 = [(MessageListCellView *)self _highlightedSummarySnippet:v9];
    attributedTertiaryString = self->_attributedTertiaryString;
    self->_attributedTertiaryString = v10;

    v6 = v12;
  }
}

- (id)_formatTertiaryString:(id)a3
{
  v27 = a3;
  v4 = [(MessageListCellView *)self layoutValues];
  v5 = [(MessageListCellView *)self configurationState];
  v6 = [(MessageListCellView *)self contentConfiguration];
  v7 = [(MessageListCellView *)self backgroundConfiguration];
  v8 = [v4 summaryColorForConfigurationState:v5 contentConfiguration:v6 backgroundConfiguration:v7];

  LODWORD(v6) = [(MessageListCellView *)self hasGeneratedSummary];
  v9 = objc_opt_new();
  v10 = [(MessageListCellView *)self _bodyAttributesWithColor:v8];
  if (v6)
  {
    v11 = objc_alloc_init(NSTextAttachment);
    [(MessageListCellView *)self setSummarySymbolTextAttachment:v11];

    v12 = [(MessageListCellView *)self layoutValues];
    v13 = [v12 summarySymbolFont];
    v14 = [UIImage mf_imageForSummarySymbolWithFont:v13];
    v15 = [(MessageListCellView *)self summarySymbolTextAttachment];
    [v15 setImage:v14];

    v16 = [(MessageListCellView *)self layoutValues];
    v17 = [(MessageListCellView *)self configurationState];
    v18 = [(MessageListCellView *)self contentConfiguration];
    v19 = [(MessageListCellView *)self backgroundConfiguration];
    v20 = [v16 summarySymbolColorForConfigurationState:v17 contentConfiguration:v18 backgroundConfiguration:v19];

    v21 = [(MessageListCellView *)self summarySymbolTextAttachment];
    v28 = NSForegroundColorAttributeName;
    v29 = v20;
    v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v23 = [NSAttributedString attributedStringWithAttachment:v21 attributes:v22];
    [v9 appendAttributedString:v23];

    v24 = [[NSAttributedString alloc] initWithString:@" "];
    [v9 appendAttributedString:v24];
  }

  v25 = [[NSAttributedString alloc] initWithString:v27 attributes:v10];
  [v9 appendAttributedString:v25];

  return v9;
}

- (id)_highlightedSender:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellView *)self viewModel];
  v6 = [v5 hintsBySnippetZone];
  v7 = [v6 objectForKeyedSubscript:EMMessageSnippetHintZoneAuthor];

  v8 = [(MessageListCellView *)self viewModel];
  v9 = [v8 hintsBySnippetZone];
  v10 = [v9 objectForKeyedSubscript:EMMessageSnippetHintZoneAuthorEmailAddresses];

  if ([v7 count] || objc_msgSend(v10, "count"))
  {
    v11 = +[MessageListCellView log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = [EFPrivacy partiallyRedactedStringFromArray:v7];
      v16 = [EFPrivacy partiallyRedactedStringFromArray:v10];
      v17 = [v4 string];
      v18 = 134218754;
      v19 = self;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%p: [Snippet Hints] Highlighting: %@ and %@ in %@", &v18, 0x2Au);
    }

    v12 = sub_1004899C8(self);
    v13 = [MUISnippetGenerator highlightingAuthorTokens:v7 authorEmailTokens:v10 inEmailAttributedString:v4 highlighting:v12 error:0];
  }

  else
  {
    v13 = v4;
  }

  return v13;
}

- (id)_highlightedSubject:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellView *)self viewModel];
  v6 = [v5 hintsBySnippetZone];
  v7 = [v6 objectForKeyedSubscript:EMMessageSnippetHintZoneSubject];

  if ([v7 count])
  {
    v8 = +[MessageListCellView log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v21 = [EFPrivacy partiallyRedactedStringFromArray:v7];
      v22 = [v4 string];
      v23 = 134218498;
      v24 = self;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%p: [Snippet Hints] Highlighting: %@ in %@", &v23, 0x20u);
    }

    v9 = [(MessageListCellView *)self secondaryLabel];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = sub_1004899C8(self);
    v19 = [MUISnippetGenerator highlightedSnippetUsingTokens:v7 attributedString:v4 frame:v18 highlighting:0 error:v11, v13, v15, v17];
  }

  else
  {
    v19 = v4;
  }

  return v19;
}

- (id)_highlightedSummarySnippet:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellView *)self viewModel];
  v6 = [v5 hintsBySnippetZone];
  v7 = [v6 objectForKeyedSubscript:EMMessageSnippetHintZoneTextContent];

  if ([v7 count])
  {
    v8 = +[MessageListCellView log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = [EFPrivacy partiallyRedactedStringFromArray:v7];
      v13 = [v4 string];
      v14 = 134218498;
      v15 = self;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%p: [Snippet Hints] Highlighting: %@ in %@", &v14, 0x20u);
    }

    v9 = sub_1004899C8(self);
    v10 = [MUISnippetGenerator highlightedSnippetUsingTokens:v7 attributedString:v4 maxNumberOfWordsBeforeOrAfterToken:2 maxNumberOfRanges:2 highlighting:v9 error:0];
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (id)_highlightedPrimaryString:(id)a3
{
  v4 = a3;
  if ([(MessageListCellView *)self isSenderSpecificCell])
  {
    [(MessageListCellView *)self _highlightedSubject:v4];
  }

  else
  {
    [(MessageListCellView *)self _highlightedSender:v4];
  }
  v5 = ;

  return v5;
}

- (CGRect)_rectForChevronBoxWithBounds:(CGRect)a3 addressRect:(CGRect)a4 type:(int64_t)a5
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v7 = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  [(MessageListCellView *)self _sizeForChevronWithType:a5];
  [(MessageListCellView *)self _originForChevronBoxWithBounds:v10 addressRect:v9 sizeForChevron:v8, v7, x, y, width, height, v12, v13];

  MFIntegralRectToViewScale();
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)_originForChevronBoxWithBounds:(CGRect)a3 addressRect:(CGRect)a4 sizeForChevron:(CGSize)a5
{
  y = a4.origin.y;
  x = a4.origin.x;
  height = a3.size.height;
  width = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  v12 = [(MessageListCellView *)self layoutValues:*&a5.width];
  v13 = [v12 addressFont];

  [v13 mf_baselinePointFromOriginPoint:{x, y}];
  v14 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v14);

  if (!IsAccessibilityCategory)
  {
    if (MUISolariumFeatureEnabled())
    {
      v16 = [(MessageListCellView *)self layoutValues];
      [v16 addressCapHeight];
    }

    else
    {
      v16 = [(MessageListCellView *)self layoutValues];
      v17 = [v16 addressFont];
      [v17 capHeight];
    }
  }

  v18 = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  v19 = [(MessageListCellView *)self traitCollection];
  [v19 mf_useSplitViewStyling];

  if (v18)
  {
    v27.origin.x = v10;
    v27.origin.y = v9;
    v27.size.width = width;
    v27.size.height = height;
    CGRectGetMinX(v27);
  }

  else if (MUISolariumFeatureEnabled())
  {
    v28.origin.x = v10;
    v28.origin.y = v9;
    v28.size.width = width;
    v28.size.height = height;
    CGRectGetMaxX(v28);
    UIRoundToViewScale();
  }

  else
  {
    v29.origin.x = v10;
    v29.origin.y = v9;
    v29.size.width = width;
    v29.size.height = height;
    CGRectGetMaxX(v29);
  }

  UICeilToViewScale();
  v21 = v20;
  UICeilToViewScale();
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGSize)_sizeForChevronWithType:(int64_t)a3
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (a3)
  {
    if (a3 == 3)
    {
      a3 = 2;
    }

    v5 = [UIImage mf_imageForChevronType:a3];
    v6 = v5;
    if (v5)
    {
      [v5 size];
      width = v7;
      height = v8;
    }
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)_rectForChevronWithBounds:(CGRect)a3 addressRect:(CGRect)a4
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  if (self->_chevronType)
  {
    height = a4.size.height;
    width = a4.size.width;
    v8 = a4.origin.y;
    v9 = a4.origin.x;
    v10 = a3.size.height;
    v11 = a3.size.width;
    v30 = a3.origin.x;
    v29 = a3.origin.y;
    v13 = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
    if ([(MessageListCellView *)self swiped]|| ![(MessageListCellView *)self isEditing]|| [(MessageListCellView *)self chevronType]== 2)
    {
      v14 = v9;
      v15 = v8;
      v16 = width;
      v17 = height;
    }

    else
    {
      v24 = [UIImage mf_imageForChevronType:2];
      v25 = [(MessageListCellView *)self layoutValues];
      [v25 padding];
      v28 = v26;

      [v24 size];
      v14 = v9;
      v15 = v8;
      if (v13)
      {
        v30 = v30 - (v28 + v27);
      }

      else
      {
        v11 = v11 + v28 + v27;
      }

      v16 = width;
      v17 = height;
    }

    [(MessageListCellView *)self _sizeForChevron];
    [(MessageListCellView *)self _rectForChevronBoxWithBounds:[(MessageListCellView *)self chevronType] addressRect:v30 type:v29, v11, v10, v14, v15, v16, v17];
    UIRectCenteredIntegralRect();
    x = v20;
    y = v21;
  }

  else
  {
    v18 = CGRectZero.size.width;
    v19 = CGRectZero.size.height;
  }

  v22 = x;
  v23 = y;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGPoint)_dateOriginUnderSummary:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(MessageListCellView *)self layoutValues];
  v9 = [v8 summaryFont];

  v10 = [(MessageListCellView *)self layoutValues];
  [v10 addressAndSubjectHeight];
  v12 = v11;

  v13 = [(MessageListCellView *)self tertiaryLabel];
  v14 = [(MessageListCellView *)self _isLabelValid:v13];

  if (v14)
  {
    v15 = [(MessageListCellView *)self layoutValues];
    v16 = [(MessageListCellView *)self summary];
    [v15 actualLineCountForSummary:v16 hasGeneratedSummary:-[MessageListCellView hasGeneratedSummary](self bounds:{"hasGeneratedSummary"), x, y, width, height}];
  }

  [v9 _bodyLeading];
  [v9 descender];
  UIRoundToViewScale();
  v18 = y + v12 + v17;

  v19 = x;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)_dateOriginAlignedWithAddressBaselineForBounds:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  v5 = [(MessageListCellView *)self layoutValues:a3.origin.x];
  if (MUISolariumFeatureEnabled())
  {
    v6 = [v5 addressFont];
    [v6 ascender];
    v7 = [v5 subjectFont];
    [v7 ascender];

    UICeilToViewScale();
    v9 = y + v8;
  }

  else
  {
    [v5 addressCapHeight];
    v11 = v10;
    v12 = [v5 dateFont];
    [v12 mf_originPointFromBaselinePoint:{x, y + v11}];
    x = v13;
    v9 = v14;
  }

  v15 = x;
  v16 = v9;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGRect)_rectForDateWithBounds:(CGRect)a3 chevronRect:(CGRect)a4
{
  height = a4.size.height;
  y = a4.origin.y;
  width = a4.size.width;
  x = a4.origin.x;
  v6 = a3.size.height;
  v7 = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  v11 = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  v12 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

  [(UILabel *)self->_dateLabel sizeThatFits:v7, v6];
  if (IsAccessibilityCategory)
  {
    [(MessageListCellView *)self _dateOriginUnderSummary:v9, v8, v7, v6];
    if (v11)
    {
LABEL_3:
      v25.origin.x = v9;
      v25.origin.y = v8;
      v25.size.width = v7;
      v25.size.height = v6;
      CGRectGetMaxX(v25);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  [(MessageListCellView *)self _dateOriginAlignedWithAddressBaselineForBounds:v9, v8, v7, v6];
  if (!self->_chevronType || [(MessageListCellView *)self isEditing]&& self->_chevronType != 2)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v26.origin.x = v9;
    v26.origin.y = v8;
    v26.size.width = v7;
    v26.size.height = v6;
    CGRectGetMinX(v26);
    goto LABEL_12;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  if (v11)
  {
    CGRectGetMaxX(*&v14);
  }

  else
  {
    CGRectGetMinX(*&v14);
  }

LABEL_12:

  MFIntegralRectToViewScale();
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_layoutChevronForDisclosureStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MessageListCellView *)self layoutValues];
  v6 = [(MessageListCellView *)self configurationState];
  v7 = [(MessageListCellView *)self contentConfiguration];
  v8 = [(MessageListCellView *)self backgroundConfiguration];
  v9 = [v5 threadDisclosureColorForConfigurationState:v6 contentConfiguration:v7 backgroundConfiguration:v8];
  v10 = [(MessageListCellView *)self disclosureButton];
  [v10 setTintColor:v9];

  if ([(MessageListCellView *)self disclosureEnabled])
  {
    if ([(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout])
    {
      v11 = -1.57079633;
    }

    else
    {
      v11 = 1.57079633;
    }

    CGAffineTransformMakeRotation(&v24, v11);
    v13 = *&v24.a;
    v12 = *&v24.c;
    tx = v24.tx;
    ty = v24.ty;
  }

  else
  {
    v13 = *&CGAffineTransformIdentity.a;
    v12 = *&CGAffineTransformIdentity.c;
    tx = CGAffineTransformIdentity.tx;
    ty = CGAffineTransformIdentity.ty;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001504D0;
  v19[3] = &unk_100651790;
  v19[4] = self;
  v20 = v13;
  v21 = v12;
  v22 = tx;
  v23 = ty;
  v16 = objc_retainBlock(v19);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100150534;
  v18[3] = &unk_10064C570;
  v18[4] = self;
  v17 = objc_retainBlock(v18);
  if (v3)
  {
    [UIView animateWithDuration:v16 animations:v17 completion:0.333];
  }

  else
  {
    (v16[2])(v16);
    (v17[2])(v17, 1);
  }
}

- (CGRect)_rectForDisclosureButtonWithFrame:(CGRect)a3 boxFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v12 = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  v22 = v10;
  if (v12)
  {
    v13 = v8;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinX = CGRectGetMinX(v25);
  }

  else
  {
    v26.origin.x = v11;
    v26.origin.y = v10;
    v26.size.width = v9;
    v13 = v8;
    v26.size.height = v8;
    MaxX = CGRectGetMaxX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MinX = MaxX - CGRectGetMaxX(v27);
  }

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v16 = CGRectGetWidth(v28) + MinX * 2.0;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v17 = CGRectGetHeight(v29);
  v18 = 0.0;
  if ((v12 & 1) == 0)
  {
    v30.origin.x = v11;
    v30.origin.y = v22;
    v30.size.width = v9;
    v30.size.height = v13;
    v18 = CGRectGetMaxX(v30) - v16;
  }

  v19 = v17 + MinY * 2.0;
  v20 = 0.0;
  v21 = v16;
  result.size.height = v19;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v18;
  return result;
}

- (CGRect)_adjustRect:(CGRect)a3 forTrailingRect:(CGRect)a4 padding:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  if (CGRectGetWidth(a4) > 0.0)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    if (CGRectGetMinX(v27) > 0.0)
    {
      v14 = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      left = UIEdgeInsetsZero.left;
      if (v14)
      {
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v15 = CGRectGetMaxX(v28) + a5;
        v29.origin.x = v12;
        v29.origin.y = v11;
        v29.size.width = v10;
        v29.size.height = v9;
        MinX = CGRectGetMinX(v29);
        v17 = right;
        v18 = left + v15 - MinX;
      }

      else
      {
        v30.origin.x = v12;
        v30.origin.y = v11;
        v30.size.width = v10;
        v30.size.height = v9;
        v23 = CGRectGetMaxX(v30) + a5;
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        v17 = right + v23 - CGRectGetMinX(v31);
        v18 = left;
      }

      v12 = v12 + v18;
      v11 = v11 + UIEdgeInsetsZero.top;
      v10 = v10 - (v17 + v18);
      v9 = v9 - (UIEdgeInsetsZero.top + bottom);
    }
  }

  v19 = v12;
  v20 = v11;
  v21 = v10;
  v22 = v9;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)_rectForAvatarWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

  if (IsAccessibilityCategory)
  {
    goto LABEL_5;
  }

  v10 = [(MessageListCellView *)self layoutValues];
  [v10 avatarSize];
  v12 = v11;

  v13 = -v12;
  if (v12 >= 0.0)
  {
    v13 = v12;
  }

  if (v13 < 2.22044605e-16)
  {
LABEL_5:
    v14 = CGRectZero.origin.x;
    v15 = CGRectZero.origin.y;
    v16 = CGRectZero.size.width;
    v17 = CGRectZero.size.height;
  }

  else
  {
    UIRoundToViewScale();
    UIRoundToViewScale();
    if ([(MessageListCellView *)self numberOfPreviewLines])
    {
      v18 = [(MessageListCellView *)self viewModel];
      [v18 style];
    }

    if ([(MessageListCellView *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      CGRectGetMaxX(v22);
    }

    else
    {
      v19 = [(MessageListCellView *)self viewModel];
      v20 = [v19 style];

      if (v20 == 2)
      {
        v21 = [(MessageListCellView *)self layoutValues];
        [v21 standardAvatarSize];
      }
    }

    MFIntegralRectToViewScale();
  }

  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_rectForAddressWithBounds:(CGRect)a3
{
  v4 = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  v5 = [(MessageListCellView *)self layoutValues];
  [v5 horizontalSpacing];

  UIRectInset();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v49 = v6;
  v50 = v8;
  v51 = v10;
  v52 = v12;
  v14 = [(MessageListCellView *)self layoutValues];
  v15 = [v14 addressFont];

  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    v16 = [(MessageListCellView *)self layoutValues];
    [v16 addressCapHeight];
    v18 = v9 + v17;

    [v15 mf_originPointFromBaselinePoint:{v7, v18}];
    v49 = v19;
    v50 = v20;
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100150DF0;
  v47[3] = &unk_1006517B0;
  v48 = v4 ^ 1;
  v21 = objc_retainBlock(v47);
  if ([(MessageListCellView *)self shouldShowBlockedSenderLabel])
  {
    [(MessageListCellView *)self _rectForBlockedSenderLabelWithBounds:v7, v9, v11, v13];
    if (v24 != 0.0)
    {
      Width = CGRectGetWidth(*&v22);
      (v21[2])(v21, &v49, Width + 2.5);
    }
  }

  if ([(MessageListCellView *)self isSenderSpecificCell])
  {
    if ([(MessageListCellView *)self shouldShowCategorizationInformation])
    {
      [(MessageListCellView *)self _rectForCategoriesStackViewWithBounds:v7, v9, v11, v13];
      if (v29 != 0.0)
      {
        v31 = CGRectGetWidth(*&v27);
        (v21[2])(v21, &v49, v31 + 2.5);
      }
    }

    if ([(MessageListCellView *)self recipientLabelType])
    {
      [(MessageListCellView *)self _rectForRecipientLabelWithBounds:v7, v9, v11, v13];
      v32 = CGRectGetWidth(v53);
      (v21[2])(v21, &v49, v32 + 2.5);
    }
  }

  [v15 lineHeight];
  UIRoundToViewScale();
  v52 = v33;
  if (!MUISolariumFeatureEnabled())
  {
    [v15 descender];
    v52 = v52 - v34;
  }

  MFIntegralRectToViewScale();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = v36;
  v44 = v38;
  v45 = v40;
  v46 = v42;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (CGRect)_rectForSubjectWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(MessageListCellView *)self layoutValues];
  v9 = [v8 isSubjectVisible];

  if (v9)
  {
    v10 = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
    left = UIEdgeInsetsZero.left;
    if (self->_recipientLabelType)
    {
      [(MessageListCellView *)self _rectForRecipientLabelWithBounds:x, y, width, height];
      v12 = left + CGRectGetWidth(v39) + 2.5;
      if (!v10)
      {
        left = v12;
      }
    }

    if ([(MessageListCellView *)self shouldShowCategorizationInformation])
    {
      [(MessageListCellView *)self _rectForCategoriesStackViewWithBounds:x, y, width, height];
      if (v15 != 0.0)
      {
        v17 = left + CGRectGetWidth(*&v13) + 2.5;
        if (!v10)
        {
          left = v17;
        }
      }
    }

    v18 = [(MessageListCellView *)self layoutValues];
    v19 = [v18 subjectFont];

    v20 = x + left;
    v21 = y + UIEdgeInsetsZero.top;
    if (MUISolariumFeatureEnabled())
    {
      v22 = [(MessageListCellView *)self layoutValues];
      [v22 addressCapHeight];
    }

    else
    {
      v27 = [(MessageListCellView *)self layoutValues];
      [v27 addressAndSubjectHeight];
      v29 = v21 + v28;

      [v19 mf_originPointFromBaselinePoint:{v20, v29}];
    }

    v30 = [(MessageListCellView *)self layoutValues];
    [v30 subjectHeight];

    MFIntegralRectToViewScale();
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
  }

  else
  {
    v23 = CGRectZero.origin.x;
    v24 = CGRectZero.origin.y;
    v25 = CGRectZero.size.width;
    v26 = CGRectZero.size.height;
  }

  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGRect)_rectForMultipleSubjectWithBounds:(CGRect)a3 position:(int64_t)a4
{
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(MessageListCellView *)self layoutValues];
  [v7 addressCapHeight];
  v9 = v8;
  v10 = [v7 summaryFont];
  [v10 lineHeight];
  [v10 mf_originPointFromBaselinePoint:{x + UIEdgeInsetsZero.left, y + UIEdgeInsetsZero.top + v9 + 2.0 + v11 * (a4 + 1) + (2 * a4)}];
  [v10 lineHeight];
  [v10 descender];
  UIRoundToViewScale();
  MFIntegralRectToViewScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_rectForSummaryWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  v9 = [(MessageListCellView *)self hasGeneratedSummary];
  v10 = [(MessageListCellView *)self layoutValues];
  v11 = [v10 linesOfSummaryForCompactHeight:self->_compact];

  v12 = [(MessageListCellView *)self summary];
  if (v11 >= 1)
  {
    v13 = [(MessageListCellView *)self layoutValues];
    v14 = [v13 summaryFont];

    v15 = [(MessageListCellView *)self viewModel];
    v16 = [v15 style];

    if (v16 != 2)
    {
      v17 = [(MessageListCellView *)self layoutValues];
      [v17 actualLineCountForSummary:v12 hasGeneratedSummary:v9 bounds:{x, y, width, height}];
    }

    v18 = [(MessageListCellView *)self layoutValues];
    [v18 addressAndSubjectHeight];

    [v14 lineHeight];
    [v14 leading];
    UICeilToViewScale();
    if (v16 == 2 && [(MessageListCellView *)self recipientLabelType])
    {
      [(MessageListCellView *)self _rectForRecipientLabelWithBounds:x, y, width, height];
      v19 = v40.origin.x;
      v20 = v40.origin.y;
      v21 = v40.size.width;
      v22 = v40.size.height;
      CGRectGetWidth(v40);
      if ((v8 & 1) == 0)
      {
        v41.origin.x = v19;
        v41.origin.y = v20;
        v41.size.width = v21;
        v41.size.height = v22;
        CGRectGetMaxX(v41);
      }
    }

    else
    {
      v23 = EMBlackPearlIsFeatureEnabled() ^ 1;
      if (v16 != 2)
      {
        LOBYTE(v23) = 1;
      }

      if ((v23 & 1) == 0)
      {
        if ([(MessageListCellView *)self shouldShowCategorizationInformation])
        {
          [(MessageListCellView *)self _rectForCategoriesStackViewWithBounds:x, y, width, height];
          v24 = v42.origin.x;
          v25 = v42.origin.y;
          v26 = v42.size.width;
          v27 = v42.size.height;
          CGRectGetWidth(v42);
          if ((v8 & 1) == 0)
          {
            v43.origin.x = v24;
            v43.origin.y = v25;
            v43.size.width = v26;
            v43.size.height = v27;
            CGRectGetMaxX(v43);
          }
        }
      }
    }
  }

  MFIntegralRectToViewScale();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = v29;
  v37 = v31;
  v38 = v33;
  v39 = v35;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (CGRect)_rectForRecipientLabelWithBounds:(CGRect)a3
{
  recipientLabelType = self->_recipientLabelType;
  if (recipientLabelType)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v9 = [(MessageListCellView *)self traitCollection];
    v10 = sub_10014CFBC(recipientLabelType, [v9 userInterfaceStyle]);

    if (v10)
    {
      [v10 size];
      v12 = v11;
      v14 = v13;
      v15 = x;
      if ([(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout])
      {
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        MaxX = CGRectGetMaxX(v25);
        [v10 size];
        v15 = MaxX - v17;
      }

      v18 = [(MessageListCellView *)self _baselineLabelForIndicator];
      [v18 frame];
      CGRectGetMinY(v26);
      [v18 _firstBaselineOffsetFromTop];
      v27.origin.x = v15;
      v27.origin.y = y;
      v27.size.width = v12;
      v27.size.height = v14;
      CGRectGetHeight(v27);
      v19 = [v18 font];
      [v19 capHeight];
      v28.origin.x = v15;
      v28.origin.y = y;
      v28.size.width = v12;
      v28.size.height = v14;
      CGRectGetHeight(v28);
    }
  }

  MFIntegralRectToViewScale();
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_rectForBlockedSenderLabelWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(MessageListCellView *)self shouldShowBlockedSenderLabel])
  {
    v8 = [(MessageListCellView *)self blockedSenderLabelImageView];
    v9 = [v8 image];

    if (v9)
    {
      [v9 size];
      v11 = v10;
      v13 = v12;
      v14 = x;
      if ([(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout])
      {
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        MaxX = CGRectGetMaxX(v24);
        [v9 size];
        v14 = MaxX - v16;
      }

      v17 = [(MessageListCellView *)self primaryLabel];
      [v17 frame];
      CGRectGetMinY(v25);
      [v17 _firstBaselineOffsetFromTop];
      v26.origin.x = v14;
      v26.origin.y = y;
      v26.size.width = v11;
      v26.size.height = v13;
      CGRectGetHeight(v26);
      v18 = [v17 font];
      [v18 capHeight];
      v27.origin.x = v14;
      v27.origin.y = y;
      v27.size.width = v11;
      v27.size.height = v13;
      CGRectGetHeight(v27);
    }
  }

  MFIntegralRectToViewScale();
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)_baselineLabelForIndicator
{
  if ([(MessageListCellView *)self isSenderSpecificCell])
  {
    v3 = &OBJC_IVAR___MessageListCellView__primaryLabel;
  }

  else
  {
    v4 = [(MessageListCellView *)self viewModel];
    v5 = [v4 style];

    v3 = &OBJC_IVAR___MessageListCellView__secondaryLabel;
    if (v5 == 2)
    {
      v3 = &OBJC_IVAR___MessageListCellView__tertiaryLabel;
    }
  }

  v6 = *(&self->super.super.super.isa + *v3);

  return v6;
}

- (BOOL)_isLabelValid:(id)a3
{
  v3 = a3;
  [v3 alpha];
  if (v4 <= 0.0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    [v3 frame];
    v8.origin.x = CGRectZero.origin.x;
    v8.origin.y = CGRectZero.origin.y;
    v8.size.width = CGRectZero.size.width;
    v8.size.height = CGRectZero.size.height;
    v5 = !CGRectEqualToRect(v7, v8);
  }

  return v5;
}

- (BOOL)_hasPastReminderForReadLaterDate:(id)a3 displayDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSDate now];
  if ([v5 ef_isEarlierThanOrEqualDate:v7])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v5 ef_isEarlierThanOrEqualDate:v6];
  }

  return v8;
}

- (CGRect)_rectForCategoriesStackViewWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (EMBlackPearlIsFeatureEnabled())
  {
    if ([(MessageListCellView *)self recipientLabelType])
    {
      v8 = [(MessageListCellView *)self recipientLabelImageView];
      [v8 frame];
      v10 = x + v9 + 2.5;
    }

    else
    {
      v10 = x;
    }

    [(UIStackView *)self->_categoriesStackView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
    v16 = v15;
    v18 = v17;
    if ([(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout])
    {
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v10 = CGRectGetMaxX(v29) - v16;
    }

    v19 = [(MessageListCellView *)self _baselineLabelForIndicator];
    [v19 frame];
    CGRectGetMinY(v30);
    [v19 _firstBaselineOffsetFromTop];
    v31.origin.x = v10;
    v31.origin.y = y;
    v31.size.width = v16;
    v31.size.height = v18;
    CGRectGetHeight(v31);
    v20 = [v19 font];
    [v20 capHeight];
    v32.origin.x = v10;
    v32.origin.y = y;
    v32.size.width = v16;
    v32.size.height = v18;
    CGRectGetHeight(v32);

    MFIntegralRectToViewScale();
    v11 = v21;
    v12 = v22;
    v13 = v23;
    v14 = v24;
  }

  else
  {
    v11 = CGRectZero.origin.x;
    v12 = CGRectZero.origin.y;
    v13 = CGRectZero.size.width;
    v14 = CGRectZero.size.height;
  }

  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)prepareForReuse
{
  viewModel = self->_viewModel;
  self->_viewModel = 0;

  [(MessageListCellView *)self setRead:1];
  [(MessageListCellView *)self setFlagged:0];
  [(MessageListCellView *)self setFlagColors:0];
  [(MessageListCellView *)self setNotify:0];
  [(MessageListCellView *)self setMute:0];
  [(MessageListCellView *)self setReadLaterDate:0];
  [(MessageListCellView *)self setIsReadLater:0];
  [(MessageListCellView *)self setRecipientLabelType:0];
  [(MessageListCellView *)self setAttributedSecondaryString:0];
  [(MessageListCellView *)self setAccessibilitySecondaryLabel:0];
  v5 = [(MessageListCellView *)self secondaryLabel];
  [v5 setText:0];

  [(MessageListCellView *)self setAttributedPrimaryString:0];
  v6 = [(MessageListCellView *)self primaryLabel];
  [v6 setText:0];

  [(MessageListCellView *)self setAttributedTertiaryString:0];
  v7 = [(MessageListCellView *)self tertiaryLabel];
  [v7 setText:0];

  [(MessageListCellView *)self setSummary:&stru_100662A88];
  [(MessageListCellView *)self setHasGeneratedSummary:0];
  [(MessageListCellView *)self setSummarySymbolTextAttachment:0];
  v8 = [(MessageListCellView *)self avatarImageView];
  [v8 setImage:0];

  [(MessageListCellView *)self setAvatarResult:0];
  [(MessageListCellView *)self _updateAvatarView];
  v9 = [(MessageListCellView *)self avatarToken];
  [v9 cancel];

  [(MessageListCellView *)self setAvatarToken:0];
  v10 = [(MessageListCellView *)self categorizationStateLabel];
  [v10 setText:0];

  [(MessageListCellView *)self setCompact:0];
  v11 = [(MessageListCellView *)self dateLabel];
  [v11 _setTextEncapsulation:0];
  [v11 setAttributedText:0];
  [v11 setText:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 setDate:0];
  }

  v4 = [(MessageListCellView *)self statusIndicatorManager];
  [v4 prepareForReuse];
}

- (BOOL)verifyContentVisibility:(id *)a3
{
  v4 = [(MessageListCellView *)self primaryLabel];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  while (1)
  {
    if ([v5 isHidden])
    {
      goto LABEL_12;
    }

    [v5 alpha];
    if (v6 < 0.0)
    {
      v6 = -v6;
    }

    if (v6 < 2.22044605e-16)
    {
LABEL_12:
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v5 isHidden];
      [v5 alpha];
      v14 = [NSString stringWithFormat:@"%@ is unexpectedly hidden (hidden=%d, alpha=%.2f)", v11, v12, v13];
      v15 = [NSError em_internalErrorWithReason:v14];
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_10;
    }

    v7 = [v5 superview];

    if (!v7)
    {
      break;
    }

    v8 = [v5 superview];

    v5 = v8;
    if (!v8)
    {
LABEL_10:
      v9 = 1;
      goto LABEL_15;
    }
  }

  v16 = objc_opt_class();
  v11 = NSStringFromClass(v16);
  v14 = [NSString stringWithFormat:@"%@ is missing its superview", v11];
  v15 = [NSError em_internalErrorWithReason:v14];
LABEL_14:
  *a3 = v15;

  v9 = 0;
LABEL_15:

  return v9;
}

@end