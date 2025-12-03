@interface MFCollapsedMessageCell
+ (double)defaultHeightWithDisplayMetrics:(id)metrics;
- (BOOL)shouldHideAvatarView;
- (ConversationSearchOverlayView)findOverlayView;
- (MFCollapsedMessageCell)initWithFrame:(CGRect)frame;
- (double)_baselineToBaselineSpacingInConversation;
- (double)_leadingMargin;
- (double)_messageBottomPaddingInConversation;
- (double)_messageTopPaddingInConversation;
- (double)_topToSenderBaselineInConversation;
- (id)_messageFromViewModel:(id)model;
- (void)_createPrimaryViews;
- (void)_fontMetricCacheDidInvalidate:(id)invalidate;
- (void)_layoutLabelBetweenViews:(id)views leading:(id)leading trailing:(id)trailing baseline:(double)baseline fillWidth:(BOOL)width;
- (void)_layoutSubviews;
- (void)_setAvatarViewFrame:(CGRect)frame;
- (void)_sizeToFitLabels;
- (void)_updateAvatarView;
- (void)_updateFonts;
- (void)_updateForViewModelChange;
- (void)_updateHorizontalStatusIndicatorsFromViewModel:(id)model;
- (void)_updateLabelColor;
- (void)_updateLabelFrameAfterHorizontalStatusIndicators:(CGRect)indicators label:(id)label;
- (void)_updateSummary:(id)summary didComplete:(BOOL)complete;
- (void)_updateSummaryNumberOfLines;
- (void)_updateVerticalStatusIndicatorsFromViewModel:(id)model;
- (void)addConversationSearchOverlay;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)removeConversationSearchOverlay;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setShouldShowSubject:(BOOL)subject;
- (void)setViewModel:(id)model;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MFCollapsedMessageCell

- (MFCollapsedMessageCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MFCollapsedMessageCell;
  v3 = [(MFMessageConversationViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    contentView = [(MFCollapsedMessageCell *)self contentView];
    [contentView addSubview:self->_findOverlayView];

    findOverlayView = self->_findOverlayView;
  }

  return findOverlayView;
}

- (void)_createPrimaryViews
{
  v3 = +[UIColor mailConversationViewCollapsedCellBackgroundColor];
  contentView = [(MFCollapsedMessageCell *)self contentView];
  [contentView setBackgroundColor:v3];

  v5 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MFCollapsedMessageCell *)self setSenderOrSubjectLabel:v9];

  contentView2 = [(MFCollapsedMessageCell *)self contentView];
  senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [contentView2 addSubview:senderOrSubjectLabel];

  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MFCollapsedMessageCell *)self setSummaryLabel:v12];

  contentView3 = [(MFCollapsedMessageCell *)self contentView];
  summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
  [contentView3 addSubview:summaryLabel];

  v15 = [[UIDateLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MFCollapsedMessageCell *)self setTimestampLabel:v15];

  contentView4 = [(MFCollapsedMessageCell *)self contentView];
  timestampLabel = [(MFCollapsedMessageCell *)self timestampLabel];
  [contentView4 addSubview:timestampLabel];

  [(MFCollapsedMessageCell *)self _updateLabelColor];
  +[MFMessageDisplayMetrics avatarDiameter];
  v19 = v18;
  if (MUISolariumFeatureEnabled())
  {
    v20 = [[MUIAvatarViewController alloc] initWithContacts:&__NSArray0__struct];
    [(MFCollapsedMessageCell *)self setAvatarController:v20];

    avatarController = [(MFCollapsedMessageCell *)self avatarController];
    view = [avatarController view];
    [(MFCollapsedMessageCell *)self setAvatarView:view];

    avatarView = [(MFCollapsedMessageCell *)self avatarView];
    [avatarView setFrame:{0.0, 0.0, v19, v19}];
  }

  else
  {
    v24 = [[MFAvatarView alloc] initWithFrame:0.0, 0.0, v19, v19];
    [(MFCollapsedMessageCell *)self setMfAvatarView:v24];

    mfAvatarView = [(MFCollapsedMessageCell *)self mfAvatarView];
    [mfAvatarView setShowsContactOnTap:1];

    avatarView = [(MFCollapsedMessageCell *)self mfAvatarView];
    [(MFCollapsedMessageCell *)self setAvatarView:avatarView];
  }

  avatarView2 = [(MFCollapsedMessageCell *)self avatarView];
  [avatarView2 setAlpha:0.4];

  [(MFCollapsedMessageCell *)self _updateAvatarView];
  v27 = objc_alloc_init(MessageViewStatusIndicatorManager);
  [(MFCollapsedMessageCell *)self setVerticalStatusIndicatorManager:v27];

  verticalStatusIndicatorManager = [(MFCollapsedMessageCell *)self verticalStatusIndicatorManager];
  [verticalStatusIndicatorManager setHidesVIPIndicator:1];

  v29 = objc_alloc_init(MessageViewStatusIndicatorManager);
  [(MFCollapsedMessageCell *)self setHorizontalStatusIndicatorManager:v29];

  [(MFCollapsedMessageCell *)self _updateSummaryNumberOfLines];

  [(MFCollapsedMessageCell *)self _updateFonts];
}

