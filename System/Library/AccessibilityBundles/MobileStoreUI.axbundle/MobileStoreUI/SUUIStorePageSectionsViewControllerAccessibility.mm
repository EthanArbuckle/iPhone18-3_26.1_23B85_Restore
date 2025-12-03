@interface SUUIStorePageSectionsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation SUUIStorePageSectionsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIStorePageSectionsViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SUUIStorePageSectionsViewController" hasInstanceVariable:@"_collectionView" withType:"SUUICollectionView"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceVariable:@"_title" withType:"NSString"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = SUUIStorePageSectionsViewControllerAccessibility;
  [(SUUIStorePageSectionsViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(SUUIStorePageSectionsViewControllerAccessibility *)self safeValueForKey:@"_collectionView"];
  objc_opt_class();
  v4 = [(SUUIStorePageSectionsViewControllerAccessibility *)self safeValueForKey:@"_title"];
  v5 = __UIAccessibilityCastAsClass();

  [v3 setAccessibilityLabel:v5];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SUUIStorePageSectionsViewControllerAccessibility;
  [(SUUIStorePageSectionsViewControllerAccessibility *)&v3 loadView];
  [(SUUIStorePageSectionsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end