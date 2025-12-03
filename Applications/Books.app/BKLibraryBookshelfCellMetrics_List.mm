@interface BKLibraryBookshelfCellMetrics_List
- (BKLibraryBookshelfCellMetrics_List)init;
- (CGSize)coverSize;
- (CGSize)smallCoverSize;
- (UIEdgeInsets)coverMargins;
- (UIEdgeInsets)smallCoverMargins;
- (void)configureWithSection:(id)section;
@end

@implementation BKLibraryBookshelfCellMetrics_List

- (BKLibraryBookshelfCellMetrics_List)init
{
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfCellMetrics_List;
  v2 = [(BKLibraryBookshelfCellMetrics_Grid *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BKLibraryBookshelfCellMetrics *)v2 setCellType:1];
  }

  return v3;
}

- (void)configureWithSection:(id)section
{
  v13.receiver = self;
  v13.super_class = BKLibraryBookshelfCellMetrics_List;
  sectionCopy = section;
  [(BKLibraryBookshelfCellMetrics_Grid *)&v13 configureWithSection:sectionCopy];
  [sectionCopy floatForKey:{@"cell-height", v13.receiver, v13.super_class}];
  [(BKLibraryBookshelfCellMetrics_List *)self setCellHeight:?];
  [sectionCopy floatForKey:@"small-cell-height"];
  [(BKLibraryBookshelfCellMetrics_List *)self setSmallCellHeight:?];
  [sectionCopy sizeForKey:@"cover-size"];
  [(BKLibraryBookshelfCellMetrics_List *)self setCoverSize:?];
  [sectionCopy sizeForKey:@"small-cover-size"];
  [(BKLibraryBookshelfCellMetrics_List *)self setSmallCoverSize:?];
  [sectionCopy insetsForKey:@"cover-margins"];
  [(BKLibraryBookshelfCellMetrics_List *)self setCoverMargins:?];
  [sectionCopy insetsForKey:@"small-cover-margins"];
  [(BKLibraryBookshelfCellMetrics_List *)self setSmallCoverMargins:?];
  [sectionCopy floatForKey:@"title-spacing"];
  [(BKLibraryBookshelfCellMetrics_List *)self setTitleSpacing:?];
  [sectionCopy floatForKey:@"author-spacing"];
  [(BKLibraryBookshelfCellMetrics_List *)self setAuthorSpacing:?];
  [sectionCopy floatForKey:@"edit-margin"];
  [(BKLibraryBookshelfCellMetrics_List *)self setEditModeMargin:?];
  v5 = [sectionCopy colorForKey:@"sep-color"];
  [(BKLibraryBookshelfCellMetrics_List *)self setSeparatorColor:v5];

  v6 = [sectionCopy colorForKey:@"drag-bar-color"];
  [(BKLibraryBookshelfCellMetrics_List *)self setDragBarTintColor:v6];

  -[BKLibraryBookshelfCellMetrics_List setShrinkInEditMode:](self, "setShrinkInEditMode:", [sectionCopy BOOLForKey:@"edit-mode-shrink"]);
  [sectionCopy floatForKey:@"edit-mode-shrink-amount"];
  [(BKLibraryBookshelfCellMetrics_List *)self setShrinkAmount:?];
  [sectionCopy floatForKey:@"edit-mode-shrink-alpha"];
  [(BKLibraryBookshelfCellMetrics_List *)self setShrinkAlpha:?];
  [sectionCopy floatForKey:@"drag-corner-radius"];
  [(BKLibraryBookshelfCellMetrics_List *)self setDragCornerRadius:?];
  [sectionCopy floatForKey:@"drag-shadow-opacity"];
  [(BKLibraryBookshelfCellMetrics_List *)self setDragShadowOpacity:?];
  [sectionCopy floatForKey:@"drag-shadow-radius"];
  [(BKLibraryBookshelfCellMetrics_List *)self setDragShadowRadius:?];
  [sectionCopy floatForKey:@"audiobook-control-diameter"];
  [(BKLibraryBookshelfCellMetrics_List *)self setAudiobookControlDiameter:?];
  [sectionCopy floatForKey:@"font-scale"];
  [(BKLibraryBookshelfCellMetrics_List *)self setFontScale:?];
  v7 = [sectionCopy fontSpecForKey:@"titleFont"];
  [(BKLibraryBookshelfCellMetrics_List *)self fontScale];
  v8 = [v7 fontSpecWithScale:?];
  attributesForAttributedString = [v8 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_List *)self setTitleFontAttributes:attributesForAttributedString];

  v10 = [sectionCopy fontSpecForKey:@"authorFont"];

  [(BKLibraryBookshelfCellMetrics_List *)self fontScale];
  v11 = [v10 fontSpecWithScale:?];
  attributesForAttributedString2 = [v11 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_List *)self setAuthorFontAttributes:attributesForAttributedString2];
}

- (CGSize)coverSize
{
  width = self->_coverSize.width;
  height = self->_coverSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)smallCoverSize
{
  width = self->_smallCoverSize.width;
  height = self->_smallCoverSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)coverMargins
{
  top = self->_coverMargins.top;
  left = self->_coverMargins.left;
  bottom = self->_coverMargins.bottom;
  right = self->_coverMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)smallCoverMargins
{
  top = self->_smallCoverMargins.top;
  left = self->_smallCoverMargins.left;
  bottom = self->_smallCoverMargins.bottom;
  right = self->_smallCoverMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end