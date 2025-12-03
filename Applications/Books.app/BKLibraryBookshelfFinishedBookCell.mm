@interface BKLibraryBookshelfFinishedBookCell
+ (double)bookCellHeightFor:(id)for assetReview:(id)review storeID:(id)d editMode:(BOOL)mode metrics:(id)metrics storageProvider:(id)provider clearCache:(BOOL)cache;
+ (id)heightCache;
+ (int)finishedStateForAsset:(id)asset assetReview:(id)review storeID:(id)d storageProvider:(id)provider;
- (BCUCoverEffectsEnvironment)coverEffectsEnvironment;
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfFinishedBookCell)initWithFrame:(CGRect)frame;
- (BKLibraryBookshelfLayoutManager)layoutManager;
- (BKLibraryBookshelfStorageProvider)storageProvider;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)isDownloading;
- (BOOL)shouldShowCloud;
- (BOOL)shouldShowDownloadProgressButton;
- (BOOL)shouldShowMoreButton;
- (CGPath)pathForDateIndicator:(CGRect)indicator;
- (CGRect)coverArea;
- (CGRect)coverFrame;
- (CGSize)bookCoverSize;
- (double)_desiredAlphaFromRawAlpha:(double)alpha;
- (id)coverImage;
- (id)coverLayer;
- (id)dragPreview;
- (id)dragPreviewParametersForDrop:(BOOL)drop;
- (void)_cancelDownload:(id)download;
- (void)_updateLibraryAsset;
- (void)_updateTintedImages;
- (void)applyLayoutAttributes:(id)attributes;
- (void)cleanupCell;
- (void)configureCombinedDate:(id)date;
- (void)configureViewsBasedOnState;
- (void)dealloc;
- (void)handleTapWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)markAsFinishedPressed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReuse;
- (void)reviewMorePressed;
- (void)setAssetReview:(id)review;
- (void)setAudiobookStatus:(id)status;
- (void)setCoverEffectsEnvironment:(id)environment;
- (void)setCoverHidden:(BOOL)hidden;
- (void)setDataSource:(id)source;
- (void)setFinishedState:(int)state;
- (void)setLibraryAsset:(id)asset;
- (void)setLibraryDownloadStatus:(id)status;
- (void)setSelected:(BOOL)selected;
- (void)setupMenuWithLibraryAsset:(id)asset withActionHandler:(id)handler;
- (void)starRatingDidChange:(id)change rating:(double)rating;
- (void)togglePlayPause:(id)pause;
- (void)updateFinishedState;
- (void)updateRatingAndReview;
- (void)writeReviewPressed;
@end

@implementation BKLibraryBookshelfFinishedBookCell

+ (int)finishedStateForAsset:(id)asset assetReview:(id)review storeID:(id)d storageProvider:(id)provider
{
  assetCopy = asset;
  reviewCopy = review;
  providerCopy = provider;
  objc_opt_class();
  permanentOrTemporaryAssetID = [assetCopy permanentOrTemporaryAssetID];
  v13 = [providerCopy retrieveValueForKey:@"kExpandReviewText" forConsumer:permanentOrTemporaryAssetID];
  dCopy2 = BUDynamicCast();

  objc_opt_class();
  permanentOrTemporaryAssetID2 = [assetCopy permanentOrTemporaryAssetID];
  v16 = [providerCopy retrieveValueForKey:@"kStarRatedThisSession" forConsumer:permanentOrTemporaryAssetID2];

  v17 = BUDynamicCast();
  bOOLValue = [v17 BOOLValue];

  bOOLValue2 = [dCopy2 BOOLValue];
  isFinished = [assetCopy isFinished];
  notFinished = [assetCopy notFinished];
  starRating = [reviewCopy starRating];
  if (d)
  {
    if ([assetCopy isStoreItem])
    {
      LODWORD(d) = 0;
    }

    else
    {
      LODWORD(d) = [assetCopy isStore];
    }
  }

  purchaseDate = [assetCopy purchaseDate];
  if (purchaseDate)
  {
    purchaseDate2 = [assetCopy purchaseDate];
    +[NSDate distantPast];
    v23 = reviewCopy;
    v24 = isFinished;
    dCopy = d;
    d = dCopy2;
    v27 = v26 = starRating;
    v35 = [purchaseDate2 isEqual:v27] ^ 1;

    starRating = v26;
    dCopy2 = d;
    LODWORD(d) = dCopy;
    isFinished = v24;
    reviewCopy = v23;
  }

  else
  {
    v35 = 0;
  }

  reviewTitle = [reviewCopy reviewTitle];
  reviewBody = [reviewCopy reviewBody];
  if (notFinished & 1 | ((isFinished & 1) == 0))
  {
    v30 = notFinished ^ 1;
  }

  else
  {
    v31 = d & v35;
    if ((d & v35) != 0)
    {
      v30 = 2;
    }

    else
    {
      v30 = 3;
    }

    if (v31 && starRating)
    {
      if ([reviewTitle length] || (bOOLValue ? (v30 = 4) : (v30 = 5), objc_msgSend(reviewBody, "length")))
      {
        if (bOOLValue2)
        {
          v30 = 7;
        }

        else
        {
          v30 = 6;
        }
      }
    }
  }

  return v30;
}

+ (id)heightCache
{
  if (qword_100AF7550 != -1)
  {
    sub_10078E07C();
  }

  v3 = qword_100AF7558;

  return v3;
}

+ (double)bookCellHeightFor:(id)for assetReview:(id)review storeID:(id)d editMode:(BOOL)mode metrics:(id)metrics storageProvider:(id)provider clearCache:(BOOL)cache
{
  modeCopy = mode;
  forCopy = for;
  reviewCopy = review;
  dCopy = d;
  metricsCopy = metrics;
  providerCopy = provider;
  heightCache = [self heightCache];
  v21 = heightCache;
  if (cache || byte_100AF7560 != modeCopy)
  {
    [heightCache removeAllObjects];
    byte_100AF7560 = modeCopy;
    if (forCopy)
    {
LABEL_4:
      v204 = dCopy;
      objc_opt_class();
      v22 = BUDynamicCast();
      [v22 bookCoverSize];
      v24 = v23;
      [v22 cellSpacing];
      v26 = v25;
      permanentOrTemporaryAssetID = [forCopy permanentOrTemporaryAssetID];
      v28 = [v21 objectForKeyedSubscript:permanentOrTemporaryAssetID];

      if (v28)
      {
        [v28 doubleValue];
        v30 = v29;
LABEL_65:

        v31 = v30;
        dCopy = v204;
        goto LABEL_66;
      }

      v197 = v26;
      v198 = v24;
      reviewBottomLayout = [v22 reviewBottomLayout];
      [v22 cellWidth];
      v33 = v32;
      [v22 lockupMargin];
      v35 = v33 - v34;
      [v22 cellSpacing];
      v199 = v36;
      [v22 ratingHeight];
      v188 = v37;
      [v22 moreHeight];
      v191 = v38;
      [v22 bookCoverSize];
      v40 = v39;
      [v22 bookCoverLeftMargin];
      v194 = v41;
      [v22 cellWidth];
      v193 = v42;
      [v22 lockupBottomSpacing];
      v44 = v40 + v43;
      [v22 smallLayoutSpaceNeeded];
      v192 = v45;
      v46 = [UILabel alloc];
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v50 = [v46 initWithFrame:{CGRectZero.origin.x, y, width, height}];
      [forCopy title];
      v51 = v201 = reviewCopy;
      [v22 titleFontAttributes];
      v52 = v203 = providerCopy;
      v53 = [TUIFontSpec attributedStringWith:v51 attributes:v52];
      [v50 setAttributedText:v53];

      [v22 titleMaxLines];
      [v50 setNumberOfLines:v54];
      [v50 sizeThatFits:{v35, 1.79769313e308}];
      v187 = width;
      v55 = y;
      v56 = width;
      v57 = height;
      v58 = v40;
      v60 = v59;
      [v50 setFrame:{CGRectZero.origin.x, y, v56, v57}];
      displayAuthor = [forCopy displayAuthor];
      authorFontAttributes = [v22 authorFontAttributes];
      v63 = [TUIFontSpec attributedStringWith:displayAuthor attributes:authorFontAttributes];
      [v50 setAttributedText:v63];

      [v22 authorMaxLines];
      [v50 setNumberOfLines:v64];
      v189 = v35;
      [v50 sizeThatFits:{v35, 1.79769313e308}];
      v66 = v65;
      v67 = v60 + v65;
      [v22 authorSpacing];
      v69 = v68 + v67;
      objc_opt_class();
      permanentOrTemporaryAssetID2 = [forCopy permanentOrTemporaryAssetID];
      v71 = [v203 retrieveValueForKey:@"kExpandReviewText" forConsumer:permanentOrTemporaryAssetID2];
      v72 = BUDynamicCast();

      reviewCopy = v201;
      v200 = v72;
      LODWORD(v72) = [v72 BOOLValue];
      v73 = [self finishedStateForAsset:forCopy assetReview:v201 storeID:v204 storageProvider:v203];
      v186 = v72;
      v196 = v73;
      if (v69 > v58)
      {
        title = [forCopy title];
        titleFontAttributes = [v22 titleFontAttributes];
        v76 = [TUIFontSpec attributedStringWith:title attributes:titleFontAttributes];
        [v50 setAttributedText:v76];

        [v22 titleMaxLines];
        [v50 setNumberOfLines:v77];
        [v50 sizeThatFits:{v193 - v194, 1.79769313e308}];
        v79 = v78;
        displayAuthor2 = [forCopy displayAuthor];
        authorFontAttributes2 = [v22 authorFontAttributes];
        v82 = [TUIFontSpec attributedStringWith:displayAuthor2 attributes:authorFontAttributes2];
        [v50 setAttributedText:v82];

        [v22 authorMaxLines];
        [v50 setNumberOfLines:v83];
        v60 = v79;
        [v50 sizeThatFits:{v193 - v194, 1.79769313e308}];
        v66 = v84;
        v85 = 0;
        v86 = 1;
        v87 = v44;
LABEL_12:
        v88 = v44;
        goto LABEL_13;
      }

      v87 = 0.0;
      if (v58 - v69 < v192)
      {
        v86 = 1;
        v85 = 1;
        goto LABEL_12;
      }

      v88 = v44;
      if (modeCopy)
      {
        v85 = 0;
        v86 = reviewBottomLayout;
        goto LABEL_13;
      }

      v86 = reviewBottomLayout;
      if (v73 == 4)
      {
        v195 = v60;
        v97 = objc_alloc_init(BCLibraryButton);
        [v97 setClipsToBounds:1];
        [v22 writeReviewTitleInset];
        v177 = v176;
        [v22 writeReviewTitleInset];
        [v97 setTitleEdgeInsets:{0.0, v177, 0.0, v178}];
        v179 = +[NSBundle mainBundle];
        v180 = [v179 localizedStringForKey:@"Write a Review" value:&stru_100A30A68 table:0];

        writeReviewFontAttributes = [v22 writeReviewFontAttributes];
        v182 = [TUIFontSpec attributedStringWith:v180 attributes:writeReviewFontAttributes];
        [v97 setAttributedTitle:v182 forState:0];

        [v97 sizeThatFits:{1.79769313e308, 1.79769313e308}];
        v184 = v183;
        [v22 writeReviewTitleInset];
        v111 = v184 + v185 * 2.0;
      }

      else
      {
        if (v73 != 1)
        {
          v85 = 0;
LABEL_13:
          [v22 authorSpacing];
          v90 = v66 + v60 + v87 + v89;
          if (v85)
          {
            v91 = v88;
          }

          else
          {
            v91 = v90;
          }

          if (modeCopy)
          {
            if (v91 >= v58)
            {
              v92 = v91;
            }

            else
            {
              v92 = v58;
            }

            v30 = v199 + v92;
            providerCopy = v203;
            goto LABEL_64;
          }

          v30 = v198 + v197;
          providerCopy = v203;
          if (v196 <= 4)
          {
            if (v196 > 2)
            {
              if (v196 == 3)
              {
LABEL_43:
                [v22 moreSpacing];
                v96 = v91 + v124;
                goto LABEL_45;
              }

              v112 = objc_alloc_init(BCLibraryButton);
              writeReviewFontAttributes2 = [v22 writeReviewFontAttributes];
              v114 = [TUIFontSpec attributedStringWith:@"Write" attributes:writeReviewFontAttributes2];
              [v112 setAttributedTitle:v114 forState:0];

              providerCopy = v203;
              [v112 sizeThatFits:{1.79769313e308, 1.79769313e308}];
              v116 = v115;
              [v22 ratingSpacing];
              v118 = v91 + v117;
              [v22 ratingHeight];
              v120 = v118 + v119;
              [v22 writeReviewSpacing];
              v122 = v120 + v121;
            }

            else
            {
              if (v196 != 1)
              {
                if (v196 != 2)
                {
LABEL_64:
                  v172 = [NSNumber numberWithDouble:v30];
                  permanentOrTemporaryAssetID3 = [forCopy permanentOrTemporaryAssetID];
                  [v21 setObject:v172 forKeyedSubscript:permanentOrTemporaryAssetID3];

                  v28 = 0;
                  goto LABEL_65;
                }

                [v22 finishedSpacing];
                v94 = v188 + v91 + v93;
                [v22 moreSpacing];
                v96 = v95 + v94;
LABEL_45:
                v130 = v199 + v191 + v96;
                if (v30 < v130)
                {
                  v30 = v130;
                }

                goto LABEL_64;
              }

              v112 = objc_alloc_init(BCLibraryButton);
              finishedFontAttributes = [v22 finishedFontAttributes];
              v132 = [TUIFontSpec attributedStringWith:@"FIN" attributes:finishedFontAttributes];
              [v112 setAttributedTitle:v132 forState:0];

              providerCopy = v203;
              [v112 sizeThatFits:{1.79769313e308, 1.79769313e308}];
              v116 = v133;
              [v22 finishedSpacing];
              v122 = v91 + v134;
            }

            v135 = v116 + v122;
            [v22 moreSpacing];
            v137 = v199 + v191 + v136 + v135;
            if (v30 < v137)
            {
              v30 = v137;
            }

            goto LABEL_64;
          }

          if (v196 <= 6)
          {
            if (v196 == 5)
            {
LABEL_44:
              [v22 ratingSpacing];
              v126 = v91 + v125;
              [v22 ratingHeight];
              v128 = v126 + v127;
              [v22 moreSpacing];
              v96 = v128 + v129;
              goto LABEL_45;
            }

            v123 = 0;
          }

          else
          {
            if (v196 != 7)
            {
              if (v196 != 8)
              {
                if (v196 != 9)
                {
                  goto LABEL_64;
                }

                goto LABEL_43;
              }

              goto LABEL_44;
            }

            v123 = v186;
          }

          reviewBody = [reviewCopy reviewBody];
          [v22 bookCoverSize];
          v139 = v138;
          if (v86)
          {
            [v22 cellWidth];
            v141 = v140;
            [v22 bookCoverLeftMargin];
            v189 = v141 - v142;
          }

          [v22 reviewLeftMargin];
          v144 = v189 - v143;
          [v22 reviewRightMargin];
          v146 = v144 - v145;
          if (v123)
          {
            reviewContentFontAttributes = [v22 reviewContentFontAttributes];
            attributes = [reviewContentFontAttributes attributes];
            [reviewBody boundingRectWithSize:1 options:attributes attributes:0 context:{v146, 1.79769313e308}];
            v149 = CGRectGetHeight(v205);
          }

          else
          {
            reviewContentFontAttributes = [[IMExpandingLabel alloc] initWithFrame:{CGRectZero.origin.x, v55, v187, v57}];
            [reviewContentFontAttributes setTextAlignment:0];
            reviewContentFontAttributes2 = [v22 reviewContentFontAttributes];
            v151 = [TUIFontSpec attributedStringWith:reviewBody attributes:reviewContentFontAttributes2];
            [reviewContentFontAttributes setAttributedText:v151];

            [reviewContentFontAttributes sizeThatFits:{v146, 1.79769313e308}];
            v149 = v152;
          }

          reviewTitleFontAttributes = [v22 reviewTitleFontAttributes];
          font = [reviewTitleFontAttributes font];
          [font lineHeight];
          v156 = v155;

          [v22 reviewTopMargin];
          v158 = v149 + v156 + v157;
          [v22 reviewBottomMargin];
          v160 = v158 + v159;
          [v22 ratingSpacing];
          v162 = v188 + v91 + v161;
          if (v86)
          {
            [v22 moreSpacing];
            v164 = v191 + v163 + v162;
            [v22 moreSpacing];
            v166 = v165 + v164;
            if (v139 < v166)
            {
              v139 = v166;
            }

            [v22 reviewSpacing];
            v168 = v160 + v167 + v139;
          }

          else
          {
            [v22 reviewSpacing];
            v170 = v160 + v169 + v162;
            [v22 moreSpacing];
            v168 = v191 + v171 + v170;
          }

          providerCopy = v203;
          v30 = v199 + v168;

          goto LABEL_64;
        }

        v195 = v60;
        v97 = objc_alloc_init(BCLibraryButton);
        [v97 setClipsToBounds:1];
        [v22 finishedTitleInset];
        v99 = v98;
        [v22 finishedTitleInset];
        [v97 setTitleEdgeInsets:{0.0, v99, 0.0, v100}];
        finishedShortText = [v22 finishedShortText];
        v102 = +[NSBundle mainBundle];
        v103 = v102;
        if (finishedShortText)
        {
          v104 = @"FINISHED";
        }

        else
        {
          v104 = @"MARK FINISHED";
        }

        v105 = [v102 localizedStringForKey:v104 value:&stru_100A30A68 table:0];

        finishedFontAttributes2 = [v22 finishedFontAttributes];
        v107 = [TUIFontSpec attributedStringWith:v105 attributes:finishedFontAttributes2];
        [v97 setAttributedTitle:v107 forState:0];

        [v97 sizeThatFits:{1.79769313e308, 1.79769313e308}];
        v109 = v108;
        [v22 finishedTitleInset];
        v111 = v109 + v110 * 2.0;
      }

      v85 = v111 > v189;
      reviewCopy = v201;
      v86 = reviewBottomLayout;
      v88 = v44;
      v60 = v195;
      goto LABEL_13;
    }
  }

  else if (forCopy)
  {
    goto LABEL_4;
  }

  v31 = 0.0;
LABEL_66:
  v174 = ceilf(v31);

  return v174;
}

