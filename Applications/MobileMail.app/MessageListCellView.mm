@interface MessageListCellView
+ (OS_os_log)log;
- (BOOL)_hasPastReminderForReadLaterDate:(id)date displayDate:(id)displayDate;
- (BOOL)_isLabelValid:(id)valid;
- (BOOL)shouldShowBlockedSenderLabel;
- (BOOL)shouldShowCategorizationInformation;
- (BOOL)verifyContentVisibility:(id *)visibility;
- (CGPoint)_dateOriginAlignedWithAddressBaselineForBounds:(CGRect)bounds;
- (CGPoint)_dateOriginUnderSummary:(CGRect)summary;
- (CGPoint)_originForChevronBoxWithBounds:(CGRect)bounds addressRect:(CGRect)rect sizeForChevron:(CGSize)chevron;
- (CGRect)_adjustRect:(CGRect)rect forTrailingRect:(CGRect)trailingRect padding:(double)padding;
- (CGRect)_rectForAddressWithBounds:(CGRect)bounds;
- (CGRect)_rectForAvatarWithBounds:(CGRect)bounds;
- (CGRect)_rectForBlockedSenderLabelWithBounds:(CGRect)bounds;
- (CGRect)_rectForCategoriesStackViewWithBounds:(CGRect)bounds;
- (CGRect)_rectForChevronBoxWithBounds:(CGRect)bounds addressRect:(CGRect)rect type:(int64_t)type;
- (CGRect)_rectForChevronWithBounds:(CGRect)bounds addressRect:(CGRect)rect;
- (CGRect)_rectForDateWithBounds:(CGRect)bounds chevronRect:(CGRect)rect;
- (CGRect)_rectForDisclosureButtonWithFrame:(CGRect)frame boxFrame:(CGRect)boxFrame;
- (CGRect)_rectForMultipleSubjectWithBounds:(CGRect)bounds position:(int64_t)position;
- (CGRect)_rectForRecipientLabelWithBounds:(CGRect)bounds;
- (CGRect)_rectForStatusIndicatorViewsWithPrimaryStatusIndicatorImage:(id)image;
- (CGRect)_rectForSubjectWithBounds:(CGRect)bounds;
- (CGRect)_rectForSummaryWithBounds:(CGRect)bounds;
- (CGSize)_sizeForChevron;
- (CGSize)_sizeForChevronWithType:(int64_t)type;
- (LayoutStatusIndicatorInfo)_layoutStatusIndicatorViews;
- (LayoutStatusIndicatorInfo)_layoutStatusIndicatorViewsWithChevronRect:(SEL)rect;
- (MUIAvatarViewController)avatarController;
- (MessageListCellLayoutValues)layoutValues;
- (MessageListCellView)initWithFrame:(CGRect)frame;
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
- (id)_addressAttributesWithColor:(id)color;
- (id)_baselineLabelForIndicator;
- (id)_bodyAttributesWithColor:(id)color;
- (id)_dateForViewModel:(id)model;
- (id)_defaultAttributesWithFont:(id)font color:(id)color;
- (id)_formatTertiaryString:(id)string;
- (id)_highlightedPrimaryString:(id)string;
- (id)_highlightedSender:(id)sender;
- (id)_highlightedSubject:(id)subject;
- (id)_highlightedSummarySnippet:(id)snippet;
- (id)_labelForVerticalPosition:(unint64_t)position font:(id *)font;
- (id)_primaryLabelString;
- (id)_secondaryStringAttributesWithColor:(id)color;
- (id)_statusIndicatorVeritcalPositionForLabel:(id)label font:(id)font shouldAlignWithCenter:(BOOL)center;
- (id)_statusIndicatorVerticalPositionAvatarForItem:(unint64_t)item verticalIndicatorCount:(int64_t)count;
- (void)_animateIndicator:(unint64_t)indicator toState:(BOOL)state;
- (void)_dynamicTypeDidChange:(id)change;
- (void)_invalidateCachedValues;
- (void)_layoutChevronForDisclosureStateAnimated:(BOOL)animated;
- (void)_layoutDisclosureButton;
- (void)_layoutValuesDidChange:(id)change;
- (void)_recalculateAttributedStrings;
- (void)_recalculatePrimaryAttributedStringShouldRehighlight:(BOOL)rehighlight;
- (void)_recalculateSecondaryAttributedStringShouldRehighlight:(BOOL)rehighlight;
- (void)_recalculateTertiaryAttributedStringShouldRehighlight:(BOOL)rehighlight;
- (void)_resetAttributedStrings;
- (void)_resetDateLabel;
- (void)_setupAvatarImageView;
- (void)_setupDisclosureButtonImageIfNecessary;
- (void)_updateAvatarView;
- (void)_updateAvatarViewWithView:(id)view;
- (void)_updateDateLabelWithDateStyle:(int64_t)style;
- (void)applyIndicatorPreviewChangeAction:(id)action;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAnnotatedRelationshipType:(int64_t)type;
- (void)setBackgroundConfiguration:(id)configuration;
- (void)setChevronType:(int64_t)type;
- (void)setCompact:(BOOL)compact;
- (void)setConfigurationState:(id)state;
- (void)setContentConfiguration:(id)configuration;
- (void)setDisclosureEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setDisplayUnreadDot:(BOOL)dot;
- (void)setDisplayVIP:(BOOL)p;
- (void)setEditing:(BOOL)editing;
- (void)setHasGeneratedSummary:(BOOL)summary;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRecipientLabelType:(int64_t)type;
- (void)setSelected:(BOOL)selected;
- (void)setShouldAnnotateReplyOrForward:(BOOL)forward;
- (void)setSummary:(id)summary;
- (void)setViewModel:(id)model;
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
    statusIndicatorManager = [(MessageListCellView *)self statusIndicatorManager];
    statusIndicatorViews = [statusIndicatorManager statusIndicatorViews];

    v5 = [statusIndicatorViews countByEnumeratingWithState:&v186 objects:v191 count:16];
    if (v5)
    {
      v6 = *v187;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v187 != v6)
          {
            objc_enumerationMutation(statusIndicatorViews);
          }

          [(MessageListCellView *)self addSubview:*(*(&v186 + 1) + 8 * i)];
        }

        v5 = [statusIndicatorViews countByEnumeratingWithState:&v186 objects:v191 count:16];
      }

      while (v5);
    }
  }

  [(MessageListCellView *)self _recalculateAttributedStrings];
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  viewModel = [(MessageListCellView *)self viewModel];
  v174 = [(MessageListCellView *)self _dateForViewModel:viewModel];
  if ([(MessageListCellView *)self isSelected])
  {
    isHighlighted = 1;
  }

  else
  {
    isHighlighted = [(MessageListCellView *)self isHighlighted];
  }

  dateLabel = [(MessageListCellView *)self dateLabel];
  dateStyle = [(MessageListCellView *)self dateStyle];
  if (dateStyle > 1)
  {
    if (dateStyle == 2)
    {
      if (isHighlighted)
      {
LABEL_23:
        sub_10014A83C();
        v14 = LABEL_25:;
        [dateLabel _setTextEncapsulation:v14];

        v12 = _EFLocalizedString();
        [dateLabel setText:v12];
        goto LABEL_26;
      }
    }

    else
    {
      if (dateStyle != 3)
      {
        goto LABEL_27;
      }

      if (isHighlighted)
      {
        goto LABEL_23;
      }
    }

    sub_100023C80();
    goto LABEL_25;
  }

  if (!dateStyle)
  {
    [v174 timeIntervalSince1970];
    [dateLabel setTimeInterval:v13 + -978307200.0];
    goto LABEL_27;
  }

  if (dateStyle != 1)
  {
    goto LABEL_27;
  }

  v12 = [NSDateFormatter ef_formatDate:v174 style:2];
  [dateLabel setText:v12];
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
    style = [viewModel style];
    v19 = 0.0;
    if (style != 2)
    {
      v19 = 1.0;
    }
  }

  [dateLabel mf_setAlpha:v19];
  layoutValues = [(MessageListCellView *)self layoutValues];
  configurationState = [(MessageListCellView *)self configurationState];
  contentConfiguration = [(MessageListCellView *)self contentConfiguration];
  backgroundConfiguration = [(MessageListCellView *)self backgroundConfiguration];
  v25 = [layoutValues dateColorForConfigurationState:configurationState contentConfiguration:contentConfiguration backgroundConfiguration:backgroundConfiguration];
  [dateLabel setTextColor:v25];

  hintsBySnippetZone = [viewModel hintsBySnippetZone];
  v27 = [hintsBySnippetZone objectForKeyedSubscript:EMMessageSnippetHintZoneAuthor];
  if ([v27 count])
  {
  }

  else
  {
    hintsBySnippetZone2 = [viewModel hintsBySnippetZone];
    v29 = [hintsBySnippetZone2 objectForKeyedSubscript:EMMessageSnippetHintZoneAuthorEmailAddresses];
    v30 = [v29 count] == 0;

    if (v30)
    {
      goto LABEL_42;
    }
  }

  [(MessageListCellView *)self _recalculatePrimaryAttributedStringShouldRehighlight:1];
