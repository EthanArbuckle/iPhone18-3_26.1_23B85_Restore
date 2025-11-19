@interface ICNoteIndicatorUnreadChanges
- (UIColor)tintColor;
@end

@implementation ICNoteIndicatorUnreadChanges

- (UIColor)tintColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    +[UIColor ICDarkenedTintColor];
  }

  else
  {
    +[UIColor ICListStatusIndicatorColor];
  }
  v2 = ;

  return v2;
}

@end