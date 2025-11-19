@interface VideosDetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateContentInsets;
- (void)viewDidLoad;
@end

@implementation VideosDetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosDetailViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VideosDetailViewController" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosDetailViewController" hasInstanceMethod:@"_updateContentInsets" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VideosDetailViewController" hasInstanceMethod:@"shouldFloatHeader" withFullSignature:{"B", 0}];
  [v3 validateClass:@"VideosDetailViewController" hasInstanceMethod:@"childContentScrollView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosDetailViewController" hasInstanceMethod:@"headerContainmentView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = VideosDetailViewControllerAccessibility;
  [(VideosDetailViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(VideosDetailViewControllerAccessibility *)self safeValueForKey:@"artworkView"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityLocalizedString(@"video.poster");
  [v3 setAccessibilityLabel:v4];

  v5 = [(VideosDetailViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v5 setAccessibilityIdentifier:@"VideosDetailView"];

  v6 = [(VideosDetailViewControllerAccessibility *)self safeValueForKey:@"headerContainmentView"];
  [v6 setAccessibilityIdentifier:@"AXContainedInCollectionView"];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = VideosDetailViewControllerAccessibility;
  [(VideosDetailViewControllerAccessibility *)&v3 viewDidLoad];
  [(VideosDetailViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_updateContentInsets
{
  v42 = 0;
  objc_opt_class();
  v3 = [(VideosDetailViewControllerAccessibility *)self safeValueForKey:@"childContentScrollView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 contentOffset];
  v39 = v14;
  v40 = v13;
  v41.receiver = self;
  v41.super_class = VideosDetailViewControllerAccessibility;
  [(VideosDetailViewControllerAccessibility *)&v41 _updateContentInsets];
  [v4 contentInset];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (UIAccessibilityIsVoiceOverRunning() && v18 == v8 && v16 == v6 && v22 == v12 && v20 == v10)
  {
    [v4 setContentOffset:{v40, v39}];
  }

  v26 = MEMORY[0x29EDC80C8];
  if (([(VideosDetailViewControllerAccessibility *)self safeBoolForKey:@"shouldFloatHeader"]& 1) != 0)
  {
    v27 = *v26;
  }

  else
  {
    v42 = 0;
    objc_opt_class();
    v28 = __UIAccessibilityCastAsClass();
    if (v42 == 1)
    {
      goto LABEL_21;
    }

    v29 = v28;
    v30 = [v28 topLayoutGuide];
    [v30 length];
    v27 = v31;
  }

  v42 = 0;
  objc_opt_class();
  v32 = __UIAccessibilityCastAsClass();
  if (v42 == 1)
  {
LABEL_21:
    abort();
  }

  v33 = v32;
  v34 = v26[1];
  v35 = v26[3];
  v36 = [v32 bottomLayoutGuide];
  [v36 length];
  v38 = v37;

  [v4 _accessibilitySetVisibleContentInset:{v27, v34, v38, v35}];
}

@end