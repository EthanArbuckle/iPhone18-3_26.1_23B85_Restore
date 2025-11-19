@interface UIKeyboardInputMode
- (NSString)safe__extendedDisplayName;
@end

@implementation UIKeyboardInputMode

- (NSString)safe__extendedDisplayName
{
  if (objc_opt_respondsToSelector())
  {

    return [(UIKeyboardInputMode *)self extendedDisplayName];
  }

  else
  {

    return [(UIKeyboardInputMode *)self displayName];
  }
}

@end