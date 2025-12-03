@interface BKLibraryBookshelfCellMetrics_Finished
- (BKLibraryBookshelfCellMetrics_Finished)init;
- (CGSize)bookCoverSize;
- (void)configureWithSection:(id)section;
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

- (void)configureWithSection:(id)section
{
  v46.receiver = self;
  v46.super_class = BKLibraryBookshelfCellMetrics_Finished;
  sectionCopy = section;
  [(BKLibraryBookshelfCellMetrics *)&v46 configureWithSection:sectionCopy];
  v5 = [sectionCopy colorForKey:{@"dateline-color", v46.receiver, v46.super_class}];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineColor:v5];

  v6 = [sectionCopy colorForKey:@"dateline-circle-hollow-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineCircleHollowColor:v6];

  v7 = [sectionCopy colorForKey:@"dateline-circle-fill-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineCircleFilledColor:v7];

  v8 = [sectionCopy colorForKey:@"finished-fill-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedFillColor:v8];

  v9 = [sectionCopy colorForKey:@"finished-fill-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedFillHilightColor:v9];

  v10 = [sectionCopy colorForKey:@"finished-frame-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedFrameColor:v10];

  v11 = [sectionCopy colorForKey:@"finished-text-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedTextColor:v11];

  v12 = [sectionCopy colorForKey:@"finished-text-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedTextHilightColor:v12];

  v13 = [sectionCopy colorForKey:@"write-review-fill-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewFillColor:v13];

  v14 = [sectionCopy colorForKey:@"write-review-fill-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewFillHilightColor:v14];

  v15 = [sectionCopy colorForKey:@"write-review-frame-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewFrameColor:v15];

  v16 = [sectionCopy colorForKey:@"write-review-text-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewTextColor:v16];

  v17 = [sectionCopy colorForKey:@"write-review-text-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewTextHilightColor:v17];

  v18 = [sectionCopy colorForKey:@"still-reading-fill-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingFillColor:v18];

  v19 = [sectionCopy colorForKey:@"still-reading-fill-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingFillHilightColor:v19];

  v20 = [sectionCopy colorForKey:@"still-reading-frame-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingFrameColor:v20];

  v21 = [sectionCopy colorForKey:@"still-reading-text-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingTextColor:v21];

  v22 = [sectionCopy colorForKey:@"still-reading-text-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingTextHilightColor:v22];

  v23 = [sectionCopy colorForKey:@"more-tint-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setMoreTintColor:v23];

  v24 = [sectionCopy colorForKey:@"review-bg-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewBGColor:v24];

  v25 = [sectionCopy colorForKey:@"rating-frame-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingFrameColor:v25];

  v26 = [sectionCopy colorForKey:@"rating-fill-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingFillColor:v26];

  v27 = [sectionCopy colorForKey:@"rating-empty-color"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingEmptyColor:v27];

  [sectionCopy floatForKey:@"edit-mode-shrink-alpha"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setShrinkAlpha:?];
  [sectionCopy sizeForKey:@"book-cover-size"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setBookCoverSize:?];
  [sectionCopy floatForKey:@"book-cover-left-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setBookCoverLeftMargin:?];
  [sectionCopy floatForKey:@"cell-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setCellSpacing:?];
  [sectionCopy floatForKey:@"cell-height"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setCellHeight:?];
  [sectionCopy floatForKey:@"checkmark-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setCheckMarkSpacing:?];
  [sectionCopy floatForKey:@"cloud-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setCloudSpacing:?];
  [sectionCopy floatForKey:@"dateline-circle-size"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineCircleSize:?];
  [sectionCopy floatForKey:@"dateline-width"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineWidth:?];
  [sectionCopy floatForKey:@"dateline-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDatelineMargin:?];
  [sectionCopy floatForKey:@"date-space"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDateSpace:?];
  [sectionCopy floatForKey:@"lockup-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setLockupMargin:?];
  [sectionCopy floatForKey:@"author-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setAuthorSpacing:?];
  [sectionCopy floatForKey:@"title-max-lines"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setTitleMaxLines:?];
  [sectionCopy floatForKey:@"rating-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingSpacing:?];
  [sectionCopy floatForKey:@"rating-height"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingHeight:?];
  [sectionCopy floatForKey:@"rating-width"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setRatingWidth:?];
  -[BKLibraryBookshelfCellMetrics_Finished setFinishedShortText:](self, "setFinishedShortText:", [sectionCopy BOOLForKey:@"finished-short-text"]);
  [sectionCopy floatForKey:@"finished-frame-width"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedFrameWidth:?];
  [sectionCopy floatForKey:@"finished-title-inset"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedTitleInset:?];
  [sectionCopy floatForKey:@"finished-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedSpacing:?];
  [sectionCopy floatForKey:@"still-reading-frame-width"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingFrameWidth:?];
  [sectionCopy floatForKey:@"still-reading-title-inset"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingTitleInset:?];
  [sectionCopy floatForKey:@"still-reading-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingSpacing:?];
  [sectionCopy floatForKey:@"write-review-frame-width"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewFrameWidth:?];
  [sectionCopy floatForKey:@"write-review-title-inset"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewTitleInset:?];
  [sectionCopy floatForKey:@"write-review--spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewSpacing:?];
  [sectionCopy floatForKey:@"more-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setMoreSpacing:?];
  [sectionCopy floatForKey:@"audiobook-control-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setAudiobookControlMargin:?];
  [sectionCopy floatForKey:@"audiobook-control-diameter"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setAudiobookControlDiameter:?];
  [sectionCopy floatForKey:@"review-compact-lines"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewCompactLines:?];
  [sectionCopy floatForKey:@"review-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewSpacing:?];
  [sectionCopy floatForKey:@"review-left-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewLeftMargin:?];
  [sectionCopy floatForKey:@"review-right-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewRightMargin:?];
  [sectionCopy floatForKey:@"review-top-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewTopMargin:?];
  [sectionCopy floatForKey:@"review-bottom-margin"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewBottomMargin:?];
  -[BKLibraryBookshelfCellMetrics_Finished setReviewBottomLayout:](self, "setReviewBottomLayout:", [sectionCopy BOOLForKey:@"review-bottom-layout"]);
  [sectionCopy floatForKey:@"more-height"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setMoreHeight:?];
  [sectionCopy floatForKey:@"lockup-bottom-spacing"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setLockupBottomSpacing:?];
  [sectionCopy floatForKey:@"small-layout-space-needed"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setSmallLayoutSpaceNeeded:?];
  [sectionCopy floatForKey:@"author-max-lines"];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setAuthorMaxLines:?];
  v28 = [sectionCopy fontSpecForKey:@"dateFont"];
  attributesForAttributedString = [v28 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setDateFontAttributes:attributesForAttributedString];

  v30 = [sectionCopy fontSpecForKey:@"titleFont"];
  attributesForAttributedString2 = [v30 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setTitleFontAttributes:attributesForAttributedString2];

  v32 = [sectionCopy fontSpecForKey:@"authorFont"];
  attributesForAttributedString3 = [v32 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setAuthorFontAttributes:attributesForAttributedString3];

  v34 = [sectionCopy fontSpecForKey:@"reviewTitleFont"];
  v35 = [v34 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewTitleFontAttributes:v35];

  v36 = [sectionCopy fontSpecForKey:@"reviewContentFont"];
  attributesForAttributedString4 = [v36 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewContentFontAttributes:attributesForAttributedString4];

  v38 = [sectionCopy fontSpecForKey:@"reviewMoreFont"];
  attributesForAttributedString5 = [v38 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setReviewMoreFontAttributes:attributesForAttributedString5];

  v40 = [sectionCopy fontSpecForKey:@"finishedFont"];
  attributesForAttributedString6 = [v40 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setFinishedFontAttributes:attributesForAttributedString6];

  v42 = [sectionCopy fontSpecForKey:@"stillReadingFont"];
  attributesForAttributedString7 = [v42 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setStillReadingFontAttributes:attributesForAttributedString7];

  v44 = [sectionCopy fontSpecForKey:@"writeReviewFont"];

  attributesForAttributedString8 = [v44 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Finished *)self setWriteReviewFontAttributes:attributesForAttributedString8];
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