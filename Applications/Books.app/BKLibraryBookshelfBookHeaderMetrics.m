@interface BKLibraryBookshelfBookHeaderMetrics
- (NSString)description;
- (void)configureWithSection:(id)a3;
@end

@implementation BKLibraryBookshelfBookHeaderMetrics

- (void)configureWithSection:(id)a3
{
  v4 = a3;
  [v4 floatForKey:@"top-margin"];
  [(BKLibraryBookshelfBookHeaderMetrics *)self setTopMargin:?];
  [v4 floatForKey:@"bottom-margin"];
  [(BKLibraryBookshelfBookHeaderMetrics *)self setBottomMargin:?];
  [v4 floatForKey:@"section-header-height"];
  [(BKLibraryBookshelfBookHeaderMetrics *)self setSectionHeaderHeight:?];
  v5 = [v4 fontSpecForKey:@"header"];
  v6 = [v5 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfBookHeaderMetrics *)self setHeaderFontAttributes:v6];

  v8 = [v4 fontSpecForKey:@"largeHeader"];

  v7 = [v8 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfBookHeaderMetrics *)self setLargeHeaderFontAttributes:v7];
}

- (NSString)description
{
  [(BKLibraryBookshelfBookHeaderMetrics *)self topMargin];
  v4 = v3;
  [(BKLibraryBookshelfBookHeaderMetrics *)self bottomMargin];
  return [NSString stringWithFormat:@"BKLibraryBookshelfBookHeaderMetrics: topMargin: %f, bottomMargin: %f", v4, v5];
}

@end