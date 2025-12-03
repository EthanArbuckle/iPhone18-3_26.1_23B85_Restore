@interface BKLibraryBookshelfBookHeaderMetrics
- (NSString)description;
- (void)configureWithSection:(id)section;
@end

@implementation BKLibraryBookshelfBookHeaderMetrics

- (void)configureWithSection:(id)section
{
  sectionCopy = section;
  [sectionCopy floatForKey:@"top-margin"];
  [(BKLibraryBookshelfBookHeaderMetrics *)self setTopMargin:?];
  [sectionCopy floatForKey:@"bottom-margin"];
  [(BKLibraryBookshelfBookHeaderMetrics *)self setBottomMargin:?];
  [sectionCopy floatForKey:@"section-header-height"];
  [(BKLibraryBookshelfBookHeaderMetrics *)self setSectionHeaderHeight:?];
  v5 = [sectionCopy fontSpecForKey:@"header"];
  v6 = [v5 attributesForAttributedStringCentered:0 truncated:1];
  [(BKLibraryBookshelfBookHeaderMetrics *)self setHeaderFontAttributes:v6];

  v8 = [sectionCopy fontSpecForKey:@"largeHeader"];

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