- (void)_setAvatarViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  avatarView = [(MFCollapsedMessageCell *)self avatarView];
  [avatarView setFrame:{x, y, width, height}];
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
  contentView = [(MFCollapsedMessageCell *)self contentView];
  senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
  timestampLabel = [(MFCollapsedMessageCell *)self timestampLabel];
  avatarView = [(MFCollapsedMessageCell *)self avatarView];
  shouldHideAvatarView = [(MFCollapsedMessageCell *)self shouldHideAvatarView];
  mf_prefersRightToLeftInterfaceLayout = [(MFCollapsedMessageCell *)self mf_prefersRightToLeftInterfaceLayout];
  shouldShowSubject = [(MFCollapsedMessageCell *)self shouldShowSubject];
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [contentView bounds];
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
  [displayMetrics avatarDiameterForCurrentContentSize];
  v24 = v23;
  v25 = v22;
  if (mf_prefersRightToLeftInterfaceLayout)
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
  if (!shouldHideAvatarView)
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

  [timestampLabel frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  if (((mf_prefersRightToLeftInterfaceLayout | IsAccessibilityCategory) & 1) == 0)
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

  [timestampLabel setFrame:{v22, v37, v39, v41}];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1001B1C90;
  v72[3] = &unk_100653880;
  v77 = IsAccessibilityCategory;
  v44 = summaryLabel;
  v76 = v71;
  v73 = v44;
  selfCopy = self;
  v45 = timestampLabel;
  v75 = v45;
  v46 = objc_retainBlock(v72);
  if (shouldShowSubject)
  {
    if (IsAccessibilityCategory)
    {
      v47 = 0;
    }

    else
    {
      v47 = v45;
    }

    [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:senderOrSubjectLabel leading:0 trailing:v47 baseline:1 fillWidth:v70];
    [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v45 leading:senderOrSubjectLabel trailing:0 baseline:0 fillWidth:v70];
    v48 = v70 + v71;
    [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v44 leading:0 trailing:0 baseline:1 fillWidth:v70 + v71];
    goto LABEL_14;
  }

  if (shouldHideAvatarView)
  {
    [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:senderOrSubjectLabel leading:0 trailing:0 baseline:1 fillWidth:v70];
    v48 = v70 + v71;
    [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v44 leading:0 trailing:0 baseline:1 fillWidth:v70 + v71];
LABEL_14:
    (v46[2])(v46, v48);
    goto LABEL_18;
  }

  if (MUISolariumFeatureEnabled())
  {
    [senderOrSubjectLabel _firstBaselineOffsetFromTop];
    UIRoundToViewScale();
    v50 = v49;
    [senderOrSubjectLabel frame];
    v52 = v51;
    [v44 frame];
    v70 = v70 - (v70 - v50 + (v52 + v53) * 0.5 - (v24 * 0.5 + v64));
  }

  [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:senderOrSubjectLabel leading:avatarView trailing:v45 baseline:1 fillWidth:v70];
  [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v45 leading:senderOrSubjectLabel trailing:0 baseline:0 fillWidth:v70];
  [(MFCollapsedMessageCell *)self _layoutLabelBetweenViews:v44 leading:avatarView trailing:0 baseline:1 fillWidth:v71 + v70];
LABEL_18:
  viewModel = [(MFConversationViewCell *)self viewModel];
  [(MFCollapsedMessageCell *)self _updateVerticalStatusIndicatorsFromViewModel:viewModel];
  [(MFCollapsedMessageCell *)self _updateHorizontalStatusIndicatorsFromViewModel:viewModel];
  if (self->_findOverlayView)
  {
    [(MFCollapsedMessageCell *)self bounds];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    findOverlayView = [(MFCollapsedMessageCell *)self findOverlayView];
    [findOverlayView setFrame:{v56, v58, v60, v62}];
  }

  [(MFCollapsedMessageCell *)self mf_activateDebugModeIfEnabled];
}

