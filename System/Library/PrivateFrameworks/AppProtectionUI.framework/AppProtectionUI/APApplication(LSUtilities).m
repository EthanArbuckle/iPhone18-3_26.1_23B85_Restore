@interface APApplication(LSUtilities)
- (id)findApplicationRecordWithError:()LSUtilities;
@end

@implementation APApplication(LSUtilities)

- (id)findApplicationRecordWithError:()LSUtilities
{
  v5 = objc_alloc(MEMORY[0x1E69635F8]);
  v6 = [a1 bundleIdentifier];
  v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:1 error:a3];

  return v7;
}

@end