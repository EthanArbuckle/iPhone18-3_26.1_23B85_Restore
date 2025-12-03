@interface TPSTipCollectionViewCell
- (BOOL)setTip:(id)tip withCellAppearance:(id)appearance;
- (TPSTipCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)constellationContentParserBoldFont:(id)font;
- (id)constellationContentParserItalicFont:(id)font;
- (void)cancelFootnoteParsingOperation;
- (void)cancelReplayButtonTimer;
- (void)constellationContentParserAttributedStringUpdated:(id)updated;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)createAvailabilityTextView;
- (void)createFootnoteTextView;
- (void)deactivateBottomConstraints;
- (void)dealloc;
- (void)prepareForReuse;
- (void)prepareSharedTipForReuse;
- (void)processAvailabilityContent;
- (void)removeFootnoteContentParser;
- (void)setupSharedTipMessaging;
- (void)updateConstraints;
- (void)updateContentLabel;
@end

@implementation TPSTipCollectionViewCell

- (void)dealloc
{
  [(TPSTipCollectionViewCell *)self cancelFootnoteParsingOperation];
  v3.receiver = self;
  v3.super_class = TPSTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v3 dealloc];
}

- (TPSTipCollectionViewCell)initWithFrame:(CGRect)frame
{
  v140.receiver = self;
  v140.super_class = TPSTipCollectionViewCell;
  v3 = [(TPSBaseTipCollectionViewCell *)&v140 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    heroAssetView = [(TPSBaseTipCollectionViewCell *)v3 heroAssetView];
    v139 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:"replayVideo"];
    [heroAssetView addGestureRecognizer:v139];
    [heroAssetView setRespectLoadingStatus:1];
    [(TPSBaseTipCollectionViewCell *)v4 updateFonts];
    [(TPSBaseTipCollectionViewCell *)v4 setHeroAssetHorizontalMargin:20.0];
    contentView = [(TPSTipCollectionViewCell *)v4 contentView];
    topAnchor = [heroAssetView topAnchor];
    contentScrollView = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    topAnchor2 = [contentScrollView topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v10 setActive:1];

    widthAnchor = [heroAssetView widthAnchor];
    v138 = contentView;
    widthAnchor2 = [contentView widthAnchor];
    [(TPSBaseTipCollectionViewCell *)v4 heroAssetHorizontalMargin];
    v14 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-v13];
    [v14 setActive:1];

    centerXAnchor = [heroAssetView centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    v137 = v17;
    [v17 setActive:1];
    [(TPSBaseTipCollectionViewCell *)v4 setAssetViewLayoutGuideCenterXConstraint:v17];
    heightAnchor = [heroAssetView heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:0.0];
    [(TPSBaseTipCollectionViewCell *)v4 setAssetViewHeightConstraint:v19];

    assetViewHeightConstraint = [(TPSBaseTipCollectionViewCell *)v4 assetViewHeightConstraint];
    [assetViewHeightConstraint setActive:1];

    v21 = [UIImageView alloc];
    v22 = [UIImage imageNamed:@"ReplayGradient"];
    v23 = [v21 initWithImage:v22];

    v24 = v23;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v23 setHidden:1];
    contentScrollView2 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    [contentScrollView2 addSubview:v24];

    v26 = v24;
    widthAnchor3 = [v24 widthAnchor];
    heroAssetView2 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    widthAnchor4 = [heroAssetView2 widthAnchor];
    v30 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    [v30 setActive:1];

    heightAnchor2 = [v26 heightAnchor];
    v32 = [heightAnchor2 constraintEqualToConstant:100.0];
    [v32 setActive:1];

    centerXAnchor3 = [v26 centerXAnchor];
    heroAssetView3 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    centerXAnchor4 = [heroAssetView3 centerXAnchor];
    v36 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v36 setActive:1];

    topAnchor3 = [v26 topAnchor];
    heroAssetView4 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    bottomAnchor = [heroAssetView4 bottomAnchor];
    v40 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:-100.0];
    [v40 setActive:1];

    v136 = v26;
    bottomAnchor2 = [v26 bottomAnchor];
    heroAssetView5 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    bottomAnchor3 = [heroAssetView5 bottomAnchor];
    v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v44 setActive:1];

    v45 = [UIButton buttonWithType:1];
    [v45 setupReplayButtonConfiguration];
    [v45 addTarget:v4 action:"replayButtonTapped" forControlEvents:64];
    [v45 setPreferredBehavioralStyle:0];
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [v45 layer];
    [layer setShadowRadius:30.0];

    layer2 = [v45 layer];
    LODWORD(v48) = 1050253722;
    [layer2 setShadowOpacity:v48];

    layer3 = [v45 layer];
    [layer3 setShadowPathIsBounds:1];

    contentScrollView3 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    [contentScrollView3 addSubview:v45];

    centerXAnchor5 = [v45 centerXAnchor];
    heroAssetView6 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    centerXAnchor6 = [heroAssetView6 centerXAnchor];
    v54 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v54 setActive:1];

    v133 = v45;
    bottomAnchor4 = [v45 bottomAnchor];
    heroAssetView7 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    bottomAnchor5 = [heroAssetView7 bottomAnchor];
    v58 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-14.0];
    [v58 setActive:1];

    [heroAssetView setReplayButton:v45];
    [heroAssetView setReplayGradientView:v26];
    [heroAssetView setRoundedCornerRadius:26.0];
    [heroAssetView setRoundedCorner:1];
    contentScrollView4 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    frameLayoutGuide = [contentScrollView4 frameLayoutGuide];

    titleLabel = [(TPSBaseTipCollectionViewCell *)v4 titleLabel];
    v62 = objc_alloc_init(UILabel);
    eyebrowLabel = v4->_eyebrowLabel;
    v4->_eyebrowLabel = v62;

    [(UILabel *)v4->_eyebrowLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_eyebrowLabel setOpaque:1];
    [(UILabel *)v4->_eyebrowLabel setTextAlignment:4];
    v64 = +[UIColor clearColor];
    [(UILabel *)v4->_eyebrowLabel setBackgroundColor:v64];

    [(UILabel *)v4->_eyebrowLabel setNumberOfLines:0];
    [(UILabel *)v4->_eyebrowLabel setLineBreakMode:0];
    v65 = +[TPSAppearance footnoteFont];
    [(UILabel *)v4->_eyebrowLabel setFont:v65];

    [(UILabel *)v4->_eyebrowLabel setAdjustsFontForContentSizeCategory:1];
    v66 = +[TPSAppearance secondaryLabelColor];
    [(UILabel *)v4->_eyebrowLabel setTextColor:v66];

    [(UILabel *)v4->_eyebrowLabel setHidden:1];
    contentScrollView5 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    [contentScrollView5 addSubview:v4->_eyebrowLabel];

    topAnchor4 = [(UILabel *)v4->_eyebrowLabel topAnchor];
    v135 = heroAssetView;
    bottomAnchor6 = [heroAssetView bottomAnchor];
    v70 = [topAnchor4 constraintEqualToAnchor:bottomAnchor6 constant:17.0];
    eyebrowLabelTopAnchorConstraint = v4->_eyebrowLabelTopAnchorConstraint;
    v4->_eyebrowLabelTopAnchorConstraint = v70;

    [(NSLayoutConstraint *)v4->_eyebrowLabelTopAnchorConstraint setActive:1];
    leadingAnchor = [(UILabel *)v4->_eyebrowLabel leadingAnchor];
    leadingAnchor2 = [titleLabel leadingAnchor];
    v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v74 setActive:1];

    trailingAnchor = [(UILabel *)v4->_eyebrowLabel trailingAnchor];
    trailingAnchor2 = [titleLabel trailingAnchor];
    v77 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v77 setActive:1];

    topAnchor5 = [titleLabel topAnchor];
    bottomAnchor7 = [(UILabel *)v4->_eyebrowLabel bottomAnchor];
    v80 = [topAnchor5 constraintEqualToAnchor:bottomAnchor7 constant:4.0];
    titleLabelToEyebrowLabelTopAnchor = v4->_titleLabelToEyebrowLabelTopAnchor;
    v4->_titleLabelToEyebrowLabelTopAnchor = v80;

    topAnchor6 = [titleLabel topAnchor];
    bottomAnchor8 = [heroAssetView bottomAnchor];
    v84 = [topAnchor6 constraintEqualToAnchor:bottomAnchor8 constant:21.0];
    titleLabelTopAnchorConstraint = v4->_titleLabelTopAnchorConstraint;
    v4->_titleLabelTopAnchorConstraint = v84;

    [(NSLayoutConstraint *)v4->_titleLabelTopAnchorConstraint setActive:1];
    leadingAnchor3 = [titleLabel leadingAnchor];
    v134 = frameLayoutGuide;
    leadingAnchor4 = [frameLayoutGuide leadingAnchor];
    v88 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    titleLabelLeadingConstraint = v4->_titleLabelLeadingConstraint;
    v4->_titleLabelLeadingConstraint = v88;

    [(NSLayoutConstraint *)v4->_titleLabelLeadingConstraint setActive:1];
    trailingAnchor3 = [titleLabel trailingAnchor];
    trailingAnchor4 = [frameLayoutGuide trailingAnchor];
    v92 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    titleLabelTrailingConstraint = v4->_titleLabelTrailingConstraint;
    v4->_titleLabelTrailingConstraint = v92;

    [(NSLayoutConstraint *)v4->_titleLabelTrailingConstraint setActive:1];
    contentLabel = [(TPSBaseTipCollectionViewCell *)v4 contentLabel];
    leadingAnchor5 = [contentLabel leadingAnchor];
    leadingAnchor6 = [titleLabel leadingAnchor];
    v132 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

    contentLabel2 = [(TPSBaseTipCollectionViewCell *)v4 contentLabel];
    trailingAnchor5 = [contentLabel2 trailingAnchor];
    trailingAnchor6 = [titleLabel trailingAnchor];
    v100 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];

    contentLabel3 = [(TPSBaseTipCollectionViewCell *)v4 contentLabel];
    topAnchor7 = [contentLabel3 topAnchor];
    bottomAnchor9 = [titleLabel bottomAnchor];
    v131 = [topAnchor7 constraintEqualToAnchor:bottomAnchor9 constant:9.0];

    contentLabel4 = [(TPSBaseTipCollectionViewCell *)v4 contentLabel];
    bottomAnchor10 = [contentLabel4 bottomAnchor];
    contentScrollView6 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    bottomAnchor11 = [contentScrollView6 bottomAnchor];
    v108 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
    contentLabelBottomConstraint = v4->_contentLabelBottomConstraint;
    v4->_contentLabelBottomConstraint = v108;

    LODWORD(v110) = 1147224064;
    [(NSLayoutConstraint *)v4->_contentLabelBottomConstraint setPriority:v110];
    v142[0] = v131;
    v142[1] = v132;
    v142[2] = v100;
    v111 = v100;
    v142[3] = v4->_contentLabelBottomConstraint;
    v112 = [NSArray arrayWithObjects:v142 count:4];
    [(TPSBaseTipCollectionViewCell *)v4 setContentLabelConstraints:v112];

    contentTextView = [(TPSBaseTipCollectionViewCell *)v4 contentTextView];
    topAnchor8 = [contentTextView topAnchor];
    bottomAnchor12 = [titleLabel bottomAnchor];
    v116 = [topAnchor8 constraintEqualToAnchor:bottomAnchor12 constant:9.0];

    bottomAnchor13 = [contentTextView bottomAnchor];
    contentScrollView7 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    bottomAnchor14 = [contentScrollView7 bottomAnchor];
    v120 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14];
    textViewBottomConstraint = v4->_textViewBottomConstraint;
    v4->_textViewBottomConstraint = v120;

    LODWORD(v122) = 1144750080;
    [(NSLayoutConstraint *)v4->_textViewBottomConstraint setPriority:v122];
    leadingAnchor7 = [contentTextView leadingAnchor];
    leadingAnchor8 = [titleLabel leadingAnchor];
    v125 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];

    trailingAnchor7 = [contentTextView trailingAnchor];
    trailingAnchor8 = [titleLabel trailingAnchor];
    v128 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];

    v141[0] = v116;
    v141[1] = v125;
    v141[2] = v128;
    v141[3] = v4->_textViewBottomConstraint;
    v129 = [NSArray arrayWithObjects:v141 count:4];
    [(TPSBaseTipCollectionViewCell *)v4 setContentTextViewConstraints:v129];

    [(TPSTipCollectionViewCell *)v4 setNeedsTextView:0];
  }

  return v4;
}