- (void)_layoutLabelBetweenViews:(id)views leading:(id)leading trailing:(id)trailing baseline:(double)baseline fillWidth:(BOOL)width
{
  widthCopy = width;
  baselineCopy = baseline;
  viewsCopy = views;
  leadingCopy = leading;
  trailingCopy = trailing;
  mf_prefersRightToLeftInterfaceLayout = [(MFCollapsedMessageCell *)self mf_prefersRightToLeftInterfaceLayout];
  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [displayMetrics minHorizontalSpacing];
  v16 = v15;

  [(MFCollapsedMessageCell *)self _leadingMargin];
  v18 = v17;
  contentView = [(MFCollapsedMessageCell *)self contentView];
  [contentView bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [contentView layoutMargins];
  v29 = v28;
  if (mf_prefersRightToLeftInterfaceLayout)
  {
    v30 = trailingCopy;
  }

  else
  {
    v30 = leadingCopy;
  }

  if (mf_prefersRightToLeftInterfaceLayout)
  {
    v31 = leadingCopy;
  }

  else
  {
    v31 = trailingCopy;
  }

  if (mf_prefersRightToLeftInterfaceLayout)
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
    if (mf_prefersRightToLeftInterfaceLayout)
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
  [viewsCopy frame];
  v41 = v39;
  v42 = v40;
  v43 = v18;
  if (!v33)
  {
    v43 = v18;
    if (!widthCopy)
    {
      v43 = v36 - CGRectGetWidth(*&v37);
    }
  }

  if (widthCopy)
  {
    v41 = v36 - v18;
  }

  [viewsCopy _firstBaselineOffsetFromTop];
  UIRoundToViewScale();
  [viewsCopy setFrame:{v43, v46 - v44, v41, v42}];
}

- (double)_leadingMargin
{
  contentView = [(MFCollapsedMessageCell *)self contentView];
  [contentView directionalLayoutMargins];
  v5 = v4;

  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [displayMetrics minHorizontalSpacing];
  v8 = v7;
  [displayMetrics headerAvatarMaxOffset];
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

+ (double)defaultHeightWithDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  [metricsCopy messageTopPaddingInConversation];
  v5 = v4;
  [metricsCopy topToSenderBaselineInConversationForCollapsedCell];
  v7 = v6;
  [metricsCopy baselineToBaselineSpacingInConversation];
  v9 = v8;
  [metricsCopy messageBottomPaddingInConversationForCollapsedCell];
  v11 = v10;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v14 = v5 + v7 + v9 + v11;

  if (IsAccessibilityCategory)
  {
    [metricsCopy baselineToBaselineSpacingInConversation];
    v16 = v15;
    [metricsCopy messageBottomPaddingInConversationForCollapsedCell];
    v18 = v17;
    [metricsCopy baselineToBaselineSpacingInConversation];
    v14 = v14 + v16 * 2.0 - v18 + v19;
  }

  return v14;
}

- (void)_updateVerticalStatusIndicatorsFromViewModel:(id)model
{
  modelCopy = model;
  verticalStatusIndicatorManager = [(MFCollapsedMessageCell *)self verticalStatusIndicatorManager];
  senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  if ([(MFCollapsedMessageCell *)self shouldHideAvatarView])
  {
    avatarView = senderOrSubjectLabel;
  }

  else
  {
    avatarView = [(MFCollapsedMessageCell *)self avatarView];
  }

  v8 = avatarView;
  isVIP = [modelCopy isVIP];
  isRead = [modelCopy isRead];
  isReplied = [modelCopy isReplied];
  isForwarded = [modelCopy isForwarded];
  v13 = 2;
  if (!isVIP)
  {
    v13 = 0;
  }

  v14 = v13 | isRead ^ 1;
  if (isReplied)
  {
    v14 |= 8uLL;
  }

  if (isForwarded)
  {
    v15 = v14 | 0x10;
  }

  else
  {
    v15 = v14;
  }

  [verticalStatusIndicatorManager setIndicatorOptions:v15];
  [verticalStatusIndicatorManager pruneIndicatorOptions:2];
  if ([verticalStatusIndicatorManager effectiveIndicatorOptions])
  {
    mf_prefersRightToLeftInterfaceLayout = [(MFCollapsedMessageCell *)self mf_prefersRightToLeftInterfaceLayout];
    if (mf_prefersRightToLeftInterfaceLayout)
    {
      [(MFCollapsedMessageCell *)self bounds];
      Width = CGRectGetWidth(v39);
      [v8 frame];
      MaxX = CGRectGetMaxX(v40);
      [v8 frame];
      v19 = CGRectGetMaxX(v41);
      contentView = [(MFCollapsedMessageCell *)self contentView];
      [contentView bounds];
      Height = CGRectGetHeight(v42);
      MinX = Width - MaxX;
    }

    else
    {
      [v8 frame];
      MinX = CGRectGetMinX(v43);
      contentView2 = [(MFCollapsedMessageCell *)self contentView];
      [contentView2 bounds];
      Height = CGRectGetHeight(v44);

      v19 = 0.0;
    }

    [verticalStatusIndicatorManager updateImageViews];
    [(MFCollapsedMessageCell *)self _baselineToBaselineSpacingInConversation];
    v37 = v25;
    [senderOrSubjectLabel frame];
    MaxY = CGRectGetMaxY(v45);
    [senderOrSubjectLabel _baselineOffsetFromBottom];
    v28 = v27;
    font = [senderOrSubjectLabel font];
    [font capHeight];
    v31 = v30;

    if (mf_prefersRightToLeftInterfaceLayout)
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
    statusIndicatorImageViews = [verticalStatusIndicatorManager statusIndicatorImageViews];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1001B24B0;
    v38[3] = &unk_1006538A8;
    v38[4] = self;
    *&v38[5] = v36;
    *&v38[6] = MaxY - v28 + v31 * -0.5;
    *&v38[7] = v37 + 1.0;
    [statusIndicatorImageViews enumerateObjectsUsingBlock:v38];
  }

  else
  {
    statusIndicatorImageViews = [verticalStatusIndicatorManager statusIndicatorImageViews];
    [statusIndicatorImageViews makeObjectsPerformSelector:"removeFromSuperview"];
  }
}

- (void)_updateHorizontalStatusIndicatorsFromViewModel:(id)model
{
  modelCopy = model;
  horizontalStatusIndicatorManager = [(MFCollapsedMessageCell *)self horizontalStatusIndicatorManager];
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    [(MFCollapsedMessageCell *)self timestampLabel];
  }

  else
  {
    [(MFCollapsedMessageCell *)self summaryLabel];
  }
  v8 = ;
  isFlagged = [modelCopy isFlagged];
  hasAttachments = [modelCopy hasAttachments];
  isNotify = [modelCopy isNotify];
  isMute = [modelCopy isMute];
  isBlockedSender = [modelCopy isBlockedSender];
  v14 = 4;
  if (!isFlagged)
  {
    v14 = 0;
  }

  if (hasAttachments)
  {
    v14 |= 0x20uLL;
  }

  if (isNotify)
  {
    v14 |= 0x40uLL;
  }

  if (isMute)
  {
    v14 |= 0x80uLL;
  }

  if (isBlockedSender)
  {
    v15 = v14 | 0x100;
  }

  else
  {
    v15 = v14;
  }

  [horizontalStatusIndicatorManager setIndicatorOptions:v15];
  flagColors = [modelCopy flagColors];
  [horizontalStatusIndicatorManager setFlagColors:flagColors];

  [horizontalStatusIndicatorManager pruneIndicatorOptions:2];
  if ([horizontalStatusIndicatorManager effectiveIndicatorOptions])
  {
    mf_prefersRightToLeftInterfaceLayout = [(MFCollapsedMessageCell *)self mf_prefersRightToLeftInterfaceLayout];
    [(MFCollapsedMessageCell *)self bounds];
    Width = CGRectGetWidth(v53);
    [v8 frame];
    v19 = Width - CGRectGetMaxX(v54);
    if (mf_prefersRightToLeftInterfaceLayout)
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

    [horizontalStatusIndicatorManager updateImageViews];
    statusIndicatorImageViews = [horizontalStatusIndicatorManager statusIndicatorImageViews];
    [v8 frame];
    MaxY = CGRectGetMaxY(v61);
    [v8 _baselineOffsetFromBottom];
    v29 = v28;
    font = [v8 font];
    [font capHeight];
    v32 = v31;

    if (mf_prefersRightToLeftInterfaceLayout)
    {
      v62.origin.x = MinX;
      v62.origin.y = MinY;
      v62.size.width = v19;
      v62.size.height = Height;
      v33 = CGRectGetMinX(v62);
      firstObject = [statusIndicatorImageViews firstObject];
      [firstObject frame];
      v35 = CGRectGetWidth(v63);

      [horizontalStatusIndicatorManager midXToMidXSpacing];
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
      firstObject2 = [statusIndicatorImageViews firstObject];
      [firstObject2 frame];
      v41 = CGRectGetWidth(v66);

      [horizontalStatusIndicatorManager midXToMidXSpacing];
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
    [statusIndicatorImageViews enumerateObjectsUsingBlock:v46];
    [(MFCollapsedMessageCell *)self _updateLabelFrameAfterHorizontalStatusIndicators:v8 label:v48[4], v48[5], v48[6], v48[7]];
    _Block_object_dispose(&v47, 8);
  }

  else
  {
    statusIndicatorImageViews2 = [horizontalStatusIndicatorManager statusIndicatorImageViews];
    [statusIndicatorImageViews2 makeObjectsPerformSelector:"removeFromSuperview"];
  }
}

- (void)_updateLabelFrameAfterHorizontalStatusIndicators:(CGRect)indicators label:(id)label
{
  rect = indicators.size.height;
  width = indicators.size.width;
  y = indicators.origin.y;
  x = indicators.origin.x;
  labelCopy = label;
  [labelCopy frame];
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

  [labelCopy setFrame:{v9, v11, v13 - v16, v15, *&rect}];
}

- (void)_fontMetricCacheDidInvalidate:(id)invalidate
{
  [(MFCollapsedMessageCell *)self _updateFonts];
  [(MFCollapsedMessageCell *)self _updateSummaryNumberOfLines];
  [(MFCollapsedMessageCell *)self _sizeToFitLabels];

  [(MFCollapsedMessageCell *)self setNeedsLayout];
}

- (void)_sizeToFitLabels
{
  senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [senderOrSubjectLabel sizeToFit];

  summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
  [summaryLabel sizeToFit];

  timestampLabel = [(MFCollapsedMessageCell *)self timestampLabel];
  [timestampLabel sizeToFit];
}

- (void)_updateFonts
{
  senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  v3 = +[UIFont mf_messageHeaderSenderLabelFont];
  sub_1001B2FA0(v3, senderOrSubjectLabel, v3);

  summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
  v4 = +[UIFont mf_messageHeaderSummaryLabelFont];
  sub_1001B2FA0(v4, summaryLabel, v4);

  timestampLabel = [(MFCollapsedMessageCell *)self timestampLabel];
  v5 = +[UIFont mf_messageHeaderTimestampLabelFont];
  sub_1001B2FA0(v5, timestampLabel, v5);
}

- (void)_updateSummaryNumberOfLines
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
  [summaryLabel setNumberOfLines:v4];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = [(MFConversationViewCell *)self viewModel];

  if (viewModel != modelCopy)
  {
    v6.receiver = self;
    v6.super_class = MFCollapsedMessageCell;
    [(MFConversationViewCell *)&v6 setViewModel:modelCopy];
    [(MFCollapsedMessageCell *)self _updateForViewModelChange];
  }
}

