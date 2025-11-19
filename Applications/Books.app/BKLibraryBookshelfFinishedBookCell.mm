@interface BKLibraryBookshelfFinishedBookCell
+ (double)bookCellHeightFor:(id)a3 assetReview:(id)a4 storeID:(id)a5 editMode:(BOOL)a6 metrics:(id)a7 storageProvider:(id)a8 clearCache:(BOOL)a9;
+ (id)heightCache;
+ (int)finishedStateForAsset:(id)a3 assetReview:(id)a4 storeID:(id)a5 storageProvider:(id)a6;
- (BCUCoverEffectsEnvironment)coverEffectsEnvironment;
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfFinishedBookCell)initWithFrame:(CGRect)a3;
- (BKLibraryBookshelfLayoutManager)layoutManager;
- (BKLibraryBookshelfStorageProvider)storageProvider;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isDownloading;
- (BOOL)shouldShowCloud;
- (BOOL)shouldShowDownloadProgressButton;
- (BOOL)shouldShowMoreButton;
- (CGPath)pathForDateIndicator:(CGRect)a3;
- (CGRect)coverArea;
- (CGRect)coverFrame;
- (CGSize)bookCoverSize;
- (double)_desiredAlphaFromRawAlpha:(double)a3;
- (id)coverImage;
- (id)coverLayer;
- (id)dragPreview;
- (id)dragPreviewParametersForDrop:(BOOL)a3;
- (void)_cancelDownload:(id)a3;
- (void)_updateLibraryAsset;
- (void)_updateTintedImages;
- (void)applyLayoutAttributes:(id)a3;
- (void)cleanupCell;
- (void)configureCombinedDate:(id)a3;
- (void)configureViewsBasedOnState;
- (void)dealloc;
- (void)handleTapWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)markAsFinishedPressed;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForReuse;
- (void)reviewMorePressed;
- (void)setAssetReview:(id)a3;
- (void)setAudiobookStatus:(id)a3;
- (void)setCoverEffectsEnvironment:(id)a3;
- (void)setCoverHidden:(BOOL)a3;
- (void)setDataSource:(id)a3;
- (void)setFinishedState:(int)a3;
- (void)setLibraryAsset:(id)a3;
- (void)setLibraryDownloadStatus:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setupMenuWithLibraryAsset:(id)a3 withActionHandler:(id)a4;
- (void)starRatingDidChange:(id)a3 rating:(double)a4;
- (void)togglePlayPause:(id)a3;
- (void)updateFinishedState;
- (void)updateRatingAndReview;
- (void)writeReviewPressed;
@end

@implementation BKLibraryBookshelfFinishedBookCell

