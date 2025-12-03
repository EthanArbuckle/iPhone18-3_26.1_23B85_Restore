@interface TPSUICollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsTipsCollectionView;
- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility;
- (id)_accessibilityFirstVisibleItem;
- (id)_accessibilityScrollStatus;
@end

@implementation TPSUICollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"visibleCells" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIScrollView" hasInstanceMethod:@"_accessibilityScrollStatus" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSBaseTipCollectionViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityFirstVisibleItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSPageControl" isKindOfClass:@"UIPageControl"];
  [validationsCopy validateClass:@"TPSTipsViewController" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSTipsViewController"];
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
    firstObject = [v3 firstObject];
    _accessibilityFirstVisibleItem = [firstObject safeValueForKey:@"titleLabel"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TPSUICollectionViewAccessibility;
    _accessibilityFirstVisibleItem = [(TPSUICollectionViewAccessibility *)&v7 _accessibilityFirstVisibleItem];
  }

  return _accessibilityFirstVisibleItem;
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
      delegate = [(TPSUICollectionViewAccessibility *)self delegate];
      v6 = [delegate safeValueForKey:@"pageControl"];
      v7 = __UIAccessibilityCastAsClass();

      if (v7)
      {
        accessibilityValue = [v7 accessibilityValue];
        _accessibilityScrollStatus = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityValue];
        [_accessibilityScrollStatus setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBDB20]];

        goto LABEL_7;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = TPSUICollectionViewAccessibility;
  _accessibilityScrollStatus = [(TPSUICollectionViewAccessibility *)&v11 _accessibilityScrollStatus];
LABEL_7:

  return _accessibilityScrollStatus;
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