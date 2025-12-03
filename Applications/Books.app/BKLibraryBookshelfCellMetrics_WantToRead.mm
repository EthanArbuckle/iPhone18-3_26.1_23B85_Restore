@interface BKLibraryBookshelfCellMetrics_WantToRead
- (BKLibraryBookshelfCellMetrics_WantToRead)init;
- (CGSize)bookCoverSize;
- (void)configureWithSection:(id)section;
@end

@implementation BKLibraryBookshelfCellMetrics_WantToRead

- (BKLibraryBookshelfCellMetrics_WantToRead)init
{
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfCellMetrics_WantToRead;
  v2 = [(BKLibraryBookshelfCellMetrics_WantToRead *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BKLibraryBookshelfCellMetrics *)v2 setCellType:3];
  }

  return v3;
}

- (void)configureWithSection:(id)section
{
  sectionCopy = section;
  v51.receiver = self;
  v51.super_class = BKLibraryBookshelfCellMetrics_WantToRead;
  [(BKLibraryBookshelfCellMetrics *)&v51 configureWithSection:sectionCopy];
  v5 = [sectionCopy colorForKey:@"readBuy-fill-color"];
  if (v5)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFillColor:v5];
  }

  else
  {
    v6 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFillColor:v6];
  }

  v7 = [sectionCopy colorForKey:@"readBuy-fill-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFillHilightColor:v7];

  v8 = [sectionCopy colorForKey:@"readBuy-fill-hilight-color"];
  if (v8)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFillHilightColor:v8];
  }

  else
  {
    v9 = +[UIColor whiteColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFillHilightColor:v9];
  }

  v10 = [sectionCopy colorForKey:@"readBuy-frame-color"];
  if (v10)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFrameColor:v10];
  }

  else
  {
    v11 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFrameColor:v11];
  }

  v12 = [sectionCopy colorForKey:@"readBuy-text-color"];
  if (v12)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTextColor:v12];
  }

  else
  {
    v13 = +[UIColor whiteColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTextColor:v13];
  }

  v14 = [sectionCopy colorForKey:@"readBuy-text-hilight-color"];
  if (v14)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTextHilightColor:v14];
  }

  else
  {
    v15 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTextHilightColor:v15];
  }

  v16 = [sectionCopy colorForKey:@"readBuy-store-fill-color"];
  if (v16)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFillColor:v16];
  }

  else
  {
    v17 = +[UIColor whiteColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFillColor:v17];
  }

  v18 = [sectionCopy colorForKey:@"readBuy-store-fill-hilight-color"];
  if (v18)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFillHilightColor:v18];
  }

  else
  {
    v19 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFillHilightColor:v19];
  }

  v20 = [sectionCopy colorForKey:@"readBuy-store-frame-color"];
  if (v20)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFrameColor:v20];
  }

  else
  {
    v21 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFrameColor:v21];
  }

  v22 = [sectionCopy colorForKey:@"readBuy-store-text-color"];
  if (v22)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextColor:v22];
  }

  else
  {
    v23 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextColor:v23];
  }

  v24 = [sectionCopy colorForKey:@"readBuy-store-text-hilight-color"];
  if (v24)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextHilightColor:v24];
  }

  else
  {
    v25 = +[UIColor whiteColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextHilightColor:v25];
  }

  v26 = [sectionCopy colorForKey:@"readBuy-store-disabled-color"];
  if (v26)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextDisabledColor:v26];
  }

  else
  {
    v27 = +[UIColor grayColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextDisabledColor:v27];
  }

  v28 = [sectionCopy colorForKey:@"buy-button-background-color"];
  if (v28)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setBuyStateBackgroundFillColor:v28];
  }

  else
  {
    v29 = +[UIColor whiteColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setBuyStateBackgroundFillColor:v29];
  }

  v30 = [sectionCopy colorForKey:@"more-tint-color"];
  if (v30)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setMoreTintColor:v30];
  }

  else
  {
    v31 = +[UIColor grayColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setMoreTintColor:v31];
  }

  v32 = [sectionCopy colorForKey:@"rating-frame-color"];
  if (v32)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingFrameColor:v32];
  }

  else
  {
    v33 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingFrameColor:v33];
  }

  v34 = [sectionCopy colorForKey:@"rating-fill-color"];
  if (v34)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingFillColor:v34];
  }

  else
  {
    v35 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingFillColor:v35];
  }

  v36 = [sectionCopy colorForKey:@"rating-empty-color"];
  if (v36)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingEmptyColor:v36];
  }

  else
  {
    v37 = +[UIColor grayColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingEmptyColor:v37];
  }

  [sectionCopy sizeForKey:@"book-cover-size"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setBookCoverSize:?];
  [sectionCopy floatForKey:@"book-cover-left-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setBookCoverLeftMargin:?];
  [sectionCopy floatForKey:@"cell-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setCellSpacing:?];
  -[BKLibraryBookshelfCellMetrics_WantToRead setStackedLayout:](self, "setStackedLayout:", [sectionCopy BOOLForKey:@"stacked-layout"]);
  [sectionCopy floatForKey:@"cell-height"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setCellHeight:?];
  [sectionCopy floatForKey:@"checkmark-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setCheckMarkSpacing:?];
  [sectionCopy floatForKey:@"cloud-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setCloudSpacing:?];
  [sectionCopy floatForKey:@"lockup-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setLockupMargin:?];
  [sectionCopy floatForKey:@"edit-mode-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setEditModeMargin:?];
  [sectionCopy floatForKey:@"drag-handle-horizontal-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDragHandleHorizontalSpacing:?];
  [sectionCopy floatForKey:@"title-vertical-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setTitleSpacing:?];
  [sectionCopy floatForKey:@"author-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setAuthorSpacing:?];
  [sectionCopy floatForKey:@"title-max-lines"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setTitleMaxLines:?];
  [sectionCopy floatForKey:@"rating-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingSpacing:?];
  [sectionCopy floatForKey:@"rating-height"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingHeight:?];
  [sectionCopy floatForKey:@"rating-width"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingWidth:?];
  [sectionCopy floatForKey:@"rating-count-width"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingCountWidth:?];
  [sectionCopy floatForKey:@"rating-horizontal-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingHorizontalSpacing:?];
  [sectionCopy floatForKey:@"readBuy-frame-width"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFrameWidth:?];
  [sectionCopy floatForKey:@"readBuy-title-inset"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTitleInset:?];
  [sectionCopy floatForKey:@"readBuy-leading-edge-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyLeadingEdgeSpacing:?];
  [sectionCopy floatForKey:@"readBuy-trailing-edge-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTrailingEdgeSpacing:?];
  [sectionCopy floatForKey:@"readBuy-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuySpacing:?];
  [sectionCopy floatForKey:@"stacked-button-horizontal-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setStackedButtonHorizontalSpacing:?];
  [sectionCopy floatForKey:@"more-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setMoreSpacing:?];
  [sectionCopy floatForKey:@"description-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionSpacing:?];
  [sectionCopy floatForKey:@"description-left-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionLeftMargin:?];
  [sectionCopy floatForKey:@"description-right-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionRightMargin:?];
  [sectionCopy floatForKey:@"description-top-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionTopMargin:?];
  [sectionCopy floatForKey:@"description-bottom-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionBottomMargin:?];
  -[BKLibraryBookshelfCellMetrics_WantToRead setDescriptionVisibleRows:](self, "setDescriptionVisibleRows:", [sectionCopy integerForKey:@"description-visible-rows"]);
  [sectionCopy floatForKey:@"more-height"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setMoreHeight:?];
  -[BKLibraryBookshelfCellMetrics_WantToRead setShrinkInEditMode:](self, "setShrinkInEditMode:", [sectionCopy BOOLForKey:@"edit-mode-shrink"]);
  [sectionCopy floatForKey:@"edit-mode-shrink-amount"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setShrinkAmount:?];
  [sectionCopy floatForKey:@"edit-mode-shrink-alpha"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setShrinkAlpha:?];
  [sectionCopy floatForKey:@"edit-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setEditMargin:?];
  v38 = [sectionCopy colorForKey:@"cell-separator-color"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setCellSeparatorColor:v38];

  [sectionCopy floatForKey:@"drag-corner-radius"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDragCornerRadius:?];
  [sectionCopy floatForKey:@"drag-shadow-opacity"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDragShadowOpacity:?];
  [sectionCopy floatForKey:@"drag-shadow-radius"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDragShadowRadius:?];
  [sectionCopy floatForKey:@"audiobook-control-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setAudiobookControlMargin:?];
  [sectionCopy floatForKey:@"audiobook-control-diameter"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setAudiobookControlDiameter:?];
  v39 = [sectionCopy fontSpecForKey:@"titleFont"];
  v40 = [v39 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setTitleFontAttributes:v40];

  v41 = [sectionCopy fontSpecForKey:@"authorFont"];
  v42 = [v41 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setAuthorFontAttributes:v42];

  v43 = [sectionCopy fontSpecForKey:@"descriptionFont"];
  attributesForAttributedString = [v43 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionFontAttributes:attributesForAttributedString];

  v45 = [sectionCopy fontSpecForKey:@"readBuyFont"];
  attributesForAttributedString2 = [v45 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFontAttributes:attributesForAttributedString2];

  v47 = [sectionCopy fontSpecForKey:@"readBuyStoreFont"];
  attributesForAttributedString3 = [v47 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFontAttributes:attributesForAttributedString3];

  v49 = [sectionCopy fontSpecForKey:@"starRatingCountFont"];
  attributesForAttributedString4 = [v49 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setStarRatingCountFontAttributes:attributesForAttributedString4];
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