- (void)_updateForViewModelChange
{
  viewModel = [(MFConversationViewCell *)self viewModel];
  if ([(MFCollapsedMessageCell *)self shouldShowSubject])
  {
    subject = [viewModel subject];
    subjectString = [subject subjectString];
    senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
    [senderOrSubjectLabel setText:subjectString];
  }

  else
  {
    senderList = [viewModel senderList];
    subject = [senderList firstObject];

    if (MUISolariumFeatureEnabled())
    {
      avatarController = [(MFCollapsedMessageCell *)self avatarController];
      avatarContext = [viewModel avatarContext];
      avatarGenerator = [viewModel avatarGenerator];
      v10 = [avatarController displayPersonForContext:avatarContext avatarGenerator:avatarGenerator];
    }

    else if (EMBlackPearlIsFeatureEnabled())
    {
      avatarController = [(MFCollapsedMessageCell *)self mfAvatarView];
      avatarContext = [viewModel avatarContext];
      avatarGenerator = [viewModel avatarGenerator];
      v11 = [avatarController displayPersonForContext:avatarContext avatarGenerator:avatarGenerator];
    }

    else
    {
      avatarController = [(MFCollapsedMessageCell *)self mfAvatarView];
      avatarContext = [(MFMessageConversationViewCell *)self contactStore];
      avatarGenerator = [avatarContext cnStore];
      v12 = [avatarController displayPersonForEmailAddress:subject usingContactStore:avatarGenerator];
    }

    subjectString = [(MFMessageConversationViewCell *)self contactStore];
    senderOrSubjectLabel = [subject stringValue];
    v13 = [subjectString displayNameForEmailAddress:senderOrSubjectLabel];
    senderOrSubjectLabel2 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
    [senderOrSubjectLabel2 setText:v13];
  }

  senderOrSubjectLabel3 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [senderOrSubjectLabel3 sizeToFit];

  summary = [viewModel summary];
  [(MFCollapsedMessageCell *)self _updateSummary:summary didComplete:summary != 0];
  date = [viewModel date];
  timestampLabel = [(MFCollapsedMessageCell *)self timestampLabel];
  [timestampLabel setDate:date];

  timestampLabel2 = [(MFCollapsedMessageCell *)self timestampLabel];
  [timestampLabel2 sizeToFit];

  [(MFCollapsedMessageCell *)self setNeedsLayout];
}

