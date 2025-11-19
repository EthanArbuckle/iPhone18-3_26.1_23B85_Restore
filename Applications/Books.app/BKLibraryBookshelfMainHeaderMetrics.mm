@interface BKLibraryBookshelfMainHeaderMetrics
- (CGPoint)separatorLinePosition;
- (NSString)description;
- (void)configureWithSection:(id)a3;
@end

@implementation BKLibraryBookshelfMainHeaderMetrics

- (void)configureWithSection:(id)a3
{
  v4 = a3;
  [v4 floatForKey:@"title-details-top-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleDetailsTopMargin:?];
  [v4 floatForKey:@"title-details-bottom-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleDetailsBottomMargin:?];
  [v4 floatForKey:@"title-details-lines"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleDetailsMaxLines:?];
  [v4 floatForKey:@"footer-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setFooterMargin:?];
  [v4 sizeForKey:@"separator-position"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSeparatorLinePosition:?];
  v5 = [v4 colorForKey:@"separator-color"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSeparatorLineColor:v5];

  [v4 floatForKey:@"reading-list-position"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListButtonPosition:?];
  [v4 floatForKey:@"reading-list-padding"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListPadding:?];
  [v4 floatForKey:@"reading-list-height"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListHeight:?];
  [v4 floatForKey:@"reading-list-image-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListImageSpacing:?];
  v6 = [v4 colorForKey:@"reading-list-background-color"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingBackgroundColor:v6];

  v7 = [v4 colorForKey:@"header-background-color"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setHeaderBackgroundColor:v7];

  v8 = [v4 colorForKey:@"reading-list-highlight-color"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListHighlightColor:v8];

  v9 = [v4 colorForKey:@"grid-button-tint-color-on"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setGridButtonTintColorOn:v9];

  v10 = [v4 colorForKey:@"grid-button-tint-color-off"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setGridButtonTintColorOff:v10];

  v11 = [v4 colorForKey:@"grid-button-background-color-on"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setGridButtonBackgroundColorOn:v11];

  v12 = [v4 colorForKey:@"grid-button-background-color-off"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setGridButtonBackgroundColorOff:v12];

  [v4 floatForKey:@"nobooks-top-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setNoBooksDescriptionTopMargin:?];
  [v4 floatForKey:@"nobooks-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setNoBooksDescriptionSpacing:?];
  [v4 floatForKey:@"nobooks-description-width"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setNoBooksDescriptionWidth:?];
  [v4 floatForKey:@"sort-header-height"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortHeaderHeight:?];
  [v4 floatForKey:@"info-header-vertical-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setCollectionInfoHeaderVerticalMargin:?];
  [v4 floatForKey:@"sort-button-arrow-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortButtonArrowMargin:?];
  [v4 floatForKey:@"sort-button-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortButtonSpacing:?];
  [v4 floatForKey:@"sort-title-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortTitleSpacing:?];
  [v4 floatForKey:@"cloud-button-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setCloudButtonSpacing:?];
  -[BKLibraryBookshelfMainHeaderMetrics setSortHeaderStacked:](self, "setSortHeaderStacked:", [v4 BOOLForKey:@"sort-header-stacked"]);
  v13 = [v4 stringForKey:@"reading-list-icon-name"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setIconName:v13];

  v14 = [v4 fontSpecForKey:@"reading-list-icon-font-spec"];
  v15 = [v14 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setIconFontAttributes:v15];

  v16 = [v4 stringForKey:@"reading-list-chevron-name"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setChevronName:v16];

  v17 = [v4 fontSpecForKey:@"reading-list-chevron-font-spec"];
  v18 = [v17 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setChevronFontAttributes:v18];

  [v4 floatForKey:@"reading-list-chevron-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setChevronSpacing:?];
  v19 = [v4 colorForKey:@"icloud-button-color"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudButtonColor:v19];

  [v4 floatForKey:@"icloud-button-text-inset"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudButtonInset:?];
  v20 = [v4 fontSpecForKey:@"infoLabel"];
  v21 = [v20 attributesForAttributedStringCentered:1 truncated:1];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setCollectionInfoLabelFontAttributes:v21];

  v22 = [v4 fontSpecForKey:@"cloudButton"];
  v23 = [v22 attributesForAttributedStringCentered:1 truncated:1];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setCloudButtonFontAttributes:v23];

  v24 = [v4 fontSpecForKey:@"title"];
  v25 = [v24 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleFontAttributes:v25];

  v26 = [v4 fontSpecForKey:@"largeTitle"];
  v27 = [v26 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setLargeTitleFontAttributes:v27];

  v28 = [v4 fontSpecForKey:@"titleDetails"];
  v29 = [v28 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleDetailsFontAttributes:v29];

  v30 = [v4 fontSpecForKey:@"titleDetailsPlaceholder"];
  v31 = [v30 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleDetailsPlaceholderFontAttributes:v31];

  v32 = [v4 fontSpecForKey:@"alternateTitleDetails"];
  v33 = [v32 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setAlternateTitleDetailsFontAttributes:v33];

  v34 = [v4 fontSpecForKey:@"footer"];
  v35 = [v34 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setFooterFontAttributes:v35];

  v36 = [v4 fontSpecForKey:@"readingList"];
  v37 = [v36 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListButtonFontAttributes:v37];

  v38 = [v4 fontSpecForKey:@"collectionsLabel"];
  v39 = [v38 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setCollectionsLabelFontAttributes:v39];

  v40 = [v4 fontSpecForKey:@"editButton"];
  v41 = [v40 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setEditButtonFontAttributes:v41];

  v42 = [v4 fontSpecForKey:@"noBooksDescriptionHeader"];
  v43 = [v42 attributesForAttributedStringCentered:1 truncated:1];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setNoBooksDescriptionHeaderFontAttributes:v43];

  v44 = [v4 fontSpecForKey:@"noBooksDescription"];
  v45 = [v44 attributesForAttributedStringCentered:1 truncated:0];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setNoBooksDescriptionFontAttributes:v45];

  v46 = [v4 fontSpecForKey:@"sortLabel"];
  v47 = [v46 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortLabelFontAttributes:v47];

  v48 = [v4 fontSpecForKey:@"sortPopup"];
  v49 = [v48 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortPopupFontAttributes:v49];

  v50 = [v4 fontSpecForKey:@"iCloudButton"];
  v51 = [v50 attributesForAttributedStringCentered:1 truncated:0];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudButtonFontAttributes:v51];

  v52 = [v4 fontSpecForKey:@"iCloudDescription"];
  v53 = [v52 attributesForAttributedStringCentered:1 truncated:0];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudDescriptionFontAttributes:v53];

  v54 = [v4 fontSpecForKey:@"iCloudBookStatus"];
  v55 = [v54 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudBookStatusFontAttributes:v55];

  v57 = [v4 fontSpecForKey:@"iCloudBookTitle"];

  v56 = [v57 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudBookTitleFontAttributes:v56];
}

- (NSString)description
{
  [(BKLibraryBookshelfMainHeaderMetrics *)self separatorLinePosition];
  v4 = v3;
  [(BKLibraryBookshelfMainHeaderMetrics *)self separatorLinePosition];
  return [NSString stringWithFormat:@"BKLibraryBookshelfMainHeaderMetrics: separatorLinePosition: %f, %f", v4, v5];
}

- (CGPoint)separatorLinePosition
{
  x = self->_separatorLinePosition.x;
  y = self->_separatorLinePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end