@interface BKLibraryBookshelfCellMetrics_Finished
- (BKLibraryBookshelfCellMetrics_Finished)init;
- (CGSize)bookCoverSize;
- (void)configureWithSection:(id)a3;
@end

@implementation BKLibraryBookshelfCellMetrics_Finished

- (BKLibraryBookshelfCellMetrics_Finished)init
{
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfCellMetrics_Finished;
  v2 = [(BKLibraryBookshelfCellMetrics_Finished *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BKLibraryBookshelfCellMetrics *)v2 setCellType:2];
  }

  return v3;
}

- (void)configureWithSection:(id)a3
{
  v46.receiver = self;
  v46.super_class = BKLibraryBookshelfCellMetrics_Finished;
  v4 = a3;
  [(BKLibraryBookshelfCellMetrics *)&v46 configureWithSection:v4];
  v5 = [v4 colorForKey:{@"dateline-color", v46.receiver, v46.super_class}];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineColor:v5];

  v6 = [v4 colorForKey:@"dateline-circle-hollow-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineCircleHollowColor:v6];

  v7 = [v4 colorForKey:@"dateline-circle-fill-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineCircleFilledColor:v7];

  v8 = [v4 colorForKey:@"finished-fill-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedFillColor:v8];

  v9 = [v4 colorForKey:@"finished-fill-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedFillHilightColor:v9];

  v10 = [v4 colorForKey:@"finished-frame-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedFrameColor:v10];

  v11 = [v4 colorForKey:@"finished-text-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedTextColor:v11];

  v12 = [v4 colorForKey:@"finished-text-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedTextHilightColor:v12];

  v13 = [v4 colorForKey:@"write-review-fill-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewFillColor:v13];

  v14 = [v4 colorForKey:@"write-review-fill-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewFillHilightColor:v14];

  v15 = [v4 colorForKey:@"write-review-frame-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewFrameColor:v15];

  v16 = [v4 colorForKey:@"write-review-text-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewTextColor:v16];

  v17 = [v4 colorForKey:@"write-review-text-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewTextHilightColor:v17];

  v18 = [v4 colorForKey:@"still-reading-fill-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingFillColor:v18];

  v19 = [v4 colorForKey:@"still-reading-fill-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingFillHilightColor:v19];

  v20 = [v4 colorForKey:@"still-reading-frame-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingFrameColor:v20];

  v21 = [v4 colorForKey:@"still-reading-text-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingTextColor:v21];

  v22 = [v4 colorForKey:@"still-reading-text-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingTextHilightColor:v22];

  v23 = [v4 colorForKey:@"more-tint-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setMoreTintColor:v23];

  v24 = [v4 colorForKey:@"review-bg-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewBGColor:v24];

  v25 = [v4 colorForKey:@"rating-frame-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingFrameColor:v25];

  v26 = [v4 colorForKey:@"rating-fill-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingFillColor:v26];

  v27 = [v4 colorForKey:@"rating-empty-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingEmptyColor:v27];

  [v4 floatForKey:@"edit-mode-shrink-alpha"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setShrinkAlpha:?];
  [v4 sizeForKey:@"book-cover-size"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setBookCoverSize:?];
  [v4 floatForKey:@"book-cover-left-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setBookCoverLeftMargin:?];
  [v4 floatForKey:@"cell-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setCellSpacing:?];
  [v4 floatForKey:@"cell-height"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setCellHeight:?];
  [v4 floatForKey:@"checkmark-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setCheckMarkSpacing:?];
  [v4 floatForKey:@"cloud-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setCloudSpacing:?];
  [v4 floatForKey:@"dateline-circle-size"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineCircleSize:?];
  [v4 floatForKey:@"dateline-width"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineWidth:?];
  [v4 floatForKey:@"dateline-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineMargin:?];
  [v4 floatForKey:@"date-space"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDateSpace:?];
  [v4 floatForKey:@"lockup-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setLockupMargin:?];
  [v4 floatForKey:@"author-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setAuthorSpacing:?];
  [v4 floatForKey:@"title-max-lines"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setTitleMaxLines:?];
  [v4 floatForKey:@"rating-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingSpacing:?];
  [v4 floatForKey:@"rating-height"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingHeight:?];
  [v4 floatForKey:@"rating-width"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingWidth:?];
  -[BKLibraryBookshelfCellMetrics_Finished setFinishedShortText:](self, "setFinishedShortText:", [v4 BOOLForKey:@"finished-short-text"]);
  [v4 floatForKey:@"finished-frame-width"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedFrameWidth:?];
  [v4 floatForKey:@"finished-title-inset"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedTitleInset:?];
  [v4 floatForKey:@"finished-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedSpacing:?];
  [v4 floatForKey:@"still-reading-frame-width"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingFrameWidth:?];
  [v4 floatForKey:@"still-reading-title-inset"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingTitleInset:?];
  [v4 floatForKey:@"still-reading-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingSpacing:?];
  [v4 floatForKey:@"write-review-frame-width"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewFrameWidth:?];
  [v4 floatForKey:@"write-review-title-inset"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewTitleInset:?];
  [v4 floatForKey:@"write-review--spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewSpacing:?];
  [v4 floatForKey:@"more-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setMoreSpacing:?];
  [v4 floatForKey:@"audiobook-control-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setAudiobookControlMargin:?];
  [v4 floatForKey:@"audiobook-control-diameter"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setAudiobookControlDiameter:?];
  [v4 floatForKey:@"review-compact-lines"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewCompactLines:?];
  [v4 floatForKey:@"review-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewSpacing:?];
  [v4 floatForKey:@"review-left-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewLeftMargin:?];
  [v4 floatForKey:@"review-right-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewRightMargin:?];
  [v4 floatForKey:@"review-top-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewTopMargin:?];
  [v4 floatForKey:@"review-bottom-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewBottomMargin:?];
  -[BKLibraryBookshelfCellMetrics_Finished setReviewBottomLayout:](self, "setReviewBottomLayout:", [v4 BOOLForKey:@"review-bottom-layout"]);
  [v4 floatForKey:@"more-height"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setMoreHeight:?];
  [v4 floatForKey:@"lockup-bottom-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setLockupBottomSpacing:?];
  [v4 floatForKey:@"small-layout-space-needed"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setSmallLayoutSpaceNeeded:?];
  [v4 floatForKey:@"author-max-lines"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setAuthorMaxLines:?];
  v28 = [v4 fontSpecForKey:@"dateFont"];
  v29 = [v28 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDateFontAttributes:v29];

  v30 = [v4 fontSpecForKey:@"titleFont"];
  v31 = [v30 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setTitleFontAttributes:v31];

  v32 = [v4 fontSpecForKey:@"authorFont"];
  v33 = [v32 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setAuthorFontAttributes:v33];

  v34 = [v4 fontSpecForKey:@"reviewTitleFont"];
  v35 = [v34 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewTitleFontAttributes:v35];

  v36 = [v4 fontSpecForKey:@"reviewContentFont"];
  v37 = [v36 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewContentFontAttributes:v37];

  v38 = [v4 fontSpecForKey:@"reviewMoreFont"];
  v39 = [v38 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewMoreFontAttributes:v39];

  v40 = [v4 fontSpecForKey:@"finishedFont"];
  v41 = [v40 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedFontAttributes:v41];

  v42 = [v4 fontSpecForKey:@"stillReadingFont"];
  v43 = [v42 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingFontAttributes:v43];

  v44 = [v4 fontSpecForKey:@"writeReviewFont"];

  v45 = [v44 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewFontAttributes:v45];
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