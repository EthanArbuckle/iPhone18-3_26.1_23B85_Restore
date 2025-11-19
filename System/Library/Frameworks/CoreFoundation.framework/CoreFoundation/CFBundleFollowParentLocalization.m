@interface CFBundleFollowParentLocalization
@end

@implementation CFBundleFollowParentLocalization

__CFBundle *__CFBundleFollowParentLocalization_block_invoke()
{
  result = _CFBundleGetInfoDictionaryBoolean(@"CFBundleFollowParentLocalization");
  if (result || (result = CFBundleGetMainBundle()) != 0 && (result = CFBundleGetInfoDictionary(result)) != 0 && (result = CFDictionaryGetValue(result, @"NSExtension")) != 0)
  {
    CFBundleFollowParentLocalization_followParent = 1;
  }

  return result;
}

@end