- (void)createFootnoteTextView
{
  footnoteTextView = [(TPSTipCollectionViewCell *)self footnoteTextView];

  if (!footnoteTextView)
  {
    v33 = objc_alloc_init(TPSTipContentTextView);
    [(TPSTipContentTextView *)v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TPSTipContentTextView *)v33 setScrollEnabled:0];
    [(TPSTipContentTextView *)v33 _setInteractiveTextSelectionDisabled:1];
    v4 = +[UIColor clearColor];
    [(TPSTipContentTextView *)v33 setBackgroundColor:v4];

    [(TPSTipContentTextView *)v33 setEditable:0];
    v5 = +[TPSAppearance footnoteFont];
    [(TPSTipContentTextView *)v33 setFont:v5];

    [(TPSTipContentTextView *)v33 setDataDetectorTypes:0];
    textContainer = [(TPSTipContentTextView *)v33 textContainer];
    [textContainer setHeightTracksTextView:1];

    [(TPSTipContentTextView *)v33 setDelegate:self];
    [(TPSTipContentTextView *)v33 setOpaque:1];
    [(TPSTipContentTextView *)v33 setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    textContainer2 = [(TPSTipContentTextView *)v33 textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    contentScrollView = [(TPSBaseTipCollectionViewCell *)self contentScrollView];
    [contentScrollView addSubview:v33];

    v9 = [(TPSBaseTipCollectionViewCell *)self tip];
    actions = [v9 actions];
    v11 = [actions count];

    if (v11)
    {
      [(TPSBaseTipCollectionViewCell *)self updateActionButton];
      actionButton = [(TPSBaseTipCollectionViewCell *)self actionButton];
    }

    else
    {
      contentLabel = [(TPSBaseTipCollectionViewCell *)self contentLabel];
      if ([contentLabel isHidden])
      {
        [(TPSBaseTipCollectionViewCell *)self contentTextView];
      }

      else
      {
        [(TPSBaseTipCollectionViewCell *)self contentLabel];
      }
      actionButton = ;
    }

    v14 = v33;
    if (actionButton)
    {
      topAnchor = [(TPSTipContentTextView *)v33 topAnchor];
      bottomAnchor = [actionButton bottomAnchor];
      v17 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:15.0];
      [v17 setActive:1];

      v14 = v33;
    }

    leadingAnchor = [(TPSTipContentTextView *)v14 leadingAnchor];
    titleLabel = [(TPSBaseTipCollectionViewCell *)self titleLabel];
    leadingAnchor2 = [titleLabel leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v21 setActive:1];

    trailingAnchor = [(TPSTipContentTextView *)v33 trailingAnchor];
    titleLabel2 = [(TPSBaseTipCollectionViewCell *)self titleLabel];
    trailingAnchor2 = [titleLabel2 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v25 setActive:1];

    bottomAnchor2 = [(TPSTipContentTextView *)v33 bottomAnchor];
    contentScrollView2 = [(TPSBaseTipCollectionViewCell *)self contentScrollView];
    bottomAnchor3 = [contentScrollView2 bottomAnchor];
    v29 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [(TPSTipCollectionViewCell *)self setFootnoteBottomConstraint:v29];

    footnoteBottomConstraint = [(TPSTipCollectionViewCell *)self footnoteBottomConstraint];
    LODWORD(v31) = 1144750080;
    [footnoteBottomConstraint setPriority:v31];

    footnoteBottomConstraint2 = [(TPSTipCollectionViewCell *)self footnoteBottomConstraint];
    [footnoteBottomConstraint2 setActive:1];

    [(TPSTipCollectionViewCell *)self setFootnoteTextView:v33];
    [(TPSTipCollectionViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  changeCopy = change;
  footnoteTextView = [(TPSTipCollectionViewCell *)self footnoteTextView];
  [footnoteTextView setAttributedText:0];

  heroAssetView = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  replayButton = [heroAssetView replayButton];
  [replayButton configureMediumFontStyle];

  v8.receiver = self;
  v8.super_class = TPSTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v8 contentSizeCategoryDidChange:changeCopy];
}

- (void)cancelFootnoteParsingOperation
{
  [(NSBlockOperation *)self->_footnoteContentTextOperation cancel];
  footnoteContentTextOperation = self->_footnoteContentTextOperation;
  self->_footnoteContentTextOperation = 0;

  footnoteContentTextOperationID = self->_footnoteContentTextOperationID;
  self->_footnoteContentTextOperationID = 0;
}

- (void)removeFootnoteContentParser
{
  footnoteContentParser = [(TPSTipCollectionViewCell *)self footnoteContentParser];
  [footnoteContentParser setDelegate:0];

  footnoteContentParser2 = [(TPSTipCollectionViewCell *)self footnoteContentParser];
  [footnoteContentParser2 cancelAssetFetches];

  [(TPSTipCollectionViewCell *)self setFootnoteContentParser:0];
}

- (void)updateContentLabel
{
  v39.receiver = self;
  v39.super_class = TPSTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v39 updateContentLabel];
  uniqueIdentifierForCurrentTip = [(TPSBaseTipCollectionViewCell *)self uniqueIdentifierForCurrentTip];
  v4 = [uniqueIdentifierForCurrentTip stringByAppendingString:@"-footNote"];

  footnoteContentTextOperationID = [(TPSTipCollectionViewCell *)self footnoteContentTextOperationID];
  v6 = [v4 isEqualToString:footnoteContentTextOperationID];

  if ((v6 & 1) == 0)
  {
    footnoteTextView = [(TPSTipCollectionViewCell *)self footnoteTextView];
    [footnoteTextView setAttributedText:0];

    [(TPSTipCollectionViewCell *)self cancelFootnoteParsingOperation];
    v8 = [(TPSBaseTipCollectionViewCell *)self tip];
    footnoteContent = [v8 footnoteContent];

    if (footnoteContent)
    {
      [(TPSTipCollectionViewCell *)self createFootnoteTextView];
      appController = [(TPSBaseTipCollectionViewCell *)self appController];
      v11 = [(TPSBaseTipCollectionViewCell *)self tip];
      identifier = [v11 identifier];
      v13 = [appController footNoteAttributedStringForIdentifier:identifier];

      if (v13)
      {
        footnoteTextView2 = [(TPSTipCollectionViewCell *)self footnoteTextView];
        [footnoteTextView2 setAttributedText:v13];

        footnoteTextView3 = [(TPSTipCollectionViewCell *)self footnoteTextView];
        [footnoteTextView3 setTipID:v4];

        footnoteTextView4 = [(TPSTipCollectionViewCell *)self footnoteTextView];
        [footnoteTextView4 setHidden:0];
      }

      else
      {
        v17 = objc_alloc_init(NSBlockOperation);
        [(TPSTipCollectionViewCell *)self setFootnoteContentTextOperation:v17];

        [(TPSTipCollectionViewCell *)self setFootnoteContentTextOperationID:v4];
        objc_initWeak(&location, self);
        v40[0] = NSFontAttributeName;
        v18 = +[TPSAppearance footnoteFont];
        v41[0] = v18;
        v40[1] = NSForegroundColorAttributeName;
        v19 = +[UIColor tertiaryLabelColor];
        v41[1] = v19;
        v20 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];

        [(TPSTipCollectionViewCell *)self removeFootnoteContentParser];
        v21 = objc_alloc_init(TPSConstellationContentParser);
        [(TPSTipCollectionViewCell *)self setFootnoteContentParser:v21];

        traitCollection = [(TPSTipCollectionViewCell *)self traitCollection];
        footnoteContentParser = [(TPSTipCollectionViewCell *)self footnoteContentParser];
        [footnoteContentParser setTraitCollection:traitCollection];

        footnoteContentParser2 = [(TPSTipCollectionViewCell *)self footnoteContentParser];
        [footnoteContentParser2 setDelegate:self];

        v25 = [(TPSBaseTipCollectionViewCell *)self tip];
        v26 = [v25 copy];

        footnoteContentTextOperation = self->_footnoteContentTextOperation;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100012500;
        v32[3] = &unk_1000A30B0;
        objc_copyWeak(&v37, &location);
        v28 = v26;
        v33 = v28;
        v34 = footnoteContent;
        v29 = v20;
        v35 = v29;
        v36 = v4;
        [(NSBlockOperation *)footnoteContentTextOperation addExecutionBlock:v32];
        v30 = +[TPSBaseTipCollectionViewCell attributedStringOperationQueue];
        footnoteContentTextOperation = [(TPSTipCollectionViewCell *)self footnoteContentTextOperation];
        [v30 addOperation:footnoteContentTextOperation];

        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);
      }
    }

    [(TPSTipCollectionViewCell *)self setupSharedTipMessaging];
  }
}

