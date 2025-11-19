@interface TPSUICollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsTipsCollectionView;
- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility;
- (id)_accessibilityFirstVisibleItem;
- (id)_accessibilityScrollStatus;
@end

@implementation TPSUICollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UICollectionView" hasInstanceMethod:@"visibleCells" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIScrollView" hasInstanceMethod:@"_accessibilityScrollStatus" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TPSBaseTipCollectionViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityFirstVisibleItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TPSPageControl" isKindOfClass:@"UIPageControl"];
  [v3 validateClass:@"TPSTipsViewController" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TPSTipsViewController"];
}

- (BOOL)_axIsTipsCollectionView
{
  v2 = [(TPSUICollectionViewAccessibility *)self safeValueForKey:@"delegate"];
  MEMORY[0x29ED3C830](@"TPSTipsViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityFirstVisibleItem
{
  if ([(TPSUICollectionViewAccessibility *)self _axIsTipsCollectionView])
  {
    v3 = [(TPSUICollectionViewAccessibility *)self safeArrayForKey:@"visibleCells"];
    v4 = [v3 firstObject];
    v5 = [v4 safeValueForKey:@"titleLabel"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TPSUICollectionViewAccessibility;
    v5 = [(TPSUICollectionViewAccessibility *)&v7 _accessibilityFirstVisibleItem];
  }

  return v5;
}

- (id)_accessibilityScrollStatus
{
  if ([(TPSUICollectionViewAccessibility *)self _axIsTipsCollectionView])
  {
    v12 = 0;
    v3 = [(TPSUICollectionViewAccessibility *)self safeValueForKey:@"visibleCells"];
    v4 = __UIAccessibilitySafeClass();

    if ([v4 count])
    {
      v12 = 0;
      objc_opt_class();
      v5 = [(TPSUICollectionViewAccessibility *)self delegate];
      v6 = [v5 safeValueForKey:@"pageControl"];
      v7 = __UIAccessibilityCastAsClass();

      if (v7)
      {
        v8 = [v7 accessibilityValue];
        v9 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v8];
        [v9 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBDB20]];

        goto LABEL_7;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = TPSUICollectionViewAccessibility;
  v9 = [(TPSUICollectionViewAccessibility *)&v11 _accessibilityScrollStatus];
LABEL_7:

  return v9;
}

- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility
{
  if ([(TPSUICollectionViewAccessibility *)self _axIsTipsCollectionView])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = TPSUICollectionViewAccessibility;
  return [(TPSUICollectionViewAccessibility *)&v4 accessibilityCollectionViewBehavesLikeUIViewAccessibility];
}

@end