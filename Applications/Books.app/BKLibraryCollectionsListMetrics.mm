@interface BKLibraryCollectionsListMetrics
- (CGSize)collectionIconSize;
- (void)configureWithSection:(id)section;
@end

@implementation BKLibraryCollectionsListMetrics

- (void)configureWithSection:(id)section
{
  sectionCopy = section;
  -[BKLibraryCollectionsListMetrics setDarkAppearance:](self, "setDarkAppearance:", [sectionCopy BOOLForKey:@"dark-appearance"]);
  v5 = [sectionCopy colorForKey:@"popover-background-color"];
  [(BKLibraryCollectionsListMetrics *)self setPopoverBackgroundColor:v5];

  v6 = [sectionCopy colorForKey:@"table-background-color"];
  [(BKLibraryCollectionsListMetrics *)self setTableBackgroundColor:v6];

  v7 = [sectionCopy colorForKey:@"table-separator-color"];
  [(BKLibraryCollectionsListMetrics *)self setTableSeparatorColor:v7];

  v8 = [sectionCopy colorForKey:@"table-cell-selected-background-color"];
  [(BKLibraryCollectionsListMetrics *)self setTableCellSelectedBackgroundColor:v8];

  v9 = [sectionCopy colorForKey:@"delete-action-color"];
  [(BKLibraryCollectionsListMetrics *)self setDeleteActionColor:v9];

  v10 = [sectionCopy colorForKey:@"hide-action-color"];
  [(BKLibraryCollectionsListMetrics *)self setHideActionColor:v10];

  v11 = [sectionCopy stringForKey:@"chevron-name"];
  [(BKLibraryCollectionsListMetrics *)self setChevronName:v11];

  v12 = [sectionCopy fontSpecForKey:@"chevron-font-spec"];
  attributesForAttributedString = [v12 attributesForAttributedString];
  [(BKLibraryCollectionsListMetrics *)self setChevronFontAttributes:attributesForAttributedString];

  [sectionCopy sizeForKey:@"icon-size"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconSize:?];
  [sectionCopy floatForKey:@"glyph-point-size"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionGlyphPointSize:?];
  v14 = [sectionCopy colorForKey:@"icon-color-finished"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_Finished:v14];

  v15 = [sectionCopy colorForKey:@"icon-color-want-to-read"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_WantToRead:v15];

  v16 = [sectionCopy colorForKey:@"icon-color-books"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_Books:v16];

  v17 = [sectionCopy colorForKey:@"icon-color-audiobooks"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_Audiobooks:v17];

  v18 = [sectionCopy colorForKey:@"icon-color-pdfs"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_PDFs:v18];

  v19 = [sectionCopy colorForKey:@"icon-color-downloaded"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_Downloaded:v19];

  v20 = [sectionCopy colorForKey:@"icon-color-user"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_User:v20];

  v21 = [sectionCopy colorForKey:@"icon-color-add"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_Add:v21];

  [sectionCopy floatForKey:@"icon-dimmed-alpha"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconDimmedAlpha:?];
  v22 = [sectionCopy stringForKey:@"icon-name-books"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Books:v22];

  v23 = [sectionCopy stringForKey:@"icon-name-samples"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Samples:v23];

  v24 = [sectionCopy stringForKey:@"icon-name-pdfs"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_PDFs:v24];

  v25 = [sectionCopy stringForKey:@"icon-name-audiobooks"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Audiobooks:v25];

  v26 = [sectionCopy stringForKey:@"icon-name-downloaded"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Downloaded:v26];

  v27 = [sectionCopy stringForKey:@"icon-name-finished"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Finished:v27];

  v28 = [sectionCopy stringForKey:@"icon-name-want-to-read"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_WantToRead:v28];

  v29 = [sectionCopy stringForKey:@"icon-name-user"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_User:v29];

  v30 = [sectionCopy stringForKey:@"icon-name-add"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Add:v30];

  v31 = [sectionCopy fontSpecForKey:@"tableCellNormalText"];
  attributesForAttributedString2 = [v31 attributesForAttributedString];
  [(BKLibraryCollectionsListMetrics *)self setTableCellNormalTextFontAttributes:attributesForAttributedString2];

  v33 = [sectionCopy fontSpecForKey:@"tableCellDimmedText"];
  attributesForAttributedString3 = [v33 attributesForAttributedString];
  [(BKLibraryCollectionsListMetrics *)self setTableCellDimmedTextFontAttributes:attributesForAttributedString3];

  v35 = [sectionCopy fontSpecForKey:@"tableCellDetailNormalText"];
  attributesForAttributedString4 = [v35 attributesForAttributedString];
  [(BKLibraryCollectionsListMetrics *)self setTableCellDetailNormalTextFontAttributes:attributesForAttributedString4];

  v38 = [sectionCopy fontSpecForKey:@"tableCellDetailDimmedText"];

  attributesForAttributedString5 = [v38 attributesForAttributedString];
  [(BKLibraryCollectionsListMetrics *)self setTableCellDetailDimmedTextFontAttributes:attributesForAttributedString5];
}

- (CGSize)collectionIconSize
{
  width = self->_collectionIconSize.width;
  height = self->_collectionIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end