- (void)prepareForReuse
{
  [(TPSTipCollectionViewCell *)self prepareSharedTipForReuse];
  heroAssetView = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  replayButton = [heroAssetView replayButton];
  [replayButton configureMediumFontStyle];

  v5.receiver = self;
  v5.super_class = TPSTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v5 prepareForReuse];
}

- (BOOL)setTip:(id)tip withCellAppearance:(id)appearance
{
  tipCopy = tip;
  appearanceCopy = appearance;
  [appearanceCopy size];
  v9 = v8;
  v11 = v10;
  [(TPSBaseTipCollectionViewCell *)self cacheCellSize];
  v13 = v12;
  v15 = v14;
  v25.receiver = self;
  v25.super_class = TPSTipCollectionViewCell;
  v16 = [(TPSBaseTipCollectionViewCell *)&v25 setTip:tipCopy withCellAppearance:appearanceCopy];

  v17 = [(TPSBaseTipCollectionViewCell *)self tip];
  hasVideo = [v17 hasVideo];
  heroAssetView = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  [heroAssetView setUserInteractionEnabled:hasVideo];

  if (v16 || v9 != v13 || v11 != v15)
  {
    footnoteTextView = [(TPSTipCollectionViewCell *)self footnoteTextView];
    [footnoteTextView setHidden:1];

    eyebrowText = [tipCopy eyebrowText];
    if (!eyebrowText)
    {
      if ([tipCopy isSiriSuggestion])
      {
        v22 = +[NSBundle mainBundle];
        eyebrowText = [v22 localizedStringForKey:@"SIRI_SUGGESTION" value:&stru_1000A4A50 table:0];
      }

      else
      {
        eyebrowText = 0;
      }
    }

    v23 = eyebrowText == 0;
    -[TPSTipCollectionViewCell setNeedsTextView:](self, "setNeedsTextView:", [tipCopy containsLinks]);
    [(UILabel *)self->_eyebrowLabel setText:eyebrowText];
    [(UILabel *)self->_eyebrowLabel setHidden:v23];
    [(NSLayoutConstraint *)self->_eyebrowLabelTopAnchorConstraint setActive:eyebrowText != 0];
    [(NSLayoutConstraint *)self->_titleLabelToEyebrowLabelTopAnchor setActive:eyebrowText != 0];
    [(NSLayoutConstraint *)self->_titleLabelTopAnchorConstraint setActive:v23];
    [(TPSTipCollectionViewCell *)self setNeedsUpdateConstraints];
  }

  return v16;
}

