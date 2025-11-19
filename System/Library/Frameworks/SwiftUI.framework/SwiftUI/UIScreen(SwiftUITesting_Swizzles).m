@interface UIScreen(SwiftUITesting_Swizzles)
+ (void)_performSwiftUITestingOverrides;
@end

@implementation UIScreen(SwiftUITesting_Swizzles)

+ (void)_performSwiftUITestingOverrides
{
  v0 = objc_opt_class();
  _SwizzleMethods(v0, sel_scale, sel__SwiftUITesting_currentScreenScale);
  v1 = objc_opt_class();

  _SwizzleMethods(v1, sel__wantsWideContentMargins, sel__SwiftUITesting_wantsWideContentMargins);
}

@end