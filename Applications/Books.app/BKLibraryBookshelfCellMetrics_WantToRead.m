@interface BKLibraryBookshelfCellMetrics_WantToRead
- (BKLibraryBookshelfCellMetrics_WantToRead)init;
- (CGSize)bookCoverSize;
- (void)configureWithSection:(id)a3;
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

- (void)configureWithSection:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = BKLibraryBookshelfCellMetrics_WantToRead;
  [(BKLibraryBookshelfCellMetrics *)&v51 configureWithSection:v4];
  v5 = [v4 colorForKey:@"readBuy-fill-color"];
  if (v5)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFillColor:v5];
  }

  else
  {
    v6 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFillColor:v6];
  }

  v7 = [v4 colorForKey:@"readBuy-fill-hilight-color"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFillHilightColor:v7];

  v8 = [v4 colorForKey:@"readBuy-fill-hilight-color"];
  if (v8)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFillHilightColor:v8];
  }

  else
  {
    v9 = +[UIColor whiteColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFillHilightColor:v9];
  }

  v10 = [v4 colorForKey:@"readBuy-frame-color"];
  if (v10)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFrameColor:v10];
  }

  else
  {
    v11 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFrameColor:v11];
  }

  v12 = [v4 colorForKey:@"readBuy-text-color"];
  if (v12)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTextColor:v12];
  }

  else
  {
    v13 = +[UIColor whiteColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTextColor:v13];
  }

  v14 = [v4 colorForKey:@"readBuy-text-hilight-color"];
  if (v14)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTextHilightColor:v14];
  }

  else
  {
    v15 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTextHilightColor:v15];
  }

  v16 = [v4 colorForKey:@"readBuy-store-fill-color"];
  if (v16)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFillColor:v16];
  }

  else
  {
    v17 = +[UIColor whiteColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFillColor:v17];
  }

  v18 = [v4 colorForKey:@"readBuy-store-fill-hilight-color"];
  if (v18)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFillHilightColor:v18];
  }

  else
  {
    v19 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFillHilightColor:v19];
  }

  v20 = [v4 colorForKey:@"readBuy-store-frame-color"];
  if (v20)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFrameColor:v20];
  }

  else
  {
    v21 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFrameColor:v21];
  }

  v22 = [v4 colorForKey:@"readBuy-store-text-color"];
  if (v22)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextColor:v22];
  }

  else
  {
    v23 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextColor:v23];
  }

  v24 = [v4 colorForKey:@"readBuy-store-text-hilight-color"];
  if (v24)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextHilightColor:v24];
  }

  else
  {
    v25 = +[UIColor whiteColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextHilightColor:v25];
  }

  v26 = [v4 colorForKey:@"readBuy-store-disabled-color"];
  if (v26)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextDisabledColor:v26];
  }

  else
  {
    v27 = +[UIColor grayColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreTextDisabledColor:v27];
  }

  v28 = [v4 colorForKey:@"buy-button-background-color"];
  if (v28)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setBuyStateBackgroundFillColor:v28];
  }

  else
  {
    v29 = +[UIColor whiteColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setBuyStateBackgroundFillColor:v29];
  }

  v30 = [v4 colorForKey:@"more-tint-color"];
  if (v30)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setMoreTintColor:v30];
  }

  else
  {
    v31 = +[UIColor grayColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setMoreTintColor:v31];
  }

  v32 = [v4 colorForKey:@"rating-frame-color"];
  if (v32)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingFrameColor:v32];
  }

  else
  {
    v33 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingFrameColor:v33];
  }

  v34 = [v4 colorForKey:@"rating-fill-color"];
  if (v34)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingFillColor:v34];
  }

  else
  {
    v35 = +[UIColor blackColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingFillColor:v35];
  }

  v36 = [v4 colorForKey:@"rating-empty-color"];
  if (v36)
  {
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingEmptyColor:v36];
  }

  else
  {
    v37 = +[UIColor grayColor];
    [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingEmptyColor:v37];
  }

  [v4 sizeForKey:@"book-cover-size"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setBookCoverSize:?];
  [v4 floatForKey:@"book-cover-left-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setBookCoverLeftMargin:?];
  [v4 floatForKey:@"cell-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setCellSpacing:?];
  -[BKLibraryBookshelfCellMetrics_WantToRead setStackedLayout:](self, "setStackedLayout:", [v4 BOOLForKey:@"stacked-layout"]);
  [v4 floatForKey:@"cell-height"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setCellHeight:?];
  [v4 floatForKey:@"checkmark-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setCheckMarkSpacing:?];
  [v4 floatForKey:@"cloud-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setCloudSpacing:?];
  [v4 floatForKey:@"lockup-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setLockupMargin:?];
  [v4 floatForKey:@"edit-mode-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setEditModeMargin:?];
  [v4 floatForKey:@"drag-handle-horizontal-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDragHandleHorizontalSpacing:?];
  [v4 floatForKey:@"title-vertical-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setTitleSpacing:?];
  [v4 floatForKey:@"author-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setAuthorSpacing:?];
  [v4 floatForKey:@"title-max-lines"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setTitleMaxLines:?];
  [v4 floatForKey:@"rating-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingSpacing:?];
  [v4 floatForKey:@"rating-height"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingHeight:?];
  [v4 floatForKey:@"rating-width"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingWidth:?];
  [v4 floatForKey:@"rating-count-width"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingCountWidth:?];
  [v4 floatForKey:@"rating-horizontal-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setRatingHorizontalSpacing:?];
  [v4 floatForKey:@"readBuy-frame-width"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFrameWidth:?];
  [v4 floatForKey:@"readBuy-title-inset"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTitleInset:?];
  [v4 floatForKey:@"readBuy-leading-edge-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyLeadingEdgeSpacing:?];
  [v4 floatForKey:@"readBuy-trailing-edge-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyTrailingEdgeSpacing:?];
  [v4 floatForKey:@"readBuy-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuySpacing:?];
  [v4 floatForKey:@"stacked-button-horizontal-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setStackedButtonHorizontalSpacing:?];
  [v4 floatForKey:@"more-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setMoreSpacing:?];
  [v4 floatForKey:@"description-spacing"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionSpacing:?];
  [v4 floatForKey:@"description-left-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionLeftMargin:?];
  [v4 floatForKey:@"description-right-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionRightMargin:?];
  [v4 floatForKey:@"description-top-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionTopMargin:?];
  [v4 floatForKey:@"description-bottom-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionBottomMargin:?];
  -[BKLibraryBookshelfCellMetrics_WantToRead setDescriptionVisibleRows:](self, "setDescriptionVisibleRows:", [v4 integerForKey:@"description-visible-rows"]);
  [v4 floatForKey:@"more-height"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setMoreHeight:?];
  -[BKLibraryBookshelfCellMetrics_WantToRead setShrinkInEditMode:](self, "setShrinkInEditMode:", [v4 BOOLForKey:@"edit-mode-shrink"]);
  [v4 floatForKey:@"edit-mode-shrink-amount"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setShrinkAmount:?];
  [v4 floatForKey:@"edit-mode-shrink-alpha"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setShrinkAlpha:?];
  [v4 floatForKey:@"edit-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setEditMargin:?];
  v38 = [v4 colorForKey:@"cell-separator-color"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setCellSeparatorColor:v38];

  [v4 floatForKey:@"drag-corner-radius"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDragCornerRadius:?];
  [v4 floatForKey:@"drag-shadow-opacity"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDragShadowOpacity:?];
  [v4 floatForKey:@"drag-shadow-radius"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDragShadowRadius:?];
  [v4 floatForKey:@"audiobook-control-margin"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setAudiobookControlMargin:?];
  [v4 floatForKey:@"audiobook-control-diameter"];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setAudiobookControlDiameter:?];
  v39 = [v4 fontSpecForKey:@"titleFont"];
  v40 = [v39 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setTitleFontAttributes:v40];

  v41 = [v4 fontSpecForKey:@"authorFont"];
  v42 = [v41 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setAuthorFontAttributes:v42];

  v43 = [v4 fontSpecForKey:@"descriptionFont"];
  v44 = [v43 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setDescriptionFontAttributes:v44];

  v45 = [v4 fontSpecForKey:@"readBuyFont"];
  v46 = [v45 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyFontAttributes:v46];

  v47 = [v4 fontSpecForKey:@"readBuyStoreFont"];
  v48 = [v47 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setReadBuyStoreFontAttributes:v48];

  v49 = [v4 fontSpecForKey:@"starRatingCountFont"];
  v50 = [v49 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_WantToRead *)self setStarRatingCountFontAttributes:v50];
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