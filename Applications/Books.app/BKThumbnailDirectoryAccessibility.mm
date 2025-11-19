@interface BKThumbnailDirectoryAccessibility
- (void)configureCell:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation BKThumbnailDirectoryAccessibility

- (void)configureCell:(id)a3 atIndex:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = BKThumbnailDirectoryAccessibility;
  v5 = a3;
  [(BKThumbnailDirectoryAccessibility *)&v10 configureCell:v5 atIndex:a4];
  v6 = sub_1000765EC(@"page.num %@");
  v7 = [NSNumber numberWithInteger:a4 + 1];
  v8 = [NSNumberFormatter imaxLocalizedNumber:v7];
  v9 = [NSString stringWithFormat:v6, v8];
  [v5 setAccessibilityLabel:v9];
}

@end