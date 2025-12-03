@interface AXInvertColors_NotesUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_NotesUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if (v5)
  {
    [validationsCopy validateClass:@"ICSystemPaperViewController"];
  }

  [validationsCopy validateClass:@"ICWindow" isKindOfClass:@"UIWindow"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"ICWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"ICImageAttachmentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"NotesBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end