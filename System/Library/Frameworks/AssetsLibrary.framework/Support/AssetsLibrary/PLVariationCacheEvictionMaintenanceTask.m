@interface PLVariationCacheEvictionMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLVariationCacheEvictionMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v3 = [(PLMaintenanceTask *)self libraryBundle];
  v4 = [v3 variationCache];

  [v4 evictIfNeeded];
  return 1;
}

@end