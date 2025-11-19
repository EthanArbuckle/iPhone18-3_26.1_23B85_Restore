@interface IIOGetBundleIdentifer
@end

@implementation IIOGetBundleIdentifer

__CFBundle *__IIOGetBundleIdentifer_block_invoke()
{
  result = CFBundleGetMainBundle();
  IIOGetBundleIdentifer::gMainBundle = result;
  if (result)
  {
    result = CFBundleGetIdentifier(result);
    IIOGetBundleIdentifer::gBundleIdentifer = result;
  }

  return result;
}

@end