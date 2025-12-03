@interface BKLibraryBookshelfActionBarMetrics
- (void)configureWithSection:(id)section;
@end

@implementation BKLibraryBookshelfActionBarMetrics

- (void)configureWithSection:(id)section
{
  sectionCopy = section;
  v5 = [sectionCopy colorForKey:@"bar-tint-color"];
  [(BKLibraryBookshelfActionBarMetrics *)self setBarTintColor:v5];

  v6 = [sectionCopy colorForKey:@"tint-color"];

  [(BKLibraryBookshelfActionBarMetrics *)self setTintColor:v6];
}

@end