+ (int)finishedStateForAsset:(id)a3 assetReview:(id)a4 storeID:(id)a5 storageProvider:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  objc_opt_class();
  v12 = [v9 permanentOrTemporaryAssetID];
  v13 = [v11 retrieveValueForKey:@"kExpandReviewText" forConsumer:v12];
  v14 = BUDynamicCast();

  objc_opt_class();
  v15 = [v9 permanentOrTemporaryAssetID];
  v16 = [v11 retrieveValueForKey:@"kStarRatedThisSession" forConsumer:v15];

  v17 = BUDynamicCast();
  v33 = [v17 BOOLValue];

  v34 = [v14 BOOLValue];
  v18 = [v9 isFinished];
  v19 = [v9 notFinished];
  v20 = [v10 starRating];
  if (a5)
  {
    if ([v9 isStoreItem])
    {
      LODWORD(a5) = 0;
    }

    else
    {
      LODWORD(a5) = [v9 isStore];
    }
  }

  v21 = [v9 purchaseDate];
  if (v21)
  {
    v22 = [v9 purchaseDate];
    +[NSDate distantPast];
    v23 = v10;
    v24 = v18;
    v25 = a5;
    a5 = v14;
    v27 = v26 = v20;
    v35 = [v22 isEqual:v27] ^ 1;

    v20 = v26;
    v14 = a5;
    LODWORD(a5) = v25;
    v18 = v24;
    v10 = v23;
  }

  else
  {
    v35 = 0;
  }

  v28 = [v10 reviewTitle];
  v29 = [v10 reviewBody];
  if (v19 & 1 | ((v18 & 1) == 0))
  {
    v30 = v19 ^ 1;
  }

  else
  {
    v31 = a5 & v35;
    if ((a5 & v35) != 0)
    {
      v30 = 2;
    }

    else
    {
      v30 = 3;
    }

    if (v31 && v20)
    {
      if ([v28 length] || (v33 ? (v30 = 4) : (v30 = 5), objc_msgSend(v29, "length")))
      {
        if (v34)
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

+ (double)bookCellHeightFor:(id)a3 assetReview:(id)a4 storeID:(id)a5 editMode:(BOOL)a6 metrics:(id)a7 storageProvider:(id)a8 clearCache:(BOOL)a9
{
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = [a1 heightCache];
  v21 = v20;
  if (a9 || byte_100AF7560 != v11)
  {
    [v20 removeAllObjects];
    byte_100AF7560 = v11;
    if (v15)
    {
LABEL_4:
      v204 = v17;
      objc_opt_class();
      v22 = BUDynamicCast();
      [v22 bookCoverSize];
      v24 = v23;
      [v22 cellSpacing];
      v26 = v25;
      v27 = [v15 permanentOrTemporaryAssetID];
      v28 = [v21 objectForKeyedSubscript:v27];

      if (v28)
      {
        [v28 doubleValue];
        v30 = v29;
LABEL_65:

        v31 = v30;
        v17 = v204;
        goto LABEL_66;
      }

      v197 = v26;
      v198 = v24;
      v190 = [v22 reviewBottomLayout];
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
      [v15 title];
      v51 = v201 = v16;
      [v22 titleFontAttributes];
      v52 = v203 = v19;
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
      v61 = [v15 displayAuthor];
      v62 = [v22 authorFontAttributes];
      v63 = [TUIFontSpec attributedStringWith:v61 attributes:v62];
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
      v70 = [v15 permanentOrTemporaryAssetID];
      v71 = [v203 retrieveValueForKey:@"kExpandReviewText" forConsumer:v70];
      v72 = BUDynamicCast();

      v16 = v201;
      v200 = v72;
      LODWORD(v72) = [v72 BOOLValue];
      v73 = [a1 finishedStateForAsset:v15 assetReview:v201 storeID:v204 storageProvider:v203];
      v186 = v72;
      v196 = v73;
      if (v69 > v58)
      {
        v74 = [v15 title];
        v75 = [v22 titleFontAttributes];
        v76 = [TUIFontSpec attributedStringWith:v74 attributes:v75];
        [v50 setAttributedText:v76];

        [v22 titleMaxLines];
        [v50 setNumberOfLines:v77];
        [v50 sizeThatFits:{v193 - v194, 1.79769313e308}];
        v79 = v78;
        v80 = [v15 displayAuthor];
        v81 = [v22 authorFontAttributes];
        v82 = [TUIFontSpec attributedStringWith:v80 attributes:v81];
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
      if (v11)
      {
        v85 = 0;
        v86 = v190;
        goto LABEL_13;
      }

      v86 = v190;
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

        v181 = [v22 writeReviewFontAttributes];
        v182 = [TUIFontSpec attributedStringWith:v180 attributes:v181];
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

          if (v11)
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
            v19 = v203;
            goto LABEL_64;
          }

          v30 = v198 + v197;
          v19 = v203;
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
              v113 = [v22 writeReviewFontAttributes];
              v114 = [TUIFontSpec attributedStringWith:@"Write" attributes:v113];
              [v112 setAttributedTitle:v114 forState:0];

              v19 = v203;
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
                  v173 = [v15 permanentOrTemporaryAssetID];
                  [v21 setObject:v172 forKeyedSubscript:v173];

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
              v131 = [v22 finishedFontAttributes];
              v132 = [TUIFontSpec attributedStringWith:@"FIN" attributes:v131];
              [v112 setAttributedTitle:v132 forState:0];

              v19 = v203;
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

          v202 = [v16 reviewBody];
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
            v147 = [v22 reviewContentFontAttributes];
            v148 = [v147 attributes];
            [v202 boundingRectWithSize:1 options:v148 attributes:0 context:{v146, 1.79769313e308}];
            v149 = CGRectGetHeight(v205);
          }

          else
          {
            v147 = [[IMExpandingLabel alloc] initWithFrame:{CGRectZero.origin.x, v55, v187, v57}];
            [v147 setTextAlignment:0];
            v150 = [v22 reviewContentFontAttributes];
            v151 = [TUIFontSpec attributedStringWith:v202 attributes:v150];
            [v147 setAttributedText:v151];

            [v147 sizeThatFits:{v146, 1.79769313e308}];
            v149 = v152;
          }

          v153 = [v22 reviewTitleFontAttributes];
          v154 = [v153 font];
          [v154 lineHeight];
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

          v19 = v203;
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
        v101 = [v22 finishedShortText];
        v102 = +[NSBundle mainBundle];
        v103 = v102;
        if (v101)
        {
          v104 = @"FINISHED";
        }

        else
        {
          v104 = @"MARK FINISHED";
        }

        v105 = [v102 localizedStringForKey:v104 value:&stru_100A30A68 table:0];

        v106 = [v22 finishedFontAttributes];
        v107 = [TUIFontSpec attributedStringWith:v105 attributes:v106];
        [v97 setAttributedTitle:v107 forState:0];

        [v97 sizeThatFits:{1.79769313e308, 1.79769313e308}];
        v109 = v108;
        [v22 finishedTitleInset];
        v111 = v109 + v110 * 2.0;
      }

      v85 = v111 > v189;
      v16 = v201;
      v86 = v190;
      v88 = v44;
      v60 = v195;
      goto LABEL_13;
    }
  }

  else if (v15)
  {
    goto LABEL_4;
  }

  v31 = 0.0;
LABEL_66:
  v174 = ceilf(v31);

  return v174;
}

- (BKLibraryBookshelfFinishedBookCell)initWithFrame:(CGRect)a3
{
  v76.receiver = self;
  v76.super_class = BKLibraryBookshelfFinishedBookCell;
  v3 = [(BKLibraryBookshelfCollectionViewCell *)&v76 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v10 = [(BKLibraryBookshelfCoverView *)v3->_coverView coverLayer];
    [v10 setBottomAligned:0];

    v11 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v11 addSubview:v3->_coverView];

    v12 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v16 = [v12 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    checkmarkView = v3->_checkmarkView;
    v3->_checkmarkView = v16;

    v18 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v18 addSubview:v3->_checkmarkView];

    v19 = [[BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Not downloaded" value:&stru_100A30A68 table:0];
    [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)v19 setAccessibilityLabel:v21];

    v22 = [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)v19 accessibilityTraits];
    [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)v19 setAccessibilityTraits:v22 & ~UIAccessibilityTraitImage];
    objc_storeStrong(&v3->_cloudView, v19);
    v23 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v23 addSubview:v3->_cloudView];

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
    v29 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v29 addSubview:v3->_downloadProgressButton];

    v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v30;

    v32 = v3->_titleLabel;
    v33 = [(UILabel *)v32 accessibilityTraits];
    [(UILabel *)v32 setAccessibilityTraits:UIAccessibilityTraitButton | UIAccessibilityTraitHeader | v33];
    v34 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    authorLabel = v3->_authorLabel;
    v3->_authorLabel = v34;

    v36 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v36 addSubview:v3->_titleLabel];

    v37 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v37 addSubview:v3->_authorLabel];

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
    v41 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v41 addSubview:v3->_combinedDateLabel];

    v42 = +[CAShapeLayer layer];
    dateIndicator = v3->_dateIndicator;
    v3->_dateIndicator = v42;

    v44 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    v45 = [v44 layer];
    [v45 addSublayer:v3->_dateIndicator];

    v46 = [[BKLibraryStarRating alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    starRating = v3->_starRating;
    v3->_starRating = v46;

    [(BKLibraryStarRating *)v3->_starRating setDelegate:v3];
    [(BKLibraryStarRating *)v3->_starRating setIsRTL:v3->_isRTL];
    [(BKLibraryStarRating *)v3->_starRating setAllowHalfStars:0];
    v48 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v48 addSubview:v3->_starRating];

    v49 = objc_alloc_init(BCLibraryButton);
    markAsFinishedButton = v3->_markAsFinishedButton;
    v3->_markAsFinishedButton = v49;

    [(BCLibraryButton *)v3->_markAsFinishedButton setClipsToBounds:1];
    [(BCLibraryButton *)v3->_markAsFinishedButton addTarget:v3 action:"markAsFinishedPressed" forControlEvents:64];
    v51 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v51 addSubview:v3->_markAsFinishedButton];

    v52 = [IMTouchInsetsButton buttonWithType:0];
    moreButton = v3->_moreButton;
    v3->_moreButton = v52;

    v54 = +[NSBundle mainBundle];
    v55 = [v54 localizedStringForKey:@"More Actions" value:&stru_100A30A68 table:0];
    [(IMTouchInsetsButton *)v3->_moreButton setAccessibilityLabel:v55];

    [(IMTouchInsetsButton *)v3->_moreButton setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    v56 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v56 addSubview:v3->_moreButton];

    v57 = objc_alloc_init(BCLibraryButton);
    writeReviewButton = v3->_writeReviewButton;
    v3->_writeReviewButton = v57;

    [(BCLibraryButton *)v3->_writeReviewButton setClipsToBounds:1];
    [(BCLibraryButton *)v3->_writeReviewButton addTarget:v3 action:"writeReviewPressed" forControlEvents:64];
    v59 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v59 addSubview:v3->_writeReviewButton];

    v60 = +[CALayer layer];
    reviewBackground = v3->_reviewBackground;
    v3->_reviewBackground = v60;

    [(CALayer *)v3->_reviewBackground setZPosition:-1.0];
    v62 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    v63 = [v62 layer];
    [v63 addSublayer:v3->_reviewBackground];

    v64 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    reviewTitle = v3->_reviewTitle;
    v3->_reviewTitle = v64;

    v66 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v66 addSubview:v3->_reviewTitle];

    v67 = [[IMExpandingLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    reviewComments = v3->_reviewComments;
    v3->_reviewComments = v67;

    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_1000CBFA0;
    v71[3] = &unk_100A035D0;
    objc_copyWeak(&v72, &location);
    [(IMExpandingLabel *)v3->_reviewComments setLabelResizedBlock:v71];
    v69 = [(BKLibraryBookshelfFinishedBookCell *)v3 contentView];
    [v69 addSubview:v3->_reviewComments];

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
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  v4 = [v3 isHidden];

  if (v4)
  {
    [(BKLibraryBookshelfFinishedBookCell *)self setCoverHidden:0];
  }

  +[CATransaction commit];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
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
    [v5 locationInView:self];
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
  v4 = [(BKLibraryBookshelfFinishedBookCell *)self actionHandler];
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  [v4 bookMarkedFinished:v3];
}

- (void)writeReviewPressed
{
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self storageProvider];
  v4 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  v5 = [v4 permanentOrTemporaryAssetID];
  [v3 storeValue:&__kCFBooleanFalse forKey:@"kStarRatedThisSession" forConsumer:v5];

  v7 = [(BKLibraryBookshelfFinishedBookCell *)self actionHandler];
  v6 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  [v7 bookWriteReview:v6];
}

- (void)reviewMorePressed
{
  [(BKLibraryBookshelfFinishedBookCell *)self setShowFullReviewText:1];
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self storageProvider];
  v4 = [NSNumber numberWithBool:[(BKLibraryBookshelfFinishedBookCell *)self showFullReviewText]];
  v5 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  v6 = [v5 permanentOrTemporaryAssetID];
  [v3 storeValue:v4 forKey:@"kExpandReviewText" forConsumer:v6];

  v7 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  v11 = [v7 permanentOrTemporaryAssetID];

  if (v11)
  {
    v8 = [objc_opt_class() heightCache];
    [v8 removeObjectForKey:v11];

    v9 = [(BKLibraryBookshelfFinishedBookCell *)self layoutManager];
    v10 = [(BKLibraryBookshelfFinishedBookCell *)self indexPath];
    [v9 invalidateLayoutFor:v10];
  }
}

- (id)coverLayer
{
  v2 = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
  v3 = [v2 coverLayer];

  return v3;
}

- (void)handleTapWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(BKLibraryBookshelfFinishedBookCell *)self actionHandler];
  v5 = [(BKLibraryBookshelfFinishedBookCell *)self indexPath];
  [v6 bookTapped:v5 completion:v4];
}

- (BCUCoverEffectsEnvironment)coverEffectsEnvironment
{
  v2 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  v3 = [v2 coverEffectsEnvironment];

  return v3;
}

- (void)setCoverEffectsEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  [v5 setCoverEffectsEnvironment:v4];
}

- (id)dragPreview
{
  v3 = [UIDragPreview alloc];
  v4 = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
  v5 = [v3 initWithView:v4];

  return v5;
}

- (id)dragPreviewParametersForDrop:(BOOL)a3
{
  v4 = objc_alloc_init(UIDragPreviewParameters);
  v5 = [(BKLibraryBookshelfFinishedBookCell *)self traitCollection];
  v6 = [v5 traitCollectionByModifyingTraits:&stru_100A06AE0];

  v7 = +[UIColor bc_booksBackground];
  v8 = [v7 resolvedColorWithTraitCollection:v6];
  [v4 setBackgroundColor:v8];

  return v4;
}

- (double)_desiredAlphaFromRawAlpha:(double)a3
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    a3 = 1.0;
    if (([(BKLibraryBookshelfFinishedBookCell *)self isSelected]& 1) == 0)
    {
      v5 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      [v5 shrinkAlpha];
      a3 = v6;
    }
  }

  return a3;
}

