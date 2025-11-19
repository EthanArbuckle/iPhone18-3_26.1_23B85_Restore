@interface CNContactListCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)automationElements;
@end

@implementation CNContactListCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNContactListViewController" hasInstanceMethod:@"suggestionsController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNContactSuggestionsViewController" isKindOfClass:@"UIViewController"];
}

- (id)automationElements
{
  v14.receiver = self;
  v14.super_class = CNContactListCollectionViewAccessibility;
  v3 = [(CNContactListCollectionViewAccessibility *)&v14 automationElements];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = v6;

  objc_opt_class();
  v8 = [(CNContactListCollectionViewAccessibility *)self _accessibilityViewController];
  v9 = [v8 safeValueForKey:@"suggestionsController"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 view];
  v12 = [v11 automationElements];
  [v7 axSafelyAddObjectsFromArray:v12];

  return v7;
}

@end