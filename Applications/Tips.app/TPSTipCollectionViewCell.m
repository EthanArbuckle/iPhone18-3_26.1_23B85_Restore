@interface TPSTipCollectionViewCell
- (BOOL)setTip:(id)a3 withCellAppearance:(id)a4;
- (TPSTipCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)constellationContentParserBoldFont:(id)a3;
- (id)constellationContentParserItalicFont:(id)a3;
- (void)cancelFootnoteParsingOperation;
- (void)cancelReplayButtonTimer;
- (void)constellationContentParserAttributedStringUpdated:(id)a3;
- (void)contentSizeCategoryDidChange:(id)a3;
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

- (TPSTipCollectionViewCell)initWithFrame:(CGRect)a3
{
  v140.receiver = self;
  v140.super_class = TPSTipCollectionViewCell;
  v3 = [(TPSBaseTipCollectionViewCell *)&v140 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(TPSBaseTipCollectionViewCell *)v3 heroAssetView];
    v139 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:"replayVideo"];
    [v5 addGestureRecognizer:v139];
    [v5 setRespectLoadingStatus:1];
    [(TPSBaseTipCollectionViewCell *)v4 updateFonts];
    [(TPSBaseTipCollectionViewCell *)v4 setHeroAssetHorizontalMargin:20.0];
    v6 = [(TPSTipCollectionViewCell *)v4 contentView];
    v7 = [v5 topAnchor];
    v8 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    v9 = [v8 topAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [v5 widthAnchor];
    v138 = v6;
    v12 = [v6 widthAnchor];
    [(TPSBaseTipCollectionViewCell *)v4 heroAssetHorizontalMargin];
    v14 = [v11 constraintEqualToAnchor:v12 constant:-v13];
    [v14 setActive:1];

    v15 = [v5 centerXAnchor];
    v16 = [v6 centerXAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    v137 = v17;
    [v17 setActive:1];
    [(TPSBaseTipCollectionViewCell *)v4 setAssetViewLayoutGuideCenterXConstraint:v17];
    v18 = [v5 heightAnchor];
    v19 = [v18 constraintEqualToConstant:0.0];
    [(TPSBaseTipCollectionViewCell *)v4 setAssetViewHeightConstraint:v19];

    v20 = [(TPSBaseTipCollectionViewCell *)v4 assetViewHeightConstraint];
    [v20 setActive:1];

    v21 = [UIImageView alloc];
    v22 = [UIImage imageNamed:@"ReplayGradient"];
    v23 = [v21 initWithImage:v22];

    v24 = v23;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v23 setHidden:1];
    v25 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    [v25 addSubview:v24];

    v26 = v24;
    v27 = [v24 widthAnchor];
    v28 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    v29 = [v28 widthAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = [v26 heightAnchor];
    v32 = [v31 constraintEqualToConstant:100.0];
    [v32 setActive:1];

    v33 = [v26 centerXAnchor];
    v34 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    v35 = [v34 centerXAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    [v36 setActive:1];

    v37 = [v26 topAnchor];
    v38 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    v39 = [v38 bottomAnchor];
    v40 = [v37 constraintEqualToAnchor:v39 constant:-100.0];
    [v40 setActive:1];

    v136 = v26;
    v41 = [v26 bottomAnchor];
    v42 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    v43 = [v42 bottomAnchor];
    v44 = [v41 constraintEqualToAnchor:v43];
    [v44 setActive:1];

    v45 = [UIButton buttonWithType:1];
    [v45 setupReplayButtonConfiguration];
    [v45 addTarget:v4 action:"replayButtonTapped" forControlEvents:64];
    [v45 setPreferredBehavioralStyle:0];
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = [v45 layer];
    [v46 setShadowRadius:30.0];

    v47 = [v45 layer];
    LODWORD(v48) = 1050253722;
    [v47 setShadowOpacity:v48];

    v49 = [v45 layer];
    [v49 setShadowPathIsBounds:1];

    v50 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    [v50 addSubview:v45];

    v51 = [v45 centerXAnchor];
    v52 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    v53 = [v52 centerXAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    [v54 setActive:1];

    v133 = v45;
    v55 = [v45 bottomAnchor];
    v56 = [(TPSBaseTipCollectionViewCell *)v4 heroAssetView];
    v57 = [v56 bottomAnchor];
    v58 = [v55 constraintEqualToAnchor:v57 constant:-14.0];
    [v58 setActive:1];

    [v5 setReplayButton:v45];
    [v5 setReplayGradientView:v26];
    [v5 setRoundedCornerRadius:26.0];
    [v5 setRoundedCorner:1];
    v59 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    v60 = [v59 frameLayoutGuide];

    v61 = [(TPSBaseTipCollectionViewCell *)v4 titleLabel];
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
    v67 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    [v67 addSubview:v4->_eyebrowLabel];

    v68 = [(UILabel *)v4->_eyebrowLabel topAnchor];
    v135 = v5;
    v69 = [v5 bottomAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:17.0];
    eyebrowLabelTopAnchorConstraint = v4->_eyebrowLabelTopAnchorConstraint;
    v4->_eyebrowLabelTopAnchorConstraint = v70;

    [(NSLayoutConstraint *)v4->_eyebrowLabelTopAnchorConstraint setActive:1];
    v72 = [(UILabel *)v4->_eyebrowLabel leadingAnchor];
    v73 = [v61 leadingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];
    [v74 setActive:1];

    v75 = [(UILabel *)v4->_eyebrowLabel trailingAnchor];
    v76 = [v61 trailingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];
    [v77 setActive:1];

    v78 = [v61 topAnchor];
    v79 = [(UILabel *)v4->_eyebrowLabel bottomAnchor];
    v80 = [v78 constraintEqualToAnchor:v79 constant:4.0];
    titleLabelToEyebrowLabelTopAnchor = v4->_titleLabelToEyebrowLabelTopAnchor;
    v4->_titleLabelToEyebrowLabelTopAnchor = v80;

    v82 = [v61 topAnchor];
    v83 = [v5 bottomAnchor];
    v84 = [v82 constraintEqualToAnchor:v83 constant:21.0];
    titleLabelTopAnchorConstraint = v4->_titleLabelTopAnchorConstraint;
    v4->_titleLabelTopAnchorConstraint = v84;

    [(NSLayoutConstraint *)v4->_titleLabelTopAnchorConstraint setActive:1];
    v86 = [v61 leadingAnchor];
    v134 = v60;
    v87 = [v60 leadingAnchor];
    v88 = [v86 constraintEqualToAnchor:v87];
    titleLabelLeadingConstraint = v4->_titleLabelLeadingConstraint;
    v4->_titleLabelLeadingConstraint = v88;

    [(NSLayoutConstraint *)v4->_titleLabelLeadingConstraint setActive:1];
    v90 = [v61 trailingAnchor];
    v91 = [v60 trailingAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];
    titleLabelTrailingConstraint = v4->_titleLabelTrailingConstraint;
    v4->_titleLabelTrailingConstraint = v92;

    [(NSLayoutConstraint *)v4->_titleLabelTrailingConstraint setActive:1];
    v94 = [(TPSBaseTipCollectionViewCell *)v4 contentLabel];
    v95 = [v94 leadingAnchor];
    v96 = [v61 leadingAnchor];
    v132 = [v95 constraintEqualToAnchor:v96];

    v97 = [(TPSBaseTipCollectionViewCell *)v4 contentLabel];
    v98 = [v97 trailingAnchor];
    v99 = [v61 trailingAnchor];
    v100 = [v98 constraintEqualToAnchor:v99];

    v101 = [(TPSBaseTipCollectionViewCell *)v4 contentLabel];
    v102 = [v101 topAnchor];
    v103 = [v61 bottomAnchor];
    v131 = [v102 constraintEqualToAnchor:v103 constant:9.0];

    v104 = [(TPSBaseTipCollectionViewCell *)v4 contentLabel];
    v105 = [v104 bottomAnchor];
    v106 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    v107 = [v106 bottomAnchor];
    v108 = [v105 constraintEqualToAnchor:v107];
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

    v113 = [(TPSBaseTipCollectionViewCell *)v4 contentTextView];
    v114 = [v113 topAnchor];
    v115 = [v61 bottomAnchor];
    v116 = [v114 constraintEqualToAnchor:v115 constant:9.0];

    v117 = [v113 bottomAnchor];
    v118 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    v119 = [v118 bottomAnchor];
    v120 = [v117 constraintEqualToAnchor:v119];
    textViewBottomConstraint = v4->_textViewBottomConstraint;
    v4->_textViewBottomConstraint = v120;

    LODWORD(v122) = 1144750080;
    [(NSLayoutConstraint *)v4->_textViewBottomConstraint setPriority:v122];
    v123 = [v113 leadingAnchor];
    v124 = [v61 leadingAnchor];
    v125 = [v123 constraintEqualToAnchor:v124];

    v126 = [v113 trailingAnchor];
    v127 = [v61 trailingAnchor];
    v128 = [v126 constraintEqualToAnchor:v127];

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
  v3 = [(TPSTipCollectionViewCell *)self footnoteTextView];

  if (!v3)
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
    v6 = [(TPSTipContentTextView *)v33 textContainer];
    [v6 setHeightTracksTextView:1];

    [(TPSTipContentTextView *)v33 setDelegate:self];
    [(TPSTipContentTextView *)v33 setOpaque:1];
    [(TPSTipContentTextView *)v33 setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v7 = [(TPSTipContentTextView *)v33 textContainer];
    [v7 setLineFragmentPadding:0.0];

    v8 = [(TPSBaseTipCollectionViewCell *)self contentScrollView];
    [v8 addSubview:v33];

    v9 = [(TPSBaseTipCollectionViewCell *)self tip];
    v10 = [v9 actions];
    v11 = [v10 count];

    if (v11)
    {
      [(TPSBaseTipCollectionViewCell *)self updateActionButton];
      v12 = [(TPSBaseTipCollectionViewCell *)self actionButton];
    }

    else
    {
      v13 = [(TPSBaseTipCollectionViewCell *)self contentLabel];
      if ([v13 isHidden])
      {
        [(TPSBaseTipCollectionViewCell *)self contentTextView];
      }

      else
      {
        [(TPSBaseTipCollectionViewCell *)self contentLabel];
      }
      v12 = ;
    }

    v14 = v33;
    if (v12)
    {
      v15 = [(TPSTipContentTextView *)v33 topAnchor];
      v16 = [v12 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:15.0];
      [v17 setActive:1];

      v14 = v33;
    }

    v18 = [(TPSTipContentTextView *)v14 leadingAnchor];
    v19 = [(TPSBaseTipCollectionViewCell *)self titleLabel];
    v20 = [v19 leadingAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [(TPSTipContentTextView *)v33 trailingAnchor];
    v23 = [(TPSBaseTipCollectionViewCell *)self titleLabel];
    v24 = [v23 trailingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [(TPSTipContentTextView *)v33 bottomAnchor];
    v27 = [(TPSBaseTipCollectionViewCell *)self contentScrollView];
    v28 = [v27 bottomAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    [(TPSTipCollectionViewCell *)self setFootnoteBottomConstraint:v29];

    v30 = [(TPSTipCollectionViewCell *)self footnoteBottomConstraint];
    LODWORD(v31) = 1144750080;
    [v30 setPriority:v31];

    v32 = [(TPSTipCollectionViewCell *)self footnoteBottomConstraint];
    [v32 setActive:1];

    [(TPSTipCollectionViewCell *)self setFootnoteTextView:v33];
    [(TPSTipCollectionViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = a3;
  v5 = [(TPSTipCollectionViewCell *)self footnoteTextView];
  [v5 setAttributedText:0];

  v6 = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  v7 = [v6 replayButton];
  [v7 configureMediumFontStyle];

  v8.receiver = self;
  v8.super_class = TPSTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v8 contentSizeCategoryDidChange:v4];
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
  v3 = [(TPSTipCollectionViewCell *)self footnoteContentParser];
  [v3 setDelegate:0];

  v4 = [(TPSTipCollectionViewCell *)self footnoteContentParser];
  [v4 cancelAssetFetches];

  [(TPSTipCollectionViewCell *)self setFootnoteContentParser:0];
}

- (void)updateContentLabel
{
  v39.receiver = self;
  v39.super_class = TPSTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v39 updateContentLabel];
  v3 = [(TPSBaseTipCollectionViewCell *)self uniqueIdentifierForCurrentTip];
  v4 = [v3 stringByAppendingString:@"-footNote"];

  v5 = [(TPSTipCollectionViewCell *)self footnoteContentTextOperationID];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(TPSTipCollectionViewCell *)self footnoteTextView];
    [v7 setAttributedText:0];

    [(TPSTipCollectionViewCell *)self cancelFootnoteParsingOperation];
    v8 = [(TPSBaseTipCollectionViewCell *)self tip];
    v9 = [v8 footnoteContent];

    if (v9)
    {
      [(TPSTipCollectionViewCell *)self createFootnoteTextView];
      v10 = [(TPSBaseTipCollectionViewCell *)self appController];
      v11 = [(TPSBaseTipCollectionViewCell *)self tip];
      v12 = [v11 identifier];
      v13 = [v10 footNoteAttributedStringForIdentifier:v12];

      if (v13)
      {
        v14 = [(TPSTipCollectionViewCell *)self footnoteTextView];
        [v14 setAttributedText:v13];

        v15 = [(TPSTipCollectionViewCell *)self footnoteTextView];
        [v15 setTipID:v4];

        v16 = [(TPSTipCollectionViewCell *)self footnoteTextView];
        [v16 setHidden:0];
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

        v22 = [(TPSTipCollectionViewCell *)self traitCollection];
        v23 = [(TPSTipCollectionViewCell *)self footnoteContentParser];
        [v23 setTraitCollection:v22];

        v24 = [(TPSTipCollectionViewCell *)self footnoteContentParser];
        [v24 setDelegate:self];

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
        v34 = v9;
        v29 = v20;
        v35 = v29;
        v36 = v4;
        [(NSBlockOperation *)footnoteContentTextOperation addExecutionBlock:v32];
        v30 = +[TPSBaseTipCollectionViewCell attributedStringOperationQueue];
        v31 = [(TPSTipCollectionViewCell *)self footnoteContentTextOperation];
        [v30 addOperation:v31];

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
  v3 = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  v4 = [v3 replayButton];
  [v4 configureMediumFontStyle];

  v5.receiver = self;
  v5.super_class = TPSTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v5 prepareForReuse];
}

- (BOOL)setTip:(id)a3 withCellAppearance:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 size];
  v9 = v8;
  v11 = v10;
  [(TPSBaseTipCollectionViewCell *)self cacheCellSize];
  v13 = v12;
  v15 = v14;
  v25.receiver = self;
  v25.super_class = TPSTipCollectionViewCell;
  v16 = [(TPSBaseTipCollectionViewCell *)&v25 setTip:v6 withCellAppearance:v7];

  v17 = [(TPSBaseTipCollectionViewCell *)self tip];
  v18 = [v17 hasVideo];
  v19 = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  [v19 setUserInteractionEnabled:v18];

  if (v16 || v9 != v13 || v11 != v15)
  {
    v20 = [(TPSTipCollectionViewCell *)self footnoteTextView];
    [v20 setHidden:1];

    v21 = [v6 eyebrowText];
    if (!v21)
    {
      if ([v6 isSiriSuggestion])
      {
        v22 = +[NSBundle mainBundle];
        v21 = [v22 localizedStringForKey:@"SIRI_SUGGESTION" value:&stru_1000A4A50 table:0];
      }

      else
      {
        v21 = 0;
      }
    }

    v23 = v21 == 0;
    -[TPSTipCollectionViewCell setNeedsTextView:](self, "setNeedsTextView:", [v6 containsLinks]);
    [(UILabel *)self->_eyebrowLabel setText:v21];
    [(UILabel *)self->_eyebrowLabel setHidden:v23];
    [(NSLayoutConstraint *)self->_eyebrowLabelTopAnchorConstraint setActive:v21 != 0];
    [(NSLayoutConstraint *)self->_titleLabelToEyebrowLabelTopAnchor setActive:v21 != 0];
    [(NSLayoutConstraint *)self->_titleLabelTopAnchorConstraint setActive:v23];
    [(TPSTipCollectionViewCell *)self setNeedsUpdateConstraints];
  }

  return v16;
}

- (void)cancelReplayButtonTimer
{
  v2 = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  [v2 cancelReplayButtonTimer];
}

- (void)updateConstraints
{
  [(TPSBaseTipCollectionViewCell *)self bottomPadding];
  v4 = v3;
  [(NSLayoutConstraint *)self->_contentLabelBottomConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_textViewBottomConstraint setConstant:v4];
  [(NSLayoutConstraint *)self->_footnoteBottomConstraint setConstant:v4];
  [(NSLayoutConstraint *)self->_sharedTextViewBottomConstraint setConstant:v4];
  v5 = [(TPSBaseTipCollectionViewCell *)self cellAppearance];
  [v5 contentSidePadding];
  [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setConstant:?];
  [v5 contentSidePadding];
  [(NSLayoutConstraint *)self->_titleLabelTrailingConstraint setConstant:-v6];
  v7.receiver = self;
  v7.super_class = TPSTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v7 updateConstraints];
}

- (void)constellationContentParserAttributedStringUpdated:(id)a3
{
  v4 = a3;
  v5 = [(TPSTipCollectionViewCell *)self footnoteContentParser];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [v4 identifier];
    v8 = [(TPSBaseTipCollectionViewCell *)self tip];
    v9 = [v8 identifier];
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      v11 = [(TPSBaseTipCollectionViewCell *)self appController];
      v12 = [v4 attributedString];
      [v11 updateFootnoteAttributedString:v12 forIdentifier:v7];

      v13 = [(TPSTipCollectionViewCell *)self footnoteTextView];
      [v13 setTipID:0];

      v14 = [(TPSTipCollectionViewCell *)self footnoteTextView];
      [v14 setAttributedText:0];

      [(TPSTipCollectionViewCell *)self updateContentLabel];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TPSTipCollectionViewCell;
    [(TPSBaseTipCollectionViewCell *)&v15 constellationContentParserAttributedStringUpdated:v4];
  }
}

- (id)constellationContentParserBoldFont:(id)a3
{
  v4 = a3;
  v5 = [(TPSTipCollectionViewCell *)self footnoteContentParser];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = +[TPSAppearance footnoteBoldTextFont];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TPSTipCollectionViewCell;
    v7 = [(TPSBaseTipCollectionViewCell *)&v10 constellationContentParserBoldFont:v4];
  }

  v8 = v7;

  return v8;
}

- (id)constellationContentParserItalicFont:(id)a3
{
  v4 = a3;
  v5 = [(TPSTipCollectionViewCell *)self footnoteContentParser];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = +[TPSAppearance footnoteItalicTextFont];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TPSTipCollectionViewCell;
    v7 = [(TPSBaseTipCollectionViewCell *)&v10 constellationContentParserItalicFont:v4];
  }

  v8 = v7;

  return v8;
}

- (void)setupSharedTipMessaging
{
  v2 = self;
  sub_100042328();
}

- (void)prepareSharedTipForReuse
{
  v2 = self;
  sub_100042D64();
}

- (void)createAvailabilityTextView
{
  v2 = self;
  sub_100042E70();
}

- (void)deactivateBottomConstraints
{
  v2 = self;
  sub_1000436CC();
}

- (void)processAvailabilityContent
{
  v2 = self;
  sub_100043858();
}

@end