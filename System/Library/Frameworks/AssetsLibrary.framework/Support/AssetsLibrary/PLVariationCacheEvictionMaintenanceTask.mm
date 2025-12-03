@interface PLVariationCacheEvictionMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLVariationCacheEvictionMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  libraryBundle = [(PLMaintenanceTask *)self libraryBundle];
  variationCache = [libraryBundle variationCache];

  [variationCache evictIfNeeded];
  return 1;
}

@end