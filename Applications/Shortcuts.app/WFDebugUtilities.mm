@interface WFDebugUtilities
+ (void)setupDebuggingForWindow:(id)window;
@end

@implementation WFDebugUtilities

+ (void)setupDebuggingForWindow:(id)window
{
  windowCopy = window;
  sub_10000E16C(windowCopy);
}

@end