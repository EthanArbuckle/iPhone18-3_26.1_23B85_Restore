@interface BKLibraryBookshelfCellMetrics_Grid
- (BKLibraryBookshelfCellMetrics_Grid)init;
- (CGSize)cellSize;
- (CGSize)smallCellSize;
- (void)configureWithSection:(id)a3;
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

- (void)configureWithSection:(id)a3
{
  v30.receiver = self;
  v30.super_class = BKLibraryBookshelfCellMetrics_Grid;
  v4 = a3;
  [(BKLibraryBookshelfCellMetrics *)&v30 configureWithSection:v4];
  [v4 sizeForKey:{@"cell-size", v30.receiver, v30.super_class}];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setCellSize:?];
  [v4 sizeForKey:@"small-cell-size"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSmallCellSize:?];
  [v4 floatForKey:@"cell-aspect"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setCellAspect:?];
  [v4 floatForKey:@"cell-dim-alpha"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setDimmedAlpha:?];
  [v4 floatForKey:@"cell-dim-scale"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setDimmedScale:?];
  [v4 floatForKey:@"info-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBarSpacing:?];
  [v4 floatForKey:@"info-height"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBarHeight:?];
  [v4 floatForKey:@"section-row-limit"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSectionItemRowLimit:v5];
  v6 = [v4 colorForKey:@"new-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setUnreadBadgeColor:v6];

  v7 = [v4 colorForKey:@"next-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNextBadgeColor:v7];

  v8 = [v4 colorForKey:@"proof-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setProofBadgeColor:v8];

  v9 = [v4 colorForKey:@"preorderable-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setPreOrderableBadgeColor:v9];

  v10 = [v4 colorForKey:@"preordered-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setPreOrderedBadgeColor:v10];

  v11 = [v4 colorForKey:@"sample-badge-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSampleBadgeColor:v11];

  v12 = [v4 colorForKey:@"price-color"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setPriceColor:v12];

  [v4 floatForKey:@"info-dots-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setDotsSpacing:?];
  [v4 floatForKey:@"info-cloud-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setCloudSpacing:?];
  [v4 floatForKey:@"info-audio-badge-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setAudioBadgeSpacing:?];
  [v4 floatForKey:@"info-badge-endcap"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setBadgeEndCapWidth:?];
  [v4 floatForKey:@"info-date-height"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBarExpectedDateHeight:?];
  [v4 floatForKey:@"info-date-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBarDateSpacing:?];
  [v4 floatForKey:@"drag-alpha"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setDragAlpha:?];
  [v4 floatForKey:@"audiobook-control-margin"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setAudiobookControlMargin:?];
  [v4 floatForKey:@"audiobook-control-diameter"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setAudiobookControlDiameter:?];
  [v4 floatForKey:@"sequence-label-top-margin"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSeriesSequenceLabelTopMargin:?];
  [v4 floatForKey:@"sequence-label-bottom-margin"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSeriesSequenceLabelBottomMargin:?];
  [v4 floatForKey:@"now-playing-inter-level-spacing"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingInterLevelSpacing:?];
  [v4 floatForKey:@"now-playinglevelcornerradius"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingLevelCornerRadius:?];
  [v4 floatForKey:@"now-playing-level-width"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingLevelWidth:?];
  [v4 floatForKey:@"now-playing-maximum-level-height"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingMaximumLevelHeight:?];
  [v4 floatForKey:@"now-playing-minimum-level-height"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingMinimumLevelHeight:?];
  [v4 floatForKey:@"now-playing-number-of-levels"];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setNowPlayingNumberOfLevels:v13];
  v14 = [v4 fontSpecForKey:@"timeRemainingLabel"];
  v15 = [v14 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setTimeRemainingFontAttributes:v15];

  v16 = [v4 fontSpecForKey:@"infoBadge"];
  v17 = [v16 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBadgeFontAttributes:v17];

  v18 = [v4 fontSpecForKey:@"infoDate"];
  v19 = [v18 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setExpectedDateFontAttributes:v19];

  v20 = [(BKLibraryBookshelfCellMetrics_Grid *)self expectedDateFontAttributes];
  v21 = [v20 font];

  [v21 bk_heightFromCapLineToDescender];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setInfoBarExpectedDateHeight:?];

  v22 = [v4 fontSpecForKey:@"smallTitleFont"];
  v23 = [v22 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSmallTitleFontAttributes:v23];

  -[BKLibraryBookshelfCellMetrics_Grid setNumOfLinesSmallTitle:](self, "setNumOfLinesSmallTitle:", [v4 integerForKey:@"number-of-lines-small-title"]);
  v24 = [v4 fontSpecForKey:@"sequenceDisplayLabel"];
  v25 = [v24 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSeriesSequenceLabelFontAttributes:v25];

  v26 = [(BKLibraryBookshelfCellMetrics_Grid *)self seriesSequenceLabelFontAttributes];
  v27 = [v26 font];

  [v27 capHeight];
  [(BKLibraryBookshelfCellMetrics_Grid *)self setSeriesSequenceLabelHeight:?];

  [v4 floatForKey:@"small-title-top-margin"];
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