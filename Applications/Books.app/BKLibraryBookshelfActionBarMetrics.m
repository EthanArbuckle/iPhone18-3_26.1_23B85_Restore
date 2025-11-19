@interface BKLibraryBookshelfActionBarMetrics
- (void)configureWithSection:(id)a3;
@end

@implementation BKLibraryBookshelfActionBarMetrics

- (void)configureWithSection:(id)a3
{
  v4 = a3;
  v5 = [v4 colorForKey:@"bar-tint-color"];
  [(BKLibraryBookshelfActionBarMetrics *)self setBarTintColor:v5];

  v6 = [v4 colorForKey:@"tint-color"];

  [(BKLibraryBookshelfActionBarMetrics *)self setTintColor:v6];
}

@end