@interface AXMobileConfigurationInterface
+ (id)activeRestrictionIdentifiers;
@end

@implementation AXMobileConfigurationInterface

+ (id)activeRestrictionIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[AXBackBoardServer server];
  isGuidedAccessUnmanagedSelfLocked = [v3 isGuidedAccessUnmanagedSelfLocked];

  if (isGuidedAccessUnmanagedSelfLocked)
  {
    [v2 addObject:@"com.apple.accessibility.unmanaged.asam.uuid"];
  }

  return v2;
}

@end