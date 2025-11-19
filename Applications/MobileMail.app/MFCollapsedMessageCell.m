@interface MFCollapsedMessageCell
+ (double)defaultHeightWithDisplayMetrics:(id)a3;
- (BOOL)shouldHideAvatarView;
- (ConversationSearchOverlayView)findOverlayView;
- (MFCollapsedMessageCell)initWithFrame:(CGRect)a3;
- (double)_baselineToBaselineSpacingInConversation;
- (double)_leadingMargin;
- (double)_messageBottomPaddingInConversation;
- (double)_messageTopPaddingInConversation;
- (double)_topToSenderBaselineInConversation;
- (id)_messageFromViewModel:(id)a3;
- (void)_createPrimaryViews;
- (void)_fontMetricCacheDidInvalidate:(id)a3;
- (void)_layoutLabelBetweenViews:(id)a3 leading:(id)a4 trailing:(id)a5 baseline:(double)a6 fillWidth:(BOOL)a7;
- (void)_layoutSubviews;
- (void)_setAvatarViewFrame:(CGRect)a3;
- (void)_sizeToFitLabels;
- (void)_updateAvatarView;
- (void)_updateFonts;
- (void)_updateForViewModelChange;
- (void)_updateHorizontalStatusIndicatorsFromViewModel:(id)a3;
- (void)_updateLabelColor;
- (void)_updateLabelFrameAfterHorizontalStatusIndicators:(CGRect)a3 label:(id)a4;
- (void)_updateSummary:(id)a3 didComplete:(BOOL)a4;
- (void)_updateSummaryNumberOfLines;
- (void)_updateVerticalStatusIndicatorsFromViewModel:(id)a3;
- (void)addConversationSearchOverlay;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)removeConversationSearchOverlay;
- (void)setHighlighted:(BOOL)a3;
- (void)setShouldShowSubject:(BOOL)a3;
- (void)setViewModel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MFCollapsedMessageCell

- (MFCollapsedMessageCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MFCollapsedMessageCell;
  v3 = [(MFMessageConversationViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFCollapsedMessageCell *)v3 _createPrimaryViews];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_fontMetricCacheDidInvalidate:" name:MFFontMetricCacheInvalidationNotification object:0];

    [(MFMessageConversationViewCell *)v4 setRoundedCorners:1];
  }

  return v4;
}

- (ConversationSearchOverlayView)findOverlayView
{
  findOverlayView = self->_findOverlayView;
  if (!findOverlayView)
  {
    v4 = [ConversationSearchOverlayView alloc];
    [(MFCollapsedMessageCell *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_findOverlayView;
    self->_findOverlayView = v5;

    v7 = [(MFCollapsedMessageCell *)self contentView];
    [v7 addSubview:self->_findOverlayView];

    findOverlayView = self->_findOverlayView;
  }

  return findOverlayView;
}

- (void)_createPrimaryViews
{
  v3 = +[UIColor mailConversationViewCollapsedCellBackgroundColor];
  v4 = [(MFCollapsedMessageCell *)self contentView];
  [v4 setBackgroundColor:v3];

  v5 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MFCollapsedMessageCell *)self setSenderOrSubjectLabel:v9];

  v10 = [(MFCollapsedMessageCell *)self contentView];
  v11 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [v10 addSubview:v11];

  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MFCollapsedMessageCell *)self setSummaryLabel:v12];

  v13 = [(MFCollapsedMessageCell *)self contentView];
  v14 = [(MFCollapsedMessageCell *)self summaryLabel];
  [v13 addSubview:v14];

  v15 = [[UIDateLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MFCollapsedMessageCell *)self setTimestampLabel:v15];

  v16 = [(MFCollapsedMessageCell *)self contentView];
  v17 = [(MFCollapsedMessageCell *)self timestampLabel];
  [v16 addSubview:v17];

  [(MFCollapsedMessageCell *)self _updateLabelColor];
  +[MFMessageDisplayMetrics avatarDiameter];
  v19 = v18;
  if (MUISolariumFeatureEnabled())
  {
    v20 = [[MUIAvatarViewController alloc] initWithContacts:&__NSArray0__struct];
    [(MFCollapsedMessageCell *)self setAvatarController:v20];

    v21 = [(MFCollapsedMessageCell *)self avatarController];
    v22 = [v21 view];
    [(MFCollapsedMessageCell *)self setAvatarView:v22];

    v23 = [(MFCollapsedMessageCell *)self avatarView];
    [v23 setFrame:{0.0, 0.0, v19, v19}];
  }

  else
  {
    v24 = [[MFAvatarView alloc] initWithFrame:0.0, 0.0, v19, v19];
    [(MFCollapsedMessageCell *)self setMfAvatarView:v24];

    v25 = [(MFCollapsedMessageCell *)self mfAvatarView];
    [v25 setShowsContactOnTap:1];

    v23 = [(MFCollapsedMessageCell *)self mfAvatarView];
    [(MFCollapsedMessageCell *)self setAvatarView:v23];
  }

  v26 = [(MFCollapsedMessageCell *)self avatarView];
  [v26 setAlpha:0.4];

  [(MFCollapsedMessageCell *)self _updateAvatarView];
  v27 = objc_alloc_init(MessageViewStatusIndicatorManager);
  [(MFCollapsedMessageCell *)self setVerticalStatusIndicatorManager:v27];

  v28 = [(MFCollapsedMessageCell *)self verticalStatusIndicatorManager];
  [v28 setHidesVIPIndicator:1];

  v29 = objc_alloc_init(MessageViewStatusIndicatorManager);
  [(MFCollapsedMessageCell *)self setHorizontalStatusIndicatorManager:v29];

  [(MFCollapsedMessageCell *)self _updateSummaryNumberOfLines];

  [(MFCollapsedMessageCell *)self _updateFonts];
}