- (void)setCoverHidden:(BOOL)a3
{
  v3 = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v5 = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
  [v5 setHidden:v3];

  +[CATransaction commit];
}

- (id)coverImage
{
  v2 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  v3 = [v2 image];

  return v3;
}

- (CGRect)coverFrame
{
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self layer];
  v4 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  [v4 coverBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  [v3 convertRect:v13 fromLayer:{v6, v8, v10, v12}];
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
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
  [v3 margins];
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
  v4 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
  [v4 setAlpha:v3];

  *&v3 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
  v5 = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
  LODWORD(v6) = LODWORD(v3);
  [v5 setOpacity:v6];

  v7 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  v8 = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
  [v8 setAlpha:v7];

  if ([(BKLibraryBookshelfFinishedBookCell *)self shouldShowCloud])
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
  [v10 setAlpha:v9];

  v11 = [(BKLibraryBookshelfFinishedBookCell *)self shouldShowCloud];
  v12 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
  [v12 setIsAccessibilityElement:v11];

  if ([(BKLibraryBookshelfFinishedBookCell *)self shouldShowDownloadProgressButton])
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [(BKLibraryBookshelfFinishedBookCell *)self downloadProgressButton];
  [v14 setAlpha:v13];

  if ([(BKLibraryBookshelfFinishedBookCell *)self shouldShowMoreButton])
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  [v16 setAlpha:v15];

  finishedState = self->_finishedState;
  if (finishedState <= 4)
  {
    if (finishedState > 2)
    {
      if (finishedState == 3)
      {
        v49 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
        [v49 setOpacity:0.0];

        v50 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
        [v50 setAlpha:0.0];

        v51 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        [v51 setAlpha:0.0];

        v52 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
        [v52 setAlpha:0.0];

        v53 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
        [v53 setAlpha:0.0];

        v23 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
LABEL_27:
        v48 = 0.0;
LABEL_30:
        v59 = v23;
        goto LABEL_31;
      }

      v29 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [v29 setOpacity:0.0];

      v30 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [v30 setAlpha:0.0];

      v31 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [v31 setAlpha:0.0];

      v32 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [v32 setAlpha:0.0];

      v33 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
      [v33 setAlpha:1.0];

      v34 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
      v23 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
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
        v24 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
        [v24 setOpacity:0.0];

        v25 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
        [v25 setAlpha:0.0];

        v26 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        [v26 setAlpha:0.0];

        v27 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
        [v27 setAlpha:0.0];

        v28 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
LABEL_29:
        v58 = v28;
        [v28 setAlpha:0.0];

        v23 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
        v48 = 1.0;
        goto LABEL_30;
      }

      v43 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [v43 setOpacity:0.0];

      v44 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [v44 setAlpha:0.0];

      v45 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [v45 setAlpha:0.0];

      v46 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
      [v46 setAlpha:0.0];

      v47 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [v47 setAlpha:0.0];

      v34 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
      v23 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    }

    v59 = v23;
    v48 = v34;
LABEL_31:
    [v23 setAlpha:v48];
    goto LABEL_32;
  }

  if (finishedState <= 6)
  {
    if (finishedState == 5)
    {
      v54 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [v54 setOpacity:0.0];

      v55 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [v55 setAlpha:0.0];

      v56 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [v56 setAlpha:0.0];

      v57 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [v57 setAlpha:0.0];

      v28 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
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

      v18 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [v18 setOpacity:0.0];

      v19 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [v19 setAlpha:0.0];

      v20 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [v20 setAlpha:0.0];

      v21 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
      [v21 setAlpha:0.0];

      v22 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [v22 setAlpha:0.0];

      v23 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v35 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
  [v35 setAlpha:0.0];

  v36 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
  [v36 setAlpha:0.0];

  v37 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
  [v37 setAlpha:1.0];

  v38 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
  v39 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
  [v39 setAlpha:v38];

  v40 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
  v41 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
  [v41 setAlpha:v40];

  *&v40 = ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]^ 1);
  v59 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
  LODWORD(v42) = LODWORD(v40);
  [v59 setOpacity:v42];
LABEL_32:
}

