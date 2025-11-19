@interface NSObject(SwiftUIViewSystem)
+ (uint64_t)_swiftUI_platformViewDefinition;
@end

@implementation NSObject(SwiftUIViewSystem)

+ (uint64_t)_swiftUI_platformViewDefinition
{
  if (!pthread_main_np())
  {
    return 0;
  }

  if (_swiftUI_platformViewDefinition_swiftui_binary)
  {
    return 0;
  }

  _swiftUI_platformViewDefinition_swiftui_binary = dlopen("/System/Library/Frameworks/SwiftUI.framework/SwiftUI", 2);
  if (!_swiftUI_platformViewDefinition_swiftui_binary)
  {
    return 0;
  }

  return [a1 _swiftUI_platformViewDefinition];
}

@end