- (void)cancelReplayButtonTimer
{
  heroAssetView = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  [heroAssetView cancelReplayButtonTimer];
}

- (void)updateConstraints
{
  [(TPSBaseTipCollectionViewCell *)self bottomPadding];
  v4 = v3;
  [(NSLayoutConstraint *)self->_contentLabelBottomConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_textViewBottomConstraint setConstant:v4];
  [(NSLayoutConstraint *)self->_footnoteBottomConstraint setConstant:v4];
  [(NSLayoutConstraint *)self->_sharedTextViewBottomConstraint setConstant:v4];
  cellAppearance = [(TPSBaseTipCollectionViewCell *)self cellAppearance];
  [cellAppearance contentSidePadding];
  [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setConstant:?];
  [cellAppearance contentSidePadding];
  [(NSLayoutConstraint *)self->_titleLabelTrailingConstraint setConstant:-v6];
  v7.receiver = self;
  v7.super_class = TPSTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v7 updateConstraints];
}

- (void)constellationContentParserAttributedStringUpdated:(id)updated
{
  updatedCopy = updated;
  footnoteContentParser = [(TPSTipCollectionViewCell *)self footnoteContentParser];
  v6 = [updatedCopy isEqual:footnoteContentParser];

  if (v6)
  {
    identifier = [updatedCopy identifier];
    v8 = [(TPSBaseTipCollectionViewCell *)self tip];
    identifier2 = [v8 identifier];
    v10 = [identifier isEqualToString:identifier2];

    if (v10)
    {
      appController = [(TPSBaseTipCollectionViewCell *)self appController];
      attributedString = [updatedCopy attributedString];
      [appController updateFootnoteAttributedString:attributedString forIdentifier:identifier];

      footnoteTextView = [(TPSTipCollectionViewCell *)self footnoteTextView];
      [footnoteTextView setTipID:0];

      footnoteTextView2 = [(TPSTipCollectionViewCell *)self footnoteTextView];
      [footnoteTextView2 setAttributedText:0];

      [(TPSTipCollectionViewCell *)self updateContentLabel];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TPSTipCollectionViewCell;
    [(TPSBaseTipCollectionViewCell *)&v15 constellationContentParserAttributedStringUpdated:updatedCopy];
  }
}

- (id)constellationContentParserBoldFont:(id)font
{
  fontCopy = font;
  footnoteContentParser = [(TPSTipCollectionViewCell *)self footnoteContentParser];
  v6 = [fontCopy isEqual:footnoteContentParser];

  if (v6)
  {
    v7 = +[TPSAppearance footnoteBoldTextFont];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TPSTipCollectionViewCell;
    v7 = [(TPSBaseTipCollectionViewCell *)&v10 constellationContentParserBoldFont:fontCopy];
  }

  v8 = v7;

  return v8;
}

- (id)constellationContentParserItalicFont:(id)font
{
  fontCopy = font;
  footnoteContentParser = [(TPSTipCollectionViewCell *)self footnoteContentParser];
  v6 = [fontCopy isEqual:footnoteContentParser];

  if (v6)
  {
    v7 = +[TPSAppearance footnoteItalicTextFont];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TPSTipCollectionViewCell;
    v7 = [(TPSBaseTipCollectionViewCell *)&v10 constellationContentParserItalicFont:fontCopy];
  }

  v8 = v7;

  return v8;
}

- (void)setupSharedTipMessaging
{
  selfCopy = self;
  sub_100042328();
}

- (void)prepareSharedTipForReuse
{
  selfCopy = self;
  sub_100042D64();
}

- (void)createAvailabilityTextView
{
  selfCopy = self;
  sub_100042E70();
}

- (void)deactivateBottomConstraints
{
  selfCopy = self;
  sub_1000436CC();
}

- (void)processAvailabilityContent
{
  selfCopy = self;
  sub_100043858();
}

@end