- (BKLibraryBookshelfFinishedBookCell)initWithFrame:(CGRect)frame
{
  v76.receiver = self;
  v76.super_class = BKLibraryBookshelfFinishedBookCell;
  v3 = [(BKLibraryBookshelfCollectionViewCell *)&v76 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v4 = [BUCoalescingCallBlock alloc];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1000CBE84;
    v73[3] = &unk_100A04820;
    objc_copyWeak(&v74, &location);
    v5 = [v4 initWithNotifyBlock:v73 blockDescription:@"Finished book cell"];
    coalescedPropertyChange = v3->_coalescedPropertyChange;
    v3->_coalescedPropertyChange = v5;

    [(BUCoalescingCallBlock *)v3->_coalescedPropertyChange setCoalescingDelay:0.1];
    v3->_finishedState = 10;
    v7 = +[UIApplication sharedApplication];
    v3->_isRTL = [v7 userInterfaceLayoutDirection] == 1;

    v8 = objc_alloc_init(BKLibraryBookshelfCoverView);
    coverView = v3->_coverView;
    v3->_coverView = v8;

    coverLayer = [(BKLibraryBookshelfCoverView *)v3->_coverView coverLayer];
    [coverLayer setBottomAligned:0];

    contentView = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView addSubview:v3->_coverView];

    v12 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v16 = [v12 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    checkmarkView = v3->_checkmarkView;
    v3->_checkmarkView = v16;

    contentView2 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView2 addSubview:v3->_checkmarkView];

    height = [[BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Not downloaded" value:&stru_100A30A68 table:0];
    [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)height setAccessibilityLabel:v21];

    accessibilityTraits = [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)height accessibilityTraits];
    [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)height setAccessibilityTraits:accessibilityTraits & ~UIAccessibilityTraitImage];
    objc_storeStrong(&v3->_cloudView, height);
    contentView3 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView3 addSubview:v3->_cloudView];

    v24 = [[IMRadialProgressButton alloc] initWithFrame:{0.0, 0.0, 17.0, 17.0}];
    downloadProgressButton = v3->_downloadProgressButton;
    v3->_downloadProgressButton = v24;

    [(IMRadialProgressButton *)v3->_downloadProgressButton setCenterImageNormal:0];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setCenterImageSelected:0];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setInscribeProgress:0];
    v26 = +[UIColor bc_booksKeyColor];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setProgressColor:v26];

    [(IMRadialProgressButton *)v3->_downloadProgressButton setProgressLineCap:1];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setProgressThickness:2.0];
    v27 = +[UIColor bc_booksTableSelectionColor];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setTrackColor:v27];

    [(IMRadialProgressButton *)v3->_downloadProgressButton setTrackDiameter:17.0];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setTrackThickness:2.0];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setTouchInsets:-13.5, -13.5, -13.5, -13.5];
    [(IMRadialProgressButton *)v3->_downloadProgressButton addTarget:v3 action:"_cancelDownload:" forControlEvents:64];
    [(BKLibraryDownloadStatus *)v3->_libraryDownloadStatus progressValue];
    *&v28 = v28;
    [(IMRadialProgressButton *)v3->_downloadProgressButton setProgress:v28];
    contentView4 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView4 addSubview:v3->_downloadProgressButton];

    v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v30;

    v32 = v3->_titleLabel;
    accessibilityTraits2 = [(UILabel *)v32 accessibilityTraits];
    [(UILabel *)v32 setAccessibilityTraits:UIAccessibilityTraitButton | UIAccessibilityTraitHeader | accessibilityTraits2];
    v34 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    authorLabel = v3->_authorLabel;
    v3->_authorLabel = v34;

    contentView5 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView5 addSubview:v3->_titleLabel];

    contentView6 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView6 addSubview:v3->_authorLabel];

    v38 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    combinedDateLabel = v3->_combinedDateLabel;
    v3->_combinedDateLabel = v38;

    if ([(BKLibraryBookshelfFinishedBookCell *)v3 isRTL])
    {
      v40 = 0;
    }

    else
    {
      v40 = 2;
    }

    [(UILabel *)v3->_combinedDateLabel setTextAlignment:v40];
    [(UILabel *)v3->_combinedDateLabel setMinimumScaleFactor:0.5];
    contentView7 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView7 addSubview:v3->_combinedDateLabel];

    v42 = +[CAShapeLayer layer];
    dateIndicator = v3->_dateIndicator;
    v3->_dateIndicator = v42;

    contentView8 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    layer = [contentView8 layer];
    [layer addSublayer:v3->_dateIndicator];

    height2 = [[BKLibraryStarRating alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    starRating = v3->_starRating;
    v3->_starRating = height2;

    [(BKLibraryStarRating *)v3->_starRating setDelegate:v3];
    [(BKLibraryStarRating *)v3->_starRating setIsRTL:v3->_isRTL];
    [(BKLibraryStarRating *)v3->_starRating setAllowHalfStars:0];
    contentView9 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView9 addSubview:v3->_starRating];

    v49 = objc_alloc_init(BCLibraryButton);
    markAsFinishedButton = v3->_markAsFinishedButton;
    v3->_markAsFinishedButton = v49;

    [(BCLibraryButton *)v3->_markAsFinishedButton setClipsToBounds:1];
    [(BCLibraryButton *)v3->_markAsFinishedButton addTarget:v3 action:"markAsFinishedPressed" forControlEvents:64];
    contentView10 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView10 addSubview:v3->_markAsFinishedButton];

    v52 = [IMTouchInsetsButton buttonWithType:0];
    moreButton = v3->_moreButton;
    v3->_moreButton = v52;

    v54 = +[NSBundle mainBundle];
    v55 = [v54 localizedStringForKey:@"More Actions" value:&stru_100A30A68 table:0];
    [(IMTouchInsetsButton *)v3->_moreButton setAccessibilityLabel:v55];

    [(IMTouchInsetsButton *)v3->_moreButton setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    contentView11 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView11 addSubview:v3->_moreButton];

    v57 = objc_alloc_init(BCLibraryButton);
    writeReviewButton = v3->_writeReviewButton;
    v3->_writeReviewButton = v57;

    [(BCLibraryButton *)v3->_writeReviewButton setClipsToBounds:1];
    [(BCLibraryButton *)v3->_writeReviewButton addTarget:v3 action:"writeReviewPressed" forControlEvents:64];
    contentView12 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView12 addSubview:v3->_writeReviewButton];

    v60 = +[CALayer layer];
    reviewBackground = v3->_reviewBackground;
    v3->_reviewBackground = v60;

    [(CALayer *)v3->_reviewBackground setZPosition:-1.0];
    contentView13 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    layer2 = [contentView13 layer];
    [layer2 addSublayer:v3->_reviewBackground];

    v64 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    reviewTitle = v3->_reviewTitle;
    v3->_reviewTitle = v64;

    contentView14 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView14 addSubview:v3->_reviewTitle];

    v67 = [[IMExpandingLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    reviewComments = v3->_reviewComments;
    v3->_reviewComments = v67;

    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_1000CBFA0;
    v71[3] = &unk_100A035D0;
    objc_copyWeak(&v72, &location);
    [(IMExpandingLabel *)v3->_reviewComments setLabelResizedBlock:v71];
    contentView15 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [contentView15 addSubview:v3->_reviewComments];

    objc_destroyWeak(&v72);
    objc_destroyWeak(&v74);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"combinedState" context:off_100ACD920];
  [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACD928];
  [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"isFinished" context:off_100ACD930];
  [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"notFinished" context:off_100ACD930];
  [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"dateFinished" context:off_100ACD930];
  [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"title" context:off_100ACD930];
  [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"author" context:off_100ACD930];
  [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACD938];
  [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" context:off_100ACD940];
  v3.receiver = self;
  v3.super_class = BKLibraryBookshelfFinishedBookCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v3 dealloc];
}

