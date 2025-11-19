@interface _EXDefaults(ExtensionKitAdditions)
- (uint64_t)defaultPlaceholderViewControllerShowsState;
@end

@implementation _EXDefaults(ExtensionKitAdditions)

- (uint64_t)defaultPlaceholderViewControllerShowsState
{
  if (defaultPlaceholderViewControllerShowsState_onceToken[0] != -1)
  {
    [_EXDefaults(ExtensionKitAdditions) defaultPlaceholderViewControllerShowsState];
  }

  return defaultPlaceholderViewControllerShowsState_value;
}

@end