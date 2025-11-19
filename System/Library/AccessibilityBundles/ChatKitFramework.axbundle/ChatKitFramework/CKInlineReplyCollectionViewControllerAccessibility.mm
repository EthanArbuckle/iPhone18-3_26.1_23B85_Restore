@interface CKInlineReplyCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setCollectionViewCurrentFramesForNextLayout:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CKInlineReplyCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKInlineReplyCollectionViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CKInlineReplyCollectionViewController" hasProperty:@"collectionView" withType:"@"];
  [v3 validateClass:@"CKInlineReplyCollectionViewController" hasInstanceMethod:@"setCollectionViewCurrentFramesForNextLayout:" withFullSignature:{"v", "@", 0}];
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

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKInlineReplyCollectionViewControllerAccessibility;
  [(CKInlineReplyCollectionViewControllerAccessibility *)&v6 viewDidAppear:a3];
  v4 = *MEMORY[0x29EDC7F10];
  v5 = [(CKInlineReplyCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  UIAccessibilityPostNotification(v4, v5);
}

- (void)setCollectionViewCurrentFramesForNextLayout:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKInlineReplyCollectionViewControllerAccessibility;
  [(CKInlineReplyCollectionViewControllerAccessibility *)&v9 setCollectionViewCurrentFramesForNextLayout:v4];
  objc_opt_class();
  v5 = [(CKInlineReplyCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 visibleCells];
  v8 = [v7 firstObject];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v8);
}

@end