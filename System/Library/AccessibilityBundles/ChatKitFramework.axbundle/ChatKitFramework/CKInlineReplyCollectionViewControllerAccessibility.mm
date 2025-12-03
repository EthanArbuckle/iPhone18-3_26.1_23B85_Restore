@interface CKInlineReplyCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setCollectionViewCurrentFramesForNextLayout:(id)layout;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CKInlineReplyCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKInlineReplyCollectionViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CKInlineReplyCollectionViewController" hasProperty:@"collectionView" withType:"@"];
  [validationsCopy validateClass:@"CKInlineReplyCollectionViewController" hasInstanceMethod:@"setCollectionViewCurrentFramesForNextLayout:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CKInlineReplyCollectionViewControllerAccessibility;
  [(CKInlineReplyCollectionViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKInlineReplyCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = accessibilityLocalizedString(@"group.reply.collection");
  [v3 setAccessibilityLabel:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CKInlineReplyCollectionViewControllerAccessibility;
  [(CKInlineReplyCollectionViewControllerAccessibility *)&v6 viewDidAppear:appear];
  v4 = *MEMORY[0x29EDC7F10];
  v5 = [(CKInlineReplyCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  UIAccessibilityPostNotification(v4, v5);
}

- (void)setCollectionViewCurrentFramesForNextLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = CKInlineReplyCollectionViewControllerAccessibility;
  [(CKInlineReplyCollectionViewControllerAccessibility *)&v9 setCollectionViewCurrentFramesForNextLayout:layoutCopy];
  objc_opt_class();
  v5 = [(CKInlineReplyCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  visibleCells = [v6 visibleCells];
  firstObject = [visibleCells firstObject];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], firstObject);
}

@end