- (void)cleanupCell
{
  [(BKLibraryBookshelfFinishedBookCell *)self setLibraryDownloadStatus:0];
  [(BKLibraryBookshelfFinishedBookCell *)self setAudiobookStatus:0];
  [(BKLibraryBookshelfFinishedBookCell *)self setLibraryAsset:0];
  self->_finishedState = 10;
}

- (void)prepareForReuse
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfFinishedBookCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v5 prepareForReuse];
  [(BKLibraryBookshelfFinishedBookCell *)self cleanupCell];
  coverLayer = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  isHidden = [coverLayer isHidden];

  if (isHidden)
  {
    [(BKLibraryBookshelfFinishedBookCell *)self setCoverHidden:0];
  }

  +[CATransaction commit];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v6 = 1;
  }

  else
  {
    [(BKLibraryBookshelfFinishedBookCell *)self coverFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [touchCopy locationInView:self];
    v18.x = v15;
    v18.y = v16;
    v19.origin.x = v8;
    v19.origin.y = v10;
    v19.size.width = v12;
    v19.size.height = v14;
    v6 = CGRectContainsPoint(v19, v18);
  }

  return v6;
}

- (void)markAsFinishedPressed
{
  actionHandler = [(BKLibraryBookshelfFinishedBookCell *)self actionHandler];
  libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  [actionHandler bookMarkedFinished:libraryAsset];
}

- (void)writeReviewPressed
{
  storageProvider = [(BKLibraryBookshelfFinishedBookCell *)self storageProvider];
  libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  permanentOrTemporaryAssetID = [libraryAsset permanentOrTemporaryAssetID];
  [storageProvider storeValue:&__kCFBooleanFalse forKey:@"kStarRatedThisSession" forConsumer:permanentOrTemporaryAssetID];

  actionHandler = [(BKLibraryBookshelfFinishedBookCell *)self actionHandler];
  libraryAsset2 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  [actionHandler bookWriteReview:libraryAsset2];
}

- (void)reviewMorePressed
{
  [(BKLibraryBookshelfFinishedBookCell *)self setShowFullReviewText:1];
  storageProvider = [(BKLibraryBookshelfFinishedBookCell *)self storageProvider];
  v4 = [NSNumber numberWithBool:[(BKLibraryBookshelfFinishedBookCell *)self showFullReviewText]];
  libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  permanentOrTemporaryAssetID = [libraryAsset permanentOrTemporaryAssetID];
  [storageProvider storeValue:v4 forKey:@"kExpandReviewText" forConsumer:permanentOrTemporaryAssetID];

  libraryAsset2 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  permanentOrTemporaryAssetID2 = [libraryAsset2 permanentOrTemporaryAssetID];

  if (permanentOrTemporaryAssetID2)
  {
    heightCache = [objc_opt_class() heightCache];
    [heightCache removeObjectForKey:permanentOrTemporaryAssetID2];

    layoutManager = [(BKLibraryBookshelfFinishedBookCell *)self layoutManager];
    indexPath = [(BKLibraryBookshelfFinishedBookCell *)self indexPath];
    [layoutManager invalidateLayoutFor:indexPath];
  }
}

- (id)coverLayer
{
  coverView = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
  coverLayer = [coverView coverLayer];

  return coverLayer;
}

- (void)handleTapWithCompletion:(id)completion
{
  completionCopy = completion;
  actionHandler = [(BKLibraryBookshelfFinishedBookCell *)self actionHandler];
  indexPath = [(BKLibraryBookshelfFinishedBookCell *)self indexPath];
  [actionHandler bookTapped:indexPath completion:completionCopy];
}

- (BCUCoverEffectsEnvironment)coverEffectsEnvironment
{
  coverLayer = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  coverEffectsEnvironment = [coverLayer coverEffectsEnvironment];

  return coverEffectsEnvironment;
}

- (void)setCoverEffectsEnvironment:(id)environment
{
  environmentCopy = environment;
  coverLayer = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  [coverLayer setCoverEffectsEnvironment:environmentCopy];
}

- (id)dragPreview
{
  v3 = [UIDragPreview alloc];
  coverView = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
  v5 = [v3 initWithView:coverView];

  return v5;
}

- (id)dragPreviewParametersForDrop:(BOOL)drop
{
  v4 = objc_alloc_init(UIDragPreviewParameters);
  traitCollection = [(BKLibraryBookshelfFinishedBookCell *)self traitCollection];
  v6 = [traitCollection traitCollectionByModifyingTraits:&stru_100A06AE0];

  v7 = +[UIColor bc_booksBackground];
  v8 = [v7 resolvedColorWithTraitCollection:v6];
  [v4 setBackgroundColor:v8];

  return v4;
}

- (double)_desiredAlphaFromRawAlpha:(double)alpha
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    alpha = 1.0;
    if (([(BKLibraryBookshelfFinishedBookCell *)self isSelected]& 1) == 0)
    {
      finishedMetrics = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      [finishedMetrics shrinkAlpha];
      alpha = v6;
    }
  }

  return alpha;
}

- (void)setCoverHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  coverView = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
  [coverView setHidden:hiddenCopy];

  +[CATransaction commit];
}

- (id)coverImage
{
  coverLayer = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  image = [coverLayer image];

  return image;
}

