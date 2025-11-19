@interface AXMobileConfigurationInterface
+ (id)activeRestrictionIdentifiers;
@end

@implementation AXMobileConfigurationInterface

+ (id)activeRestrictionIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[AXBackBoardServer server];
  v4 = [v3 isGuidedAccessUnmanagedSelfLocked];

  if (v4)
  {
    [v2 addObject:@"com.apple.accessibility.unmanaged.asam.uuid"];
  }

  return v2;
}

@end