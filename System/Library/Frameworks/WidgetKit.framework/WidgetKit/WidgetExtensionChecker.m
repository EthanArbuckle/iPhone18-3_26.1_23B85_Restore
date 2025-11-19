@interface WidgetExtensionChecker
+ (BOOL)isExtensionSubsystemInitialized;
@end

@implementation WidgetExtensionChecker

+ (BOOL)isExtensionSubsystemInitialized
{
  v2 = NSClassFromString(&cfstr_ExswiftuiSubsy.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(objc_class *)v2 initialized];
}

@end