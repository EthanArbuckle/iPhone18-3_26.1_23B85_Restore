@interface _KSTextReplacementEntry
- (id)shortcutForSorting;
@end

@implementation _KSTextReplacementEntry

- (id)shortcutForSorting
{
  result = [(_KSTextReplacementEntry *)self shortcut];
  if (!result)
  {
    return &stru_49C80;
  }

  return result;
}

@end