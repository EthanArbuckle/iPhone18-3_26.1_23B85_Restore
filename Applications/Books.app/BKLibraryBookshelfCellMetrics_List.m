@interface BKLibraryBookshelfCellMetrics_List
- (BKLibraryBookshelfCellMetrics_List)init;
- (CGSize)coverSize;
- (CGSize)smallCoverSize;
- (UIEdgeInsets)coverMargins;
- (UIEdgeInsets)smallCoverMargins;
- (void)configureWithSection:(id)a3;
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

- (void)configureWithSection:(id)a3
{
  v13.receiver = self;
  v13.super_class = BKLibraryBookshelfCellMetrics_List;
  v4 = a3;
  [(BKLibraryBookshelfCellMetrics_Grid *)&v13 configureWithSection:v4];
  [v4 floatForKey:{@"cell-height", v13.receiver, v13.super_class}];
  [(BKLibraryBookshelfCellMetrics_List *)self setCellHeight:?];
  [v4 floatForKey:@"small-cell-height"];
  [(BKLibraryBookshelfCellMetrics_List *)self setSmallCellHeight:?];
  [v4 sizeForKey:@"cover-size"];
  [(BKLibraryBookshelfCellMetrics_List *)self setCoverSize:?];
  [v4 sizeForKey:@"small-cover-size"];
  [(BKLibraryBookshelfCellMetrics_List *)self setSmallCoverSize:?];
  [v4 insetsForKey:@"cover-margins"];
  [(BKLibraryBookshelfCellMetrics_List *)self setCoverMargins:?];
  [v4 insetsForKey:@"small-cover-margins"];
  [(BKLibraryBookshelfCellMetrics_List *)self setSmallCoverMargins:?];
  [v4 floatForKey:@"title-spacing"];
  [(BKLibraryBookshelfCellMetrics_List *)self setTitleSpacing:?];
  [v4 floatForKey:@"author-spacing"];
  [(BKLibraryBookshelfCellMetrics_List *)self setAuthorSpacing:?];
  [v4 floatForKey:@"edit-margin"];
  [(BKLibraryBookshelfCellMetrics_List *)self setEditModeMargin:?];
  v5 = [v4 colorForKey:@"sep-color"];
  [(BKLibraryBookshelfCellMetrics_List *)self setSeparatorColor:v5];

  v6 = [v4 colorForKey:@"drag-bar-color"];
  [(BKLibraryBookshelfCellMetrics_List *)self setDragBarTintColor:v6];

  -[BKLibraryBookshelfCellMetrics_List setShrinkInEditMode:](self, "setShrinkInEditMode:", [v4 BOOLForKey:@"edit-mode-shrink"]);
  [v4 floatForKey:@"edit-mode-shrink-amount"];
  [(BKLibraryBookshelfCellMetrics_List *)self setShrinkAmount:?];
  [v4 floatForKey:@"edit-mode-shrink-alpha"];
  [(BKLibraryBookshelfCellMetrics_List *)self setShrinkAlpha:?];
  [v4 floatForKey:@"drag-corner-radius"];
  [(BKLibraryBookshelfCellMetrics_List *)self setDragCornerRadius:?];
  [v4 floatForKey:@"drag-shadow-opacity"];
  [(BKLibraryBookshelfCellMetrics_List *)self setDragShadowOpacity:?];
  [v4 floatForKey:@"drag-shadow-radius"];
  [(BKLibraryBookshelfCellMetrics_List *)self setDragShadowRadius:?];
  [v4 floatForKey:@"audiobook-control-diameter"];
  [(BKLibraryBookshelfCellMetrics_List *)self setAudiobookControlDiameter:?];
  [v4 floatForKey:@"font-scale"];
  [(BKLibraryBookshelfCellMetrics_List *)self setFontScale:?];
  v7 = [v4 fontSpecForKey:@"titleFont"];
  [(BKLibraryBookshelfCellMetrics_List *)self fontScale];
  v8 = [v7 fontSpecWithScale:?];
  v9 = [v8 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_List *)self setTitleFontAttributes:v9];

  v10 = [v4 fontSpecForKey:@"authorFont"];

  [(BKLibraryBookshelfCellMetrics_List *)self fontScale];
  v11 = [v10 fontSpecWithScale:?];
  v12 = [v11 attributesForAttributedString];
  [(BKLibraryBookshelfCellMetrics_List *)self setAuthorFontAttributes:v12];
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