- (void)_setAvatarViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(MFCollapsedMessageCell *)self avatarView];
  [v7 setFrame:{x, y, width, height}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MFCollapsedMessageCell;
  [(MFMessageConversationViewCell *)&v3 layoutSubviews];
  [(MFCollapsedMessageCell *)self _layoutSubviews];
}

- (void)_layoutSubviews
{
  v67 = [(MFCollapsedMessageCell *)self contentView];
  v3 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  v68 = [(MFCollapsedMessageCell *)self summaryLabel];
  v4 = [(MFCollapsedMessageCell *)self timestampLabel];
  v69 = [(MFCollapsedMessageCell *)self avatarView];
  v5 = [(MFCollapsedMessageCell *)self shouldHideAvatarView];
  v6 = [(MFCollapsedMessageCell *)self mf_prefersRightToLeftInterfaceLayout];
  v7 = [(MFCollapsedMessageCell *)self shouldShowSubject];
  v8 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

  v10 = [(MFConversationViewCell *)self displayMetrics];
  [v67 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(MFCollapsedMessageCell *)self _topToSenderBaselineInConversation];
  v70 = v19;
  [(MFCollapsedMessageCell *)self _baselineToBaselineSpacingInConversation];
  v71 = v20;
  [(MFCollapsedMessageCell *)self _leadingMargin];
  v22 = v21;
  [v10 avatarDiameterForCurrentContentSize];
  v24 = v23;
  v25 = v22;
  if (v6)
  {
    v26 = v12;
    v78.origin.x = v12;
    v78.origin.y = v14;
    v78.size.width = v16;
    v78.size.height = v18;
    Width = CGRectGetWidth(v78);
    v79.origin.x = 0.0;
    v79.origin.y = 0.0;
    v79.size.width = v24;
    v79.size.height = v24;
    v25 = Width - (v22 + CGRectGetWidth(v79));
    v12 = v26;
  }

  v66 = v12;
  [(MFCollapsedMessageCell *)self _messageTopPaddingInConversation];
  v29 = v28;
  v80.origin.y = 0.0;
  v80.origin.x = v25;
  v80.size.width = v24;
  v80.size.height = v24;
  Height = CGRectGetHeight(v80);
  v31 = v70 + v29;
  if (!v5)
  {
    v31 = v71 + v70 + v29;
  }

  [(MFCollapsedMessageCell *)self _setAvatarViewFrame:v25, v31 - Height];
  [(MFCollapsedMessageCell *)self avatarView];
  v65 = v18;
  v32 = v16;
  v34 = v33 = v14;
  [v34 frame];
  [v34 setFrame:?];

  [v4 frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  if (((v6 | IsAccessibilityCategory) & 1) == 0)
  {
    v42 = v35;
    v81.size.height = v65;
    v81.origin.x = v66;
    v81.origin.y = v33;
    v81.size.width = v32;
    v43 = CGRectGetWidth(v81);
    v82.origin.x = v42;
    v82.origin.y = v37;
    v82.size.width = v39;
    v82.size.height = v41;
    v22 = v43 - CGRectGetWidth(v82) - v22;
  }

  [v4 setFrame:{v22, v37, v39, v41}];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1001B1C90;
  v72[3] = &unk_100653880;
  v77 = IsAccessibilityCategory;
  v44 = v68;
  v76 = v71;
  v73 = v44;
  v74 = self;
  v45 = v4;
  v75 = v45;
  v46 = objc_retainBlock(v72);
  if (v7)
  {
    if (IsAccessibilityCategory)
    {
      v47 = 0;
    }

    else
    {
      v47 = v45;
    }

    [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v3 leading:0 trailing:v47 baseline:1 fillWidth:v70];
    [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v45 leading:v3 trailing:0 baseline:0 fillWidth:v70];
    v48 = v70 + v71;
    [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v44 leading:0 trailing:0 baseline:1 fillWidth:v70 + v71];
    goto LABEL_14;
  }

  if (v5)
  {
    [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v3 leading:0 trailing:0 baseline:1 fillWidth:v70];
    v48 = v70 + v71;
    [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v44 leading:0 trailing:0 baseline:1 fillWidth:v70 + v71];
LABEL_14:
    (v46[2])(v46, v48);
    goto LABEL_18;
  }

  if (MUISolariumFeatureEnabled())
  {
    [v3 _firstBaselineOffsetFromTop];
    UIRoundToViewScale();
    v50 = v49;
    [v3 frame];
    v52 = v51;
    [v44 frame];
    v70 = v70 - (v70 - v50 + (v52 + v53) * 0.5 - (v24 * 0.5 + v64));
  }

  [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v3 leading:v69 trailing:v45 baseline:1 fillWidth:v70];
  [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v45 leading:v3 trailing:0 baseline:0 fillWidth:v70];
  [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v44 leading:v69 trailing:0 baseline:1 fillWidth:v71 + v70];
LABEL_18:
  v54 = [(MFConversationViewCell *)self viewModel];
  [(MFCollapsedMessageCell *)self _updateVerticalStatusIndicatorsFromViewModel:v54];
  [(MFCollapsedMessageCell *)self _updateHorizontalStatusIndicatorsFromViewModel:v54];
  if (self->_findOverlayView)
  {
    [(MFCollapsedMessageCell *)self bounds];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = [(MFCollapsedMessageCell *)self findOverlayView];
    [v63 setFrame:{v56, v58, v60, v62}];
  }

  [(MFCollapsedMessageCell *)self mf_activateDebugModeIfEnabled];
}

- (void)_layoutLabelBetweenViews:(id)a3 leading:(id)a4 trailing:(id)a5 baseline:(double)a6 fillWidth:(BOOL)a7
{
  v7 = a7;
  v45 = a6;
  v47 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MFCollapsedMessageCell *)self mf_prefersRightToLeftInterfaceLayout];
  v14 = [(MFConversationViewCell *)self displayMetrics];
  [v14 minHorizontalSpacing];
  v16 = v15;

  [(MFCollapsedMessageCell *)self _leadingMargin];
  v18 = v17;
  v19 = [(MFCollapsedMessageCell *)self contentView];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [v19 layoutMargins];
  v29 = v28;
  if (v13)
  {
    v30 = v12;
  }

  else
  {
    v30 = v11;
  }

  if (v13)
  {
    v31 = v11;
  }

  else
  {
    v31 = v12;
  }

  if (v13)
  {
    v32 = v18;
  }

  else
  {
    v32 = v28;
  }

  v33 = v30;
  v34 = v31;
  v35 = v34;
  if (!v33)
  {
    if (v13)
    {
      v18 = v29;
    }

    if (v34)
    {
      goto LABEL_12;
    }

LABEL_16:
    v51.origin.x = v21;
    v51.origin.y = v23;
    v51.size.width = v25;
    v51.size.height = v27;
    v36 = CGRectGetWidth(v51) - v32;
    goto LABEL_17;
  }

  [v33 frame];
  v18 = v16 + CGRectGetMaxX(v49);
  if (!v35)
  {
    goto LABEL_16;
  }