LABEL_42:
  attributedPrimaryString = [(MessageListCellView *)self attributedPrimaryString];
  primaryLabel = [(MessageListCellView *)self primaryLabel];
  [primaryLabel setAttributedText:attributedPrimaryString];

  blockedSenderLabelImageView = [(MessageListCellView *)self blockedSenderLabelImageView];
  if ([(MessageListCellView *)self shouldShowBlockedSenderLabel])
  {
    [blockedSenderLabelImageView mf_setAlpha:1.0];
    v33 = [UIImage mf_systemImageNamed:MFImageGlyphStatusIndicatorBlockSender forView:9];
    [blockedSenderLabelImageView setImage:v33];

    v34 = +[UIColor systemRedColor];
    [blockedSenderLabelImageView setTintColor:v34];
  }

  else
  {
    [blockedSenderLabelImageView mf_setAlpha:0.0];
  }

  secondaryLabel = [(MessageListCellView *)self secondaryLabel];
  layoutValues2 = [(MessageListCellView *)self layoutValues];
  isSubjectVisible = [layoutValues2 isSubjectVisible];
  attributedSecondaryString = [(MessageListCellView *)self attributedSecondaryString];
  accessibilitySecondaryLabel = [(MessageListCellView *)self accessibilitySecondaryLabel];
  sub_10014CEB0(self, secondaryLabel, isSubjectVisible, attributedSecondaryString, accessibilitySecondaryLabel);

  recipientLabelImageView = [(MessageListCellView *)self recipientLabelImageView];
  if ([(MessageListCellView *)self recipientLabelType])
  {
    [recipientLabelImageView mf_setAlpha:1.0];
    recipientLabelType = self->_recipientLabelType;
    traitCollection = [(MessageListCellView *)self traitCollection];
    v41 = sub_10014CFBC(recipientLabelType, [traitCollection userInterfaceStyle]);
    v42 = [v41 imageWithRenderingMode:2];
    [recipientLabelImageView setImage:v42];

    layoutValues3 = [(MessageListCellView *)self layoutValues];
    configurationState2 = [(MessageListCellView *)self configurationState];
    contentConfiguration2 = [(MessageListCellView *)self contentConfiguration];
    backgroundConfiguration2 = [(MessageListCellView *)self backgroundConfiguration];
    v47 = [layoutValues3 recipientColorForConfigurationState:configurationState2 contentConfiguration:contentConfiguration2 backgroundConfiguration:backgroundConfiguration2];
    [recipientLabelImageView setTintColor:v47];
  }

  else
  {
    [recipientLabelImageView mf_setAlpha:0.0];
  }

  if ([(MessageListCellView *)self chevronType]== 1)
  {
    chevron = [(MessageListCellView *)self chevron];
    [chevron mf_setAlpha:1.0];
    v49 = [UIImage mf_imageForChevronType:1];
    [chevron setImage:v49];

    v50 = [UIImage mf_symbolConfigurationForView:10];
    [chevron setPreferredSymbolConfiguration:v50];

    v51 = +[UIColor tertiaryLabelColor];
    [chevron setTintColor:v51];
  }

  else
  {
    [(UIImageView *)self->_chevron mf_setAlpha:0.0];
  }

  layoutValues4 = [(MessageListCellView *)self layoutValues];
  [layoutValues4 padding];
  if (MUISolariumFeatureEnabled())
  {
    [layoutValues4 indicatorMaxWidth];
    v54 = v53;
    [layoutValues4 horizontalSpacing];
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
  v185 = isHighlighted;
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

  preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
  v74 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

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
    viewModel2 = [(MessageListCellView *)self viewModel];
    if ([viewModel2 style] == 2)
    {
      layoutValues5 = [(MessageListCellView *)self layoutValues];
      [layoutValues5 standardAvatarSize];
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
          [layoutValues4 avatarTrailingSpacing];
          v154 = v78 + v153;
        }

        else
        {
          layoutValues6 = [(MessageListCellView *)self layoutValues];
          [layoutValues6 horizontalSpacing];
          v159 = v158;

          v154 = v78 + v159;
        }

        v63 = v63 + v154;
      }

      else
      {
        if (MUISolariumFeatureEnabled())
        {
          [layoutValues4 avatarTrailingSpacing];
          v156 = v78 + v155;
        }

        else
        {
          layoutValues7 = [(MessageListCellView *)self layoutValues];
          [layoutValues7 horizontalSpacing];
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

  hintsBySnippetZone3 = [viewModel hintsBySnippetZone];
  v80 = [hintsBySnippetZone3 objectForKeyedSubscript:EMMessageSnippetHintZoneTextContent];
  if ([v80 count])
  {

LABEL_65:
    [(MessageListCellView *)self _recalculateTertiaryAttributedStringShouldRehighlight:1];
    goto LABEL_71;
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable())
  {
    hasGeneratedSummary = [(MessageListCellView *)self hasGeneratedSummary];

    if (hasGeneratedSummary)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

LABEL_71:
  tertiaryLabel = [(MessageListCellView *)self tertiaryLabel];
  attributedTertiaryString = [(MessageListCellView *)self attributedTertiaryString];
  [tertiaryLabel setAttributedText:attributedTertiaryString];

  text = [tertiaryLabel text];
  _isNaturallyRTL = [text _isNaturallyRTL];

  if (_isNaturallyRTL)
  {
    v86 = 2;
  }

  else
  {
    v86 = 0;
  }

  [tertiaryLabel setTextAlignment:v86];
  [(MessageListCellView *)self _rectForSummaryWithBounds:v182, v180, v181, v179];
  (v72[2])(v72, tertiaryLabel);
  if (EMBlackPearlIsFeatureEnabled())
  {
    categorizationStateLabel = [(MessageListCellView *)self categorizationStateLabel];
    categorizationState = [viewModel categorizationState];
    [categorizationStateLabel setText:categorizationState];

    if (isHighlighted)
    {
      sub_10014A83C();
    }

    else
    {
      sub_100023C80();
    }
    v89 = ;
    [categorizationStateLabel _setTextEncapsulation:v89];
  }

  primaryLabel2 = [(MessageListCellView *)self primaryLabel];
  [(MessageListCellView *)self _rectForAddressWithBounds:v182, v180, v181, v179];
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  (v72[2])(v72, primaryLabel2);
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
    disclosureButton = [(MessageListCellView *)self disclosureButton];
    [(MessageListCellView *)self addSubview:disclosureButton];

    disclosureButton2 = [(MessageListCellView *)self disclosureButton];
    [disclosureButton2 setFrame:{v100, v102, v104, v106}];

    [(MessageListCellView *)self _layoutChevronForDisclosureStateAnimated:0];
  }

  else
  {
    disclosureButton3 = [(MessageListCellView *)self disclosureButton];
    [disclosureButton3 removeFromSuperview];
  }

  (v72[2])(v72, self->_chevron, v100, v102, v104, v106);
  [(MessageListCellView *)self _rectForDateWithBounds:v182 chevronRect:v180, v181, v179, v100, v102, v104, v106];
  v170 = v111.n128_f64[0];
  v171 = v110.n128_f64[0];
  v168 = v113.n128_f64[0];
  v169 = v112.n128_f64[0];
  (v72[2])(v72, dateLabel, v110, v111, v112, v113);
  [(MessageListCellView *)self _rectForSubjectWithBounds:v182, v180, v181, v179];
  (v72[2])(v72, secondaryLabel);
  [(MessageListCellView *)self _rectForRecipientLabelWithBounds:v182, v180, v181, v179];
  (v72[2])(v72, recipientLabelImageView);
  if (EMBlackPearlIsFeatureEnabled() && [(MessageListCellView *)self shouldShowCategorizationInformation])
  {
    [(MessageListCellView *)self _rectForCategoriesStackViewWithBounds:v182, v180, v181, v179];
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v121 = v120;
    categoriesStackView = [(MessageListCellView *)self categoriesStackView];
    [categoriesStackView setFrame:{v115, v117, v119, v121}];
  }

  hintsBySnippetZone4 = [viewModel hintsBySnippetZone];
  v124 = [hintsBySnippetZone4 objectForKeyedSubscript:EMMessageSnippetHintZoneSubject];
  v125 = [v124 count];

  if (v125)
  {
    [(MessageListCellView *)self _recalculateSecondaryAttributedStringShouldRehighlight:1];
    layoutValues8 = [(MessageListCellView *)self layoutValues];
    isSubjectVisible2 = [layoutValues8 isSubjectVisible];
    attributedSecondaryString2 = [(MessageListCellView *)self attributedSecondaryString];
    accessibilitySecondaryLabel2 = [(MessageListCellView *)self accessibilitySecondaryLabel];
    sub_10014CEB0(self, secondaryLabel, isSubjectVisible2, attributedSecondaryString2, accessibilitySecondaryLabel2);
  }

  preferredContentSizeCategory3 = [UIApp preferredContentSizeCategory];
  v131 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);

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
    layoutValues9 = [(MessageListCellView *)self layoutValues];
    [layoutValues9 horizontalSpacing];
    [(MessageListCellView *)self _adjustRect:v163 forTrailingRect:v164 padding:v165, v166, v171, v170, v169, v168, v141];
    v133 = v142;
    v135 = v143;
    v137 = v144;
    v139 = v145;
  }

  (v72[2])(v72, primaryLabel2, v133, v135, v137, v139);
  [(MessageListCellView *)self _rectForBlockedSenderLabelWithBounds:v182, v180, v181, v179];
  (v72[2])(v72, blockedSenderLabelImageView);
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

  secondaryLabel2 = [(MessageListCellView *)self secondaryLabel];
  v149 = [(MessageListCellView *)self _isLabelValid:secondaryLabel2];

  if (v149)
  {
    if (IsAccessibilityCategory)
    {
      goto LABEL_91;
    }

    secondaryLabel3 = [(MessageListCellView *)self secondaryLabel];
  }

  else
  {
    if (![(MessageListCellView *)self _isLabelValid:tertiaryLabel])
    {
      goto LABEL_91;
    }

    secondaryLabel3 = tertiaryLabel;
  }

  v151 = secondaryLabel3;
  if (secondaryLabel3)
  {
    [secondaryLabel3 frame];
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
  block[4] = self;
  if (qword_1006DD2C0 != -1)
  {
    dispatch_once(&qword_1006DD2C0, block);
  }

  v2 = qword_1006DD2B8;

  return v2;
}

