@interface BKLibraryCollectionsListMetrics
- (CGSize)collectionIconSize;
- (void)configureWithSection:(id)a3;
@end

@implementation BKLibraryCollectionsListMetrics

- (void)configureWithSection:(id)a3
{
  v4 = a3;
  -[BKLibraryCollectionsListMetrics setDarkAppearance:](self, "setDarkAppearance:", [v4 BOOLForKey:@"dark-appearance"]);
  v5 = [v4 colorForKey:@"popover-background-color"];
  [(BKLibraryCollectionsListMetrics *)self setPopoverBackgroundColor:v5];

  v6 = [v4 colorForKey:@"table-background-color"];
  [(BKLibraryCollectionsListMetrics *)self setTableBackgroundColor:v6];

  v7 = [v4 colorForKey:@"table-separator-color"];
  [(BKLibraryCollectionsListMetrics *)self setTableSeparatorColor:v7];

  v8 = [v4 colorForKey:@"table-cell-selected-background-color"];
  [(BKLibraryCollectionsListMetrics *)self setTableCellSelectedBackgroundColor:v8];

  v9 = [v4 colorForKey:@"delete-action-color"];
  [(BKLibraryCollectionsListMetrics *)self setDeleteActionColor:v9];

  v10 = [v4 colorForKey:@"hide-action-color"];
  [(BKLibraryCollectionsListMetrics *)self setHideActionColor:v10];

  v11 = [v4 stringForKey:@"chevron-name"];
  [(BKLibraryCollectionsListMetrics *)self setChevronName:v11];

  v12 = [v4 fontSpecForKey:@"chevron-font-spec"];
  v13 = [v12 attributesForAttributedString];
  [(BKLibraryCollectionsListMetrics *)self setChevronFontAttributes:v13];

  [v4 sizeForKey:@"icon-size"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconSize:?];
  [v4 floatForKey:@"glyph-point-size"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionGlyphPointSize:?];
  v14 = [v4 colorForKey:@"icon-color-finished"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_Finished:v14];

  v15 = [v4 colorForKey:@"icon-color-want-to-read"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_WantToRead:v15];

  v16 = [v4 colorForKey:@"icon-color-books"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_Books:v16];

  v17 = [v4 colorForKey:@"icon-color-audiobooks"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_Audiobooks:v17];

  v18 = [v4 colorForKey:@"icon-color-pdfs"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_PDFs:v18];

  v19 = [v4 colorForKey:@"icon-color-downloaded"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_Downloaded:v19];

  v20 = [v4 colorForKey:@"icon-color-user"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_User:v20];

  v21 = [v4 colorForKey:@"icon-color-add"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconColor_Add:v21];

  [v4 floatForKey:@"icon-dimmed-alpha"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconDimmedAlpha:?];
  v22 = [v4 stringForKey:@"icon-name-books"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Books:v22];

  v23 = [v4 stringForKey:@"icon-name-samples"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Samples:v23];

  v24 = [v4 stringForKey:@"icon-name-pdfs"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_PDFs:v24];

  v25 = [v4 stringForKey:@"icon-name-audiobooks"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Audiobooks:v25];

  v26 = [v4 stringForKey:@"icon-name-downloaded"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Downloaded:v26];

  v27 = [v4 stringForKey:@"icon-name-finished"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Finished:v27];

  v28 = [v4 stringForKey:@"icon-name-want-to-read"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_WantToRead:v28];

  v29 = [v4 stringForKey:@"icon-name-user"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_User:v29];

  v30 = [v4 stringForKey:@"icon-name-add"];
  [(BKLibraryCollectionsListMetrics *)self setCollectionIconName_Add:v30];

  v31 = [v4 fontSpecForKey:@"tableCellNormalText"];
  v32 = [v31 attributesForAttributedString];
  [(BKLibraryCollectionsListMetrics *)self setTableCellNormalTextFontAttributes:v32];

  v33 = [v4 fontSpecForKey:@"tableCellDimmedText"];
  v34 = [v33 attributesForAttributedString];
  [(BKLibraryCollectionsListMetrics *)self setTableCellDimmedTextFontAttributes:v34];

  v35 = [v4 fontSpecForKey:@"tableCellDetailNormalText"];
  v36 = [v35 attributesForAttributedString];
  [(BKLibraryCollectionsListMetrics *)self setTableCellDetailNormalTextFontAttributes:v36];

  v38 = [v4 fontSpecForKey:@"tableCellDetailDimmedText"];

  v37 = [v38 attributesForAttributedString];
  [(BKLibraryCollectionsListMetrics *)self setTableCellDetailDimmedTextFontAttributes:v37];
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