LABEL_12:
  [v35 frame];
  v36 = CGRectGetMinX(v50) - v16;
LABEL_17:
  [v47 frame];
  v41 = v39;
  v42 = v40;
  v43 = v18;
  if (!v33)
  {
    v43 = v18;
    if (!v7)
    {
      v43 = v36 - CGRectGetWidth(*&v37);
    }
  }

  if (v7)
  {
    v41 = v36 - v18;
  }

  [v47 _firstBaselineOffsetFromTop];
  UIRoundToViewScale();
  [v47 setFrame:{v43, v46 - v44, v41, v42}];
}

- (double)_leadingMargin
{
  v3 = [(MFCollapsedMessageCell *)self contentView];
  [v3 directionalLayoutMargins];
  v5 = v4;

  v6 = [(MFConversationViewCell *)self displayMetrics];
  [v6 minHorizontalSpacing];
  v8 = v7;
  [v6 headerAvatarMaxOffset];
  v10 = v5 - v9;
  if (v8 >= v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

+ (double)defaultHeightWithDisplayMetrics:(id)a3
{
  v3 = a3;
  [v3 messageTopPaddingInConversation];
  v5 = v4;
  [v3 topToSenderBaselineInConversationForCollapsedCell];
  v7 = v6;
  [v3 baselineToBaselineSpacingInConversation];
  v9 = v8;
  [v3 messageBottomPaddingInConversationForCollapsedCell];
  v11 = v10;
  v12 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);
  v14 = v5 + v7 + v9 + v11;

  if (IsAccessibilityCategory)
  {
    [v3 baselineToBaselineSpacingInConversation];
    v16 = v15;
    [v3 messageBottomPaddingInConversationForCollapsedCell];
    v18 = v17;
    [v3 baselineToBaselineSpacingInConversation];
    v14 = v14 + v16 * 2.0 - v18 + v19;
  }

  return v14;
}

- (void)_updateVerticalStatusIndicatorsFromViewModel:(id)a3
{
  v4 = a3;
  v5 = [(MFCollapsedMessageCell *)self verticalStatusIndicatorManager];
  v6 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  if ([(MFCollapsedMessageCell *)self shouldHideAvatarView])
  {
    v7 = v6;
  }

  else
  {
    v7 = [(MFCollapsedMessageCell *)self avatarView];
  }

  v8 = v7;
  v9 = [v4 isVIP];
  v10 = [v4 isRead];
  v11 = [v4 isReplied];
  v12 = [v4 isForwarded];
  v13 = 2;
  if (!v9)
  {
    v13 = 0;
  }

  v14 = v13 | v10 ^ 1;
  if (v11)
  {
    v14 |= 8uLL;
  }

  if (v12)
  {
    v15 = v14 | 0x10;
  }

  else
  {
    v15 = v14;
  }

  [v5 setIndicatorOptions:v15];
  [v5 pruneIndicatorOptions:2];
  if ([v5 effectiveIndicatorOptions])
  {
    v16 = [(MFCollapsedMessageCell *)self mf_prefersRightToLeftInterfaceLayout];
    if (v16)
    {
      [(MFCollapsedMessageCell *)self bounds];
      Width = CGRectGetWidth(v39);
      [v8 frame];
      MaxX = CGRectGetMaxX(v40);
      [v8 frame];
      v19 = CGRectGetMaxX(v41);
      v20 = [(MFCollapsedMessageCell *)self contentView];
      [v20 bounds];
      Height = CGRectGetHeight(v42);
      MinX = Width - MaxX;
    }

    else
    {
      [v8 frame];
      MinX = CGRectGetMinX(v43);
      v24 = [(MFCollapsedMessageCell *)self contentView];
      [v24 bounds];
      Height = CGRectGetHeight(v44);

      v19 = 0.0;
    }

    [v5 updateImageViews];
    [(MFCollapsedMessageCell *)self _baselineToBaselineSpacingInConversation];
    v37 = v25;
    [v6 frame];
    MaxY = CGRectGetMaxY(v45);
    [v6 _baselineOffsetFromBottom];
    v28 = v27;
    v29 = [v6 font];
    [v29 capHeight];
    v31 = v30;

    if (v16)
    {
      v46.origin.x = v19;
      v46.origin.y = 0.0;
      v46.size.width = MinX;
      v46.size.height = Height;
      MidX = CGRectGetMidX(v46);
      v47.origin.x = v19;
      v47.origin.y = 0.0;
      v47.size.width = MinX;
      v47.size.height = Height;
      v33 = CGRectGetMinX(v47) + 14.0;
      if (MidX < v33)
      {
        v33 = MidX;
      }

      v34 = -1.0;
    }

    else
    {
      v48.origin.x = v19;
      v48.origin.y = 0.0;
      v48.size.width = MinX;
      v48.size.height = Height;
      v35 = CGRectGetMidX(v48);
      v49.origin.x = v19;
      v49.origin.y = 0.0;
      v49.size.width = MinX;
      v49.size.height = Height;
      v33 = CGRectGetMaxX(v49) + -14.0;
      if (v35 >= v33)
      {
        v33 = v35;
      }

      v34 = 1.0;
    }

    v36 = v33 + v34;
    v23 = [v5 statusIndicatorImageViews];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1001B24B0;
    v38[3] = &unk_1006538A8;
    v38[4] = self;
    *&v38[5] = v36;
    *&v38[6] = MaxY - v28 + v31 * -0.5;
    *&v38[7] = v37 + 1.0;
    [v23 enumerateObjectsUsingBlock:v38];
  }

  else
  {
    v23 = [v5 statusIndicatorImageViews];
    [v23 makeObjectsPerformSelector:"removeFromSuperview"];
  }
}

- (void)_updateHorizontalStatusIndicatorsFromViewModel:(id)a3
{
  v4 = a3;
  v5 = [(MFCollapsedMessageCell *)self horizontalStatusIndicatorManager];
  v6 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  if (IsAccessibilityCategory)
  {
    [(MFCollapsedMessageCell *)self timestampLabel];
  }

  else
  {
    [(MFCollapsedMessageCell *)self summaryLabel];
  }
  v8 = ;
  v9 = [v4 isFlagged];
  v10 = [v4 hasAttachments];
  v11 = [v4 isNotify];
  v12 = [v4 isMute];
  v13 = [v4 isBlockedSender];
  v14 = 4;
  if (!v9)
  {
    v14 = 0;
  }

  if (v10)
  {
    v14 |= 0x20uLL;
  }

  if (v11)
  {
    v14 |= 0x40uLL;
  }

  if (v12)
  {
    v14 |= 0x80uLL;
  }

  if (v13)
  {
    v15 = v14 | 0x100;
  }

  else
  {
    v15 = v14;
  }

  [v5 setIndicatorOptions:v15];
  v16 = [v4 flagColors];
  [v5 setFlagColors:v16];

  [v5 pruneIndicatorOptions:2];
  if ([v5 effectiveIndicatorOptions])
  {
    v17 = [(MFCollapsedMessageCell *)self mf_prefersRightToLeftInterfaceLayout];
    [(MFCollapsedMessageCell *)self bounds];
    Width = CGRectGetWidth(v53);
    [v8 frame];
    v19 = Width - CGRectGetMaxX(v54);
    if (v17)
    {
      [v8 frame];
      MinX = CGRectGetMinX(v55);
      [v8 bounds];
      MinY = CGRectGetMinY(v56);
      [v8 bounds];
      Height = CGRectGetHeight(v57);
    }

    else
    {
      if (IsAccessibilityCategory)
      {
        [(MFCollapsedMessageCell *)self summaryLabel];
      }

      else
      {
        [(MFCollapsedMessageCell *)self timestampLabel];
      }
      v24 = ;
      [v24 frame];
      MaxX = CGRectGetMaxX(v58);
      [v8 bounds];
      MinY = CGRectGetMinY(v59);
      [v8 bounds];
      Height = CGRectGetHeight(v60);
      MinX = MaxX - v19;
    }

    [v5 updateImageViews];
    v26 = [v5 statusIndicatorImageViews];
    [v8 frame];
    MaxY = CGRectGetMaxY(v61);
    [v8 _baselineOffsetFromBottom];
    v29 = v28;
    v30 = [v8 font];
    [v30 capHeight];
    v32 = v31;

    if (v17)
    {
      v62.origin.x = MinX;
      v62.origin.y = MinY;
      v62.size.width = v19;
      v62.size.height = Height;
      v33 = CGRectGetMinX(v62);
      v34 = [v26 firstObject];
      [v34 frame];
      v35 = CGRectGetWidth(v63);

      [v5 midXToMidXSpacing];
      v37 = v33 + v35 * 0.5;
    }

    else
    {
      v64.origin.x = MinX;
      v64.origin.y = MinY;
      v64.size.width = v19;
      v64.size.height = Height;
      MidX = CGRectGetMidX(v64);
      v65.origin.x = MinX;
      v65.origin.y = MinY;
      v65.size.width = v19;
      v65.size.height = Height;
      v39 = CGRectGetMaxX(v65);
      v40 = [v26 firstObject];
      [v40 frame];
      v41 = CGRectGetWidth(v66);

      [v5 midXToMidXSpacing];
      v43 = v39 + v41 * -0.5;
      if (MidX >= v43)
      {
        v43 = MidX;
      }

      v44 = 0.0;
      if (IsAccessibilityCategory)
      {
        v44 = -1.0;
      }

      v37 = v44 + v43;
      v36 = -v42;
    }

    v47 = 0;
    v48 = &v47;
    v49 = 0x4010000000;
    v50 = "";
    *&v45 = -1;
    *(&v45 + 1) = -1;
    v51 = v45;
    v52 = v45;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1001B2AE8;
    v46[3] = &unk_1006538D0;
    *&v46[6] = v37;
    *&v46[7] = v36;
    v46[4] = self;
    v46[5] = &v47;
    *&v46[8] = MaxY - v29 + v32 * -0.5;
    [v26 enumerateObjectsUsingBlock:v46];
    [(MFCollapsedMessageCell *)self _updateLabelFrameAfterHorizontalStatusIndicators:v8 label:v48[4], v48[5], v48[6], v48[7]];
    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v23 = [v5 statusIndicatorImageViews];
    [v23 makeObjectsPerformSelector:"removeFromSuperview"];
  }
}

- (void)_updateLabelFrameAfterHorizontalStatusIndicators:(CGRect)a3 label:(id)a4
{
  rect = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = a4;
  [v19 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([(MFCollapsedMessageCell *)self mf_prefersRightToLeftInterfaceLayout])
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = rect;
    v16 = CGRectGetMaxX(v21) + 16.0;
    v9 = v9 + v16;
  }

  else
  {
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    MaxX = CGRectGetMaxX(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = rect;
    v16 = MaxX - CGRectGetMinX(v23) + 16.0;
  }

  [v19 setFrame:{v9, v11, v13 - v16, v15, *&rect}];
}

- (void)_fontMetricCacheDidInvalidate:(id)a3
{
  [(MFCollapsedMessageCell *)self _updateFonts];
  [(MFCollapsedMessageCell *)self _updateSummaryNumberOfLines];
  [(MFCollapsedMessageCell *)self _sizeToFitLabels];

  [(MFCollapsedMessageCell *)self setNeedsLayout];
}

- (void)_sizeToFitLabels
{
  v3 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [v3 sizeToFit];

  v4 = [(MFCollapsedMessageCell *)self summaryLabel];
  [v4 sizeToFit];

  v5 = [(MFCollapsedMessageCell *)self timestampLabel];
  [v5 sizeToFit];
}

- (void)_updateFonts
{
  v6 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  v3 = +[UIFont mf_messageHeaderSenderLabelFont];
  sub_1001B2FA0(v3, v6, v3);

  v7 = [(MFCollapsedMessageCell *)self summaryLabel];
  v4 = +[UIFont mf_messageHeaderSummaryLabelFont];
  sub_1001B2FA0(v4, v7, v4);

  v8 = [(MFCollapsedMessageCell *)self timestampLabel];
  v5 = +[UIFont mf_messageHeaderTimestampLabelFont];
  sub_1001B2FA0(v5, v8, v5);
}

- (void)_updateSummaryNumberOfLines
{
  v5 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  if (IsAccessibilityCategory)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v6 = [(MFCollapsedMessageCell *)self summaryLabel];
  [v6 setNumberOfLines:v4];
}

- (void)setViewModel:(id)a3
{
  v4 = a3;
  v5 = [(MFConversationViewCell *)self viewModel];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = MFCollapsedMessageCell;
    [(MFConversationViewCell *)&v6 setViewModel:v4];
    [(MFCollapsedMessageCell *)self _updateForViewModelChange];
  }
}

- (void)_updateForViewModelChange
{
  v20 = [(MFConversationViewCell *)self viewModel];
  if ([(MFCollapsedMessageCell *)self shouldShowSubject])
  {
    v3 = [v20 subject];
    v4 = [v3 subjectString];
    v5 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
    [v5 setText:v4];
  }

  else
  {
    v6 = [v20 senderList];
    v3 = [v6 firstObject];

    if (MUISolariumFeatureEnabled())
    {
      v7 = [(MFCollapsedMessageCell *)self avatarController];
      v8 = [v20 avatarContext];
      v9 = [v20 avatarGenerator];
      v10 = [v7 displayPersonForContext:v8 avatarGenerator:v9];
    }

    else if (EMBlackPearlIsFeatureEnabled())
    {
      v7 = [(MFCollapsedMessageCell *)self mfAvatarView];
      v8 = [v20 avatarContext];
      v9 = [v20 avatarGenerator];
      v11 = [v7 displayPersonForContext:v8 avatarGenerator:v9];
    }

    else
    {
      v7 = [(MFCollapsedMessageCell *)self mfAvatarView];
      v8 = [(MFMessageConversationViewCell *)self contactStore];
      v9 = [v8 cnStore];
      v12 = [v7 displayPersonForEmailAddress:v3 usingContactStore:v9];
    }

    v4 = [(MFMessageConversationViewCell *)self contactStore];
    v5 = [v3 stringValue];
    v13 = [v4 displayNameForEmailAddress:v5];
    v14 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
    [v14 setText:v13];
  }

  v15 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [v15 sizeToFit];

  v16 = [v20 summary];
  [(MFCollapsedMessageCell *)self _updateSummary:v16 didComplete:v16 != 0];
  v17 = [v20 date];
  v18 = [(MFCollapsedMessageCell *)self timestampLabel];
  [v18 setDate:v17];

  v19 = [(MFCollapsedMessageCell *)self timestampLabel];
  [v19 sizeToFit];

  [(MFCollapsedMessageCell *)self setNeedsLayout];
}

- (void)setShouldShowSubject:(BOOL)a3
{
  if (self->_shouldShowSubject != a3)
  {
    self->_shouldShowSubject = a3;
    [(MFCollapsedMessageCell *)self _updateAvatarView];
    [(MFCollapsedMessageCell *)self _updateForViewModelChange];

    [(MFCollapsedMessageCell *)self _updateLabelColor];
  }
}

- (void)_updateSummary:(id)a3 didComplete:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 length])
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    if (v4)
    {
      [v8 localizedStringForKey:@"NO_BODY" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v8 localizedStringForKey:@"LOADING" value:&stru_100662A88 table:@"Main"];
    }
    v9 = ;

    v7 = v9;
  }

  if ([EMInternalPreferences preferenceEnabled:4])
  {
    v10 = [(MFConversationViewCell *)self viewModel];
    v11 = [(MFCollapsedMessageCell *)self _messageFromViewModel:v10];

    v12 = [v11 itemID];
    v13 = [NSString stringWithFormat:@"%@, %@", v12, v7];

    v7 = v13;
  }

  if ([EMInternalPreferences preferenceEnabled:5])
  {
    v14 = [(MFConversationViewCell *)self viewModel];
    v15 = [(MFCollapsedMessageCell *)self _messageFromViewModel:v14];

    if ([v15 searchResultType] == 3)
    {
      v16 = [v15 searchRelevanceScore];
      v17 = [NSString stringWithFormat:@"RelevanceScore:%@, %@", v16, v7];

      v7 = v17;
    }
  }

  v18 = [(MFCollapsedMessageCell *)self summaryLabel];
  [v18 setText:v7];
  v19 = [v18 text];
  v20 = [v19 _isNaturallyRTL];

  if (v20)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  [v18 setTextAlignment:v21];
  v22 = +[MFFontMetricCache sharedFontMetricCache];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001B3888;
  v25[3] = &unk_10064C780;
  v23 = v18;
  v26 = v23;
  v27 = self;
  [v22 cachedFloat:v25 forKey:@"conversationView.collapsedMessageCell.summary.height"];

  [(MFCollapsedMessageCell *)self bounds];
  v24 = v23;
  [v24 frame];
  [v24 setFrame:?];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MFCollapsedMessageCell;
  [(MFCollapsedMessageCell *)&v7 setHighlighted:?];
  if (v3)
  {
    +[UIColor mailConversationViewCollapsedCellHighlightedBackgroundColor];
  }

  else
  {
    +[UIColor mailConversationViewCollapsedCellBackgroundColor];
  }
  v5 = ;
  v6 = [(MFCollapsedMessageCell *)self contentView];
  [v6 setBackgroundColor:v5];
}