- (UILabel)tertiaryLabel
{
  layoutValues = [(MessageListCellView *)self layoutValues];
  v4 = [layoutValues linesOfSummaryForCompactHeight:self->_compact];

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
    layoutValues2 = [(MessageListCellView *)self layoutValues];
    summaryFont = [layoutValues2 summaryFont];
    [(UILabel *)self->_tertiaryLabel setFont:summaryFont];

    [(MessageListCellView *)self addSubview:self->_tertiaryLabel];
  }

  v13 = self->_tertiaryLabel;

  return v13;
}

- (MessageListCellLayoutValues)layoutValues
{
  layoutValuesHelper = [(MessageListCellView *)self layoutValuesHelper];
  viewModel = [(MessageListCellView *)self viewModel];
  v5 = [layoutValuesHelper layoutValuesForStyle:{objc_msgSend(viewModel, "style")}];

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

    layoutValues = [(MessageListCellView *)self layoutValues];
    -[UILabel setNumberOfLines:](self->_secondaryLabel, "setNumberOfLines:", [layoutValues subjectNumberOfLines]);

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
  isSenderSpecificCell = [(MessageListCellView *)self isSenderSpecificCell];
  viewModel = [(MessageListCellView *)self viewModel];
  v5 = viewModel;
  if (isSenderSpecificCell)
  {
    [viewModel subject];
  }

  else
  {
    [viewModel address];
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
  viewModel = [(MessageListCellView *)self viewModel];
  isBlockedSender = [viewModel isBlockedSender];

  return isBlockedSender;
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
    avatarView = [(MessageListCellView *)self avatarView];
    subviews = [avatarView subviews];

    v5 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(subviews);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          avatarView2 = [(MessageListCellView *)self avatarView];
          [avatarView2 bounds];
          [v8 setFrame:?];
        }

        v5 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }
  }

  else
  {
    avatarResult = [(MessageListCellView *)self avatarResult];
    avatarView3 = [(MessageListCellView *)self avatarView];
    traitCollection = [avatarView3 traitCollection];
    v13 = [avatarResult needsBorderFor:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    avatarImageView = [(MessageListCellView *)self avatarImageView];
    layoutValues = [(MessageListCellView *)self layoutValues];
    [layoutValues avatarSize];
    [MUIAvatarImageGenerator roundAvatarView:avatarImageView withBorder:v13 size:?];
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

    categoriesStackView = [(MessageListCellView *)self categoriesStackView];
    [categoriesStackView insertArrangedSubview:self->_categorizationStateLabel atIndex:0];

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
  viewModel = [(MessageListCellView *)self viewModel];
  categorizationState = [viewModel categorizationState];
  v4 = [categorizationState length] != 0;

  return v4;
}

- (LayoutStatusIndicatorInfo)_layoutStatusIndicatorViews
{
  layoutValues = [(MessageListCellView *)self layoutValues];
  [layoutValues padding];

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
  disclosureButton = [(MessageListCellView *)self disclosureButton];
  imageView = [disclosureButton imageView];
  image = [imageView image];

  if (!image)
  {
    [(MessageListCellView *)self _layoutDisclosureButton];
    disclosureButton2 = [(MessageListCellView *)self disclosureButton];
    v5 = [UIImage systemImageNamed:MFImageGlyphMessageListChevronThread];
    [disclosureButton2 setImage:v5 forState:0];

    disclosureButton3 = [(MessageListCellView *)self disclosureButton];
    imageView2 = [disclosureButton3 imageView];
    [imageView2 setContentMode:1];
  }
}

- (MessageListCellView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = MessageListCellView;
  v3 = [(MessageListCellView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    avatarGenerator = [v10 avatarGenerator];
    [(MessageListCellView *)v4 setAvatarGenerator:avatarGenerator];

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

  messageListAvatarUserDefaultObserver = [(MessageListCellView *)self messageListAvatarUserDefaultObserver];
  [messageListAvatarUserDefaultObserver cancel];

  v5.receiver = self;
  v5.super_class = MessageListCellView;
  [(MessageListCellView *)&v5 dealloc];
}

- (void)_layoutValuesDidChange:(id)change
{
  object = [change object];
  layoutValues = [(MessageListCellView *)self layoutValues];

  if (object == layoutValues)
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

- (void)_dynamicTypeDidChange:(id)change
{
  [(MessageListCellView *)self _resetDateLabel];
  [objc_opt_class() clearCache];

  [(MessageListCellView *)self setNeedsLayout];
}

- (void)setRecipientLabelType:(int64_t)type
{
  if (self->_recipientLabelType != type)
  {
    self->_recipientLabelType = type;
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

- (void)_updateDateLabelWithDateStyle:(int64_t)style
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
    layoutValues = [(MessageListCellView *)self layoutValues];
    dateFont = [layoutValues dateFont];
    [(UILabel *)self->_dateLabel setFont:dateFont];

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

- (void)setChevronType:(int64_t)type
{
  if (self->_chevronType != type)
  {
    self->_chevronType = type;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    objc_storeStrong(&self->_viewModel, model);
    attributedPrimaryString = self->_attributedPrimaryString;
    self->_attributedPrimaryString = 0;

    attributedSecondaryString = self->_attributedSecondaryString;
    self->_attributedSecondaryString = 0;

    accessibilitySecondaryLabel = self->_accessibilitySecondaryLabel;
    self->_accessibilitySecondaryLabel = 0;

    attributedTertiaryString = self->_attributedTertiaryString;
    self->_attributedTertiaryString = 0;

    readLaterDate = [(MessageListCellViewModel *)modelCopy readLaterDate];
    [(MessageListCellView *)self setRead:[(MessageListCellViewModel *)modelCopy isRead]];
    [(MessageListCellView *)self setFlagged:[(MessageListCellViewModel *)modelCopy isFlagged]];
    flagColors = [(MessageListCellViewModel *)modelCopy flagColors];
    [(MessageListCellView *)self setFlagColors:flagColors];

    [(MessageListCellView *)self setNotify:[(MessageListCellViewModel *)modelCopy isNotify]];
    [(MessageListCellView *)self setMute:[(MessageListCellViewModel *)modelCopy isMute]];
    [(MessageListCellView *)self setReadLaterDate:readLaterDate];
    [(MessageListCellView *)self setIsReadLater:readLaterDate != 0];
    v13 = +[MessageListCellView log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      itemID = [(MessageListCellViewModel *)modelCopy itemID];
      *buf = 134218498;
      selfCopy2 = self;
      v46 = 2114;
      v47 = itemID;
      v48 = 1024;
      LODWORD(v49) = [(MessageListCellViewModel *)modelCopy isRead];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%p: Updating view model for cell with ID %{public}@, read status: %{BOOL}d", buf, 0x1Cu);
    }

    recipientType = [(MessageListCellViewModel *)modelCopy recipientType];
    v16 = 3;
    if (recipientType != 2)
    {
      v16 = 0;
    }

    if (recipientType == 1)
    {
      v17 = 2;
    }

    else
    {
      v17 = v16;
    }

    [(MessageListCellView *)self setRecipientLabelType:v17];
    sendLaterDate = [(MessageListCellViewModel *)modelCopy sendLaterDate];

    if (sendLaterDate)
    {
      v19 = 1;
    }

    else if (readLaterDate)
    {
      readLaterDate2 = [(MessageListCellView *)self readLaterDate];
      displayDate = [(MessageListCellViewModel *)modelCopy displayDate];
      v22 = [(MessageListCellView *)self _hasPastReminderForReadLaterDate:readLaterDate2 displayDate:displayDate];

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
      followUp = [(MessageListCellViewModel *)modelCopy followUp];
      if ([followUp isActive])
      {
        hideFollowUp = [(MessageListCellViewModel *)modelCopy hideFollowUp];

        if (hideFollowUp)
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
      addressList = [(MessageListCellViewModel *)modelCopy addressList];
      firstObject = [addressList firstObject];

      objc_initWeak(&location, self);
      avatarContext = [(MessageListCellViewModel *)modelCopy avatarContext];
      if (MUISolariumFeatureEnabled())
      {
        v28 = +[MessageListCellView log];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = NSStringFromSelector(a2);
          *buf = 134218498;
          selfCopy2 = self;
          v46 = 2114;
          v47 = v29;
          v48 = 2048;
          v49 = avatarContext;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - generating avatar for context %p", buf, 0x20u);
        }

        avatarGenerator = [(MessageListCellView *)self avatarGenerator];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_10014B7B4;
        v39[3] = &unk_1006516F8;
        v31 = v42;
        objc_copyWeak(v42, &location);
        v40 = firstObject;
        v42[1] = a2;
        v41 = avatarContext;
        v32 = [avatarGenerator contactForContext:v41 handler:v39];
        [(MessageListCellView *)self setAvatarToken:v32];

        v33 = &v40;
        avatarGenerator2 = v41;
      }

      else
      {
        avatarGenerator2 = [(MessageListCellView *)self avatarGenerator];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10014BBB8;
        v36[3] = &unk_100651720;
        v31 = &v38;
        objc_copyWeak(&v38, &location);
        v37 = firstObject;
        v35 = [avatarGenerator2 contactForContext:avatarContext handler:v36];
        [(MessageListCellView *)self setAvatarToken:v35];

        v33 = &v37;
      }

      objc_destroyWeak(v31);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_updateAvatarViewWithView:(id)view
{
  viewCopy = view;
  avatarView = [(MessageListCellView *)self avatarView];
  if (MUISolariumFeatureEnabled())
  {
    superview = [viewCopy superview];

    if (superview != avatarView)
    {
      subviews = [avatarView subviews];
      [subviews makeObjectsPerformSelector:"removeFromSuperview"];

      [avatarView addSubview:viewCopy];
      [avatarView bounds];
      [viewCopy setFrame:?];
    }
  }
}

- (void)setSummary:(id)summary
{
  summaryCopy = summary;
  if (self->_summary != summaryCopy)
  {
    v4 = [(NSString *)summaryCopy copy];
    summary = self->_summary;
    self->_summary = v4;

    attributedTertiaryString = self->_attributedTertiaryString;
    self->_attributedTertiaryString = 0;

    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setAnnotatedRelationshipType:(int64_t)type
{
  if (self->_annotatedRelationshipType != type)
  {
    self->_annotatedRelationshipType = type;
    attributedPrimaryString = self->_attributedPrimaryString;
    self->_attributedPrimaryString = 0;

    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setShouldAnnotateReplyOrForward:(BOOL)forward
{
  if (self->_shouldAnnotateReplyOrForward != forward)
  {
    self->_shouldAnnotateReplyOrForward = forward;
    attributedPrimaryString = self->_attributedPrimaryString;
    self->_attributedPrimaryString = 0;

    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setCompact:(BOOL)compact
{
  if (self->_compact != compact)
  {
    self->_compact = compact;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setHasGeneratedSummary:(BOOL)summary
{
  if (self->_hasGeneratedSummary != summary)
  {
    self->_hasGeneratedSummary = summary;
    tertiaryLabel = self->_tertiaryLabel;
    v4 = &MSAccessibilityIdentifierMailMessageCellViewGeneratedSummaryLabel;
    if (!summary)
    {
      v4 = &MSAccessibilityIdentifierMailMessageCellViewSummaryLabel;
    }

    [(UILabel *)tertiaryLabel setAccessibilityIdentifier:*v4];
  }
}

- (void)setConfigurationState:(id)state
{
  stateCopy = state;
  if (([(UICellConfigurationState *)self->_configurationState isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_configurationState, state);
    [(MessageListCellView *)self _resetAttributedStrings];
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(UIListContentConfiguration *)self->_contentConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contentConfiguration, configuration);
    [(MessageListCellView *)self _resetAttributedStrings];
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setBackgroundConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(UIBackgroundConfiguration *)self->_backgroundConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_backgroundConfiguration, configuration);
    [(MessageListCellView *)self _resetAttributedStrings];
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setDisclosureEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_disclosureEnabled != enabled)
  {
    animatedCopy = animated;
    enabledCopy = enabled;
    self->_disclosureEnabled = enabled;
    disclosureButton = [(MessageListCellView *)self disclosureButton];
    [disclosureButton setSelected:enabledCopy];

    [(MessageListCellView *)self setNeedsLayout];

    [(MessageListCellView *)self _layoutChevronForDisclosureStateAnimated:animatedCopy];
  }
}

- (void)applyIndicatorPreviewChangeAction:(id)action
{
  actionCopy = action;
  action = [actionCopy action];
  v5 = 0;
  isReadLater = 0;
  if (action <= 5)
  {
    if (action == 2)
    {
      -[MessageListCellView setRead:](self, "setRead:", [actionCopy flagState]);
      isReadLater = [(MessageListCellView *)self isRead]^ 1;
      v5 = 1;
    }

    else if (action == 3)
    {
      -[MessageListCellView setIsReadLater:](self, "setIsReadLater:", [actionCopy flagState]);
      readLaterDate = [actionCopy readLaterDate];
      [(MessageListCellView *)self setReadLaterDate:readLaterDate];

      isReadLater = [(MessageListCellView *)self isReadLater];
      [(MessageListCellView *)self setDateStyle:[(MessageListCellView *)self isReadLater]];
      [(MessageListCellView *)self _updateDateLabelWithDateStyle:[(MessageListCellView *)self dateStyle]];
      v5 = 512;
    }
  }

  else
  {
    switch(action)
    {
      case 6:
        flagColors = [actionCopy flagColors];
        isReadLater = flagColors != 0;

        [(MessageListCellView *)self setFlagged:isReadLater];
        flagColors2 = [actionCopy flagColors];
        [(MessageListCellView *)self setFlagColors:flagColors2];

        v5 = 4;
        break;
      case 10:
        -[MessageListCellView setNotify:](self, "setNotify:", [actionCopy flagState]);
        isReadLater = [(MessageListCellView *)self isNotify]^ 1;
        v5 = 64;
        break;
      case 11:
        -[MessageListCellView setMute:](self, "setMute:", [actionCopy flagState]);
        isReadLater = [(MessageListCellView *)self isMute]^ 1;
        v5 = 128;
        break;
    }
  }

  [(MessageListCellView *)self _animateIndicator:v5 toState:isReadLater];
}

- (void)_animateIndicator:(unint64_t)indicator toState:(BOOL)state
{
  stateCopy = state;
  statusIndicatorManager = [(MessageListCellView *)self statusIndicatorManager];
  statusIndicatorViews = [statusIndicatorManager statusIndicatorViews];

  statusIndicatorManager2 = [(MessageListCellView *)self statusIndicatorManager];
  v10 = [statusIndicatorManager2 tierForIndicator:indicator];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v24 = &v32;
    v25 = v29;
    v12 = MFMailboxUid_ptr;
    while (v11 < [statusIndicatorViews count])
    {
      if (v10 == v11)
      {
        v13 = [statusIndicatorViews objectAtIndex:v10];
        superview = [v13 superview];

        if (superview != self)
        {
          [(MessageListCellView *)self addSubview:v13];
        }

        v15 = objc_alloc(v12[402]);
        if (stateCopy)
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
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      [(MessageListCellView *)self setNeedsLayout];
    }
  }
}

- (void)setDisplayUnreadDot:(BOOL)dot
{
  dotCopy = dot;
  statusIndicatorManager = [(MessageListCellView *)self statusIndicatorManager];
  [statusIndicatorManager setHidesUnreadIndicator:!dotCopy];
}

- (void)setDisplayVIP:(BOOL)p
{
  pCopy = p;
  statusIndicatorManager = [(MessageListCellView *)self statusIndicatorManager];
  [statusIndicatorManager setHidesVIPIndicator:!pCopy];
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(MessageListCellView *)self setNeedsLayout];
  }
}

- (id)_dateForViewModel:(id)model
{
  modelCopy = model;
  sendLaterDate = [modelCopy sendLaterDate];
  v6 = sendLaterDate;
  if (sendLaterDate)
  {
    v7 = sendLaterDate;
  }

  else
  {
    date = [modelCopy date];
    displayDate = [modelCopy displayDate];
    v10 = +[NSDate now];
    v11 = [v10 ef_isEarlierThanDate:displayDate];

    if (v11)
    {
      v12 = +[MessageListCellView log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v19 = 134218498;
        selfCopy = self;
        v21 = 2114;
        v22 = displayDate;
        v23 = 2114;
        v24 = modelCopy;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%p: Display date (%{public}@) should not be earlier than present for view model: %{public}@", &v19, 0x20u);
      }

      v7 = displayDate;
    }

    else
    {
      readLaterDate = [(MessageListCellView *)self readLaterDate];
      v14 = readLaterDate;
      if (readLaterDate)
      {
        if ([readLaterDate ef_isEarlierThanOrEqualDate:displayDate])
        {
          v15 = displayDate;
        }

        else
        {
          v15 = v14;
        }

        v7 = v15;
      }

      else
      {
        followUp = [modelCopy followUp];
        if (followUp)
        {
          v17 = date;
        }

        else
        {
          v17 = displayDate;
        }

        v7 = v17;
      }
    }
  }

  return v7;
}

- (LayoutStatusIndicatorInfo)_layoutStatusIndicatorViewsWithChevronRect:(SEL)rect
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  viewModel = [(MessageListCellView *)self viewModel];
  isVIP = [viewModel isVIP];
  isRead = [(MessageListCellView *)self isRead];
  isReplied = [viewModel isReplied];
  isForwarded = [viewModel isForwarded];
  if (!viewModel)
  {
    isRead = 1;
  }

  v14 = isVIP;
  v15 = 1;
  if (isVIP)
  {
    v15 = 2;
  }

  if (!isRead)
  {
    v14 = v15;
  }

  v74 = v14;
  isNotify = [(MessageListCellView *)self isNotify];
  v17 = 2;
  if (!isVIP)
  {
    v17 = 0;
  }

  v18 = v17 | isRead ^ 1;
  if (isReplied)
  {
    v18 |= 8uLL;
  }

  if (isForwarded)
  {
    v18 |= 0x10uLL;
  }

  if (isNotify)
  {
    v19 = v18 | 0x40;
  }

  else
  {
    v19 = v18;
  }

  if ([(MessageListCellView *)self isReadLater])
  {
    readLaterDate = [(MessageListCellView *)self readLaterDate];
    displayDate = [viewModel displayDate];
    v22 = [(MessageListCellView *)self _hasPastReminderForReadLaterDate:readLaterDate displayDate:displayDate];

    if ((v22 & 1) == 0)
    {
      v19 |= 0x200uLL;
    }
  }

  isMute = [(MessageListCellView *)self isMute];
  hasAttachments = [viewModel hasAttachments];
  isFlagged = [(MessageListCellView *)self isFlagged];
  v26 = v19 | 0x80;
  if (!isMute)
  {
    v26 = v19;
  }

  if (hasAttachments)
  {
    v26 |= 0x20uLL;
  }

  if (isFlagged)
  {
    v27 = v26 | 4;
  }

  else
  {
    v27 = v26;
  }

  category = [(MessageListCellView *)self category];
  v75 = viewModel;
  v76 = category;
  if ([category isHighImpact] && -[MessageListCellView shouldShowHighImpact](self, "shouldShowHighImpact"))
  {
    type = [category type];
    v30 = v27 | 0x1000;
    v31 = v27 | 0x800;
    if (type != 3)
    {
      v31 = v27;
    }

    if (type != 2)
    {
      v30 = v31;
    }

    if (type == 1)
    {
      v27 |= 0x400uLL;
    }

    else
    {
      v27 = v30;
    }
  }

  statusIndicatorManager = [(MessageListCellView *)self statusIndicatorManager];
  flagColors = [(MessageListCellView *)self flagColors];
  [statusIndicatorManager setFlagColors:flagColors];

  [statusIndicatorManager setIndicatorOptions:v27];
  layoutValues = [(MessageListCellView *)self layoutValues];
  configurationState = [(MessageListCellView *)self configurationState];
  backgroundConfiguration = [(MessageListCellView *)self backgroundConfiguration];
  [statusIndicatorManager setUseSelectedColors:{objc_msgSend(layoutValues, "useSelectedColorForConfigurationState:backgroundConfiguration:", configurationState, backgroundConfiguration)}];

  primaryStatusIndicatorImage = [statusIndicatorManager primaryStatusIndicatorImage];
  [(MessageListCellView *)self _rectForStatusIndicatorViewsWithPrimaryStatusIndicatorImage:primaryStatusIndicatorImage];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
  v52 = v74 + isReplied + isForwarded;
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

  preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
  v63 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

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
  if (statusIndicatorManager)
  {
    [statusIndicatorManager layoutStatusIndicatorViewsInRect:self contentView:v46 verticalPositions:v49 avatarVerticalPostions:IsAccessibilityCategory horizontalPoint:v37 shouldAlignWithCenter:{v39, v41, v43, MidX, v59}];
  }

  else
  {
    retstr->var1 = 0;
    retstr->var0.origin = 0u;
    retstr->var0.size = 0u;
  }

  return result;
}

- (id)_statusIndicatorVeritcalPositionForLabel:(id)label font:(id)font shouldAlignWithCenter:(BOOL)center
{
  centerCopy = center;
  labelCopy = label;
  fontCopy = font;
  v9 = fontCopy;
  v10 = &off_1006742B8;
  if (labelCopy && fontCopy)
  {
    if (centerCopy)
    {
      [labelCopy frame];
      CGRectGetMinY(v17);
      [labelCopy _firstBaselineOffsetFromTop];
      [v9 capHeight];
      UIRoundToViewScale();
      v12 = v11;
    }

    else
    {
      if (MUISolariumFeatureEnabled())
      {
        [labelCopy frame];
        CGRectGetMinY(v18);
        [labelCopy _firstLineBaseline];
      }

      else
      {
        [labelCopy frame];
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

- (id)_statusIndicatorVerticalPositionAvatarForItem:(unint64_t)item verticalIndicatorCount:(int64_t)count
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
  if (count == 1)
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
    layoutValues = [(MessageListCellView *)self layoutValues];
    [layoutValues indicatorMaxWidth];
    v17 = v16;

    layoutValues2 = [(MessageListCellView *)self layoutValues];
    if (item)
    {
      if (item == 1)
      {
        MaxY = v14;
      }

      else
      {
        MaxY = 0.0;
        if (item == 2)
        {
          if (MUISolariumFeatureEnabled())
          {
            [layoutValues2 indicatorVerticalSpacing];
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
      [layoutValues2 indicatorVerticalSpacing];
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

- (id)_labelForVerticalPosition:(unint64_t)position font:(id *)font
{
  layoutValues = [(MessageListCellView *)self layoutValues];
  secondaryLabel = [(MessageListCellView *)self secondaryLabel];
  tertiaryLabel = [(MessageListCellView *)self tertiaryLabel];
  subjectFont = [layoutValues subjectFont];
  summaryFont = [layoutValues summaryFont];
  v10 = [(MessageListCellView *)self _isLabelValid:secondaryLabel];
  if (v10)
  {
    v11 = secondaryLabel;
  }

  else
  {
    v11 = tertiaryLabel;
  }

  if (v10)
  {
    v12 = subjectFont;
  }

  else
  {
    v12 = summaryFont;
  }

  if (v10)
  {
    v13 = tertiaryLabel;
  }

  else
  {
    v13 = secondaryLabel;
  }

  if (v10)
  {
    v14 = summaryFont;
  }

  else
  {
    v14 = subjectFont;
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

  primaryLabel = 0;
  if (position <= 1)
  {
    if (position)
    {
      if (position == 1)
      {
        primaryLabel = v28;
        if (font)
        {
          *font = v26;
        }
      }
    }

    else
    {
      primaryLabel = [(MessageListCellView *)self primaryLabel];
      if (font)
      {
        *font = [layoutValues addressFont];
      }
    }

    goto LABEL_34;
  }

  if (position != 2)
  {
    if (position != 3)
    {
      goto LABEL_34;
    }

    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      dateLabel = [(MessageListCellView *)self dateLabel];
      if ([(MessageListCellView *)self _isLabelValid:dateLabel])
      {
        dateLabel2 = [(MessageListCellView *)self dateLabel];

        if (font && dateLabel2)
        {
          *font = [layoutValues dateFont];
        }

        primaryLabel = dateLabel2;
        goto LABEL_34;
      }
    }

    primaryLabel = 0;
    goto LABEL_34;
  }

  primaryLabel = v15;
  if (font)
  {
    v22 = v16;
    *font = v16;
  }

LABEL_34:
  v23 = primaryLabel;

  return primaryLabel;
}

- (CGRect)_rectForStatusIndicatorViewsWithPrimaryStatusIndicatorImage:(id)image
{
  imageCopy = image;
  layoutValues = [(MessageListCellView *)self layoutValues];
  addressFont = [layoutValues addressFont];
  [(UILabel *)self->_primaryLabel frame];
  [addressFont mf_baselinePointFromOriginPoint:?];

  addressFont2 = [layoutValues addressFont];
  [addressFont2 capHeight];

  [imageCopy size];
  UIRoundToViewScale();
  [(MessageListCellView *)self bounds];
  UIRectInset();
  v9 = v8;
  v11 = v10;
  [layoutValues padding];
  v13 = v12;
  v14 = v12;
  if (MUISolariumFeatureEnabled())
  {
    [layoutValues indicatorMaxWidth];
    v14 = v15;
  }

  if ([(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout])
  {
    if (MUISolariumFeatureEnabled())
    {
      [(MessageListCellView *)self bounds];
      MaxX = CGRectGetMaxX(v22);
      [layoutValues indicatorMaxWidth];
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

- (id)_bodyAttributesWithColor:(id)color
{
  colorCopy = color;
  v5 = +[NSParagraphStyle defaultParagraphStyle];
  v6 = [v5 mutableCopy];

  layoutValues = [(MessageListCellView *)self layoutValues];
  summaryFont = [layoutValues summaryFont];

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    LODWORD(v11) = 1.0;
    [v6 setHyphenationFactor:v11];
  }

  v14[0] = NSFontAttributeName;
  v14[1] = NSParagraphStyleAttributeName;
  v15[0] = summaryFont;
  v15[1] = v6;
  v14[2] = NSForegroundColorAttributeName;
  v15[2] = colorCopy;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

- (id)_defaultAttributesWithFont:(id)font color:(id)color
{
  fontCopy = font;
  colorCopy = color;
  v7 = +[NSParagraphStyle defaultParagraphStyle];
  v8 = [v7 mutableCopy];

  [v8 setLineBreakMode:4];
  v11[0] = NSFontAttributeName;
  v11[1] = NSParagraphStyleAttributeName;
  v12[0] = fontCopy;
  v12[1] = v8;
  v11[2] = NSForegroundColorAttributeName;
  v12[2] = colorCopy;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (id)_addressAttributesWithColor:(id)color
{
  colorCopy = color;
  layoutValues = [(MessageListCellView *)self layoutValues];
  addressFont = [layoutValues addressFont];
  v7 = [(MessageListCellView *)self _defaultAttributesWithFont:addressFont color:colorCopy];

  return v7;
}

- (id)_secondaryStringAttributesWithColor:(id)color
{
  colorCopy = color;
  layoutValues = [(MessageListCellView *)self layoutValues];
  subjectFont = [layoutValues subjectFont];
  v7 = [(MessageListCellView *)self _defaultAttributesWithFont:subjectFont color:colorCopy];

  return v7;
}

- (void)_recalculatePrimaryAttributedStringShouldRehighlight:(BOOL)rehighlight
{
  rehighlightCopy = rehighlight;
  _primaryLabelString = [(MessageListCellView *)self _primaryLabelString];
  v40 = _primaryLabelString;
  if (self->_attributedPrimaryString)
  {
    v6 = 1;
  }

  else
  {
    v6 = _primaryLabelString == 0;
  }

  if (!v6 || [_primaryLabelString length] && rehighlightCopy)
  {
    layoutValues = [(MessageListCellView *)self layoutValues];
    contentConfiguration = [(MessageListCellView *)self contentConfiguration];
    v9 = [layoutValues addressColorForContentConfiguration:contentConfiguration];

    layoutValues2 = [(MessageListCellView *)self layoutValues];
    configurationState = [(MessageListCellView *)self configurationState];
    contentConfiguration2 = [(MessageListCellView *)self contentConfiguration];
    backgroundConfiguration = [(MessageListCellView *)self backgroundConfiguration];
    v14 = [layoutValues2 annotationColorForConfigurationState:configurationState contentConfiguration:contentConfiguration2 backgroundConfiguration:backgroundConfiguration];

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

      attributedAddress = v19;

      if (!attributedAddress)
      {
        goto LABEL_21;
      }

      v34 = [NSString stringWithFormat:attributedAddress, v40];
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
      viewModel = [(MessageListCellView *)self viewModel];
      addressIsPresent = [viewModel addressIsPresent];

      if ((addressIsPresent & 1) == 0)
      {
        layoutValues3 = [(MessageListCellView *)self layoutValues];
        configurationState2 = [(MessageListCellView *)self configurationState];
        contentConfiguration3 = [(MessageListCellView *)self contentConfiguration];
        backgroundConfiguration2 = [(MessageListCellView *)self backgroundConfiguration];
        v26 = [layoutValues3 absentDataColorForConfigurationState:configurationState2 contentConfiguration:contentConfiguration3 backgroundConfiguration:backgroundConfiguration2];

        v15 = v26;
      }

      v27 = [NSAttributedString alloc];
      v28 = [(MessageListCellView *)self _addressAttributesWithColor:v15];
      v29 = [v27 initWithString:v40 attributes:v28];

      viewModel2 = [(MessageListCellView *)self viewModel];
      attributedAddress = [viewModel2 attributedAddress];

      if (attributedAddress)
      {
        v16 = [[NSMutableAttributedString alloc] initWithAttributedString:attributedAddress];
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

- (void)_recalculateSecondaryAttributedStringShouldRehighlight:(BOOL)rehighlight
{
  rehighlightCopy = rehighlight;
  viewModel = [(MessageListCellView *)self viewModel];
  subject = [viewModel subject];

  if (self->_attributedSecondaryString)
  {
    v6 = 1;
  }

  else
  {
    v6 = subject == 0;
  }

  if (!v6 || [subject length] && rehighlightCopy)
  {
    layoutValues = [(MessageListCellView *)self layoutValues];
    contentConfiguration = [(MessageListCellView *)self contentConfiguration];
    v9 = [layoutValues subjectColorForContentConfiguration:contentConfiguration];

    viewModel2 = [(MessageListCellView *)self viewModel];
    LOBYTE(contentConfiguration) = [viewModel2 subjectIsPresent];

    if ((contentConfiguration & 1) == 0)
    {
      layoutValues2 = [(MessageListCellView *)self layoutValues];
      configurationState = [(MessageListCellView *)self configurationState];
      contentConfiguration2 = [(MessageListCellView *)self contentConfiguration];
      backgroundConfiguration = [(MessageListCellView *)self backgroundConfiguration];
      v15 = [layoutValues2 absentDataColorForConfigurationState:configurationState contentConfiguration:contentConfiguration2 backgroundConfiguration:backgroundConfiguration];

      v9 = v15;
    }

    v16 = [NSAttributedString alloc];
    v17 = [(MessageListCellView *)self _secondaryStringAttributesWithColor:v9];
    v18 = [v16 initWithString:subject attributes:v17];

    string = [v18 string];
    accessibilitySecondaryLabel = self->_accessibilitySecondaryLabel;
    self->_accessibilitySecondaryLabel = string;

    v21 = [(MessageListCellView *)self _highlightedSubject:v18];
    attributedSecondaryString = self->_attributedSecondaryString;
    self->_attributedSecondaryString = v21;
  }
}

- (void)_recalculateTertiaryAttributedStringShouldRehighlight:(BOOL)rehighlight
{
  rehighlightCopy = rehighlight;
  summary = [(MessageListCellView *)self summary];
  v6 = summary;
  if (self->_attributedTertiaryString)
  {
    v7 = 1;
  }

  else
  {
    v7 = summary == 0;
  }

  v12 = summary;
  if (!v7 || (v8 = [summary length], v6 = v12, v8) && rehighlightCopy)
  {
    v9 = [(MessageListCellView *)self _formatTertiaryString:v6];
    v10 = [(MessageListCellView *)self _highlightedSummarySnippet:v9];
    attributedTertiaryString = self->_attributedTertiaryString;
    self->_attributedTertiaryString = v10;

    v6 = v12;
  }
}

- (id)_formatTertiaryString:(id)string
{
  stringCopy = string;
  layoutValues = [(MessageListCellView *)self layoutValues];
  configurationState = [(MessageListCellView *)self configurationState];
  contentConfiguration = [(MessageListCellView *)self contentConfiguration];
  backgroundConfiguration = [(MessageListCellView *)self backgroundConfiguration];
  v8 = [layoutValues summaryColorForConfigurationState:configurationState contentConfiguration:contentConfiguration backgroundConfiguration:backgroundConfiguration];

  LODWORD(contentConfiguration) = [(MessageListCellView *)self hasGeneratedSummary];
  v9 = objc_opt_new();
  v10 = [(MessageListCellView *)self _bodyAttributesWithColor:v8];
  if (contentConfiguration)
  {
    v11 = objc_alloc_init(NSTextAttachment);
    [(MessageListCellView *)self setSummarySymbolTextAttachment:v11];

    layoutValues2 = [(MessageListCellView *)self layoutValues];
    summarySymbolFont = [layoutValues2 summarySymbolFont];
    v14 = [UIImage mf_imageForSummarySymbolWithFont:summarySymbolFont];
    summarySymbolTextAttachment = [(MessageListCellView *)self summarySymbolTextAttachment];
    [summarySymbolTextAttachment setImage:v14];

    layoutValues3 = [(MessageListCellView *)self layoutValues];
    configurationState2 = [(MessageListCellView *)self configurationState];
    contentConfiguration2 = [(MessageListCellView *)self contentConfiguration];
    backgroundConfiguration2 = [(MessageListCellView *)self backgroundConfiguration];
    v20 = [layoutValues3 summarySymbolColorForConfigurationState:configurationState2 contentConfiguration:contentConfiguration2 backgroundConfiguration:backgroundConfiguration2];

    summarySymbolTextAttachment2 = [(MessageListCellView *)self summarySymbolTextAttachment];
    v28 = NSForegroundColorAttributeName;
    v29 = v20;
    v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v23 = [NSAttributedString attributedStringWithAttachment:summarySymbolTextAttachment2 attributes:v22];
    [v9 appendAttributedString:v23];

    v24 = [[NSAttributedString alloc] initWithString:@" "];
    [v9 appendAttributedString:v24];
  }

  v25 = [[NSAttributedString alloc] initWithString:stringCopy attributes:v10];
  [v9 appendAttributedString:v25];

  return v9;
}

- (id)_highlightedSender:(id)sender
{
  senderCopy = sender;
  viewModel = [(MessageListCellView *)self viewModel];
  hintsBySnippetZone = [viewModel hintsBySnippetZone];
  v7 = [hintsBySnippetZone objectForKeyedSubscript:EMMessageSnippetHintZoneAuthor];

  viewModel2 = [(MessageListCellView *)self viewModel];
  hintsBySnippetZone2 = [viewModel2 hintsBySnippetZone];
  v10 = [hintsBySnippetZone2 objectForKeyedSubscript:EMMessageSnippetHintZoneAuthorEmailAddresses];

  if ([v7 count] || objc_msgSend(v10, "count"))
  {
    v11 = +[MessageListCellView log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = [EFPrivacy partiallyRedactedStringFromArray:v7];
      v16 = [EFPrivacy partiallyRedactedStringFromArray:v10];
      string = [senderCopy string];
      v18 = 134218754;
      selfCopy = self;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = string;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%p: [Snippet Hints] Highlighting: %@ and %@ in %@", &v18, 0x2Au);
    }

    v12 = sub_1004899C8(self);
    v13 = [MUISnippetGenerator highlightingAuthorTokens:v7 authorEmailTokens:v10 inEmailAttributedString:senderCopy highlighting:v12 error:0];
  }

  else
  {
    v13 = senderCopy;
  }

  return v13;
}

- (id)_highlightedSubject:(id)subject
{
  subjectCopy = subject;
  viewModel = [(MessageListCellView *)self viewModel];
  hintsBySnippetZone = [viewModel hintsBySnippetZone];
  v7 = [hintsBySnippetZone objectForKeyedSubscript:EMMessageSnippetHintZoneSubject];

  if ([v7 count])
  {
    v8 = +[MessageListCellView log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v21 = [EFPrivacy partiallyRedactedStringFromArray:v7];
      string = [subjectCopy string];
      v23 = 134218498;
      selfCopy = self;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = string;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%p: [Snippet Hints] Highlighting: %@ in %@", &v23, 0x20u);
    }

    secondaryLabel = [(MessageListCellView *)self secondaryLabel];
    [secondaryLabel bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = sub_1004899C8(self);
    v19 = [MUISnippetGenerator highlightedSnippetUsingTokens:v7 attributedString:subjectCopy frame:v18 highlighting:0 error:v11, v13, v15, v17];
  }

  else
  {
    v19 = subjectCopy;
  }

  return v19;
}

- (id)_highlightedSummarySnippet:(id)snippet
{
  snippetCopy = snippet;
  viewModel = [(MessageListCellView *)self viewModel];
  hintsBySnippetZone = [viewModel hintsBySnippetZone];
  v7 = [hintsBySnippetZone objectForKeyedSubscript:EMMessageSnippetHintZoneTextContent];

  if ([v7 count])
  {
    v8 = +[MessageListCellView log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = [EFPrivacy partiallyRedactedStringFromArray:v7];
      string = [snippetCopy string];
      v14 = 134218498;
      selfCopy = self;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = string;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%p: [Snippet Hints] Highlighting: %@ in %@", &v14, 0x20u);
    }

    v9 = sub_1004899C8(self);
    v10 = [MUISnippetGenerator highlightedSnippetUsingTokens:v7 attributedString:snippetCopy maxNumberOfWordsBeforeOrAfterToken:2 maxNumberOfRanges:2 highlighting:v9 error:0];
  }

  else
  {
    v10 = snippetCopy;
  }

  return v10;
}

- (id)_highlightedPrimaryString:(id)string
{
  stringCopy = string;
  if ([(MessageListCellView *)self isSenderSpecificCell])
  {
    [(MessageListCellView *)self _highlightedSubject:stringCopy];
  }

  else
  {
    [(MessageListCellView *)self _highlightedSender:stringCopy];
  }
  v5 = ;

  return v5;
}

- (CGRect)_rectForChevronBoxWithBounds:(CGRect)bounds addressRect:(CGRect)rect type:(int64_t)type
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = bounds.size.height;
  v8 = bounds.size.width;
  v9 = bounds.origin.y;
  v10 = bounds.origin.x;
  [(MessageListCellView *)self _sizeForChevronWithType:type];
  [(MessageListCellView *)self _originForChevronBoxWithBounds:v10 addressRect:v9 sizeForChevron:v8, v7, x, y, width, height, v12, v13];

  MFIntegralRectToViewScale();
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)_originForChevronBoxWithBounds:(CGRect)bounds addressRect:(CGRect)rect sizeForChevron:(CGSize)chevron
{
  y = rect.origin.y;
  x = rect.origin.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v9 = bounds.origin.y;
  v10 = bounds.origin.x;
  v12 = [(MessageListCellView *)self layoutValues:*&chevron.width];
  addressFont = [v12 addressFont];

  [addressFont mf_baselinePointFromOriginPoint:{x, y}];
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    if (MUISolariumFeatureEnabled())
    {
      layoutValues = [(MessageListCellView *)self layoutValues];
      [layoutValues addressCapHeight];
    }

    else
    {
      layoutValues = [(MessageListCellView *)self layoutValues];
      addressFont2 = [layoutValues addressFont];
      [addressFont2 capHeight];
    }
  }

  mf_prefersRightToLeftInterfaceLayout = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  traitCollection = [(MessageListCellView *)self traitCollection];
  [traitCollection mf_useSplitViewStyling];

  if (mf_prefersRightToLeftInterfaceLayout)
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

- (CGSize)_sizeForChevronWithType:(int64_t)type
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (type)
  {
    if (type == 3)
    {
      type = 2;
    }

    v5 = [UIImage mf_imageForChevronType:type];
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

- (CGRect)_rectForChevronWithBounds:(CGRect)bounds addressRect:(CGRect)rect
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  if (self->_chevronType)
  {
    height = rect.size.height;
    width = rect.size.width;
    v8 = rect.origin.y;
    v9 = rect.origin.x;
    v10 = bounds.size.height;
    v11 = bounds.size.width;
    v30 = bounds.origin.x;
    v29 = bounds.origin.y;
    mf_prefersRightToLeftInterfaceLayout = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
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
      layoutValues = [(MessageListCellView *)self layoutValues];
      [layoutValues padding];
      v28 = v26;

      [v24 size];
      v14 = v9;
      v15 = v8;
      if (mf_prefersRightToLeftInterfaceLayout)
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

- (CGPoint)_dateOriginUnderSummary:(CGRect)summary
{
  height = summary.size.height;
  width = summary.size.width;
  y = summary.origin.y;
  x = summary.origin.x;
  layoutValues = [(MessageListCellView *)self layoutValues];
  summaryFont = [layoutValues summaryFont];

  layoutValues2 = [(MessageListCellView *)self layoutValues];
  [layoutValues2 addressAndSubjectHeight];
  v12 = v11;

  tertiaryLabel = [(MessageListCellView *)self tertiaryLabel];
  v14 = [(MessageListCellView *)self _isLabelValid:tertiaryLabel];

  if (v14)
  {
    layoutValues3 = [(MessageListCellView *)self layoutValues];
    summary = [(MessageListCellView *)self summary];
    [layoutValues3 actualLineCountForSummary:summary hasGeneratedSummary:-[MessageListCellView hasGeneratedSummary](self bounds:{"hasGeneratedSummary"), x, y, width, height}];
  }

  [summaryFont _bodyLeading];
  [summaryFont descender];
  UIRoundToViewScale();
  v18 = y + v12 + v17;

  v19 = x;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)_dateOriginAlignedWithAddressBaselineForBounds:(CGRect)bounds
{
  y = bounds.origin.y;
  x = bounds.origin.x;
  v5 = [(MessageListCellView *)self layoutValues:bounds.origin.x];
  if (MUISolariumFeatureEnabled())
  {
    addressFont = [v5 addressFont];
    [addressFont ascender];
    subjectFont = [v5 subjectFont];
    [subjectFont ascender];

    UICeilToViewScale();
    v9 = y + v8;
  }

  else
  {
    [v5 addressCapHeight];
    v11 = v10;
    dateFont = [v5 dateFont];
    [dateFont mf_originPointFromBaselinePoint:{x, y + v11}];
    x = v13;
    v9 = v14;
  }

  v15 = x;
  v16 = v9;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGRect)_rectForDateWithBounds:(CGRect)bounds chevronRect:(CGRect)rect
{
  height = rect.size.height;
  y = rect.origin.y;
  width = rect.size.width;
  x = rect.origin.x;
  v6 = bounds.size.height;
  v7 = bounds.size.width;
  v8 = bounds.origin.y;
  v9 = bounds.origin.x;
  mf_prefersRightToLeftInterfaceLayout = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [(UILabel *)self->_dateLabel sizeThatFits:v7, v6];
  if (IsAccessibilityCategory)
  {
    [(MessageListCellView *)self _dateOriginUnderSummary:v9, v8, v7, v6];
    if (mf_prefersRightToLeftInterfaceLayout)
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
    if ((mf_prefersRightToLeftInterfaceLayout & 1) == 0)
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
  if (mf_prefersRightToLeftInterfaceLayout)
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

- (void)_layoutChevronForDisclosureStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  layoutValues = [(MessageListCellView *)self layoutValues];
  configurationState = [(MessageListCellView *)self configurationState];
  contentConfiguration = [(MessageListCellView *)self contentConfiguration];
  backgroundConfiguration = [(MessageListCellView *)self backgroundConfiguration];
  v9 = [layoutValues threadDisclosureColorForConfigurationState:configurationState contentConfiguration:contentConfiguration backgroundConfiguration:backgroundConfiguration];
  disclosureButton = [(MessageListCellView *)self disclosureButton];
  [disclosureButton setTintColor:v9];

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
  if (animatedCopy)
  {
    [UIView animateWithDuration:v16 animations:v17 completion:0.333];
  }

  else
  {
    (v16[2])(v16);
    (v17[2])(v17, 1);
  }
}

- (CGRect)_rectForDisclosureButtonWithFrame:(CGRect)frame boxFrame:(CGRect)boxFrame
{
  height = boxFrame.size.height;
  width = boxFrame.size.width;
  y = boxFrame.origin.y;
  x = boxFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  mf_prefersRightToLeftInterfaceLayout = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  v22 = v10;
  if (mf_prefersRightToLeftInterfaceLayout)
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
  if ((mf_prefersRightToLeftInterfaceLayout & 1) == 0)
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

- (CGRect)_adjustRect:(CGRect)rect forTrailingRect:(CGRect)trailingRect padding:(double)padding
{
  height = trailingRect.size.height;
  width = trailingRect.size.width;
  y = trailingRect.origin.y;
  x = trailingRect.origin.x;
  v9 = rect.size.height;
  v10 = rect.size.width;
  v11 = rect.origin.y;
  v12 = rect.origin.x;
  if (CGRectGetWidth(trailingRect) > 0.0)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    if (CGRectGetMinX(v27) > 0.0)
    {
      mf_prefersRightToLeftInterfaceLayout = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      left = UIEdgeInsetsZero.left;
      if (mf_prefersRightToLeftInterfaceLayout)
      {
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v15 = CGRectGetMaxX(v28) + padding;
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
        v23 = CGRectGetMaxX(v30) + padding;
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

- (CGRect)_rectForAvatarWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    goto LABEL_5;
  }

  layoutValues = [(MessageListCellView *)self layoutValues];
  [layoutValues avatarSize];
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
      viewModel = [(MessageListCellView *)self viewModel];
      [viewModel style];
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
      viewModel2 = [(MessageListCellView *)self viewModel];
      style = [viewModel2 style];

      if (style == 2)
      {
        layoutValues2 = [(MessageListCellView *)self layoutValues];
        [layoutValues2 standardAvatarSize];
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

- (CGRect)_rectForAddressWithBounds:(CGRect)bounds
{
  mf_prefersRightToLeftInterfaceLayout = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  layoutValues = [(MessageListCellView *)self layoutValues];
  [layoutValues horizontalSpacing];

  UIRectInset();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v49 = v6;
  v50 = v8;
  v51 = v10;
  v52 = v12;
  layoutValues2 = [(MessageListCellView *)self layoutValues];
  addressFont = [layoutValues2 addressFont];

  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    layoutValues3 = [(MessageListCellView *)self layoutValues];
    [layoutValues3 addressCapHeight];
    v18 = v9 + v17;

    [addressFont mf_originPointFromBaselinePoint:{v7, v18}];
    v49 = v19;
    v50 = v20;
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100150DF0;
  v47[3] = &unk_1006517B0;
  v48 = mf_prefersRightToLeftInterfaceLayout ^ 1;
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

  [addressFont lineHeight];
  UIRoundToViewScale();
  v52 = v33;
  if (!MUISolariumFeatureEnabled())
  {
    [addressFont descender];
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

- (CGRect)_rectForSubjectWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutValues = [(MessageListCellView *)self layoutValues];
  isSubjectVisible = [layoutValues isSubjectVisible];

  if (isSubjectVisible)
  {
    mf_prefersRightToLeftInterfaceLayout = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
    left = UIEdgeInsetsZero.left;
    if (self->_recipientLabelType)
    {
      [(MessageListCellView *)self _rectForRecipientLabelWithBounds:x, y, width, height];
      v12 = left + CGRectGetWidth(v39) + 2.5;
      if (!mf_prefersRightToLeftInterfaceLayout)
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
        if (!mf_prefersRightToLeftInterfaceLayout)
        {
          left = v17;
        }
      }
    }

    layoutValues2 = [(MessageListCellView *)self layoutValues];
    subjectFont = [layoutValues2 subjectFont];

    v20 = x + left;
    v21 = y + UIEdgeInsetsZero.top;
    if (MUISolariumFeatureEnabled())
    {
      layoutValues3 = [(MessageListCellView *)self layoutValues];
      [layoutValues3 addressCapHeight];
    }

    else
    {
      layoutValues4 = [(MessageListCellView *)self layoutValues];
      [layoutValues4 addressAndSubjectHeight];
      v29 = v21 + v28;

      [subjectFont mf_originPointFromBaselinePoint:{v20, v29}];
    }

    layoutValues5 = [(MessageListCellView *)self layoutValues];
    [layoutValues5 subjectHeight];

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

- (CGRect)_rectForMultipleSubjectWithBounds:(CGRect)bounds position:(int64_t)position
{
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutValues = [(MessageListCellView *)self layoutValues];
  [layoutValues addressCapHeight];
  v9 = v8;
  summaryFont = [layoutValues summaryFont];
  [summaryFont lineHeight];
  [summaryFont mf_originPointFromBaselinePoint:{x + UIEdgeInsetsZero.left, y + UIEdgeInsetsZero.top + v9 + 2.0 + v11 * (position + 1) + (2 * position)}];
  [summaryFont lineHeight];
  [summaryFont descender];
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

- (CGRect)_rectForSummaryWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  mf_prefersRightToLeftInterfaceLayout = [(MessageListCellView *)self mf_prefersRightToLeftInterfaceLayout];
  hasGeneratedSummary = [(MessageListCellView *)self hasGeneratedSummary];
  layoutValues = [(MessageListCellView *)self layoutValues];
  v11 = [layoutValues linesOfSummaryForCompactHeight:self->_compact];

  summary = [(MessageListCellView *)self summary];
  if (v11 >= 1)
  {
    layoutValues2 = [(MessageListCellView *)self layoutValues];
    summaryFont = [layoutValues2 summaryFont];

    viewModel = [(MessageListCellView *)self viewModel];
    style = [viewModel style];

    if (style != 2)
    {
      layoutValues3 = [(MessageListCellView *)self layoutValues];
      [layoutValues3 actualLineCountForSummary:summary hasGeneratedSummary:hasGeneratedSummary bounds:{x, y, width, height}];
    }

    layoutValues4 = [(MessageListCellView *)self layoutValues];
    [layoutValues4 addressAndSubjectHeight];

    [summaryFont lineHeight];
    [summaryFont leading];
    UICeilToViewScale();
    if (style == 2 && [(MessageListCellView *)self recipientLabelType])
    {
      [(MessageListCellView *)self _rectForRecipientLabelWithBounds:x, y, width, height];
      v19 = v40.origin.x;
      v20 = v40.origin.y;
      v21 = v40.size.width;
      v22 = v40.size.height;
      CGRectGetWidth(v40);
      if ((mf_prefersRightToLeftInterfaceLayout & 1) == 0)
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
      if (style != 2)
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
          if ((mf_prefersRightToLeftInterfaceLayout & 1) == 0)
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

- (CGRect)_rectForRecipientLabelWithBounds:(CGRect)bounds
{
  recipientLabelType = self->_recipientLabelType;
  if (recipientLabelType)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    traitCollection = [(MessageListCellView *)self traitCollection];
    v10 = sub_10014CFBC(recipientLabelType, [traitCollection userInterfaceStyle]);

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

      _baselineLabelForIndicator = [(MessageListCellView *)self _baselineLabelForIndicator];
      [_baselineLabelForIndicator frame];
      CGRectGetMinY(v26);
      [_baselineLabelForIndicator _firstBaselineOffsetFromTop];
      v27.origin.x = v15;
      v27.origin.y = y;
      v27.size.width = v12;
      v27.size.height = v14;
      CGRectGetHeight(v27);
      font = [_baselineLabelForIndicator font];
      [font capHeight];
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

- (CGRect)_rectForBlockedSenderLabelWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(MessageListCellView *)self shouldShowBlockedSenderLabel])
  {
    blockedSenderLabelImageView = [(MessageListCellView *)self blockedSenderLabelImageView];
    image = [blockedSenderLabelImageView image];

    if (image)
    {
      [image size];
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
        [image size];
        v14 = MaxX - v16;
      }

      primaryLabel = [(MessageListCellView *)self primaryLabel];
      [primaryLabel frame];
      CGRectGetMinY(v25);
      [primaryLabel _firstBaselineOffsetFromTop];
      v26.origin.x = v14;
      v26.origin.y = y;
      v26.size.width = v11;
      v26.size.height = v13;
      CGRectGetHeight(v26);
      font = [primaryLabel font];
      [font capHeight];
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
    viewModel = [(MessageListCellView *)self viewModel];
    style = [viewModel style];

    v3 = &OBJC_IVAR___MessageListCellView__secondaryLabel;
    if (style == 2)
    {
      v3 = &OBJC_IVAR___MessageListCellView__tertiaryLabel;
    }
  }

  v6 = *(&self->super.super.super.isa + *v3);

  return v6;
}

- (BOOL)_isLabelValid:(id)valid
{
  validCopy = valid;
  [validCopy alpha];
  if (v4 <= 0.0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    [validCopy frame];
    v8.origin.x = CGRectZero.origin.x;
    v8.origin.y = CGRectZero.origin.y;
    v8.size.width = CGRectZero.size.width;
    v8.size.height = CGRectZero.size.height;
    v5 = !CGRectEqualToRect(v7, v8);
  }

  return v5;
}

- (BOOL)_hasPastReminderForReadLaterDate:(id)date displayDate:(id)displayDate
{
  dateCopy = date;
  displayDateCopy = displayDate;
  v7 = +[NSDate now];
  if ([dateCopy ef_isEarlierThanOrEqualDate:v7])
  {
    v8 = 1;
  }

  else
  {
    v8 = [dateCopy ef_isEarlierThanOrEqualDate:displayDateCopy];
  }

  return v8;
}

- (CGRect)_rectForCategoriesStackViewWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (EMBlackPearlIsFeatureEnabled())
  {
    if ([(MessageListCellView *)self recipientLabelType])
    {
      recipientLabelImageView = [(MessageListCellView *)self recipientLabelImageView];
      [recipientLabelImageView frame];
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

    _baselineLabelForIndicator = [(MessageListCellView *)self _baselineLabelForIndicator];
    [_baselineLabelForIndicator frame];
    CGRectGetMinY(v30);
    [_baselineLabelForIndicator _firstBaselineOffsetFromTop];
    v31.origin.x = v10;
    v31.origin.y = y;
    v31.size.width = v16;
    v31.size.height = v18;
    CGRectGetHeight(v31);
    font = [_baselineLabelForIndicator font];
    [font capHeight];
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
  secondaryLabel = [(MessageListCellView *)self secondaryLabel];
  [secondaryLabel setText:0];

  [(MessageListCellView *)self setAttributedPrimaryString:0];
  primaryLabel = [(MessageListCellView *)self primaryLabel];
  [primaryLabel setText:0];

  [(MessageListCellView *)self setAttributedTertiaryString:0];
  tertiaryLabel = [(MessageListCellView *)self tertiaryLabel];
  [tertiaryLabel setText:0];

  [(MessageListCellView *)self setSummary:&stru_100662A88];
  [(MessageListCellView *)self setHasGeneratedSummary:0];
  [(MessageListCellView *)self setSummarySymbolTextAttachment:0];
  avatarImageView = [(MessageListCellView *)self avatarImageView];
  [avatarImageView setImage:0];

  [(MessageListCellView *)self setAvatarResult:0];
  [(MessageListCellView *)self _updateAvatarView];
  avatarToken = [(MessageListCellView *)self avatarToken];
  [avatarToken cancel];

  [(MessageListCellView *)self setAvatarToken:0];
  categorizationStateLabel = [(MessageListCellView *)self categorizationStateLabel];
  [categorizationStateLabel setText:0];

  [(MessageListCellView *)self setCompact:0];
  dateLabel = [(MessageListCellView *)self dateLabel];
  [dateLabel _setTextEncapsulation:0];
  [dateLabel setAttributedText:0];
  [dateLabel setText:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [dateLabel setDate:0];
  }

  statusIndicatorManager = [(MessageListCellView *)self statusIndicatorManager];
  [statusIndicatorManager prepareForReuse];
}

- (BOOL)verifyContentVisibility:(id *)visibility
{
  primaryLabel = [(MessageListCellView *)self primaryLabel];
  if (!primaryLabel)
  {
    return 1;
  }

  v5 = primaryLabel;
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
      isHidden = [v5 isHidden];
      [v5 alpha];
      v14 = [NSString stringWithFormat:@"%@ is unexpectedly hidden (hidden=%d, alpha=%.2f)", v11, isHidden, v13];
      v15 = [NSError em_internalErrorWithReason:v14];
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_10;
    }

    superview = [v5 superview];

    if (!superview)
    {
      break;
    }

    superview2 = [v5 superview];

    v5 = superview2;
    if (!superview2)
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
  *visibility = v15;

  v9 = 0;
LABEL_15:

  return v9;
}

@end