@interface AXInvertColors_NotesUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_NotesUI

+ (void)performValidations:(id)a3
{
  v6 = a3;
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.mobilenotes"];

  if (v5)
  {
    [v6 validateClass:@"ICSystemPaperViewController"];
  }

  [v6 validateClass:@"ICWindow" isKindOfClass:@"UIWindow"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"ICWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"ICImageAttachmentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"NotesBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end