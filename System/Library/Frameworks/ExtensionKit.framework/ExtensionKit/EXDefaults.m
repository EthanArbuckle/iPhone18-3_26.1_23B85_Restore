@interface EXDefaults
@end

@implementation EXDefaults

uint64_t __80___EXDefaults_ExtensionKitAdditions__defaultPlaceholderViewControllerShowsState__block_invoke()
{
  result = _os_feature_enabled_impl();
  defaultPlaceholderViewControllerShowsState_value = result;
  return result;
}

@end