- (void)setShouldShowSubject:(BOOL)subject
{
  if (self->_shouldShowSubject != subject)
  {
    self->_shouldShowSubject = subject;
    [(MFCollapsedMessageCell *)self _updateAvatarView];
    [(MFCollapsedMessageCell *)self _updateForViewModelChange];

    [(MFCollapsedMessageCell *)self _updateLabelColor];
  }
}

- (void)_updateSummary:(id)summary didComplete:(BOOL)complete
{
  completeCopy = complete;
  summaryCopy = summary;
  v7 = summaryCopy;
  if (!summaryCopy || ![summaryCopy length])
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    if (completeCopy)
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
    viewModel = [(MFConversationViewCell *)self viewModel];
    v11 = [(MFCollapsedMessageCell *)self _messageFromViewModel:viewModel];

    itemID = [v11 itemID];
    v13 = [NSString stringWithFormat:@"%@, %@", itemID, v7];

    v7 = v13;
  }

  if ([EMInternalPreferences preferenceEnabled:5])
  {
    viewModel2 = [(MFConversationViewCell *)self viewModel];
    v15 = [(MFCollapsedMessageCell *)self _messageFromViewModel:viewModel2];

    if ([v15 searchResultType] == 3)
    {
      searchRelevanceScore = [v15 searchRelevanceScore];
      v17 = [NSString stringWithFormat:@"RelevanceScore:%@, %@", searchRelevanceScore, v7];

      v7 = v17;
    }
  }

  summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
  [summaryLabel setText:v7];
  text = [summaryLabel text];
  _isNaturallyRTL = [text _isNaturallyRTL];

  if (_isNaturallyRTL)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  [summaryLabel setTextAlignment:v21];
  v22 = +[MFFontMetricCache sharedFontMetricCache];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001B3888;
  v25[3] = &unk_10064C780;
  v23 = summaryLabel;
  v26 = v23;
  selfCopy = self;
  [v22 cachedFloat:v25 forKey:@"conversationView.collapsedMessageCell.summary.height"];

  [(MFCollapsedMessageCell *)self bounds];
  v24 = v23;
  [v24 frame];
  [v24 setFrame:?];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = MFCollapsedMessageCell;
  [(MFCollapsedMessageCell *)&v7 setHighlighted:?];
  if (highlightedCopy)
  {
    +[UIColor mailConversationViewCollapsedCellHighlightedBackgroundColor];
  }

  else
  {
    +[UIColor mailConversationViewCollapsedCellBackgroundColor];
  }
  v5 = ;
  contentView = [(MFCollapsedMessageCell *)self contentView];
  [contentView setBackgroundColor:v5];
}

