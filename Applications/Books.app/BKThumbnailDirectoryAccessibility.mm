@interface BKThumbnailDirectoryAccessibility
- (void)configureCell:(id)cell atIndex:(unint64_t)index;
@end

@implementation BKThumbnailDirectoryAccessibility

- (void)configureCell:(id)cell atIndex:(unint64_t)index
{
  v10.receiver = self;
  v10.super_class = BKThumbnailDirectoryAccessibility;
  cellCopy = cell;
  [(BKThumbnailDirectoryAccessibility *)&v10 configureCell:cellCopy atIndex:index];
  v6 = sub_1000765EC(@"page.num %@");
  v7 = [NSNumber numberWithInteger:index + 1];
  v8 = [NSNumberFormatter imaxLocalizedNumber:v7];
  v9 = [NSString stringWithFormat:v6, v8];
  [cellCopy setAccessibilityLabel:v9];
}

@end