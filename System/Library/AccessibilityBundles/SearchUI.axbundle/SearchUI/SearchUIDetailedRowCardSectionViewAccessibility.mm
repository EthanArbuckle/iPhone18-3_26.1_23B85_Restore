@interface SearchUIDetailedRowCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)_axGetToggleSwitch;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationCustomProperties;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchUIDetailedRowCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIDetailedView" hasInstanceMethod:@"detailsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIDetailedView" hasInstanceMethod:@"innerContainer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKAuxilliaryTextView"];
  [v3 validateClass:@"SearchUIDetailedRowCardSectionView" isKindOfClass:@"SearchUICardSectionView"];
  [v3 validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIDetailedRowCardSectionView" hasInstanceMethod:@"updateWithRowModel:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SearchUIButtonItemView"];
}

uint64_t __89__SearchUIDetailedRowCardSectionViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Searchuibutton_1.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Cnactionview.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Tlkstorebutton.isa), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    NSClassFromString(&cfstr_Ascofferbutton.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  NSClassFromString(&cfstr_Ascofferbutton.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 safeValueForKey:@"titleLabel"];
    [v4 accessibilityFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v2 safeValueForKey:@"imageView"];
    [v13 accessibilityFrame];
    v41.origin.x = v14;
    v41.origin.y = v15;
    v41.size.width = v16;
    v41.size.height = v17;
    v37.origin.x = v6;
    v37.origin.y = v8;
    v37.size.width = v10;
    v37.size.height = v12;
    v38 = CGRectUnion(v37, v41);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;

    v22 = [v2 safeValueForKey:@"subtitleLabel"];
    if ([v22 _accessibilityViewIsVisible])
    {
      [v22 accessibilityFrame];
      v42.origin.x = v23;
      v42.origin.y = v24;
      v42.size.width = v25;
      v42.size.height = v26;
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      v40 = CGRectUnion(v39, v42);
      x = v40.origin.x;
      y = v40.origin.y;
      width = v40.size.width;
      height = v40.size.height;
      v27 = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:? cornerRadius:?];
      [v27 bounds];
      AX_CGRectGetCenter();
      v29 = v28;
      v31 = v30;
      CGAffineTransformMakeScale(&v36, 1.3, 1.3);
      [v27 applyTransform:&v36];
      [v27 bounds];
      AX_CGRectGetCenter();
      CGAffineTransformMakeTranslation(&v36, v29 - v32, v31 - v33);
      [v27 applyTransform:&v36];
    }

    else
    {
      v27 = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, 10.0}];
    }

    [v2 setAccessibilityPath:v27];

    [v2 setAccessibilityFrame:{x, y, width, height}];
  }

  if ((isKindOfClass & 1) != 0 && [v2 isAccessibilityElement])
  {
    v34 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)accessibilityLabel
{
  v3 = [(SearchUIDetailedRowCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
  v4 = [v3 safeValueForKey:@"innerContainer"];
  v5 = [v4 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_333];

  v6 = [(SearchUIDetailedRowCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
  v7 = [v6 safeUIViewForKey:@"detailsView"];

  v8 = [(SearchUIDetailedRowCardSectionViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDB8F18]];
  v9 = [v7 accessibilityLabel];
  v10 = [v7 accessibilityValue];
  v13 = MEMORY[0x29ED341C0](v5);
  v11 = __UIAXStringForVariables();

  return v11;
}

uint64_t __69__SearchUIDetailedRowCardSectionViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Tlkauxilliaryt.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityValue
{
  v3 = [(SearchUIDetailedRowCardSectionViewAccessibility *)self _axGetToggleSwitch];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SearchUIDetailedRowCardSectionViewAccessibility;
    v5 = [(SearchUIDetailedRowCardSectionViewAccessibility *)&v8 accessibilityValue];
  }

  v6 = v5;

  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(SearchUIDetailedRowCardSectionViewAccessibility *)self _axGetToggleSwitch];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityActivationPoint];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SearchUIDetailedRowCardSectionViewAccessibility;
    [(SearchUIDetailedRowCardSectionViewAccessibility *)&v11 accessibilityActivationPoint];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(SearchUIDetailedRowCardSectionViewAccessibility *)self _axGetToggleSwitch];

  if (v3)
  {
    return *MEMORY[0x29EDC7FE8];
  }

  v5.receiver = self;
  v5.super_class = SearchUIDetailedRowCardSectionViewAccessibility;
  return [(SearchUIDetailedRowCardSectionViewAccessibility *)&v5 accessibilityTraits];
}

- (id)automationCustomProperties
{
  v14[2] = *MEMORY[0x29EDCA608];
  v2 = [(SearchUIDetailedRowCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeUIViewForKey:@"detailsView"];

  v13[0] = @"Title";
  v4 = [v3 accessibilityLabel];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_2A22CFF00;
  }

  v13[1] = @"Subtitle";
  v14[0] = v6;
  v7 = [v3 accessibilityValue];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_2A22CFF00;
  }

  v14[1] = v9;
  v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)_axGetToggleSwitch
{
  v2 = [(SearchUIDetailedRowCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 _accessibilityFindSubviewDescendant:&__block_literal_global_354];

  return v3;
}

uint64_t __69__SearchUIDetailedRowCardSectionViewAccessibility__axGetToggleSwitch__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end