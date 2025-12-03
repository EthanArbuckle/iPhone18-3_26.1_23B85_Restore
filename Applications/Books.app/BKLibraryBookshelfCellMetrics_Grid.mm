@interface BKLibraryBookshelfCellMetrics_Grid
- (BKLibraryBookshelfCellMetrics_Grid)init;
- (CGSize)cellSize;
- (CGSize)smallCellSize;
- (void)configureWithSection:(id)section;
@end

@implementation BKLibraryBookshelfCellMetrics_Grid

- (BKLibraryBookshelfCellMetrics_Grid)init
{
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfCellMetrics_Grid;
  v2 = [(BKLibraryBookshelfCellMetrics_Grid *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BKLibraryBookshelfCellMetrics *)v2 setCellType:0];
  }

  return v3;
}

- (void)configureWithSection:(id)section
{
  v30.receiver = self;
  v30.super_class = BKLibraryBookshelfCellMetrics_Grid;
  sectionCopy = section;
  [(BKLibraryBookshelfCellMetrics *)&v30 configureWithSection:sectionCopy];
  [sectionCopy sizeForKey:{@"cell-size", v30.receiver, v30.super_class}];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setCellSize:?];
  [sectionCopy sizeForKey:@"small-cell-size"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSmallCellSize:?];
  [sectionCopy floatForKey:@"cell-aspect"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setCellAspect:?];
  [sectionCopy floatForKey:@"cell-dim-alpha"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setDimmedAlpha:?];
  [sectionCopy floatForKey:@"cell-dim-scale"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setDimmedScale:?];
  [sectionCopy floatForKey:@"info-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBarSpacing:?];
  [sectionCopy floatForKey:@"info-height"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBarHeight:?];
  [sectionCopy floatForKey:@"section-row-limit"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSectionItemRowLimit:v5];
  v6 = [sectionCopy colorForKey:@"new-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setUnreadBadgeColor:v6];

  v7 = [sectionCopy colorForKey:@"next-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNextBadgeColor:v7];

  v8 = [sectionCopy colorForKey:@"proof-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setProofBadgeColor:v8];

  v9 = [sectionCopy colorForKey:@"preorderable-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setPreOrderableBadgeColor:v9];

  v10 = [sectionCopy colorForKey:@"preordered-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setPreOrderedBadgeColor:v10];

  v11 = [sectionCopy colorForKey:@"sample-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSampleBadgeColor:v11];

  v12 = [sectionCopy colorForKey:@"price-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setPriceColor:v12];

  [sectionCopy floatForKey:@"info-dots-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setDotsSpacing:?];
  [sectionCopy floatForKey:@"info-cloud-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setCloudSpacing:?];
  [sectionCopy floatForKey:@"info-audio-badge-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setAudioBadgeSpacing:?];
  [sectionCopy floatForKey:@"info-badge-endcap"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setBadgeEndCapWidth:?];
  [sectionCopy floatForKey:@"info-date-height"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBarExpectedDateHeight:?];
  [sectionCopy floatForKey:@"info-date-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBarDateSpacing:?];
  [sectionCopy floatForKey:@"drag-alpha"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setDragAlpha:?];
  [sectionCopy floatForKey:@"audiobook-control-margin"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setAudiobookControlMargin:?];
  [sectionCopy floatForKey:@"audiobook-control-diameter"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setAudiobookControlDiameter:?];
  [sectionCopy floatForKey:@"sequence-label-top-margin"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSeriesSequenceLabelTopMargin:?];
  [sectionCopy floatForKey:@"sequence-label-bottom-margin"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSeriesSequenceLabelBottomMargin:?];
  [sectionCopy floatForKey:@"now-playing-inter-level-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingInterLevelSpacing:?];
  [sectionCopy floatForKey:@"now-playinglevelcornerradius"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingLevelCornerRadius:?];
  [sectionCopy floatForKey:@"now-playing-level-width"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingLevelWidth:?];
  [sectionCopy floatForKey:@"now-playing-maximum-level-height"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingMaximumLevelHeight:?];
  [sectionCopy floatForKey:@"now-playing-minimum-level-height"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingMinimumLevelHeight:?];
  [sectionCopy floatForKey:@"now-playing-number-of-levels"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingNumberOfLevels:v13];
  v14 = [sectionCopy fontSpecForKey:@"timeRemainingLabel"];
  attributesForAttributedString = [v14 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setTimeRemainingFontAttributes:attributesForAttributedString];

  v16 = [sectionCopy fontSpecForKey:@"infoBadge"];
  attributesForAttributedString2 = [v16 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBadgeFontAttributes:attributesForAttributedString2];

  v18 = [sectionCopy fontSpecForKey:@"infoDate"];
  v19 = [v18 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setExpectedDateFontAttributes:v19];

  expectedDateFontAttributes = [(BKLibraryBookshelfCellMetrics_Grid *)self expectedDateFontAttributes];
  font = [expectedDateFontAttributes font];

  [font bk_heightFromCapLineToDescender];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBarExpectedDateHeight:?];

  v22 = [sectionCopy fontSpecForKey:@"smallTitleFont"];
  v23 = [v22 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSmallTitleFontAttributes:v23];

  -[BKLibraryBookshelfCellMetrics_Grid setNumOfLinesSmallTitle:](self, "setNumOfLinesSmallTitle:", [sectionCopy integerForKey:@"number-of-lines-small-title"]);
  v24 = [sectionCopy fontSpecForKey:@"sequenceDisplayLabel"];
  attributesForAttributedString3 = [v24 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSeriesSequenceLabelFontAttributes:attributesForAttributedString3];

  seriesSequenceLabelFontAttributes = [(BKLibraryBookshelfCellMetrics_Grid *)self seriesSequenceLabelFontAttributes];
  font2 = [seriesSequenceLabelFontAttributes font];

  [font2 capHeight];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSeriesSequenceLabelHeight:?];

  [sectionCopy floatForKey:@"small-title-top-margin"];
  v29 = v28;

  [(BKLibraryBookshelfCellMetrics_Grid *)self setSmallTitleTopMargin:v29];
}

- (CGSize)cellSize
{
  width = self->_cellSize.width;
  height = self->_cellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)smallCellSize
{
  width = self->_smallCellSize.width;
  height = self->_smallCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end