- (id)_messageFromViewModel:(id)model
{
  modelCopy = model;
  messageContentRequest = [modelCopy messageContentRequest];

  if (messageContentRequest)
  {
    [modelCopy messageContentRequest];
  }

  else
  {
    [modelCopy messageLoadingContext];
  }
  v5 = ;
  message = [v5 message];

  return message;
}

- (double)_topToSenderBaselineInConversation
{
  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [displayMetrics topToSenderBaselineInConversationForCollapsedCell];
  v4 = v3;

  return v4;
}

- (double)_baselineToBaselineSpacingInConversation
{
  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [displayMetrics baselineToBaselineSpacingInConversation];
  v4 = v3;

  return v4;
}

- (double)_messageBottomPaddingInConversation
{
  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [displayMetrics messageBottomPaddingInConversationForCollapsedCell];
  v4 = v3;

  return v4;
}

- (double)_messageTopPaddingInConversation
{
  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [displayMetrics messageTopPaddingInConversation];
  v4 = v3;

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MFCollapsedMessageCell;
  [(MFCollapsedMessageCell *)&v5 traitCollectionDidChange:changeCopy];
  [(MFCollapsedMessageCell *)self _updateAvatarView];
  [(MFCollapsedMessageCell *)self _updateLabelColor];
}

