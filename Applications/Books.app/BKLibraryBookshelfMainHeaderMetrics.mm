@interface BKLibraryBookshelfMainHeaderMetrics
- (CGPoint)separatorLinePosition;
- (NSString)description;
- (void)configureWithSection:(id)section;
@end

@implementation BKLibraryBookshelfMainHeaderMetrics

- (void)configureWithSection:(id)section
{
  sectionCopy = section;
  [sectionCopy floatForKey:@"title-details-top-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleDetailsTopMargin:?];
  [sectionCopy floatForKey:@"title-details-bottom-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleDetailsBottomMargin:?];
  [sectionCopy floatForKey:@"title-details-lines"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleDetailsMaxLines:?];
  [sectionCopy floatForKey:@"footer-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setFooterMargin:?];
  [sectionCopy sizeForKey:@"separator-position"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSeparatorLinePosition:?];
  v5 = [sectionCopy colorForKey:@"separator-color"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSeparatorLineColor:v5];

  [sectionCopy floatForKey:@"reading-list-position"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListButtonPosition:?];
  [sectionCopy floatForKey:@"reading-list-padding"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListPadding:?];
  [sectionCopy floatForKey:@"reading-list-height"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListHeight:?];
  [sectionCopy floatForKey:@"reading-list-image-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListImageSpacing:?];
  v6 = [sectionCopy colorForKey:@"reading-list-background-color"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingBackgroundColor:v6];

  v7 = [sectionCopy colorForKey:@"header-background-color"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setHeaderBackgroundColor:v7];

  v8 = [sectionCopy colorForKey:@"reading-list-highlight-color"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListHighlightColor:v8];

  v9 = [sectionCopy colorForKey:@"grid-button-tint-color-on"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setGridButtonTintColorOn:v9];

  v10 = [sectionCopy colorForKey:@"grid-button-tint-color-off"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setGridButtonTintColorOff:v10];

  v11 = [sectionCopy colorForKey:@"grid-button-background-color-on"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setGridButtonBackgroundColorOn:v11];

  v12 = [sectionCopy colorForKey:@"grid-button-background-color-off"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setGridButtonBackgroundColorOff:v12];

  [sectionCopy floatForKey:@"nobooks-top-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setNoBooksDescriptionTopMargin:?];
  [sectionCopy floatForKey:@"nobooks-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setNoBooksDescriptionSpacing:?];
  [sectionCopy floatForKey:@"nobooks-description-width"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setNoBooksDescriptionWidth:?];
  [sectionCopy floatForKey:@"sort-header-height"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortHeaderHeight:?];
  [sectionCopy floatForKey:@"info-header-vertical-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setCollectionInfoHeaderVerticalMargin:?];
  [sectionCopy floatForKey:@"sort-button-arrow-margin"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortButtonArrowMargin:?];
  [sectionCopy floatForKey:@"sort-button-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortButtonSpacing:?];
  [sectionCopy floatForKey:@"sort-title-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortTitleSpacing:?];
  [sectionCopy floatForKey:@"cloud-button-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setCloudButtonSpacing:?];
  -[BKLibraryBookshelfMainHeaderMetrics setSortHeaderStacked:](self, "setSortHeaderStacked:", [sectionCopy BOOLForKey:@"sort-header-stacked"]);
  v13 = [sectionCopy stringForKey:@"reading-list-icon-name"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setIconName:v13];

  v14 = [sectionCopy fontSpecForKey:@"reading-list-icon-font-spec"];
  attributesForAttributedString = [v14 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setIconFontAttributes:attributesForAttributedString];

  v16 = [sectionCopy stringForKey:@"reading-list-chevron-name"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setChevronName:v16];

  v17 = [sectionCopy fontSpecForKey:@"reading-list-chevron-font-spec"];
  attributesForAttributedString2 = [v17 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setChevronFontAttributes:attributesForAttributedString2];

  [sectionCopy floatForKey:@"reading-list-chevron-spacing"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setChevronSpacing:?];
  v19 = [sectionCopy colorForKey:@"icloud-button-color"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudButtonColor:v19];

  [sectionCopy floatForKey:@"icloud-button-text-inset"];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudButtonInset:?];
  v20 = [sectionCopy fontSpecForKey:@"infoLabel"];
  v21 = [v20 attributesForAttributedStringCentered:1 truncated:1];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setCollectionInfoLabelFontAttributes:v21];

  v22 = [sectionCopy fontSpecForKey:@"cloudButton"];
  v23 = [v22 attributesForAttributedStringCentered:1 truncated:1];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setCloudButtonFontAttributes:v23];

  v24 = [sectionCopy fontSpecForKey:@"title"];
  attributesForAttributedString3 = [v24 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleFontAttributes:attributesForAttributedString3];

  v26 = [sectionCopy fontSpecForKey:@"largeTitle"];
  attributesForAttributedString4 = [v26 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setLargeTitleFontAttributes:attributesForAttributedString4];

  v28 = [sectionCopy fontSpecForKey:@"titleDetails"];
  attributesForAttributedString5 = [v28 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleDetailsFontAttributes:attributesForAttributedString5];

  v30 = [sectionCopy fontSpecForKey:@"titleDetailsPlaceholder"];
  attributesForAttributedString6 = [v30 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setTitleDetailsPlaceholderFontAttributes:attributesForAttributedString6];

  v32 = [sectionCopy fontSpecForKey:@"alternateTitleDetails"];
  attributesForAttributedString7 = [v32 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setAlternateTitleDetailsFontAttributes:attributesForAttributedString7];

  v34 = [sectionCopy fontSpecForKey:@"footer"];
  attributesForAttributedString8 = [v34 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setFooterFontAttributes:attributesForAttributedString8];

  v36 = [sectionCopy fontSpecForKey:@"readingList"];
  attributesForAttributedString9 = [v36 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setReadingListButtonFontAttributes:attributesForAttributedString9];

  v38 = [sectionCopy fontSpecForKey:@"collectionsLabel"];
  attributesForAttributedString10 = [v38 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setCollectionsLabelFontAttributes:attributesForAttributedString10];

  v40 = [sectionCopy fontSpecForKey:@"editButton"];
  attributesForAttributedString11 = [v40 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setEditButtonFontAttributes:attributesForAttributedString11];

  v42 = [sectionCopy fontSpecForKey:@"noBooksDescriptionHeader"];
  v43 = [v42 attributesForAttributedStringCentered:1 truncated:1];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setNoBooksDescriptionHeaderFontAttributes:v43];

  v44 = [sectionCopy fontSpecForKey:@"noBooksDescription"];
  v45 = [v44 attributesForAttributedStringCentered:1 truncated:0];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setNoBooksDescriptionFontAttributes:v45];

  v46 = [sectionCopy fontSpecForKey:@"sortLabel"];
  attributesForAttributedString12 = [v46 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortLabelFontAttributes:attributesForAttributedString12];

  v48 = [sectionCopy fontSpecForKey:@"sortPopup"];
  v49 = [v48 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setSortPopupFontAttributes:v49];

  v50 = [sectionCopy fontSpecForKey:@"iCloudButton"];
  v51 = [v50 attributesForAttributedStringCentered:1 truncated:0];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudButtonFontAttributes:v51];

  v52 = [sectionCopy fontSpecForKey:@"iCloudDescription"];
  v53 = [v52 attributesForAttributedStringCentered:1 truncated:0];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudDescriptionFontAttributes:v53];

  v54 = [sectionCopy fontSpecForKey:@"iCloudBookStatus"];
  attributesForAttributedString13 = [v54 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudBookStatusFontAttributes:attributesForAttributedString13];

  v57 = [sectionCopy fontSpecForKey:@"iCloudBookTitle"];

  attributesForAttributedString14 = [v57 attributesForAttributedString];
  [(BKLibraryBookshelfMainHeaderMetrics *)self setICloudBookTitleFontAttributes:attributesForAttributedString14];
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