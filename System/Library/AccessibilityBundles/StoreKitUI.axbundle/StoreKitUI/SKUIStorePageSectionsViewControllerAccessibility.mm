@interface SKUIStorePageSectionsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation SKUIStorePageSectionsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIStorePageSectionsViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SKUIStorePageSectionsViewController" hasInstanceVariable:@"_collectionView" withType:"SKUICollectionView"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceVariable:@"_title" withType:"NSString"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = SKUIStorePageSectionsViewControllerAccessibility;
  [(SKUIStorePageSectionsViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(SKUIStorePageSectionsViewControllerAccessibility *)self safeValueForKey:@"_collectionView"];
  objc_opt_class();
  v4 = [(SKUIStorePageSectionsViewControllerAccessibility *)self safeValueForKey:@"_title"];
  v5 = __UIAccessibilityCastAsClass();

  [v3 setAccessibilityLabel:v5];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SKUIStorePageSectionsViewControllerAccessibility;
  [(SKUIStorePageSectionsViewControllerAccessibility *)&v3 loadView];
  [(SKUIStorePageSectionsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end