- (CGRect)coverFrame
{
  layer = [(BKLibraryBookshelfFinishedBookCell *)self layer];
  coverLayer = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  [coverLayer coverBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  coverLayer2 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  [layer convertRect:coverLayer2 fromLayer:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)coverArea
{
  [(BKLibraryBookshelfFinishedBookCell *)self bounds];
  columnMetrics = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
  [columnMetrics margins];
  [(BKLibraryBookshelfFinishedBookCell *)self bookCoverLeftMargin];

  [(BKLibraryBookshelfFinishedBookCell *)self bookCoverSize];
  [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
  [(BKLibraryBookshelfFinishedBookCell *)self bounds];

  IMRectFlippedForRTL();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)configureViewsBasedOnState
{
  v3 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
  combinedDateLabel = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
  [combinedDateLabel setAlpha:v3];

  *&v3 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
  dateIndicator = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
  LODWORD(v6) = LODWORD(v3);
  [dateIndicator setOpacity:v6];

  isInEditMode = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  checkmarkView = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
  [checkmarkView setAlpha:isInEditMode];

  if ([(BKLibraryBookshelfFinishedBookCell *)self shouldShowCloud])
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  cloudView = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
  [cloudView setAlpha:v9];

  shouldShowCloud = [(BKLibraryBookshelfFinishedBookCell *)self shouldShowCloud];
  cloudView2 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
  [cloudView2 setIsAccessibilityElement:shouldShowCloud];

  if ([(BKLibraryBookshelfFinishedBookCell *)self shouldShowDownloadProgressButton])
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  downloadProgressButton = [(BKLibraryBookshelfFinishedBookCell *)self downloadProgressButton];
  [downloadProgressButton setAlpha:v13];

  if ([(BKLibraryBookshelfFinishedBookCell *)self shouldShowMoreButton])
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  moreButton = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  [moreButton setAlpha:v15];

  finishedState = self->_finishedState;
  if (finishedState <= 4)
  {
    if (finishedState > 2)
    {
      if (finishedState == 3)
      {
        reviewBackground = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
        [reviewBackground setOpacity:0.0];

        reviewTitle = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
        [reviewTitle setAlpha:0.0];

        reviewComments = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        [reviewComments setAlpha:0.0];

        writeReviewButton = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
        [writeReviewButton setAlpha:0.0];

        markAsFinishedButton = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
        [markAsFinishedButton setAlpha:0.0];

        starRating = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
LABEL_27:
        v48 = 0.0;
LABEL_30:
        reviewBackground7 = starRating;
        goto LABEL_31;
      }

      reviewBackground2 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [reviewBackground2 setOpacity:0.0];

      reviewTitle2 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [reviewTitle2 setAlpha:0.0];

      reviewComments2 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [reviewComments2 setAlpha:0.0];

      markAsFinishedButton2 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [markAsFinishedButton2 setAlpha:0.0];

      starRating2 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
      [starRating2 setAlpha:1.0];

      v34 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
      starRating = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    }

    else
    {
      if (finishedState != 1)
      {
        if (finishedState != 2)
        {
          return;
        }

LABEL_19:
        reviewBackground3 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
        [reviewBackground3 setOpacity:0.0];

        reviewTitle3 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
        [reviewTitle3 setAlpha:0.0];

        reviewComments3 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        [reviewComments3 setAlpha:0.0];

        writeReviewButton2 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
        [writeReviewButton2 setAlpha:0.0];

        markAsFinishedButton3 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
LABEL_29:
        v58 = markAsFinishedButton3;
        [markAsFinishedButton3 setAlpha:0.0];

        starRating = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
        v48 = 1.0;
        goto LABEL_30;
      }

      reviewBackground4 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [reviewBackground4 setOpacity:0.0];

      reviewTitle4 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [reviewTitle4 setAlpha:0.0];

      reviewComments4 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [reviewComments4 setAlpha:0.0];

      starRating3 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
      [starRating3 setAlpha:0.0];

      writeReviewButton3 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [writeReviewButton3 setAlpha:0.0];

      v34 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
      starRating = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    }

    reviewBackground7 = starRating;
    v48 = v34;
LABEL_31:
    [starRating setAlpha:v48];
    goto LABEL_32;
  }

  if (finishedState <= 6)
  {
    if (finishedState == 5)
    {
      reviewBackground5 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [reviewBackground5 setOpacity:0.0];

      reviewTitle5 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [reviewTitle5 setAlpha:0.0];

      reviewComments5 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [reviewComments5 setAlpha:0.0];

      markAsFinishedButton4 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [markAsFinishedButton4 setAlpha:0.0];

      markAsFinishedButton3 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      goto LABEL_29;
    }
  }

  else if (finishedState != 7)
  {
    if (finishedState != 8)
    {
      if (finishedState != 9)
      {
        return;
      }

      reviewBackground6 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [reviewBackground6 setOpacity:0.0];

      reviewTitle6 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [reviewTitle6 setAlpha:0.0];

      reviewComments6 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [reviewComments6 setAlpha:0.0];

      starRating4 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
      [starRating4 setAlpha:0.0];

      writeReviewButton4 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [writeReviewButton4 setAlpha:0.0];

      starRating = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  markAsFinishedButton5 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
  [markAsFinishedButton5 setAlpha:0.0];

  writeReviewButton5 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
  [writeReviewButton5 setAlpha:0.0];

  starRating5 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
  [starRating5 setAlpha:1.0];

  v38 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
  reviewTitle7 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
  [reviewTitle7 setAlpha:v38];

  v40 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
  reviewComments7 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
  [reviewComments7 setAlpha:v40];

  *&v40 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
  reviewBackground7 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
  LODWORD(v42) = LODWORD(v40);
  [reviewBackground7 setOpacity:v42];
LABEL_32:
}

- (void)setFinishedState:(int)state
{
  if (!+[NSThread isMainThread])
  {
    sub_10078E090();
  }

  finishedState = self->_finishedState;
  if (finishedState == 10 || finishedState != state)
  {
    self->_finishedState = state;
    if (finishedState != 10)
    {
      libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
      permanentOrTemporaryAssetID = [libraryAsset permanentOrTemporaryAssetID];

      if (permanentOrTemporaryAssetID)
      {
        heightCache = [objc_opt_class() heightCache];
        [heightCache removeObjectForKey:permanentOrTemporaryAssetID];

        layoutManager = [(BKLibraryBookshelfFinishedBookCell *)self layoutManager];
        indexPath = [(BKLibraryBookshelfFinishedBookCell *)self indexPath];
        [layoutManager invalidateLayoutFor:indexPath];
      }
    }

    [(BKLibraryBookshelfFinishedBookCell *)self setNeedsLayout];
  }

  [(BKLibraryBookshelfFinishedBookCell *)self configureViewsBasedOnState];
}

- (void)layoutSubviews
{
  v664.receiver = self;
  v664.super_class = BKLibraryBookshelfFinishedBookCell;
  [(BKLibraryBookshelfFinishedBookCell *)&v664 layoutSubviews];
  finishedMetrics = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  [(BKLibraryBookshelfFinishedBookCell *)self bounds];
  x = v665.origin.x;
  y = v665.origin.y;
  width = v665.size.width;
  height = v665.size.height;
  MaxX = CGRectGetMaxX(v665);
  columnMetrics = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
  [columnMetrics margins];
  v613 = v7;

  [(BKLibraryBookshelfFinishedBookCell *)self coverArea];
  rect_24 = v666.origin.y;
  v632 = v666.origin.x;
  rect_8 = v666.size.height;
  rect_16 = v666.size.width;
  CGRectGetMidY(v666);
  coverLayer = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  [coverLayer bounds];
  v637 = CGSizeZero.height;
  if (v10 == CGSizeZero.width && v9 == CGSizeZero.height)
  {
  }

  else
  {
    +[UIView inheritedAnimationDuration];
    v13 = v12;

    if (v13 != 0.0)
    {
      coverView = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
      goto LABEL_9;
    }
  }

  coverView = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
LABEL_9:
  v15 = coverView;
  [coverView setFrame:{v632, rect_24, rect_16, rect_8}];

  reviewBottomLayout = [finishedMetrics reviewBottomLayout];
  columnMetrics2 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
  [columnMetrics2 margins];
  v19 = v18;
  [finishedMetrics lockupMargin];
  v21 = v19 + v20;

  v667.origin.x = x;
  v667.origin.y = y;
  v667.size.width = width;
  v667.size.height = height;
  v641 = v21;
  v22 = CGRectGetWidth(v667) - v21;
  columnMetrics3 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
  [columnMetrics3 margins];
  v25 = v22 - v24;

  v668.origin.x = v632;
  v668.origin.y = rect_24;
  v668.size.width = rect_16;
  v668.size.height = rect_8;
  MaxY = CGRectGetMaxY(v668);
  v669.origin.x = v632;
  v669.origin.y = rect_24;
  v669.size.width = rect_16;
  v669.size.height = rect_8;
  MinY = CGRectGetMinY(v669);
  rect = MaxY - MinY;
  v670.origin.x = v632;
  v670.origin.y = rect_24;
  v670.size.width = rect_16;
  v670.size.height = rect_8;
  MinX = CGRectGetMinX(v670);
  v653.origin.x = x;
  v671.origin.x = x;
  v671.origin.y = y;
  v671.size.width = width;
  v644 = height;
  v671.size.height = height;
  v622 = CGRectGetWidth(v671);
  columnMetrics4 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
  [columnMetrics4 margins];
  v615 = v29;

  [finishedMetrics lockupBottomSpacing];
  v645 = MaxY + v30;
  [finishedMetrics smallLayoutSpaceNeeded];
  v32 = v31;
  v33 = CGRectZero.origin.y;
  titleLabel = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
  [titleLabel sizeThatFits:{v25, 1.79769313e308}];
  v36 = v35;
  v38 = v37;

  if (v36 >= v25)
  {
    v39 = v25;
  }

  else
  {
    v39 = v36;
  }

  v616 = v39;
  authorLabel = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
  [authorLabel sizeThatFits:{v25, 1.79769313e308}];
  v42 = v41;
  v44 = v43;

  v619 = v25;
  v621 = v38;
  if (v42 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v42;
  }

  v633 = v45;
  [finishedMetrics authorSpacing];
  v47 = v38 + v44 + v46;
  v618 = v33;
  v625 = MinX;
  if (v47 <= rect)
  {
    v623 = v44;
    if (rect - v47 < v32)
    {
      v64 = 0;
      reviewBottomLayout = 1;
      recta = v641;
      v63 = 1;
      v65 = MinY;
      v53 = v38;
LABEL_32:
      v61 = v616;
      goto LABEL_33;
    }

    v53 = v38;
    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      goto LABEL_25;
    }

    markAsFinishedButton = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [markAsFinishedButton alpha];
    v68 = v67;

    if (v68 == 0.0)
    {
      writeReviewButton = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [writeReviewButton alpha];
      v77 = v76;

      if (v77 == 0.0)
      {
LABEL_25:
        v63 = 0;
        v64 = 1;
LABEL_31:
        recta = v641;
        v65 = MinY;
        goto LABEL_32;
      }

      writeReviewButton2 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [writeReviewButton2 titleEdgeInsets];
      v71 = v79;
      v73 = v80;

      writeReviewButton3 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    }

    else
    {
      markAsFinishedButton2 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [markAsFinishedButton2 titleEdgeInsets];
      v71 = v70;
      v73 = v72;

      writeReviewButton3 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    }

    v81 = writeReviewButton3;
    [writeReviewButton3 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v83 = v82;

    v84 = v71 + v73;
    v53 = v621;
    v85 = v84 + v83;
    v63 = v85 > v25;
    v64 = v85 <= v25;
    goto LABEL_31;
  }

  v48 = v622 - MinX - v615;
  titleLabel2 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
  [titleLabel2 sizeThatFits:{v48, 1.79769313e308}];
  v51 = v50;
  v53 = v52;

  v672.origin.x = CGRectZero.origin.x;
  v672.origin.y = v33;
  v672.size.width = v51;
  v672.size.height = v53;
  v54 = CGRectGetWidth(v672);
  if (v54 >= v48)
  {
    v55 = v622 - MinX - v615;
  }

  else
  {
    v55 = v54;
  }

  authorLabel2 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
  [authorLabel2 sizeThatFits:{v48, 1.79769313e308}];
  v58 = v57;
  v60 = v59;

  v673.origin.x = CGRectZero.origin.x;
  v673.origin.y = v33;
  v673.size.width = v58;
  v61 = v55;
  v623 = v60;
  v673.size.height = v60;
  v62 = CGRectGetWidth(v673);
  v63 = 0;
  v64 = 0;
  if (v62 >= v48)
  {
    v62 = v48;
  }

  v633 = v62;
  reviewBottomLayout = 1;
  v65 = v645;
  recta = MinX;
LABEL_33:
  [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v86 = v65;
  v87 = v53;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  titleLabel3 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
  [titleLabel3 setFrame:{v89, v91, v93, v95}];

  v674.origin.x = recta;
  v674.origin.y = v86;
  v674.size.width = v61;
  v674.size.height = v87;
  v97 = CGRectGetMaxY(v674);
  [finishedMetrics authorSpacing];
  v99 = v97 + v98;
  [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  authorLabel3 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
  [authorLabel3 setFrame:{v101, v103, v105, v107}];

  if (!v63)
  {
    v675.origin.x = recta;
    v675.origin.y = v99;
    v675.size.width = v633;
    v675.size.height = v623;
    v645 = CGRectGetMaxY(v675);
  }

  isRTL = [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
  starRating = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
  [starRating setIsRTL:isRTL];

  starRating2 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
  [starRating2 alpha];
  v113 = v112;

  if (v64)
  {
    v114 = v641;
  }

  else
  {
    v114 = v625;
  }

  [finishedMetrics ratingSpacing];
  v115 = v645;
  v117 = v645 + v116;
  v634 = v114;
  if (v113 == 0.0)
  {
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    v118 = y;
    v119 = width;
    v120 = v644;
    IMRectFlippedForRTL();
    v122 = v121;
    v124 = v123;
    v126 = v125;
    v128 = v127;
    starRating3 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [starRating3 setFrame:{v122, v124, v126, v128}];
  }

  else
  {
    [finishedMetrics ratingWidth];
    v131 = v130;
    [finishedMetrics ratingHeight];
    v133 = v132;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v135 = v134;
    v137 = v136;
    v139 = v138;
    v141 = v140;
    starRating4 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    v143 = v139;
    v144 = v141;
    v119 = width;
    v118 = y;
    [starRating4 setFrame:{v135, v137, v143, v144}];

    v676.origin.x = v634;
    v676.origin.y = v117;
    v676.size.width = v131;
    v120 = v644;
    v676.size.height = v133;
    v115 = CGRectGetMaxY(v676);
  }

  v646 = v115;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    checkmarkView = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
    image = [checkmarkView image];
    [image size];
    v148 = v147;
    v150 = v149;

    columnMetrics5 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
    [columnMetrics5 margins];
    v153 = v152;
    [(BKLibraryBookshelfFinishedBookCell *)self bookCoverLeftMargin];
    v155 = v153 + v154;
    [finishedMetrics checkMarkSpacing];
    v157 = v155 - (v148 + v156);

    v677.origin.y = rect_24;
    v677.origin.x = v632;
    v677.size.height = rect_8;
    v677.size.width = rect_16;
    *&v653.size.width = 3221225472;
    *&v653.origin.y = _NSConcreteStackBlock;
    *&v653.size.height = sub_1000CF4BC;
    v654 = &unk_100A04558;
    selfCopy = self;
    v656 = v157;
    v657 = CGRectGetMidY(v677) + v150 * -0.5;
    v658 = v148;
    v659 = v150;
    v660 = v653.origin.x;
    v661 = v118;
    v662 = v119;
    v663 = v120;
    [UIView performWithoutAnimation:&v653.origin.y];
    [finishedMetrics finishedSpacing];
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v165 = v164;
    markAsFinishedButton3 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [markAsFinishedButton3 setFrame:{v159, v161, v163, v165}];

    [finishedMetrics writeReviewSpacing];
    v647 = v646 + v167;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v169 = v168;
    v171 = v170;
    v173 = v172;
    v175 = v174;
    writeReviewButton4 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    [writeReviewButton4 setFrame:{v169, v171, v173, v175}];

    v678.origin.x = v634;
    v678.origin.y = v647;
    v678.size.width = CGSizeZero.width;
    v678.size.height = v637;
    v177 = CGRectGetMaxY(v678);
    v648 = v177;
    if (reviewBottomLayout)
    {
      [finishedMetrics bookCoverLeftMargin];
      v179 = v178;
      columnMetrics6 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
      [columnMetrics6 margins];
      v641 = v179 + v181;

      [finishedMetrics bookCoverSize];
      v177 = v182;
    }

    [finishedMetrics reviewSpacing];
    v184 = v177 + v183;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v192 = v191;
    reviewBackground = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
    [reviewBackground setFrame:{v186, v188, v190, v192}];

    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v195 = v194;
    v197 = v196;
    v199 = v198;
    v201 = v200;
    reviewTitle = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
    [reviewTitle setFrame:{v195, v197, v199, v201}];

    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v204 = v203;
    v206 = v205;
    v208 = v207;
    v210 = v209;
    reviewComments = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    [reviewComments setFrame:{v204, v206, v208, v210}];

    reviewComments2 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    [reviewComments2 setExpanded:1];

    v213 = v648;
    if ([(BKLibraryBookshelfFinishedBookCell *)self finishedState]== 7 || [(BKLibraryBookshelfFinishedBookCell *)self finishedState]== 6)
    {
      v679.size.height = v637;
      v679.origin.x = v641;
      v679.origin.y = v184;
      v679.size.width = CGSizeZero.width;
      v213 = CGRectGetMaxY(v679);
    }

    moreButton = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
    [moreButton sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v642 = v215;

    [finishedMetrics moreHeight];
    v638 = v216;
    [finishedMetrics moreSpacing];
    v635 = v213 + v217;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v219 = v218;
    v221 = v220;
    v223 = v222;
    v225 = v224;
    moreButton2 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
    [moreButton2 setFrame:{v219, v221, v223, v225}];

    [finishedMetrics moreSpacing];
    v649 = v213;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v228 = v227;
    v230 = v229;
    v232 = v231;
    v234 = v233;
    downloadProgressButton = [(BKLibraryBookshelfFinishedBookCell *)self downloadProgressButton];
    [downloadProgressButton setFrame:{v228, v230, v232, v234}];

    cloudView = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
    image2 = [cloudView image];
    [image2 size];

    v680.origin.x = v634;
    v680.origin.y = v635;
    v680.size.width = v642;
    v680.size.height = v638;
    CGRectGetMaxX(v680);
    [finishedMetrics cloudSpacing];
    v681.origin.x = v634;
    v681.origin.y = v635;
    v681.size.width = v642;
    v681.size.height = v638;
    CGRectGetMinY(v681);
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v239 = v238;
    v241 = v240;
    v243 = v242;
    v245 = v244;
    cloudView2 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
    [cloudView2 setFrame:{v239, v241, v243, v245}];
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    rect_8 = [(BKLibraryBookshelfFinishedBookCell *)self pathForDateIndicator:v632, rect_24, rect_16, rect_8];
    dateIndicator = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
    [dateIndicator setPath:rect_8];

    isRTL2 = [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    [finishedMetrics datelineMargin];
    v251 = v250;
    if (isRTL2)
    {
      [finishedMetrics datelineWidth];
      v253 = MaxX - v613 - v251 + v252 * -0.5;
    }

    else
    {
      dateIndicator = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
      [dateIndicator margins];
      v253 = v251 + v254;
    }

    dateIndicator2 = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
    [dateIndicator2 setPosition:{v253, 0.0}];

    if ((isRTL2 & 1) == 0)
    {
    }

    +[CATransaction commit];
    objc_opt_class();
    finishedMetrics2 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    dateFontAttributes = [finishedMetrics2 dateFontAttributes];
    font = [dateFontAttributes font];
    cloudView2 = BUDynamicCast();

    if (cloudView2)
    {
      combinedDateLabel = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
      [combinedDateLabel setFont:cloudView2];
    }

    objc_opt_class();
    finishedMetrics3 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    dateFontAttributes2 = [finishedMetrics3 dateFontAttributes];
    foregroundColor = [dateFontAttributes2 foregroundColor];
    v263 = BUDynamicCast();

    if (v263)
    {
      combinedDateLabel2 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
      [combinedDateLabel2 setTextColor:v263];
    }

    combinedDateLabel3 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    [combinedDateLabel3 setAdjustsFontSizeToFitWidth:0];

    columnMetrics7 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
    [columnMetrics7 margins];
    v268 = v267;
    [finishedMetrics datelineMargin];
    v270 = v268 + v269;
    [finishedMetrics dateSpace];
    v272 = v270 - v271;
    [finishedMetrics datelineCircleSize];
    v274 = v272 - v273 + -4.0;

    combinedDateLabel4 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    [combinedDateLabel4 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v277 = v276;
    v279 = v278;

    columnMetrics8 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
    [columnMetrics8 margins];
    v282 = v281;
    [finishedMetrics datelineMargin];
    v284 = v282 + v283;
    v682.origin.x = CGRectZero.origin.x;
    v682.origin.y = v618;
    v682.size.width = v277;
    v682.size.height = v279;
    v285 = v284 - CGRectGetWidth(v682);
    [finishedMetrics dateSpace];
    v287 = v285 - v286;
    [finishedMetrics datelineCircleSize];
    v289 = v287 - v288;

    v683.origin.x = v289;
    v683.origin.y = v618;
    v683.size.width = v277;
    v683.size.height = v279;
    if (CGRectGetWidth(v683) <= v274)
    {
      v274 = v277;
    }

    else
    {
      combinedDateLabel5 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
      [combinedDateLabel5 setAdjustsFontSizeToFitWidth:1];

      columnMetrics9 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
      [columnMetrics9 margins];
      v293 = v292;
      [finishedMetrics datelineMargin];
      v295 = v293 + v294;
      v684.origin.x = v289;
      v684.origin.y = v618;
      v684.size.width = v274;
      v684.size.height = v279;
      v296 = v295 - CGRectGetWidth(v684);
      [finishedMetrics dateSpace];
      v298 = v296 - v297;
      [finishedMetrics datelineCircleSize];
      v289 = v298 - v299;

      v277 = v274;
    }

    v685.origin.x = v289;
    v685.origin.y = v618;
    v685.size.width = v277;
    v685.size.height = v279;
    v686.origin.y = CGRectGetMaxY(v685);
    v686.origin.x = v289;
    v686.size.width = v274;
    v686.size.height = v279;
    CGRectGetHeight(v686);
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    v300 = y;
    IMRectFlippedForRTL();
    v302 = v301;
    v304 = v303;
    v306 = v305;
    v308 = v307;
    combinedDateLabel6 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    [combinedDateLabel6 setFrame:{v302, v304, v306, v308}];

    markAsFinishedButton4 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [markAsFinishedButton4 alpha];
    v312 = v311;

    if (v312 == 0.0)
    {
      [finishedMetrics finishedSpacing];
      v313 = v646;
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v315 = v314;
      v317 = v316;
      v319 = v318;
      v321 = v320;
      markAsFinishedButton5 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [markAsFinishedButton5 setFrame:{v315, v317, v319, v321}];
    }

    else
    {
      markAsFinishedButton6 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [markAsFinishedButton6 titleEdgeInsets];
      v325 = v324;
      v327 = v326;

      markAsFinishedButton7 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [markAsFinishedButton7 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v330 = v329;
      v332 = v331;

      v333 = v325 + v327 + v330;
      [finishedMetrics finishedSpacing];
      v335 = v646 + v334;
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v337 = v336;
      v339 = v338;
      v341 = v340;
      v343 = v342;
      markAsFinishedButton8 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      v345 = v339;
      v346 = v341;
      v300 = y;
      v347 = v343;
      v119 = width;
      v120 = v644;
      [markAsFinishedButton8 setFrame:{v337, v345, v346, v347}];

      v687.origin.x = v634;
      v687.origin.y = v335;
      v687.size.width = v333;
      v687.size.height = v332;
      v348 = CGRectGetHeight(v687) * 0.5;
      markAsFinishedButton9 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      layer = [markAsFinishedButton9 layer];
      [layer setCornerRadius:v348];

      v688.origin.x = v634;
      v688.origin.y = v335;
      v688.size.width = v333;
      v688.size.height = v332;
      v313 = CGRectGetMaxY(v688);
    }

    writeReviewButton5 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    [writeReviewButton5 alpha];
    v353 = v352;

    if (v353 == 0.0)
    {
      [finishedMetrics writeReviewSpacing];
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v355 = v354;
      v357 = v356;
      v359 = v358;
      v361 = v360;
      writeReviewButton6 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [writeReviewButton6 setFrame:{v355, v357, v359, v361}];
    }

    else
    {
      writeReviewButton7 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [writeReviewButton7 titleEdgeInsets];
      v365 = v364;
      v367 = v366;

      writeReviewButton8 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [writeReviewButton8 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v370 = v369;
      v372 = v371;

      v373 = v365 + v367 + v370;
      [finishedMetrics writeReviewSpacing];
      v375 = v313 + v374;
      v689.origin.x = v634;
      v689.origin.y = v375;
      v689.size.width = v373;
      v689.size.height = v372;
      v376 = CGRectGetMaxX(v689);
      v690.origin.x = v653.origin.x;
      v690.origin.y = v300;
      v690.size.width = v119;
      v690.size.height = v120;
      if (v376 <= CGRectGetMaxX(v690) || (v691.origin.x = v634, v691.origin.y = v375, v691.size.width = v373, v691.size.height = v372, v377 = CGRectGetMinY(v691), [finishedMetrics bookCoverSize], v377 <= v378))
      {
        v383 = v634;
      }

      else
      {
        v692.origin.x = v653.origin.x;
        v692.origin.y = v300;
        v692.size.width = v119;
        v692.size.height = v120;
        v379 = CGRectGetMaxX(v692);
        v693.origin.x = v634;
        v693.origin.y = v375;
        v693.size.width = v373;
        v693.size.height = v372;
        v380 = v379 - CGRectGetWidth(v693);
        columnMetrics10 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
        [columnMetrics10 margins];
        v383 = v380 - v382;
      }

      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v385 = v384;
      v387 = v386;
      v389 = v388;
      v391 = v390;
      writeReviewButton9 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      v393 = v385;
      v394 = v387;
      v300 = y;
      v395 = v389;
      v119 = width;
      v120 = v644;
      [writeReviewButton9 setFrame:{v393, v394, v395, v391}];

      v694.origin.x = v383;
      v694.origin.y = v375;
      v694.size.width = v373;
      v694.size.height = v372;
      v396 = CGRectGetHeight(v694) * 0.5;
      writeReviewButton10 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      layer2 = [writeReviewButton10 layer];
      [layer2 setCornerRadius:v396];

      v695.origin.x = v383;
      v695.origin.y = v375;
      v695.size.width = v373;
      v695.size.height = v372;
      v313 = CGRectGetMaxY(v695);
    }

    reviewComments3 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    [reviewComments3 alpha];
    v401 = v400;

    v650 = v313;
    if (v401 == 0.0)
    {
      if (reviewBottomLayout)
      {
        [finishedMetrics bookCoverLeftMargin];
        columnMetrics11 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
        [columnMetrics11 margins];

        [finishedMetrics bookCoverSize];
      }

      [finishedMetrics reviewSpacing];
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v404 = v403;
      v406 = v405;
      v408 = v407;
      v410 = v409;
      reviewBackground2 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [reviewBackground2 setFrame:{v404, v406, v408, v410}];

      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v413 = v412;
      v415 = v414;
      v417 = v416;
      v419 = v418;
      reviewTitle2 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [reviewTitle2 setFrame:{v413, v415, v417, v419}];

      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v422 = v421;
      v424 = v423;
      v426 = v425;
      v428 = v427;
      reviewComments4 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [reviewComments4 setFrame:{v422, v424, v426, v428}];

      v430 = v650;
    }

    else
    {
      v431 = v619;
      if (reviewBottomLayout)
      {
        v696.origin.x = v653.origin.x;
        v696.origin.y = v300;
        v696.size.width = v119;
        v696.size.height = v120;
        v432 = CGRectGetWidth(v696);
        [finishedMetrics bookCoverLeftMargin];
        v434 = v432 - v433;
        columnMetrics12 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
        [columnMetrics12 margins];
        v431 = v434 + v436 * -2.0;
      }

      [finishedMetrics reviewLeftMargin];
      v437 = v431;
      v439 = v431 - v438;
      [finishedMetrics reviewRightMargin];
      v441 = v439 - v440;
      finishedState = [(BKLibraryBookshelfFinishedBookCell *)self finishedState];
      reviewComments5 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      v444 = reviewComments5;
      if (finishedState == 7)
      {
        [reviewComments5 setExpanded:1];

        reviewComments6 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        text = [reviewComments6 text];
        reviewContentFontAttributes = [finishedMetrics reviewContentFontAttributes];
        attributes = [reviewContentFontAttributes attributes];
        [text boundingRectWithSize:1 options:attributes attributes:0 context:{v441, 1.79769313e308}];
        v449 = CGRectGetHeight(v697);
      }

      else
      {
        [reviewComments5 setExpanded:0];

        reviewComments6 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        [reviewComments6 sizeThatFits:{v441, 1.79769313e308}];
        v449 = v450;
      }

      reviewTitle3 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      v639 = v441;
      [reviewTitle3 sizeThatFits:{v441, 1.79769313e308}];
      v453 = v452;

      if (reviewBottomLayout)
      {
        [finishedMetrics bookCoverLeftMargin];
        v455 = v454;
        columnMetrics13 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
        [columnMetrics13 margins];
        v641 = v455 + v457;

        [finishedMetrics bookCoverSize];
        v313 = v458;
        [finishedMetrics moreHeight];
        v460 = v650 + v459;
        [finishedMetrics moreSpacing];
        v462 = v460 + v461;
        if (v313 < v462)
        {
          v313 = v462;
        }
      }

      [finishedMetrics reviewSpacing];
      v464 = v313 + v463;
      [finishedMetrics reviewTopMargin];
      v466 = v449 + v465;
      [finishedMetrics reviewBottomMargin];
      rectb = v453;
      v468 = v453 + v466 + v467;
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v470 = v469;
      v472 = v471;
      v474 = v473;
      v476 = v475;
      reviewBackground3 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [reviewBackground3 setFrame:{v470, v472, v474, v476}];

      v698.origin.x = v641;
      v698.origin.y = v464;
      v698.size.width = v437;
      v698.size.height = v468;
      v478 = CGRectGetMinX(v698);
      [finishedMetrics reviewLeftMargin];
      v480 = v478 + v479;
      v699.origin.x = v641;
      v624 = v468;
      v699.origin.y = v464;
      v620 = v437;
      v699.size.width = v437;
      v699.size.height = v468;
      v481 = CGRectGetMinY(v699);
      [finishedMetrics reviewTopMargin];
      v483 = v481 + v482;
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v485 = v484;
      v487 = v486;
      v489 = v488;
      v491 = v490;
      reviewTitle4 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [reviewTitle4 setFrame:{v485, v487, v489, v491}];

      v700.origin.x = v480;
      v700.origin.y = v483;
      v700.size.width = v639;
      v700.size.height = rectb;
      CGRectGetMaxY(v700);
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v494 = v493;
      v496 = v495;
      v498 = v497;
      v500 = v499;
      reviewComments7 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [reviewComments7 setFrame:{v494, v496, v498, v500}];

      v430 = v650;
      if ((reviewBottomLayout & 1) == 0)
      {
        v701.origin.x = v641;
        v701.size.height = v624;
        v701.origin.y = v464;
        v701.size.width = v620;
        v430 = CGRectGetMaxY(v701);
      }
    }

    moreButton3 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
    [moreButton3 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v643 = v503;

    [finishedMetrics moreHeight];
    v640 = v504;
    [finishedMetrics moreSpacing];
    v636 = v430 + v505;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v507 = v506;
    v509 = v508;
    v511 = v510;
    v513 = v512;
    moreButton4 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
    [moreButton4 setFrame:{v507, v509, v511, v513}];

    [finishedMetrics moreSpacing];
    v649 = v430;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v516 = v515;
    v518 = v517;
    v520 = v519;
    v522 = v521;
    downloadProgressButton2 = [(BKLibraryBookshelfFinishedBookCell *)self downloadProgressButton];
    [downloadProgressButton2 setFrame:{v516, v518, v520, v522}];

    cloudView3 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
    image3 = [cloudView3 image];
    [image3 size];

    v702.origin.x = v634;
    v702.origin.y = v636;
    v702.size.width = v643;
    v702.size.height = v640;
    CGRectGetMaxX(v702);
    [finishedMetrics cloudSpacing];
    v703.origin.x = v634;
    v703.origin.y = v636;
    v703.size.width = v643;
    v703.size.height = v640;
    CGRectGetMinY(v703);
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v527 = v526;
    v529 = v528;
    v531 = v530;
    v533 = v532;
    cloudView4 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
    [cloudView4 setFrame:{v527, v529, v531, v533}];
  }

  v704.origin.y = rect_24;
  v704.origin.x = v632;
  v704.size.height = rect_8;
  v704.size.width = rect_16;
  v535 = (CGRectGetHeight(v704) - v649) * 0.5;
  v536 = floorf(v535);
  if (v536 > 1.0)
  {
    v537 = v536;
    titleLabel4 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    [titleLabel4 frame];
    v706 = CGRectOffset(v705, 0.0, v537);
    v539 = v706.origin.x;
    v540 = v706.origin.y;
    v541 = v706.size.width;
    v542 = v706.size.height;
    titleLabel5 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    [titleLabel5 setFrame:{v539, v540, v541, v542}];

    authorLabel4 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    [authorLabel4 frame];
    v708 = CGRectOffset(v707, 0.0, v537);
    v545 = v708.origin.x;
    v546 = v708.origin.y;
    v547 = v708.size.width;
    v548 = v708.size.height;
    authorLabel5 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    [authorLabel5 setFrame:{v545, v546, v547, v548}];

    starRating5 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [starRating5 frame];
    v710 = CGRectOffset(v709, 0.0, v537);
    v551 = v710.origin.x;
    v552 = v710.origin.y;
    v553 = v710.size.width;
    v554 = v710.size.height;
    starRating6 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [starRating6 setFrame:{v551, v552, v553, v554}];

    if (![(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      markAsFinishedButton10 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [markAsFinishedButton10 frame];
      v712 = CGRectOffset(v711, 0.0, v537);
      v557 = v712.origin.x;
      v558 = v712.origin.y;
      v559 = v712.size.width;
      v560 = v712.size.height;
      markAsFinishedButton11 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [markAsFinishedButton11 setFrame:{v557, v558, v559, v560}];

      writeReviewButton11 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [writeReviewButton11 frame];
      v714 = CGRectOffset(v713, 0.0, v537);
      v563 = v714.origin.x;
      v564 = v714.origin.y;
      v565 = v714.size.width;
      v566 = v714.size.height;
      writeReviewButton12 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [writeReviewButton12 setFrame:{v563, v564, v565, v566}];

      moreButton5 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
      [moreButton5 frame];
      v716 = CGRectOffset(v715, 0.0, v537);
      v569 = v716.origin.x;
      v570 = v716.origin.y;
      v571 = v716.size.width;
      v572 = v716.size.height;
      moreButton6 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
      [moreButton6 setFrame:{v569, v570, v571, v572}];

      downloadProgressButton3 = [(BKLibraryBookshelfFinishedBookCell *)self downloadProgressButton];
      [downloadProgressButton3 frame];
      v718 = CGRectOffset(v717, 0.0, v537);
      v575 = v718.origin.x;
      v576 = v718.origin.y;
      v577 = v718.size.width;
      v578 = v718.size.height;
      downloadProgressButton4 = [(BKLibraryBookshelfFinishedBookCell *)self downloadProgressButton];
      [downloadProgressButton4 setFrame:{v575, v576, v577, v578}];

      cloudView5 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
      [cloudView5 frame];
      v720 = CGRectOffset(v719, 0.0, v537);
      v581 = v720.origin.x;
      v582 = v720.origin.y;
      v583 = v720.size.width;
      v584 = v720.size.height;
      cloudView6 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
      [cloudView6 setFrame:{v581, v582, v583, v584}];

      if ((reviewBottomLayout & 1) == 0)
      {
        reviewBackground4 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
        [reviewBackground4 frame];
        v722 = CGRectOffset(v721, 0.0, v537);
        v587 = v722.origin.x;
        v588 = v722.origin.y;
        v589 = v722.size.width;
        v590 = v722.size.height;
        reviewBackground5 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
        [reviewBackground5 setFrame:{v587, v588, v589, v590}];

        reviewComments8 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        [reviewComments8 frame];
        v724 = CGRectOffset(v723, 0.0, v537);
        v593 = v724.origin.x;
        v594 = v724.origin.y;
        v595 = v724.size.width;
        v596 = v724.size.height;
        reviewComments9 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        [reviewComments9 setFrame:{v593, v594, v595, v596}];

        reviewTitle5 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
        [reviewTitle5 frame];
        v726 = CGRectOffset(v725, 0.0, v537);
        v599 = v726.origin.x;
        v600 = v726.origin.y;
        v601 = v726.size.width;
        v602 = v726.size.height;
        reviewTitle6 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
        [reviewTitle6 setFrame:{v599, v600, v601, v602}];
      }
    }
  }

  audiobookControl = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  if (audiobookControl)
  {
    [finishedMetrics audiobookControlMargin];
    v606 = v605;
    [audiobookControl frame];
    v608 = v607;
    v610 = v609;
    [(BKLibraryBookshelfFinishedBookCell *)self coverContainerFrame];
    v611 = v606 + v727.origin.x;
    v612 = v727.origin.y + CGRectGetHeight(v727) - v610 - v606;
    [audiobookControl frame];
    v729.origin.x = v611;
    v729.origin.y = v612;
    v729.size.width = v608;
    v729.size.height = v610;
    if (!CGRectEqualToRect(v728, v729))
    {
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      [audiobookControl setFrame:?];
    }
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v126.receiver = self;
  v126.super_class = BKLibraryBookshelfFinishedBookCell;
  attributesCopy = attributes;
  [(BKLibraryBookshelfCollectionViewCell *)&v126 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  v5 = BUDynamicCast();
  indexPath = [attributesCopy indexPath];

  [(BKLibraryBookshelfFinishedBookCell *)self setIndexPath:indexPath];
  v7 = +[UIApplication sharedApplication];
  -[BKLibraryBookshelfFinishedBookCell setIsRTL:](self, "setIsRTL:", [v7 userInterfaceLayoutDirection] == 1);

  columnMetrics = [v5 columnMetrics];
  [(BKLibraryBookshelfFinishedBookCell *)self setColumnMetrics:columnMetrics];

  -[BKLibraryBookshelfFinishedBookCell setLayoutDebugMode:](self, "setLayoutDebugMode:", [v5 layoutDebugMode]);
  if ([(BKLibraryBookshelfFinishedBookCell *)self layoutDebugMode])
  {
    v9 = +[UIColor redColor];
    v10 = [v9 colorWithAlphaComponent:0.2];
    cGColor = [v10 CGColor];
    layer = [(BKLibraryBookshelfFinishedBookCell *)self layer];
    [layer setBorderColor:cGColor];

    layer2 = [(BKLibraryBookshelfFinishedBookCell *)self layer];
    [layer2 setBorderWidth:0.5];

    v14 = +[UIColor redColor];
    v15 = [v14 colorWithAlphaComponent:0.2];
    cGColor2 = [v15 CGColor];
    titleLabel = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    layer3 = [titleLabel layer];
    [layer3 setBorderColor:cGColor2];

    titleLabel2 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    layer4 = [titleLabel2 layer];
    [layer4 setBorderWidth:0.5];

    v21 = +[UIColor redColor];
    v22 = [v21 colorWithAlphaComponent:0.2];
    cGColor3 = [v22 CGColor];
    authorLabel = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    layer5 = [authorLabel layer];
    [layer5 setBorderColor:cGColor3];

    authorLabel2 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    layer6 = [authorLabel2 layer];
    [layer6 setBorderWidth:0.5];

    v28 = +[UIColor redColor];
    v29 = [v28 colorWithAlphaComponent:0.2];
    cGColor4 = [v29 CGColor];
    coverLayer = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
    [coverLayer setBorderColor:cGColor4];

    coverLayer2 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
    [coverLayer2 setBorderWidth:0.5];

    v33 = +[UIColor redColor];
    v34 = [v33 colorWithAlphaComponent:0.2];
    cGColor5 = [v34 CGColor];
    combinedDateLabel = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    layer7 = [combinedDateLabel layer];
    [layer7 setBorderColor:cGColor5];

    combinedDateLabel2 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    layer8 = [combinedDateLabel2 layer];
    [layer8 setBorderWidth:0.5];
  }

  else
  {
    layer9 = [(BKLibraryBookshelfFinishedBookCell *)self layer];
    [layer9 setBorderWidth:0.0];

    titleLabel3 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    layer10 = [titleLabel3 layer];
    [layer10 setBorderWidth:0.0];

    authorLabel3 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    layer11 = [authorLabel3 layer];
    [layer11 setBorderWidth:0.0];

    combinedDateLabel2 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
    [combinedDateLabel2 setBorderWidth:0.0];
  }

  -[BKLibraryBookshelfFinishedBookCell setFirstItem:](self, "setFirstItem:", [v5 firstItem]);
  -[BKLibraryBookshelfFinishedBookCell setLastItem:](self, "setLastItem:", [v5 lastItem]);
  v45 = 1.0;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    if ([(BKLibraryBookshelfFinishedBookCell *)self isSelected])
    {
      v45 = 1.0;
    }

    else
    {
      v45 = 0.6;
    }
  }

  starRating = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
  [starRating setAlpha:v45];

  objc_opt_class();
  cellMetrics = [v5 cellMetrics];
  v48 = BUDynamicCast();

  finishedMetrics = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];

  if (v48 != finishedMetrics)
  {
    [(BKLibraryBookshelfFinishedBookCell *)self setFinishedMetrics:v48];
    [(BKLibraryBookshelfFinishedBookCell *)self setMetrics:v48];
    [v48 bookCoverSize];
    [(BKLibraryBookshelfFinishedBookCell *)self setBookCoverSize:?];
    [v48 bookCoverLeftMargin];
    [(BKLibraryBookshelfFinishedBookCell *)self setBookCoverLeftMargin:?];
    [v48 titleMaxLines];
    v51 = v50;
    titleLabel4 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    [titleLabel4 setNumberOfLines:v51];

    [v48 authorMaxLines];
    v54 = v53;
    authorLabel4 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    [authorLabel4 setNumberOfLines:v54];

    finishedFillColor = [v48 finishedFillColor];
    markAsFinishedButton = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [markAsFinishedButton setNormalBackgroundColor:finishedFillColor];

    finishedFillHilightColor = [v48 finishedFillHilightColor];
    markAsFinishedButton2 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [markAsFinishedButton2 setHighlightBackgroundColor:finishedFillHilightColor];

    finishedFrameColor = [v48 finishedFrameColor];
    if (finishedFrameColor)
    {
      v61 = finishedFrameColor;
      [v48 finishedFrameWidth];
      v63 = v62;

      if (v63 != 0.0)
      {
        finishedFrameColor2 = [v48 finishedFrameColor];
        cGColor6 = [finishedFrameColor2 CGColor];
        markAsFinishedButton3 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
        layer12 = [markAsFinishedButton3 layer];
        [layer12 setBorderColor:cGColor6];

        [v48 finishedFrameWidth];
        v69 = v68;
        markAsFinishedButton4 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
        layer13 = [markAsFinishedButton4 layer];
        [layer13 setBorderWidth:v69];
      }
    }

    [v48 finishedTitleInset];
    v73 = v72;
    [v48 finishedTitleInset];
    v75 = v74;
    markAsFinishedButton5 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [markAsFinishedButton5 setTitleEdgeInsets:{0.0, v73, 0.0, v75}];

    writeReviewFillColor = [v48 writeReviewFillColor];
    writeReviewButton = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    [writeReviewButton setNormalBackgroundColor:writeReviewFillColor];

    writeReviewFillHilightColor = [v48 writeReviewFillHilightColor];
    writeReviewButton2 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    [writeReviewButton2 setHighlightBackgroundColor:writeReviewFillHilightColor];

    writeReviewFrameColor = [v48 writeReviewFrameColor];
    if (writeReviewFrameColor)
    {
      v82 = writeReviewFrameColor;
      [v48 writeReviewFrameWidth];
      v84 = v83;

      if (v84 != 0.0)
      {
        writeReviewFrameColor2 = [v48 writeReviewFrameColor];
        cGColor7 = [writeReviewFrameColor2 CGColor];
        writeReviewButton3 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
        layer14 = [writeReviewButton3 layer];
        [layer14 setBorderColor:cGColor7];

        [v48 writeReviewFrameWidth];
        v90 = v89;
        writeReviewButton4 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
        layer15 = [writeReviewButton4 layer];
        [layer15 setBorderWidth:v90];
      }
    }

    [v48 writeReviewTitleInset];
    v94 = v93;
    [v48 writeReviewTitleInset];
    v96 = v95;
    writeReviewButton5 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    [writeReviewButton5 setTitleEdgeInsets:{0.0, v94, 0.0, v96}];

    ratingFrameColor = [v48 ratingFrameColor];
    starRating2 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [starRating2 setFrameColor:ratingFrameColor];

    ratingFillColor = [v48 ratingFillColor];
    starRating3 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [starRating3 setFillColor:ratingFillColor];

    ratingEmptyColor = [v48 ratingEmptyColor];
    starRating4 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [starRating4 setEmptyColor:ratingEmptyColor];

    v104 = +[UIColor bc_booksTableSelectionColor];
    [(BKLibraryBookshelfCollectionViewCell *)self setHighlightBackgroundColor:v104];

    v105 = +[NSBundle mainBundle];
    v106 = [v105 localizedStringForKey:@"More" value:&stru_100A30A68 table:0];

    finishedMetrics2 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    reviewMoreFontAttributes = [finishedMetrics2 reviewMoreFontAttributes];
    v109 = [TUIFontSpec attributedStringWith:v106 attributes:reviewMoreFontAttributes];
    reviewComments = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    [reviewComments setShowMoreAttributedText:v109];

    [(BKLibraryBookshelfFinishedBookCell *)self _updateTintedImages];
    [(BKLibraryBookshelfFinishedBookCell *)self _updateLibraryAsset];
  }

  [(BKLibraryBookshelfFinishedBookCell *)self updateFinishedState];
  [(BKLibraryBookshelfFinishedBookCell *)self setNeedsLayout];
  libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];

  if (libraryAsset)
  {
    +[UIView inheritedAnimationDuration];
    v113 = v112;
    coverView = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
    coverLayer3 = [coverView coverLayer];
    if (v113 == 0.0)
    {
      libraryAsset = self->_libraryAsset;
      [(BKLibraryBookshelfFinishedBookCell *)self coverArea];
      [coverLayer3 setLibraryAsset:libraryAsset size:{v121, v122}];
    }

    else
    {
      [(BKLibraryBookshelfFinishedBookCell *)self coverArea];
      [coverLayer3 preloadCoverImageAtSize:{v116, v117}];

      +[UIView inheritedAnimationDuration];
      v119 = dispatch_time(0, (v118 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D0040;
      block[3] = &unk_100A033C8;
      block[4] = self;
      dispatch_after(v119, &_dispatch_main_q, block);
    }

    coverView2 = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
    coverLayer4 = [coverView2 coverLayer];
    [coverLayer4 setAnimateFrameChange:1];

    [(BKLibraryBookshelfFinishedBookCell *)self layoutIfNeeded];
  }
}

- (void)_updateTintedImages
{
  finishedMetrics = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  if (finishedMetrics)
  {
    v4 = finishedMetrics;
    dataSource = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];

    if (dataSource)
    {
      dataSource2 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
      reviewBackgroundName = [dataSource2 reviewBackgroundName];
      v68 = [UIImage imageNamed:reviewBackgroundName];

      if ([(BKLibraryBookshelfFinishedBookCell *)self isRTL])
      {
        imageWithHorizontallyFlippedOrientation = [v68 imageWithHorizontallyFlippedOrientation];

        v68 = imageWithHorizontallyFlippedOrientation;
      }

      reviewBackground = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [reviewBackground setContentsGravity:kCAGravityResize];

      finishedMetrics2 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      reviewBGColor = [finishedMetrics2 reviewBGColor];
      traitCollection = [(BKLibraryBookshelfFinishedBookCell *)self traitCollection];
      v13 = [v68 imageMaskWithColor:reviewBGColor forTraitCollection:traitCollection];
      cGImage = [v13 CGImage];
      reviewBackground2 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [reviewBackground2 setContents:cGImage];

      reviewBackground3 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [reviewBackground3 setContentsCenter:{0.4, 0.4, 0.2, 0.2}];

      dataSource3 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
      finishedMetrics3 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      moreTintColor = [finishedMetrics3 moreTintColor];
      v20 = [dataSource3 actionMenuImageWithTintColor:moreTintColor];

      moreButton = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
      v67 = v20;
      [moreButton setImage:v20 forState:0];

      dataSource4 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
      v23 = [dataSource4 templateCloudImageForCloudState:1];
      cloudView = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
      [cloudView setImage:v23];

      finishedMetrics4 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      moreTintColor2 = [finishedMetrics4 moreTintColor];
      cloudView2 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
      [cloudView2 setTintColor:moreTintColor2];

      dataSource5 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
      v29 = [dataSource5 selectedCheckmarkImageForSelectedState:{-[BKLibraryBookshelfFinishedBookCell isSelected](self, "isSelected")}];
      checkmarkView = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
      [checkmarkView setImage:v29];

      if ([(BKLibraryBookshelfFinishedBookCell *)self isSelected])
      {
        +[UIColor bc_booksKeyColor];
      }

      else
      {
        +[UIColor bc_booksTertiaryLabelColor];
      }
      v31 = ;
      checkmarkView2 = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
      [checkmarkView2 setTintColor:v31];

      finishedMetrics5 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      if ([finishedMetrics5 finishedShortText])
      {
        v34 = @"FINISHED";
      }

      else
      {
        v34 = @"MARK FINISHED";
      }

      v35 = +[NSBundle mainBundle];
      v36 = [v35 localizedStringForKey:v34 value:&stru_100A30A68 table:0];

      markAsFinishedButton = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      finishedMetrics6 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      finishedFontAttributes = [finishedMetrics6 finishedFontAttributes];
      finishedMetrics7 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      finishedTextColor = [finishedMetrics7 finishedTextColor];
      v42 = [finishedFontAttributes attributesWithForegroundColor:finishedTextColor];
      v43 = [TUIFontSpec attributedStringWith:v36 attributes:v42];
      [markAsFinishedButton setAttributedTitle:v43 forState:0];

      markAsFinishedButton2 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      finishedMetrics8 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      finishedFontAttributes2 = [finishedMetrics8 finishedFontAttributes];
      finishedMetrics9 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      finishedTextHilightColor = [finishedMetrics9 finishedTextHilightColor];
      v49 = [finishedFontAttributes2 attributesWithForegroundColor:finishedTextHilightColor];
      v50 = [TUIFontSpec attributedStringWith:v36 attributes:v49];
      [markAsFinishedButton2 setAttributedTitle:v50 forState:1];

      v51 = +[NSBundle mainBundle];
      v52 = [v51 localizedStringForKey:@"Write a Review" value:&stru_100A30A68 table:0];

      writeReviewButton = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      finishedMetrics10 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      writeReviewFontAttributes = [finishedMetrics10 writeReviewFontAttributes];
      finishedMetrics11 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      writeReviewTextColor = [finishedMetrics11 writeReviewTextColor];
      v58 = [writeReviewFontAttributes attributesWithForegroundColor:writeReviewTextColor];
      v59 = [TUIFontSpec attributedStringWith:v52 attributes:v58];
      [writeReviewButton setAttributedTitle:v59 forState:0];

      writeReviewButton2 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      finishedMetrics12 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      writeReviewFontAttributes2 = [finishedMetrics12 writeReviewFontAttributes];
      finishedMetrics13 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      writeReviewTextHilightColor = [finishedMetrics13 writeReviewTextHilightColor];
      v65 = [writeReviewFontAttributes2 attributesWithForegroundColor:writeReviewTextHilightColor];
      v66 = [TUIFontSpec attributedStringWith:v52 attributes:v65];
      [writeReviewButton2 setAttributedTitle:v66 forState:1];

      [(BKLibraryBookshelfFinishedBookCell *)self setNeedsLayout];
    }
  }
}

- (void)_cancelDownload:(id)download
{
  if ([(BKLibraryBookshelfFinishedBookCell *)self isDownloading])
  {
    actionHandler = [(BKLibraryBookshelfFinishedBookCell *)self actionHandler];
    libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
    [actionHandler bookCancelDownload:libraryAsset];
  }

  else
  {
    v5 = BKLibraryUILog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10078E0CC(v5);
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v11.receiver = self;
    v11.super_class = BKLibraryBookshelfFinishedBookCell;
    [(BKLibraryBookshelfFinishedBookCell *)&v11 setSelected:selectedCopy];
    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]&& ![(BKLibraryBookshelfFinishedBookCell *)self isSelected])
    {
      finishedMetrics = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      [finishedMetrics shrinkAlpha];
      [(BKLibraryBookshelfCollectionViewCell *)self setAlpha:?];
    }

    else
    {
      [(BKLibraryBookshelfCollectionViewCell *)self setAlpha:1.0];
    }

    dataSource = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
    v7 = [dataSource selectedCheckmarkImageForSelectedState:selectedCopy];
    checkmarkView = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
    [checkmarkView setImage:v7];

    if (selectedCopy)
    {
      +[UIColor bc_booksKeyColor];
    }

    else
    {
      +[UIColor bc_booksTertiaryLabelColor];
    }
    v9 = ;
    checkmarkView2 = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
    [checkmarkView2 setTintColor:v9];
  }
}

- (CGPath)pathForDateIndicator:(CGRect)indicator
{
  height = indicator.size.height;
  width = indicator.size.width;
  y = indicator.origin.y;
  x = indicator.origin.x;
  [(BKLibraryBookshelfFinishedBookCell *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = +[UIBezierPath bezierPath];
  v40.origin.x = v9;
  v40.origin.y = v11;
  v40.size.width = v13;
  v40.size.height = v15;
  v17 = CGRectGetHeight(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MidY = CGRectGetMidY(v41);
  finishedMetrics = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  [finishedMetrics datelineCircleSize];
  v21 = v20;

  firstItem = [(BKLibraryBookshelfFinishedBookCell *)self firstItem];
  lastItem = [(BKLibraryBookshelfFinishedBookCell *)self lastItem];
  finishedState = [(BKLibraryBookshelfFinishedBookCell *)self finishedState];
  [v16 addArcWithCenter:1 radius:0.0 startAngle:MidY endAngle:v21 clockwise:{0.0, 6.28318531}];
  if ((firstItem & 1) == 0)
  {
    [v16 moveToPoint:{0.0, 0.0}];
    [v16 addLineToPoint:{0.0, MidY - v21}];
  }

  if ((lastItem & 1) == 0)
  {
    [v16 moveToPoint:{0.0, MidY + v21}];
    [v16 addLineToPoint:{0.0, v17}];
  }

  finishedMetrics2 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  datelineColor = [finishedMetrics2 datelineColor];
  cGColor = [datelineColor CGColor];
  dateIndicator = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
  [dateIndicator setStrokeColor:cGColor];

  finishedMetrics3 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  v30 = finishedMetrics3;
  if (finishedState == 1)
  {
    [finishedMetrics3 datelineCircleHollowColor];
  }

  else
  {
    [finishedMetrics3 datelineCircleFilledColor];
  }
  v31 = ;
  cGColor2 = [v31 CGColor];
  dateIndicator2 = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
  [dateIndicator2 setFillColor:cGColor2];

  finishedMetrics4 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  [finishedMetrics4 datelineWidth];
  v36 = v35;
  dateIndicator3 = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
  [dateIndicator3 setLineWidth:v36];

  cGPath = [v16 CGPath];
  return cGPath;
}

- (void)setLibraryAsset:(id)asset
{
  assetCopy = asset;
  if (!+[NSThread isMainThread])
  {
    sub_10078E110();
  }

  libraryAsset = self->_libraryAsset;
  v6 = assetCopy;
  if (libraryAsset != assetCopy)
  {
    [(BKLibraryAsset *)libraryAsset removeObserver:self forKeyPath:@"isFinished" context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"notFinished" context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"dateFinished" context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"title" context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"author" context:off_100ACD930];
    objc_storeStrong(&self->_libraryAsset, asset);
    coverLayer = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
    v8 = self->_libraryAsset;
    [(BKLibraryBookshelfFinishedBookCell *)self coverArea];
    [coverLayer setLibraryAsset:v8 size:{v9, v10}];

    if (self->_libraryAsset)
    {
      v11 = +[BKLibraryAssetStatusController sharedController];
      permanentOrTemporaryAssetID = [(BKLibraryAsset *)self->_libraryAsset permanentOrTemporaryAssetID];
      v13 = [v11 statusForAssetID:permanentOrTemporaryAssetID];
      [(BKLibraryBookshelfFinishedBookCell *)self setLibraryDownloadStatus:v13];
    }

    else
    {
      [(BKLibraryBookshelfFinishedBookCell *)self setLibraryDownloadStatus:0];
    }

    [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"isFinished" options:0 context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"notFinished" options:0 context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"dateFinished" options:0 context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"title" options:0 context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"author" options:0 context:off_100ACD930];
    [(BKLibraryBookshelfFinishedBookCell *)self _updateLibraryAsset];
    v6 = assetCopy;
  }
}

- (void)setLibraryDownloadStatus:(id)status
{
  statusCopy = status;
  libraryDownloadStatus = self->_libraryDownloadStatus;
  if (libraryDownloadStatus != statusCopy)
  {
    v7 = statusCopy;
    [(BKLibraryDownloadStatus *)libraryDownloadStatus removeObserver:self forKeyPath:@"combinedState" context:off_100ACD920];
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACD928];
    objc_storeStrong(&self->_libraryDownloadStatus, status);
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus addObserver:self forKeyPath:@"combinedState" options:0 context:off_100ACD920];
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus addObserver:self forKeyPath:@"progressValue" options:0 context:off_100ACD928];
    statusCopy = v7;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  if (off_100ACD930 == context)
  {
    coalescedPropertyChange = [(BKLibraryBookshelfFinishedBookCell *)self coalescedPropertyChange];
    [coalescedPropertyChange signalWithCompletion:&stru_100A06B00];

    goto LABEL_14;
  }

  if (off_100ACD938 == context)
  {
    v14 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000D11E8;
    v22[3] = &unk_100A035D0;
    objc_copyWeak(&v23, &location);
    v15 = v22;
LABEL_10:
    dispatch_async(&_dispatch_main_q, v15);
    objc_destroyWeak(v14 + 4);
    goto LABEL_14;
  }

  if (off_100ACD940 == context)
  {
    v14 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D1278;
    block[3] = &unk_100A035D0;
    objc_copyWeak(&v21, &location);
    v15 = block;
    goto LABEL_10;
  }

  if (off_100ACD920 == context)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000D1310;
    v19[3] = &unk_100A033C8;
    v19[4] = self;
    v16 = v19;
LABEL_13:
    dispatch_async(&_dispatch_main_q, v16);
    goto LABEL_14;
  }

  if (off_100ACD928 == context)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000D134C;
    v18[3] = &unk_100A033C8;
    v18[4] = self;
    v16 = v18;
    goto LABEL_13;
  }

  v17.receiver = self;
  v17.super_class = BKLibraryBookshelfFinishedBookCell;
  [(BKLibraryBookshelfFinishedBookCell *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_14:
  objc_destroyWeak(&location);
}

- (void)configureCombinedDate:(id)date
{
  dateCopy = date;
  if (qword_100AF7598 != -1)
  {
    sub_10078E14C();
  }

  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSLocale currentLocale];
  if (![v4 isEqual:qword_100AF7588] || (objc_msgSend(v5, "isEqual:", qword_100AF7590) & 1) == 0)
  {
    sub_1000D16A4();
  }

  v6 = qword_100AF7570;
  v7 = +[NSDate date];
  v8 = [v6 stringFromDate:v7];

  v9 = qword_100AF7570;
  dateFinished = [dateCopy dateFinished];
  v11 = [v9 stringFromDate:dateFinished];

  v12 = qword_100AF7568;
  dateFinished2 = [dateCopy dateFinished];
  v14 = [v12 stringFromDate:dateFinished2];

  v15 = [v11 isEqualToString:v8];
  if (_os_feature_enabled_impl() && [dateCopy finishedDateKind] == 2)
  {
    v16 = qword_100AF7578;
    dateFinished3 = [dateCopy dateFinished];
    v18 = [v16 stringFromDate:dateFinished3];

    combinedDateLabel = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    [combinedDateLabel setNumberOfLines:1];

    combinedDateLabel2 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    [combinedDateLabel2 setText:v18];
    v11 = v18;
  }

  else
  {
    combinedDateLabel3 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    v22 = combinedDateLabel3;
    if (v15)
    {
      [combinedDateLabel3 setNumberOfLines:1];

      combinedDateLabel2 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
      [combinedDateLabel2 setText:v14];
    }

    else
    {
      [combinedDateLabel3 setNumberOfLines:2];

      combinedDateLabel2 = [NSString stringWithFormat:qword_100AF7580, v14, v11];
      combinedDateLabel4 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
      [combinedDateLabel4 setText:combinedDateLabel2];
    }
  }

  if ([(BKLibraryBookshelfFinishedBookCell *)self isRTL])
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  combinedDateLabel5 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
  [combinedDateLabel5 setTextAlignment:v24];
}

- (void)_updateLibraryAsset
{
  libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  if (libraryAsset)
  {
    v16 = libraryAsset;
    finishedMetrics = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    titleFontAttributes = [finishedMetrics titleFontAttributes];
    v6 = [titleFontAttributes attributesWithTruncated:1];

    titleLabel = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    title = [v16 title];
    v9 = [TUIFontSpec attributedStringWith:title attributes:v6];
    [titleLabel setAttributedText:v9];

    finishedMetrics2 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    authorFontAttributes = [finishedMetrics2 authorFontAttributes];
    v12 = [authorFontAttributes attributesWithTruncated:1];

    authorLabel = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    displayAuthor = [v16 displayAuthor];
    v15 = [TUIFontSpec attributedStringWith:displayAuthor attributes:v12];
    [authorLabel setAttributedText:v15];

    [(BKLibraryBookshelfFinishedBookCell *)self configureCombinedDate:v16];
    [(BKLibraryBookshelfFinishedBookCell *)self updateRatingAndReview];
    [(BKLibraryBookshelfFinishedBookCell *)self setNeedsLayout];

    libraryAsset = v16;
  }
}

- (void)setAssetReview:(id)review
{
  reviewCopy = review;
  if (!+[NSThread isMainThread])
  {
    sub_10078E160();
  }

  v5 = reviewCopy;
  if (self->_assetReview != reviewCopy)
  {
    objc_storeStrong(&self->_assetReview, review);
    [(BKLibraryBookshelfFinishedBookCell *)self updateRatingAndReview];
    v5 = reviewCopy;
  }
}

- (void)updateRatingAndReview
{
  if (!+[NSThread isMainThread])
  {
    sub_10078E19C();
  }

  assetReview = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
  v19 = assetReview;
  if (assetReview)
  {
    [assetReview normalizedStarRating];
    v5 = v4;
    starRating = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [starRating setRating:v5];

    reviewTitle = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
    reviewTitle2 = [v19 reviewTitle];
    finishedMetrics = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    reviewTitleFontAttributes = [finishedMetrics reviewTitleFontAttributes];
    v11 = [TUIFontSpec attributedStringWith:reviewTitle2 attributes:reviewTitleFontAttributes];
    [reviewTitle setAttributedText:v11];

    reviewComments = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    reviewBody = [v19 reviewBody];
    finishedMetrics2 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    reviewContentFontAttributes = [finishedMetrics2 reviewContentFontAttributes];
    v16 = [TUIFontSpec attributedStringWith:reviewBody attributes:reviewContentFontAttributes];
    [reviewComments setAttributedText:v16];
  }

  else
  {
    starRating2 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [starRating2 setRating:0.0];

    reviewTitle3 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
    [reviewTitle3 setText:0];

    reviewComments = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    [reviewComments setAttributedText:0];
  }

  [(BKLibraryBookshelfFinishedBookCell *)self updateFinishedState];
}

- (void)updateFinishedState
{
  libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];

  if (libraryAsset)
  {
    dataSource = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
    currentStoreAccountID = [dataSource currentStoreAccountID];
    stringValue = [currentStoreAccountID stringValue];

    libraryAsset2 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
    assetReview = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
    storageProvider = [(BKLibraryBookshelfFinishedBookCell *)self storageProvider];
    v9 = [BKLibraryBookshelfFinishedBookCell finishedStateForAsset:libraryAsset2 assetReview:assetReview storeID:stringValue storageProvider:storageProvider];

    objc_opt_class();
    storageProvider2 = [(BKLibraryBookshelfFinishedBookCell *)self storageProvider];
    libraryAsset3 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
    permanentOrTemporaryAssetID = [libraryAsset3 permanentOrTemporaryAssetID];
    v13 = [storageProvider2 retrieveValueForKey:@"kExpandReviewText" forConsumer:permanentOrTemporaryAssetID];
    v14 = BUDynamicCast();

    -[BKLibraryBookshelfFinishedBookCell setShowFullReviewText:](self, "setShowFullReviewText:", [v14 BOOLValue]);
    if (v9 == 6)
    {
      if ([(BKLibraryBookshelfFinishedBookCell *)self showFullReviewText])
      {
        v9 = 7;
      }

      else
      {
        v9 = 6;
      }
    }

    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      if ((v9 - 4) > 3)
      {
        v9 = 9;
      }

      else
      {
        v9 = dword_10080B350[(v9 - 4)];
      }
    }

    [(BKLibraryBookshelfFinishedBookCell *)self setFinishedState:v9];
  }
}

- (void)setDataSource:(id)source
{
  objc_storeWeak(&self->_dataSource, source);

  [(BKLibraryBookshelfFinishedBookCell *)self _updateTintedImages];
}

- (void)setAudiobookStatus:(id)status
{
  statusCopy = status;
  audiobookStatus = self->_audiobookStatus;
  if (audiobookStatus != statusCopy)
  {
    v9 = statusCopy;
    if (audiobookStatus)
    {
      [(AEAssetAudiobookStatus *)audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACD938];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" context:off_100ACD940];
    }

    objc_storeStrong(&self->_audiobookStatus, status);
    v7 = self->_audiobookStatus;
    if (v7)
    {
      [(AEAssetAudiobookStatus *)v7 addObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" options:0 context:off_100ACD938];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus addObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" options:0 context:off_100ACD940];
    }

    finishedMetrics = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    [finishedMetrics audiobookControlDiameter];
    [(BKLibraryBookshelfCollectionViewCell *)self updateAudiobookControlWithStatus:v9 diameter:?];

    statusCopy = v9;
  }
}

- (BOOL)shouldShowCloud
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    return 0;
  }

  libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  if ([libraryAsset isCloud])
  {
    isNonLocalSample = 1;
  }

  else
  {
    libraryAsset2 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
    isNonLocalSample = [libraryAsset2 isNonLocalSample];
  }

  return isNonLocalSample;
}

- (BOOL)shouldShowDownloadProgressButton
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    return 0;
  }

  return [(BKLibraryBookshelfFinishedBookCell *)self isDownloading];
}

- (BOOL)shouldShowMoreButton
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    return 0;
  }

  else
  {
    return ![(BKLibraryBookshelfFinishedBookCell *)self isDownloading];
  }
}

- (BOOL)isDownloading
{
  libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  if ([libraryAsset isDownloading])
  {
    isDownloadingSupplementalContent = 1;
  }

  else
  {
    libraryAsset2 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
    isDownloadingSupplementalContent = [libraryAsset2 isDownloadingSupplementalContent];
  }

  return isDownloadingSupplementalContent;
}

- (void)starRatingDidChange:(id)change rating:(double)rating
{
  assetReview = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
  [assetReview normalizedStarRating];
  v8 = v7;

  if (v8 != rating)
  {
    dataSource = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
    currentStoreAccountID = [dataSource currentStoreAccountID];
    if (currentStoreAccountID)
    {
      v10 = currentStoreAccountID;
      libraryAsset = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
      storeID = [libraryAsset storeID];

      if (!storeID)
      {
        return;
      }

      assetReview2 = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
      if (assetReview2)
      {
        v14 = assetReview2;
        assetReview3 = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
        if ([assetReview3 starRating])
        {
          assetReview4 = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
          reviewTitle = [assetReview4 reviewTitle];
          v18 = [reviewTitle length];

          if (v18)
          {
LABEL_13:
            actionHandler = [(BKLibraryBookshelfFinishedBookCell *)self actionHandler];
            libraryAsset2 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_1000D2368;
            v25[3] = &unk_100A038D0;
            v25[4] = self;
            [actionHandler bookUpdateStarRating:libraryAsset2 rating:v25 completion:rating];

            return;
          }
        }

        else
        {
        }
      }

      storageProvider = [(BKLibraryBookshelfFinishedBookCell *)self storageProvider];
      libraryAsset3 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
      permanentOrTemporaryAssetID = [libraryAsset3 permanentOrTemporaryAssetID];
      [storageProvider storeValue:&__kCFBooleanTrue forKey:@"kStarRatedThisSession" forConsumer:permanentOrTemporaryAssetID];

      goto LABEL_13;
    }
  }
}

- (void)setupMenuWithLibraryAsset:(id)asset withActionHandler:(id)handler
{
  handlerCopy = handler;
  assetCopy = asset;
  moreButton = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  dataSource = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
  collection = [dataSource collection];
  v19 = [handlerCopy analyticsAssetPropertyProviderForLibraryAsset:assetCopy fromSourceView:moreButton inCollection:collection];

  moreButton2 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  tracker = [handlerCopy tracker];
  [moreButton2 setupAppAnalyticsReportingUsingTracker:tracker withPropertyProvider:v19];

  moreButton3 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  [moreButton3 setShowsMenuAsPrimaryAction:1];

  moreButton4 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  dataSource2 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
  collection2 = [dataSource2 collection];
  v17 = [handlerCopy menuWithLibraryAsset:assetCopy sourceView:moreButton4 collection:collection2];

  moreButton5 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  [moreButton5 setMenu:v17];
}

- (void)togglePlayPause:(id)pause
{
  audiobookStatus = [(BKLibraryBookshelfFinishedBookCell *)self audiobookStatus];
  [audiobookStatus assetAudiobookStatusTogglePlayPause];
}

- (BKLibraryBookshelfSupplementaryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BKLibraryBookshelfStorageProvider)storageProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_storageProvider);

  return WeakRetained;
}

- (BKLibraryBookshelfLayoutManager)layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutManager);

  return WeakRetained;
}

- (BKLibraryActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

- (CGSize)bookCoverSize
{
  width = self->_bookCoverSize.width;
  height = self->_bookCoverSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end