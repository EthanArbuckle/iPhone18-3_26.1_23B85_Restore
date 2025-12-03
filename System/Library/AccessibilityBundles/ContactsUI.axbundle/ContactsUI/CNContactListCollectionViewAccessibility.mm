@interface CNContactListCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)automationElements;
@end

@implementation CNContactListCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNContactListViewController" hasInstanceMethod:@"suggestionsController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNContactSuggestionsViewController" isKindOfClass:@"UIViewController"];
}

- (id)automationElements
{
  v14.receiver = self;
  v14.super_class = CNContactListCollectionViewAccessibility;
  automationElements = [(CNContactListCollectionViewAccessibility *)&v14 automationElements];
  v4 = [automationElements mutableCopy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = array;

  objc_opt_class();
  _accessibilityViewController = [(CNContactListCollectionViewAccessibility *)self _accessibilityViewController];
  v9 = [_accessibilityViewController safeValueForKey:@"suggestionsController"];
  v10 = __UIAccessibilityCastAsClass();

  view = [v10 view];
  automationElements2 = [view automationElements];
  [v7 axSafelyAddObjectsFromArray:automationElements2];

  return v7;
}

@end