- (void)setFinishedState:(int)a3
{
  if (!+[NSThread isMainThread])
  {
    sub_10078E090();
  }

  finishedState = self->_finishedState;
  if (finishedState == 10 || finishedState != a3)
  {
    self->_finishedState = a3;
    if (finishedState != 10)
    {
      v7 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
      v8 = [v7 permanentOrTemporaryAssetID];

      if (v8)
      {
        v9 = [objc_opt_class() heightCache];
        [v9 removeObjectForKey:v8];

        v10 = [(BKLibraryBookshelfFinishedBookCell *)self layoutManager];
        v11 = [(BKLibraryBookshelfFinishedBookCell *)self indexPath];
        [v10 invalidateLayoutFor:v11];
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
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  [(BKLibraryBookshelfFinishedBookCell *)self bounds];
  x = v665.origin.x;
  y = v665.origin.y;
  width = v665.size.width;
  height = v665.size.height;
  MaxX = CGRectGetMaxX(v665);
  v6 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
  [v6 margins];
  v613 = v7;

  [(BKLibraryBookshelfFinishedBookCell *)self coverArea];
  rect_24 = v666.origin.y;
  v632 = v666.origin.x;
  rect_8 = v666.size.height;
  rect_16 = v666.size.width;
  CGRectGetMidY(v666);
  v8 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
  [v8 bounds];
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
      v14 = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
      goto LABEL_9;
    }
  }

  v14 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
LABEL_9:
  v15 = v14;
  [v14 setFrame:{v632, rect_24, rect_16, rect_8}];

  v16 = [v3 reviewBottomLayout];
  v17 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
  [v17 margins];
  v19 = v18;
  [v3 lockupMargin];
  v21 = v19 + v20;

  v667.origin.x = x;
  v667.origin.y = y;
  v667.size.width = width;
  v667.size.height = height;
  v641 = v21;
  v22 = CGRectGetWidth(v667) - v21;
  v23 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
  [v23 margins];
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
  v28 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
  [v28 margins];
  v615 = v29;

  [v3 lockupBottomSpacing];
  v645 = MaxY + v30;
  [v3 smallLayoutSpaceNeeded];
  v32 = v31;
  v33 = CGRectZero.origin.y;
  v34 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
  [v34 sizeThatFits:{v25, 1.79769313e308}];
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
  v40 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
  [v40 sizeThatFits:{v25, 1.79769313e308}];
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
  [v3 authorSpacing];
  v47 = v38 + v44 + v46;
  v618 = v33;
  v625 = MinX;
  if (v47 <= rect)
  {
    v623 = v44;
    if (rect - v47 < v32)
    {
      v64 = 0;
      v16 = 1;
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

    v66 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [v66 alpha];
    v68 = v67;

    if (v68 == 0.0)
    {
      v75 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [v75 alpha];
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

      v78 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [v78 titleEdgeInsets];
      v71 = v79;
      v73 = v80;

      v74 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    }

    else
    {
      v69 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [v69 titleEdgeInsets];
      v71 = v70;
      v73 = v72;

      v74 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    }

    v81 = v74;
    [v74 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v83 = v82;

    v84 = v71 + v73;
    v53 = v621;
    v85 = v84 + v83;
    v63 = v85 > v25;
    v64 = v85 <= v25;
    goto LABEL_31;
  }

  v48 = v622 - MinX - v615;
  v49 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
  [v49 sizeThatFits:{v48, 1.79769313e308}];
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

  v56 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
  [v56 sizeThatFits:{v48, 1.79769313e308}];
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
  v16 = 1;
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
  v96 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
  [v96 setFrame:{v89, v91, v93, v95}];

  v674.origin.x = recta;
  v674.origin.y = v86;
  v674.size.width = v61;
  v674.size.height = v87;
  v97 = CGRectGetMaxY(v674);
  [v3 authorSpacing];
  v99 = v97 + v98;
  [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
  [v108 setFrame:{v101, v103, v105, v107}];

  if (!v63)
  {
    v675.origin.x = recta;
    v675.origin.y = v99;
    v675.size.width = v633;
    v675.size.height = v623;
    v645 = CGRectGetMaxY(v675);
  }

  v109 = [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
  v110 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
  [v110 setIsRTL:v109];

  v111 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
  [v111 alpha];
  v113 = v112;

  if (v64)
  {
    v114 = v641;
  }

  else
  {
    v114 = v625;
  }

  [v3 ratingSpacing];
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
    v129 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [v129 setFrame:{v122, v124, v126, v128}];
  }

  else
  {
    [v3 ratingWidth];
    v131 = v130;
    [v3 ratingHeight];
    v133 = v132;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v135 = v134;
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v142 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    v143 = v139;
    v144 = v141;
    v119 = width;
    v118 = y;
    [v142 setFrame:{v135, v137, v143, v144}];

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
    v145 = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
    v146 = [v145 image];
    [v146 size];
    v148 = v147;
    v150 = v149;

    v151 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
    [v151 margins];
    v153 = v152;
    [(BKLibraryBookshelfFinishedBookCell *)self bookCoverLeftMargin];
    v155 = v153 + v154;
    [v3 checkMarkSpacing];
    v157 = v155 - (v148 + v156);

    v677.origin.y = rect_24;
    v677.origin.x = v632;
    v677.size.height = rect_8;
    v677.size.width = rect_16;
    *&v653.size.width = 3221225472;
    *&v653.origin.y = _NSConcreteStackBlock;
    *&v653.size.height = sub_1000CF4BC;
    v654 = &unk_100A04558;
    v655 = self;
    v656 = v157;
    v657 = CGRectGetMidY(v677) + v150 * -0.5;
    v658 = v148;
    v659 = v150;
    v660 = v653.origin.x;
    v661 = v118;
    v662 = v119;
    v663 = v120;
    [UIView performWithoutAnimation:&v653.origin.y];
    [v3 finishedSpacing];
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v165 = v164;
    v166 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [v166 setFrame:{v159, v161, v163, v165}];

    [v3 writeReviewSpacing];
    v647 = v646 + v167;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v169 = v168;
    v171 = v170;
    v173 = v172;
    v175 = v174;
    v176 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    [v176 setFrame:{v169, v171, v173, v175}];

    v678.origin.x = v634;
    v678.origin.y = v647;
    v678.size.width = CGSizeZero.width;
    v678.size.height = v637;
    v177 = CGRectGetMaxY(v678);
    v648 = v177;
    if (v16)
    {
      [v3 bookCoverLeftMargin];
      v179 = v178;
      v180 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
      [v180 margins];
      v641 = v179 + v181;

      [v3 bookCoverSize];
      v177 = v182;
    }

    [v3 reviewSpacing];
    v184 = v177 + v183;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v192 = v191;
    v193 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
    [v193 setFrame:{v186, v188, v190, v192}];

    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v195 = v194;
    v197 = v196;
    v199 = v198;
    v201 = v200;
    v202 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
    [v202 setFrame:{v195, v197, v199, v201}];

    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v204 = v203;
    v206 = v205;
    v208 = v207;
    v210 = v209;
    v211 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    [v211 setFrame:{v204, v206, v208, v210}];

    v212 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    [v212 setExpanded:1];

    v213 = v648;
    if ([(BKLibraryBookshelfFinishedBookCell *)self finishedState]== 7 || [(BKLibraryBookshelfFinishedBookCell *)self finishedState]== 6)
    {
      v679.size.height = v637;
      v679.origin.x = v641;
      v679.origin.y = v184;
      v679.size.width = CGSizeZero.width;
      v213 = CGRectGetMaxY(v679);
    }

    v214 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
    [v214 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v642 = v215;

    [v3 moreHeight];
    v638 = v216;
    [v3 moreSpacing];
    v635 = v213 + v217;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v219 = v218;
    v221 = v220;
    v223 = v222;
    v225 = v224;
    v226 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
    [v226 setFrame:{v219, v221, v223, v225}];

    [v3 moreSpacing];
    v649 = v213;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v228 = v227;
    v230 = v229;
    v232 = v231;
    v234 = v233;
    v235 = [(BKLibraryBookshelfFinishedBookCell *)self downloadProgressButton];
    [v235 setFrame:{v228, v230, v232, v234}];

    v236 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
    v237 = [v236 image];
    [v237 size];

    v680.origin.x = v634;
    v680.origin.y = v635;
    v680.size.width = v642;
    v680.size.height = v638;
    CGRectGetMaxX(v680);
    [v3 cloudSpacing];
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
    v246 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
    [v246 setFrame:{v239, v241, v243, v245}];
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v247 = [(BKLibraryBookshelfFinishedBookCell *)self pathForDateIndicator:v632, rect_24, rect_16, rect_8];
    v248 = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
    [v248 setPath:v247];

    v249 = [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    [v3 datelineMargin];
    v251 = v250;
    if (v249)
    {
      [v3 datelineWidth];
      v253 = MaxX - v613 - v251 + v252 * -0.5;
    }

    else
    {
      v248 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
      [v248 margins];
      v253 = v251 + v254;
    }

    v255 = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
    [v255 setPosition:{v253, 0.0}];

    if ((v249 & 1) == 0)
    {
    }

    +[CATransaction commit];
    objc_opt_class();
    v256 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    v257 = [v256 dateFontAttributes];
    v258 = [v257 font];
    v246 = BUDynamicCast();

    if (v246)
    {
      v259 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
      [v259 setFont:v246];
    }

    objc_opt_class();
    v260 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    v261 = [v260 dateFontAttributes];
    v262 = [v261 foregroundColor];
    v263 = BUDynamicCast();

    if (v263)
    {
      v264 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
      [v264 setTextColor:v263];
    }

    v265 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    [v265 setAdjustsFontSizeToFitWidth:0];

    v266 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
    [v266 margins];
    v268 = v267;
    [v3 datelineMargin];
    v270 = v268 + v269;
    [v3 dateSpace];
    v272 = v270 - v271;
    [v3 datelineCircleSize];
    v274 = v272 - v273 + -4.0;

    v275 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    [v275 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v277 = v276;
    v279 = v278;

    v280 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
    [v280 margins];
    v282 = v281;
    [v3 datelineMargin];
    v284 = v282 + v283;
    v682.origin.x = CGRectZero.origin.x;
    v682.origin.y = v618;
    v682.size.width = v277;
    v682.size.height = v279;
    v285 = v284 - CGRectGetWidth(v682);
    [v3 dateSpace];
    v287 = v285 - v286;
    [v3 datelineCircleSize];
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
      v290 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
      [v290 setAdjustsFontSizeToFitWidth:1];

      v291 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
      [v291 margins];
      v293 = v292;
      [v3 datelineMargin];
      v295 = v293 + v294;
      v684.origin.x = v289;
      v684.origin.y = v618;
      v684.size.width = v274;
      v684.size.height = v279;
      v296 = v295 - CGRectGetWidth(v684);
      [v3 dateSpace];
      v298 = v296 - v297;
      [v3 datelineCircleSize];
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
    v309 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    [v309 setFrame:{v302, v304, v306, v308}];

    v310 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [v310 alpha];
    v312 = v311;

    if (v312 == 0.0)
    {
      [v3 finishedSpacing];
      v313 = v646;
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v315 = v314;
      v317 = v316;
      v319 = v318;
      v321 = v320;
      v322 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [v322 setFrame:{v315, v317, v319, v321}];
    }

    else
    {
      v323 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [v323 titleEdgeInsets];
      v325 = v324;
      v327 = v326;

      v328 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [v328 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v330 = v329;
      v332 = v331;

      v333 = v325 + v327 + v330;
      [v3 finishedSpacing];
      v335 = v646 + v334;
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v337 = v336;
      v339 = v338;
      v341 = v340;
      v343 = v342;
      v344 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      v345 = v339;
      v346 = v341;
      v300 = y;
      v347 = v343;
      v119 = width;
      v120 = v644;
      [v344 setFrame:{v337, v345, v346, v347}];

      v687.origin.x = v634;
      v687.origin.y = v335;
      v687.size.width = v333;
      v687.size.height = v332;
      v348 = CGRectGetHeight(v687) * 0.5;
      v349 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      v350 = [v349 layer];
      [v350 setCornerRadius:v348];

      v688.origin.x = v634;
      v688.origin.y = v335;
      v688.size.width = v333;
      v688.size.height = v332;
      v313 = CGRectGetMaxY(v688);
    }

    v351 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    [v351 alpha];
    v353 = v352;

    if (v353 == 0.0)
    {
      [v3 writeReviewSpacing];
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v355 = v354;
      v357 = v356;
      v359 = v358;
      v361 = v360;
      v362 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [v362 setFrame:{v355, v357, v359, v361}];
    }

    else
    {
      v363 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [v363 titleEdgeInsets];
      v365 = v364;
      v367 = v366;

      v368 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [v368 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v370 = v369;
      v372 = v371;

      v373 = v365 + v367 + v370;
      [v3 writeReviewSpacing];
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
      if (v376 <= CGRectGetMaxX(v690) || (v691.origin.x = v634, v691.origin.y = v375, v691.size.width = v373, v691.size.height = v372, v377 = CGRectGetMinY(v691), [v3 bookCoverSize], v377 <= v378))
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
        v381 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
        [v381 margins];
        v383 = v380 - v382;
      }

      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v385 = v384;
      v387 = v386;
      v389 = v388;
      v391 = v390;
      v392 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      v393 = v385;
      v394 = v387;
      v300 = y;
      v395 = v389;
      v119 = width;
      v120 = v644;
      [v392 setFrame:{v393, v394, v395, v391}];

      v694.origin.x = v383;
      v694.origin.y = v375;
      v694.size.width = v373;
      v694.size.height = v372;
      v396 = CGRectGetHeight(v694) * 0.5;
      v397 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      v398 = [v397 layer];
      [v398 setCornerRadius:v396];

      v695.origin.x = v383;
      v695.origin.y = v375;
      v695.size.width = v373;
      v695.size.height = v372;
      v313 = CGRectGetMaxY(v695);
    }

    v399 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    [v399 alpha];
    v401 = v400;

    v650 = v313;
    if (v401 == 0.0)
    {
      if (v16)
      {
        [v3 bookCoverLeftMargin];
        v402 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
        [v402 margins];

        [v3 bookCoverSize];
      }

      [v3 reviewSpacing];
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v404 = v403;
      v406 = v405;
      v408 = v407;
      v410 = v409;
      v411 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [v411 setFrame:{v404, v406, v408, v410}];

      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v413 = v412;
      v415 = v414;
      v417 = v416;
      v419 = v418;
      v420 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [v420 setFrame:{v413, v415, v417, v419}];

      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v422 = v421;
      v424 = v423;
      v426 = v425;
      v428 = v427;
      v429 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [v429 setFrame:{v422, v424, v426, v428}];

      v430 = v650;
    }

    else
    {
      v431 = v619;
      if (v16)
      {
        v696.origin.x = v653.origin.x;
        v696.origin.y = v300;
        v696.size.width = v119;
        v696.size.height = v120;
        v432 = CGRectGetWidth(v696);
        [v3 bookCoverLeftMargin];
        v434 = v432 - v433;
        v435 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
        [v435 margins];
        v431 = v434 + v436 * -2.0;
      }

      [v3 reviewLeftMargin];
      v437 = v431;
      v439 = v431 - v438;
      [v3 reviewRightMargin];
      v441 = v439 - v440;
      v442 = [(BKLibraryBookshelfFinishedBookCell *)self finishedState];
      v443 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      v444 = v443;
      if (v442 == 7)
      {
        [v443 setExpanded:1];

        v445 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        v446 = [v445 text];
        v447 = [v3 reviewContentFontAttributes];
        v448 = [v447 attributes];
        [v446 boundingRectWithSize:1 options:v448 attributes:0 context:{v441, 1.79769313e308}];
        v449 = CGRectGetHeight(v697);
      }

      else
      {
        [v443 setExpanded:0];

        v445 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        [v445 sizeThatFits:{v441, 1.79769313e308}];
        v449 = v450;
      }

      v451 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      v639 = v441;
      [v451 sizeThatFits:{v441, 1.79769313e308}];
      v453 = v452;

      if (v16)
      {
        [v3 bookCoverLeftMargin];
        v455 = v454;
        v456 = [(BKLibraryBookshelfFinishedBookCell *)self columnMetrics];
        [v456 margins];
        v641 = v455 + v457;

        [v3 bookCoverSize];
        v313 = v458;
        [v3 moreHeight];
        v460 = v650 + v459;
        [v3 moreSpacing];
        v462 = v460 + v461;
        if (v313 < v462)
        {
          v313 = v462;
        }
      }

      [v3 reviewSpacing];
      v464 = v313 + v463;
      [v3 reviewTopMargin];
      v466 = v449 + v465;
      [v3 reviewBottomMargin];
      rectb = v453;
      v468 = v453 + v466 + v467;
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v470 = v469;
      v472 = v471;
      v474 = v473;
      v476 = v475;
      v477 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [v477 setFrame:{v470, v472, v474, v476}];

      v698.origin.x = v641;
      v698.origin.y = v464;
      v698.size.width = v437;
      v698.size.height = v468;
      v478 = CGRectGetMinX(v698);
      [v3 reviewLeftMargin];
      v480 = v478 + v479;
      v699.origin.x = v641;
      v624 = v468;
      v699.origin.y = v464;
      v620 = v437;
      v699.size.width = v437;
      v699.size.height = v468;
      v481 = CGRectGetMinY(v699);
      [v3 reviewTopMargin];
      v483 = v481 + v482;
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v485 = v484;
      v487 = v486;
      v489 = v488;
      v491 = v490;
      v492 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
      [v492 setFrame:{v485, v487, v489, v491}];

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
      v501 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
      [v501 setFrame:{v494, v496, v498, v500}];

      v430 = v650;
      if ((v16 & 1) == 0)
      {
        v701.origin.x = v641;
        v701.size.height = v624;
        v701.origin.y = v464;
        v701.size.width = v620;
        v430 = CGRectGetMaxY(v701);
      }
    }

    v502 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
    [v502 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v643 = v503;

    [v3 moreHeight];
    v640 = v504;
    [v3 moreSpacing];
    v636 = v430 + v505;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v507 = v506;
    v509 = v508;
    v511 = v510;
    v513 = v512;
    v514 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
    [v514 setFrame:{v507, v509, v511, v513}];

    [v3 moreSpacing];
    v649 = v430;
    [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v516 = v515;
    v518 = v517;
    v520 = v519;
    v522 = v521;
    v523 = [(BKLibraryBookshelfFinishedBookCell *)self downloadProgressButton];
    [v523 setFrame:{v516, v518, v520, v522}];

    v524 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
    v525 = [v524 image];
    [v525 size];

    v702.origin.x = v634;
    v702.origin.y = v636;
    v702.size.width = v643;
    v702.size.height = v640;
    CGRectGetMaxX(v702);
    [v3 cloudSpacing];
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
    v534 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
    [v534 setFrame:{v527, v529, v531, v533}];
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
    v538 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    [v538 frame];
    v706 = CGRectOffset(v705, 0.0, v537);
    v539 = v706.origin.x;
    v540 = v706.origin.y;
    v541 = v706.size.width;
    v542 = v706.size.height;
    v543 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    [v543 setFrame:{v539, v540, v541, v542}];

    v544 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    [v544 frame];
    v708 = CGRectOffset(v707, 0.0, v537);
    v545 = v708.origin.x;
    v546 = v708.origin.y;
    v547 = v708.size.width;
    v548 = v708.size.height;
    v549 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    [v549 setFrame:{v545, v546, v547, v548}];

    v550 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [v550 frame];
    v710 = CGRectOffset(v709, 0.0, v537);
    v551 = v710.origin.x;
    v552 = v710.origin.y;
    v553 = v710.size.width;
    v554 = v710.size.height;
    v555 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [v555 setFrame:{v551, v552, v553, v554}];

    if (![(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      v556 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [v556 frame];
      v712 = CGRectOffset(v711, 0.0, v537);
      v557 = v712.origin.x;
      v558 = v712.origin.y;
      v559 = v712.size.width;
      v560 = v712.size.height;
      v561 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      [v561 setFrame:{v557, v558, v559, v560}];

      v562 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [v562 frame];
      v714 = CGRectOffset(v713, 0.0, v537);
      v563 = v714.origin.x;
      v564 = v714.origin.y;
      v565 = v714.size.width;
      v566 = v714.size.height;
      v567 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      [v567 setFrame:{v563, v564, v565, v566}];

      v568 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
      [v568 frame];
      v716 = CGRectOffset(v715, 0.0, v537);
      v569 = v716.origin.x;
      v570 = v716.origin.y;
      v571 = v716.size.width;
      v572 = v716.size.height;
      v573 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
      [v573 setFrame:{v569, v570, v571, v572}];

      v574 = [(BKLibraryBookshelfFinishedBookCell *)self downloadProgressButton];
      [v574 frame];
      v718 = CGRectOffset(v717, 0.0, v537);
      v575 = v718.origin.x;
      v576 = v718.origin.y;
      v577 = v718.size.width;
      v578 = v718.size.height;
      v579 = [(BKLibraryBookshelfFinishedBookCell *)self downloadProgressButton];
      [v579 setFrame:{v575, v576, v577, v578}];

      v580 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
      [v580 frame];
      v720 = CGRectOffset(v719, 0.0, v537);
      v581 = v720.origin.x;
      v582 = v720.origin.y;
      v583 = v720.size.width;
      v584 = v720.size.height;
      v585 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
      [v585 setFrame:{v581, v582, v583, v584}];

      if ((v16 & 1) == 0)
      {
        v586 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
        [v586 frame];
        v722 = CGRectOffset(v721, 0.0, v537);
        v587 = v722.origin.x;
        v588 = v722.origin.y;
        v589 = v722.size.width;
        v590 = v722.size.height;
        v591 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
        [v591 setFrame:{v587, v588, v589, v590}];

        v592 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        [v592 frame];
        v724 = CGRectOffset(v723, 0.0, v537);
        v593 = v724.origin.x;
        v594 = v724.origin.y;
        v595 = v724.size.width;
        v596 = v724.size.height;
        v597 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
        [v597 setFrame:{v593, v594, v595, v596}];

        v598 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
        [v598 frame];
        v726 = CGRectOffset(v725, 0.0, v537);
        v599 = v726.origin.x;
        v600 = v726.origin.y;
        v601 = v726.size.width;
        v602 = v726.size.height;
        v603 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
        [v603 setFrame:{v599, v600, v601, v602}];
      }
    }
  }

  v604 = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  if (v604)
  {
    [v3 audiobookControlMargin];
    v606 = v605;
    [v604 frame];
    v608 = v607;
    v610 = v609;
    [(BKLibraryBookshelfFinishedBookCell *)self coverContainerFrame];
    v611 = v606 + v727.origin.x;
    v612 = v727.origin.y + CGRectGetHeight(v727) - v610 - v606;
    [v604 frame];
    v729.origin.x = v611;
    v729.origin.y = v612;
    v729.size.width = v608;
    v729.size.height = v610;
    if (!CGRectEqualToRect(v728, v729))
    {
      [(BKLibraryBookshelfFinishedBookCell *)self isRTL];
      IMRectFlippedForRTL();
      [v604 setFrame:?];
    }
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v126.receiver = self;
  v126.super_class = BKLibraryBookshelfFinishedBookCell;
  v4 = a3;
  [(BKLibraryBookshelfCollectionViewCell *)&v126 applyLayoutAttributes:v4];
  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = [v4 indexPath];

  [(BKLibraryBookshelfFinishedBookCell *)self setIndexPath:v6];
  v7 = +[UIApplication sharedApplication];
  -[BKLibraryBookshelfFinishedBookCell setIsRTL:](self, "setIsRTL:", [v7 userInterfaceLayoutDirection] == 1);

  v8 = [v5 columnMetrics];
  [(BKLibraryBookshelfFinishedBookCell *)self setColumnMetrics:v8];

  -[BKLibraryBookshelfFinishedBookCell setLayoutDebugMode:](self, "setLayoutDebugMode:", [v5 layoutDebugMode]);
  if ([(BKLibraryBookshelfFinishedBookCell *)self layoutDebugMode])
  {
    v9 = +[UIColor redColor];
    v10 = [v9 colorWithAlphaComponent:0.2];
    v11 = [v10 CGColor];
    v12 = [(BKLibraryBookshelfFinishedBookCell *)self layer];
    [v12 setBorderColor:v11];

    v13 = [(BKLibraryBookshelfFinishedBookCell *)self layer];
    [v13 setBorderWidth:0.5];

    v14 = +[UIColor redColor];
    v15 = [v14 colorWithAlphaComponent:0.2];
    v16 = [v15 CGColor];
    v17 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    v18 = [v17 layer];
    [v18 setBorderColor:v16];

    v19 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    v20 = [v19 layer];
    [v20 setBorderWidth:0.5];

    v21 = +[UIColor redColor];
    v22 = [v21 colorWithAlphaComponent:0.2];
    v23 = [v22 CGColor];
    v24 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    v25 = [v24 layer];
    [v25 setBorderColor:v23];

    v26 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    v27 = [v26 layer];
    [v27 setBorderWidth:0.5];

    v28 = +[UIColor redColor];
    v29 = [v28 colorWithAlphaComponent:0.2];
    v30 = [v29 CGColor];
    v31 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
    [v31 setBorderColor:v30];

    v32 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
    [v32 setBorderWidth:0.5];

    v33 = +[UIColor redColor];
    v34 = [v33 colorWithAlphaComponent:0.2];
    v35 = [v34 CGColor];
    v36 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    v37 = [v36 layer];
    [v37 setBorderColor:v35];

    v38 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    v39 = [v38 layer];
    [v39 setBorderWidth:0.5];
  }

  else
  {
    v40 = [(BKLibraryBookshelfFinishedBookCell *)self layer];
    [v40 setBorderWidth:0.0];

    v41 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    v42 = [v41 layer];
    [v42 setBorderWidth:0.0];

    v43 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    v44 = [v43 layer];
    [v44 setBorderWidth:0.0];

    v38 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
    [v38 setBorderWidth:0.0];
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

  v46 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
  [v46 setAlpha:v45];

  objc_opt_class();
  v47 = [v5 cellMetrics];
  v48 = BUDynamicCast();

  v49 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];

  if (v48 != v49)
  {
    [(BKLibraryBookshelfFinishedBookCell *)self setFinishedMetrics:v48];
    [(BKLibraryBookshelfFinishedBookCell *)self setMetrics:v48];
    [v48 bookCoverSize];
    [(BKLibraryBookshelfFinishedBookCell *)self setBookCoverSize:?];
    [v48 bookCoverLeftMargin];
    [(BKLibraryBookshelfFinishedBookCell *)self setBookCoverLeftMargin:?];
    [v48 titleMaxLines];
    v51 = v50;
    v52 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    [v52 setNumberOfLines:v51];

    [v48 authorMaxLines];
    v54 = v53;
    v55 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    [v55 setNumberOfLines:v54];

    v56 = [v48 finishedFillColor];
    v57 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [v57 setNormalBackgroundColor:v56];

    v58 = [v48 finishedFillHilightColor];
    v59 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [v59 setHighlightBackgroundColor:v58];

    v60 = [v48 finishedFrameColor];
    if (v60)
    {
      v61 = v60;
      [v48 finishedFrameWidth];
      v63 = v62;

      if (v63 != 0.0)
      {
        v64 = [v48 finishedFrameColor];
        v65 = [v64 CGColor];
        v66 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
        v67 = [v66 layer];
        [v67 setBorderColor:v65];

        [v48 finishedFrameWidth];
        v69 = v68;
        v70 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
        v71 = [v70 layer];
        [v71 setBorderWidth:v69];
      }
    }

    [v48 finishedTitleInset];
    v73 = v72;
    [v48 finishedTitleInset];
    v75 = v74;
    v76 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
    [v76 setTitleEdgeInsets:{0.0, v73, 0.0, v75}];

    v77 = [v48 writeReviewFillColor];
    v78 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    [v78 setNormalBackgroundColor:v77];

    v79 = [v48 writeReviewFillHilightColor];
    v80 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    [v80 setHighlightBackgroundColor:v79];

    v81 = [v48 writeReviewFrameColor];
    if (v81)
    {
      v82 = v81;
      [v48 writeReviewFrameWidth];
      v84 = v83;

      if (v84 != 0.0)
      {
        v85 = [v48 writeReviewFrameColor];
        v86 = [v85 CGColor];
        v87 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
        v88 = [v87 layer];
        [v88 setBorderColor:v86];

        [v48 writeReviewFrameWidth];
        v90 = v89;
        v91 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
        v92 = [v91 layer];
        [v92 setBorderWidth:v90];
      }
    }

    [v48 writeReviewTitleInset];
    v94 = v93;
    [v48 writeReviewTitleInset];
    v96 = v95;
    v97 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
    [v97 setTitleEdgeInsets:{0.0, v94, 0.0, v96}];

    v98 = [v48 ratingFrameColor];
    v99 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [v99 setFrameColor:v98];

    v100 = [v48 ratingFillColor];
    v101 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [v101 setFillColor:v100];

    v102 = [v48 ratingEmptyColor];
    v103 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [v103 setEmptyColor:v102];

    v104 = +[UIColor bc_booksTableSelectionColor];
    [(BKLibraryBookshelfCollectionViewCell *)self setHighlightBackgroundColor:v104];

    v105 = +[NSBundle mainBundle];
    v106 = [v105 localizedStringForKey:@"More" value:&stru_100A30A68 table:0];

    v107 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    v108 = [v107 reviewMoreFontAttributes];
    v109 = [TUIFontSpec attributedStringWith:v106 attributes:v108];
    v110 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    [v110 setShowMoreAttributedText:v109];

    [(BKLibraryBookshelfFinishedBookCell *)self _updateTintedImages];
    [(BKLibraryBookshelfFinishedBookCell *)self _updateLibraryAsset];
  }

  [(BKLibraryBookshelfFinishedBookCell *)self updateFinishedState];
  [(BKLibraryBookshelfFinishedBookCell *)self setNeedsLayout];
  v111 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];

  if (v111)
  {
    +[UIView inheritedAnimationDuration];
    v113 = v112;
    v114 = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
    v115 = [v114 coverLayer];
    if (v113 == 0.0)
    {
      libraryAsset = self->_libraryAsset;
      [(BKLibraryBookshelfFinishedBookCell *)self coverArea];
      [v115 setLibraryAsset:libraryAsset size:{v121, v122}];
    }

    else
    {
      [(BKLibraryBookshelfFinishedBookCell *)self coverArea];
      [v115 preloadCoverImageAtSize:{v116, v117}];

      +[UIView inheritedAnimationDuration];
      v119 = dispatch_time(0, (v118 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D0040;
      block[3] = &unk_100A033C8;
      block[4] = self;
      dispatch_after(v119, &_dispatch_main_q, block);
    }

    v123 = [(BKLibraryBookshelfFinishedBookCell *)self coverView];
    v124 = [v123 coverLayer];
    [v124 setAnimateFrameChange:1];

    [(BKLibraryBookshelfFinishedBookCell *)self layoutIfNeeded];
  }
}

- (void)_updateTintedImages
{
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  if (v3)
  {
    v4 = v3;
    v5 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];

    if (v5)
    {
      v6 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
      v7 = [v6 reviewBackgroundName];
      v68 = [UIImage imageNamed:v7];

      if ([(BKLibraryBookshelfFinishedBookCell *)self isRTL])
      {
        v8 = [v68 imageWithHorizontallyFlippedOrientation];

        v68 = v8;
      }

      v9 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [v9 setContentsGravity:kCAGravityResize];

      v10 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v11 = [v10 reviewBGColor];
      v12 = [(BKLibraryBookshelfFinishedBookCell *)self traitCollection];
      v13 = [v68 imageMaskWithColor:v11 forTraitCollection:v12];
      v14 = [v13 CGImage];
      v15 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [v15 setContents:v14];

      v16 = [(BKLibraryBookshelfFinishedBookCell *)self reviewBackground];
      [v16 setContentsCenter:{0.4, 0.4, 0.2, 0.2}];

      v17 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
      v18 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v19 = [v18 moreTintColor];
      v20 = [v17 actionMenuImageWithTintColor:v19];

      v21 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
      v67 = v20;
      [v21 setImage:v20 forState:0];

      v22 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
      v23 = [v22 templateCloudImageForCloudState:1];
      v24 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
      [v24 setImage:v23];

      v25 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v26 = [v25 moreTintColor];
      v27 = [(BKLibraryBookshelfFinishedBookCell *)self cloudView];
      [v27 setTintColor:v26];

      v28 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
      v29 = [v28 selectedCheckmarkImageForSelectedState:{-[BKLibraryBookshelfFinishedBookCell isSelected](self, "isSelected")}];
      v30 = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
      [v30 setImage:v29];

      if ([(BKLibraryBookshelfFinishedBookCell *)self isSelected])
      {
        +[UIColor bc_booksKeyColor];
      }

      else
      {
        +[UIColor bc_booksTertiaryLabelColor];
      }
      v31 = ;
      v32 = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
      [v32 setTintColor:v31];

      v33 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      if ([v33 finishedShortText])
      {
        v34 = @"FINISHED";
      }

      else
      {
        v34 = @"MARK FINISHED";
      }

      v35 = +[NSBundle mainBundle];
      v36 = [v35 localizedStringForKey:v34 value:&stru_100A30A68 table:0];

      v37 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      v38 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v39 = [v38 finishedFontAttributes];
      v40 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v41 = [v40 finishedTextColor];
      v42 = [v39 attributesWithForegroundColor:v41];
      v43 = [TUIFontSpec attributedStringWith:v36 attributes:v42];
      [v37 setAttributedTitle:v43 forState:0];

      v44 = [(BKLibraryBookshelfFinishedBookCell *)self markAsFinishedButton];
      v45 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v46 = [v45 finishedFontAttributes];
      v47 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v48 = [v47 finishedTextHilightColor];
      v49 = [v46 attributesWithForegroundColor:v48];
      v50 = [TUIFontSpec attributedStringWith:v36 attributes:v49];
      [v44 setAttributedTitle:v50 forState:1];

      v51 = +[NSBundle mainBundle];
      v52 = [v51 localizedStringForKey:@"Write a Review" value:&stru_100A30A68 table:0];

      v53 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      v54 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v55 = [v54 writeReviewFontAttributes];
      v56 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v57 = [v56 writeReviewTextColor];
      v58 = [v55 attributesWithForegroundColor:v57];
      v59 = [TUIFontSpec attributedStringWith:v52 attributes:v58];
      [v53 setAttributedTitle:v59 forState:0];

      v60 = [(BKLibraryBookshelfFinishedBookCell *)self writeReviewButton];
      v61 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v62 = [v61 writeReviewFontAttributes];
      v63 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      v64 = [v63 writeReviewTextHilightColor];
      v65 = [v62 attributesWithForegroundColor:v64];
      v66 = [TUIFontSpec attributedStringWith:v52 attributes:v65];
      [v60 setAttributedTitle:v66 forState:1];

      [(BKLibraryBookshelfFinishedBookCell *)self setNeedsLayout];
    }
  }
}

- (void)_cancelDownload:(id)a3
{
  if ([(BKLibraryBookshelfFinishedBookCell *)self isDownloading])
  {
    v6 = [(BKLibraryBookshelfFinishedBookCell *)self actionHandler];
    v4 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
    [v6 bookCancelDownload:v4];
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

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v11.receiver = self;
    v11.super_class = BKLibraryBookshelfFinishedBookCell;
    [(BKLibraryBookshelfFinishedBookCell *)&v11 setSelected:v3];
    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]&& ![(BKLibraryBookshelfFinishedBookCell *)self isSelected])
    {
      v5 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
      [v5 shrinkAlpha];
      [(BKLibraryBookshelfCollectionViewCell *)self setAlpha:?];
    }

    else
    {
      [(BKLibraryBookshelfCollectionViewCell *)self setAlpha:1.0];
    }

    v6 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
    v7 = [v6 selectedCheckmarkImageForSelectedState:v3];
    v8 = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
    [v8 setImage:v7];

    if (v3)
    {
      +[UIColor bc_booksKeyColor];
    }

    else
    {
      +[UIColor bc_booksTertiaryLabelColor];
    }
    v9 = ;
    v10 = [(BKLibraryBookshelfFinishedBookCell *)self checkmarkView];
    [v10 setTintColor:v9];
  }
}

- (CGPath)pathForDateIndicator:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v19 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  [v19 datelineCircleSize];
  v21 = v20;

  v22 = [(BKLibraryBookshelfFinishedBookCell *)self firstItem];
  v23 = [(BKLibraryBookshelfFinishedBookCell *)self lastItem];
  v24 = [(BKLibraryBookshelfFinishedBookCell *)self finishedState];
  [v16 addArcWithCenter:1 radius:0.0 startAngle:MidY endAngle:v21 clockwise:{0.0, 6.28318531}];
  if ((v22 & 1) == 0)
  {
    [v16 moveToPoint:{0.0, 0.0}];
    [v16 addLineToPoint:{0.0, MidY - v21}];
  }

  if ((v23 & 1) == 0)
  {
    [v16 moveToPoint:{0.0, MidY + v21}];
    [v16 addLineToPoint:{0.0, v17}];
  }

  v25 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  v26 = [v25 datelineColor];
  v27 = [v26 CGColor];
  v28 = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
  [v28 setStrokeColor:v27];

  v29 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  v30 = v29;
  if (v24 == 1)
  {
    [v29 datelineCircleHollowColor];
  }

  else
  {
    [v29 datelineCircleFilledColor];
  }
  v31 = ;
  v32 = [v31 CGColor];
  v33 = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
  [v33 setFillColor:v32];

  v34 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
  [v34 datelineWidth];
  v36 = v35;
  v37 = [(BKLibraryBookshelfFinishedBookCell *)self dateIndicator];
  [v37 setLineWidth:v36];

  v38 = [v16 CGPath];
  return v38;
}

- (void)setLibraryAsset:(id)a3
{
  v14 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_10078E110();
  }

  libraryAsset = self->_libraryAsset;
  v6 = v14;
  if (libraryAsset != v14)
  {
    [(BKLibraryAsset *)libraryAsset removeObserver:self forKeyPath:@"isFinished" context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"notFinished" context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"dateFinished" context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"title" context:off_100ACD930];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"author" context:off_100ACD930];
    objc_storeStrong(&self->_libraryAsset, a3);
    v7 = [(BKLibraryBookshelfFinishedBookCell *)self coverLayer];
    v8 = self->_libraryAsset;
    [(BKLibraryBookshelfFinishedBookCell *)self coverArea];
    [v7 setLibraryAsset:v8 size:{v9, v10}];

    if (self->_libraryAsset)
    {
      v11 = +[BKLibraryAssetStatusController sharedController];
      v12 = [(BKLibraryAsset *)self->_libraryAsset permanentOrTemporaryAssetID];
      v13 = [v11 statusForAssetID:v12];
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
    v6 = v14;
  }
}

- (void)setLibraryDownloadStatus:(id)a3
{
  v5 = a3;
  libraryDownloadStatus = self->_libraryDownloadStatus;
  if (libraryDownloadStatus != v5)
  {
    v7 = v5;
    [(BKLibraryDownloadStatus *)libraryDownloadStatus removeObserver:self forKeyPath:@"combinedState" context:off_100ACD920];
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACD928];
    objc_storeStrong(&self->_libraryDownloadStatus, a3);
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus addObserver:self forKeyPath:@"combinedState" options:0 context:off_100ACD920];
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus addObserver:self forKeyPath:@"progressValue" options:0 context:off_100ACD928];
    v5 = v7;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  if (off_100ACD930 == a6)
  {
    v13 = [(BKLibraryBookshelfFinishedBookCell *)self coalescedPropertyChange];
    [v13 signalWithCompletion:&stru_100A06B00];

    goto LABEL_14;
  }

  if (off_100ACD938 == a6)
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

  if (off_100ACD940 == a6)
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

  if (off_100ACD920 == a6)
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

  if (off_100ACD928 == a6)
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
  [(BKLibraryBookshelfFinishedBookCell *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_14:
  objc_destroyWeak(&location);
}

- (void)configureCombinedDate:(id)a3
{
  v26 = a3;
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
  v10 = [v26 dateFinished];
  v11 = [v9 stringFromDate:v10];

  v12 = qword_100AF7568;
  v13 = [v26 dateFinished];
  v14 = [v12 stringFromDate:v13];

  v15 = [v11 isEqualToString:v8];
  if (_os_feature_enabled_impl() && [v26 finishedDateKind] == 2)
  {
    v16 = qword_100AF7578;
    v17 = [v26 dateFinished];
    v18 = [v16 stringFromDate:v17];

    v19 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    [v19 setNumberOfLines:1];

    v20 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    [v20 setText:v18];
    v11 = v18;
  }

  else
  {
    v21 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
    v22 = v21;
    if (v15)
    {
      [v21 setNumberOfLines:1];

      v20 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
      [v20 setText:v14];
    }

    else
    {
      [v21 setNumberOfLines:2];

      v20 = [NSString stringWithFormat:qword_100AF7580, v14, v11];
      v23 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
      [v23 setText:v20];
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

  v25 = [(BKLibraryBookshelfFinishedBookCell *)self combinedDateLabel];
  [v25 setTextAlignment:v24];
}

- (void)_updateLibraryAsset
{
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  if (v3)
  {
    v16 = v3;
    v4 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    v5 = [v4 titleFontAttributes];
    v6 = [v5 attributesWithTruncated:1];

    v7 = [(BKLibraryBookshelfFinishedBookCell *)self titleLabel];
    v8 = [v16 title];
    v9 = [TUIFontSpec attributedStringWith:v8 attributes:v6];
    [v7 setAttributedText:v9];

    v10 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    v11 = [v10 authorFontAttributes];
    v12 = [v11 attributesWithTruncated:1];

    v13 = [(BKLibraryBookshelfFinishedBookCell *)self authorLabel];
    v14 = [v16 displayAuthor];
    v15 = [TUIFontSpec attributedStringWith:v14 attributes:v12];
    [v13 setAttributedText:v15];

    [(BKLibraryBookshelfFinishedBookCell *)self configureCombinedDate:v16];
    [(BKLibraryBookshelfFinishedBookCell *)self updateRatingAndReview];
    [(BKLibraryBookshelfFinishedBookCell *)self setNeedsLayout];

    v3 = v16;
  }
}

- (void)setAssetReview:(id)a3
{
  v6 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_10078E160();
  }

  v5 = v6;
  if (self->_assetReview != v6)
  {
    objc_storeStrong(&self->_assetReview, a3);
    [(BKLibraryBookshelfFinishedBookCell *)self updateRatingAndReview];
    v5 = v6;
  }
}

- (void)updateRatingAndReview
{
  if (!+[NSThread isMainThread])
  {
    sub_10078E19C();
  }

  v3 = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
  v19 = v3;
  if (v3)
  {
    [v3 normalizedStarRating];
    v5 = v4;
    v6 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [v6 setRating:v5];

    v7 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
    v8 = [v19 reviewTitle];
    v9 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    v10 = [v9 reviewTitleFontAttributes];
    v11 = [TUIFontSpec attributedStringWith:v8 attributes:v10];
    [v7 setAttributedText:v11];

    v12 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    v13 = [v19 reviewBody];
    v14 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    v15 = [v14 reviewContentFontAttributes];
    v16 = [TUIFontSpec attributedStringWith:v13 attributes:v15];
    [v12 setAttributedText:v16];
  }

  else
  {
    v17 = [(BKLibraryBookshelfFinishedBookCell *)self starRating];
    [v17 setRating:0.0];

    v18 = [(BKLibraryBookshelfFinishedBookCell *)self reviewTitle];
    [v18 setText:0];

    v12 = [(BKLibraryBookshelfFinishedBookCell *)self reviewComments];
    [v12 setAttributedText:0];
  }

  [(BKLibraryBookshelfFinishedBookCell *)self updateFinishedState];
}

- (void)updateFinishedState
{
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];

  if (v3)
  {
    v4 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
    v5 = [v4 currentStoreAccountID];
    v15 = [v5 stringValue];

    v6 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
    v7 = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
    v8 = [(BKLibraryBookshelfFinishedBookCell *)self storageProvider];
    v9 = [BKLibraryBookshelfFinishedBookCell finishedStateForAsset:v6 assetReview:v7 storeID:v15 storageProvider:v8];

    objc_opt_class();
    v10 = [(BKLibraryBookshelfFinishedBookCell *)self storageProvider];
    v11 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
    v12 = [v11 permanentOrTemporaryAssetID];
    v13 = [v10 retrieveValueForKey:@"kExpandReviewText" forConsumer:v12];
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

- (void)setDataSource:(id)a3
{
  objc_storeWeak(&self->_dataSource, a3);

  [(BKLibraryBookshelfFinishedBookCell *)self _updateTintedImages];
}

- (void)setAudiobookStatus:(id)a3
{
  v5 = a3;
  audiobookStatus = self->_audiobookStatus;
  if (audiobookStatus != v5)
  {
    v9 = v5;
    if (audiobookStatus)
    {
      [(AEAssetAudiobookStatus *)audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACD938];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" context:off_100ACD940];
    }

    objc_storeStrong(&self->_audiobookStatus, a3);
    v7 = self->_audiobookStatus;
    if (v7)
    {
      [(AEAssetAudiobookStatus *)v7 addObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" options:0 context:off_100ACD938];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus addObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" options:0 context:off_100ACD940];
    }

    v8 = [(BKLibraryBookshelfFinishedBookCell *)self finishedMetrics];
    [v8 audiobookControlDiameter];
    [(BKLibraryBookshelfCollectionViewCell *)self updateAudiobookControlWithStatus:v9 diameter:?];

    v5 = v9;
  }
}

- (BOOL)shouldShowCloud
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    return 0;
  }

  v4 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  if ([v4 isCloud])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
    v3 = [v5 isNonLocalSample];
  }

  return v3;
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
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
  if ([v3 isDownloading])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
    v4 = [v5 isDownloadingSupplementalContent];
  }

  return v4;
}

- (void)starRatingDidChange:(id)a3 rating:(double)a4
{
  v6 = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
  [v6 normalizedStarRating];
  v8 = v7;

  if (v8 != a4)
  {
    v24 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
    v9 = [v24 currentStoreAccountID];
    if (v9)
    {
      v10 = v9;
      v11 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
      v12 = [v11 storeID];

      if (!v12)
      {
        return;
      }

      v13 = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
      if (v13)
      {
        v14 = v13;
        v15 = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
        if ([v15 starRating])
        {
          v16 = [(BKLibraryBookshelfFinishedBookCell *)self assetReview];
          v17 = [v16 reviewTitle];
          v18 = [v17 length];

          if (v18)
          {
LABEL_13:
            v22 = [(BKLibraryBookshelfFinishedBookCell *)self actionHandler];
            v23 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_1000D2368;
            v25[3] = &unk_100A038D0;
            v25[4] = self;
            [v22 bookUpdateStarRating:v23 rating:v25 completion:a4];

            return;
          }
        }

        else
        {
        }
      }

      v19 = [(BKLibraryBookshelfFinishedBookCell *)self storageProvider];
      v20 = [(BKLibraryBookshelfFinishedBookCell *)self libraryAsset];
      v21 = [v20 permanentOrTemporaryAssetID];
      [v19 storeValue:&__kCFBooleanTrue forKey:@"kStarRatedThisSession" forConsumer:v21];

      goto LABEL_13;
    }
  }
}

- (void)setupMenuWithLibraryAsset:(id)a3 withActionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  v9 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
  v10 = [v9 collection];
  v19 = [v6 analyticsAssetPropertyProviderForLibraryAsset:v7 fromSourceView:v8 inCollection:v10];

  v11 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  v12 = [v6 tracker];
  [v11 setupAppAnalyticsReportingUsingTracker:v12 withPropertyProvider:v19];

  v13 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  [v13 setShowsMenuAsPrimaryAction:1];

  v14 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  v15 = [(BKLibraryBookshelfFinishedBookCell *)self dataSource];
  v16 = [v15 collection];
  v17 = [v6 menuWithLibraryAsset:v7 sourceView:v14 collection:v16];

  v18 = [(BKLibraryBookshelfFinishedBookCell *)self moreButton];
  [v18 setMenu:v17];
}

- (void)togglePlayPause:(id)a3
{
  v3 = [(BKLibraryBookshelfFinishedBookCell *)self audiobookStatus];
  [v3 assetAudiobookStatusTogglePlayPause];
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