- (void)_updateAvatarView
{
  avatarView = [(MFCollapsedMessageCell *)self avatarView];
  if ([(MFCollapsedMessageCell *)self shouldHideAvatarView])
  {
    [avatarView removeFromSuperview];
  }

  else
  {
    contentView = [(MFCollapsedMessageCell *)self contentView];
    [contentView addSubview:avatarView];
  }
}

- (BOOL)shouldHideAvatarView
{
  if ([(MFCollapsedMessageCell *)self shouldShowSubject])
  {
    return 1;
  }

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
  senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [senderOrSubjectLabel setTextColor:v4];

  summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
  [summaryLabel setTextColor:v8];

  timestampLabel = [(MFCollapsedMessageCell *)self timestampLabel];
  [timestampLabel setTextColor:v8];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = MFCollapsedMessageCell;
  [(MFMessageConversationViewCell *)&v10 prepareForReuse];
  senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [senderOrSubjectLabel setText:0];

  summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
  [summaryLabel setText:0];

  timestampLabel = [(MFCollapsedMessageCell *)self timestampLabel];
  [timestampLabel setDate:0];

  horizontalStatusIndicatorManager = [(MFCollapsedMessageCell *)self horizontalStatusIndicatorManager];
  [horizontalStatusIndicatorManager setIndicatorOptions:0];

  horizontalStatusIndicatorManager2 = [(MFCollapsedMessageCell *)self horizontalStatusIndicatorManager];
  [horizontalStatusIndicatorManager2 updateImageViews];

  verticalStatusIndicatorManager = [(MFCollapsedMessageCell *)self verticalStatusIndicatorManager];
  [verticalStatusIndicatorManager setIndicatorOptions:0];

  verticalStatusIndicatorManager2 = [(MFCollapsedMessageCell *)self verticalStatusIndicatorManager];
  [verticalStatusIndicatorManager2 updateImageViews];

  [(MFCollapsedMessageCell *)self removeConversationSearchOverlay];
}

- (void)addConversationSearchOverlay
{
  findOverlayView = [(MFCollapsedMessageCell *)self findOverlayView];
  [(MFCollapsedMessageCell *)self bringSubviewToFront:?];

  findOverlayView2 = [(MFCollapsedMessageCell *)self findOverlayView];
  [findOverlayView2 show];
}

- (void)removeConversationSearchOverlay
{
  findOverlayView = [(MFCollapsedMessageCell *)self findOverlayView];
  [findOverlayView hide];

  findOverlayView2 = [(MFCollapsedMessageCell *)self findOverlayView];
  [(MFCollapsedMessageCell *)self sendSubviewToBack:?];
}

@end