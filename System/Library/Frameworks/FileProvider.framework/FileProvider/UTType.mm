@interface UTType
@end

@implementation UTType

uint64_t __70__UTType_FPCaching__fp_cachedTypeWithIdentifier_alreadyAvailableType___block_invoke()
{
  Default = CFAllocatorGetDefault();
  v1 = SecTaskCreateFromSelf(Default);
  v2 = SecTaskCopyValueForEntitlement(v1, @"com.apple.private.coreservices.canmaplsdatabase", 0);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFBooleanGetTypeID())
    {
      fp_cachedTypeWithIdentifier_alreadyAvailableType__hasFastSequenceNumber = CFBooleanGetValue(v3) != 0;
    }

    CFRelease(v3);
  }

  CFRelease(v1);
  v5 = objc_opt_new();
  v6 = fp_cachedTypeWithIdentifier_alreadyAvailableType__cache;
  fp_cachedTypeWithIdentifier_alreadyAvailableType__cache = v5;

  return MEMORY[0x1EEE66BB8](v5, v6);
}

@end