- (id)_messageFromViewModel:(id)a3
{
  v3 = a3;
  v4 = [v3 messageContentRequest];

  if (v4)
  {
    [v3 messageContentRequest];
  }

  else
  {
    [v3 messageLoadingContext];
  }
  v5 = ;
  v6 = [v5 message];

  return v6;
}

- (double)_topToSenderBaselineInConversation
{
  v2 = [(MFConversationViewCell *)self displayMetrics];
  [v2 topToSenderBaselineInConversationForCollapsedCell];
  v4 = v3;

  return v4;
}

- (double)_baselineToBaselineSpacingInConversation
{
  v2 = [(MFConversationViewCell *)self displayMetrics];
  [v2 baselineToBaselineSpacingInConversation];
  v4 = v3;

  return v4;
}

- (double)_messageBottomPaddingInConversation
{
  v2 = [(MFConversationViewCell *)self displayMetrics];
  [v2 messageBottomPaddingInConversationForCollapsedCell];
  v4 = v3;

  return v4;
}

- (double)_messageTopPaddingInConversation
{
  v2 = [(MFConversationViewCell *)self displayMetrics];
  [v2 messageTopPaddingInConversation];
  v4 = v3;

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFCollapsedMessageCell;
  [(MFCollapsedMessageCell *)&v5 traitCollectionDidChange:v4];
  [(MFCollapsedMessageCell *)self _updateAvatarView];
  [(MFCollapsedMessageCell *)self _updateLabelColor];
}

