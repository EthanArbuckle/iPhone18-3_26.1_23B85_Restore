@interface ASActivitySharingAwardPlugin
- (id)templateAssetSource;
@end

@implementation ASActivitySharingAwardPlugin

- (id)templateAssetSource
{
  v2 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v3 = [[ASActivitySharingTemplateAssetSource alloc] initWithHealthStore:v2];

  return v3;
}

@end