- (void)_updateAvatarView
{
  v4 = [(MFCollapsedMessageCell *)self avatarView];
  if ([(MFCollapsedMessageCell *)self shouldHideAvatarView])
  {
    [v4 removeFromSuperview];
  }

  else
  {
    v3 = [(MFCollapsedMessageCell *)self contentView];
    [v3 addSubview:v4];
  }
}

- (BOOL)shouldHideAvatarView
{
  if ([(MFCollapsedMessageCell *)self shouldShowSubject])
  {
    return 1;
  }

  v3 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

- (void)_updateLabelColor
{
  v8 = +[UIColor mailConversationViewCollapsedCellLabelColor];
  if ([(MFCollapsedMessageCell *)self shouldShowSubject])
  {
    v3 = +[UIColor mailConversationViewCollapsedCellSubjectLabelColor];
  }

  else
  {
    v3 = v8;
  }

  v4 = v3;
  v5 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [v5 setTextColor:v4];

  v6 = [(MFCollapsedMessageCell *)self summaryLabel];
  [v6 setTextColor:v8];

  v7 = [(MFCollapsedMessageCell *)self timestampLabel];
  [v7 setTextColor:v8];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = MFCollapsedMessageCell;
  [(MFMessageConversationViewCell *)&v10 prepareForReuse];
  v3 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [v3 setText:0];

  v4 = [(MFCollapsedMessageCell *)self summaryLabel];
  [v4 setText:0];

  v5 = [(MFCollapsedMessageCell *)self timestampLabel];
  [v5 setDate:0];

  v6 = [(MFCollapsedMessageCell *)self horizontalStatusIndicatorManager];
  [v6 setIndicatorOptions:0];

  v7 = [(MFCollapsedMessageCell *)self horizontalStatusIndicatorManager];
  [v7 updateImageViews];

  v8 = [(MFCollapsedMessageCell *)self verticalStatusIndicatorManager];
  [v8 setIndicatorOptions:0];

  v9 = [(MFCollapsedMessageCell *)self verticalStatusIndicatorManager];
  [v9 updateImageViews];

  [(MFCollapsedMessageCell *)self removeConversationSearchOverlay];
}

- (void)addConversationSearchOverlay
{
  v3 = [(MFCollapsedMessageCell *)self findOverlayView];
  [(MFCollapsedMessageCell *)self bringSubviewToFront:?];

  v4 = [(MFCollapsedMessageCell *)self findOverlayView];
  [v4 show];
}

- (void)removeConversationSearchOverlay
{
  v3 = [(MFCollapsedMessageCell *)self findOverlayView];
  [v3 hide];

  v4 = [(MFCollapsedMessageCell *)self findOverlayView];
  [(MFCollapsedMessageCell *)self sendSubviewToBack:?];
}

@end