@interface CollectionsFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_NSRange)accessibilityRowRange;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CollectionsFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CollectionsFilterCarouselView"];
  [v3 validateClass:@"CollectionsFilterCell" hasInstanceMethod:@"filterLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CollectionsFilterCell" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CollectionsFilterViewModel" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CollectionsFilterCarouselView" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CollectionsFilterCarouselView" hasInstanceMethod:@"logicController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CollectionsFilterLogicController" hasInstanceMethod:@"filters" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CollectionsFilterCellAccessibility *)self safeValueForKey:@"filterLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(CollectionsFilterCellAccessibility *)self safeValueForKey:@"viewModel"];
  v4 = [v3 safeBoolForKey:@"isSelected"];

  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v2;
}

- (_NSRange)accessibilityRowRange
{
  if (accessibilityRowRange_onceToken != -1)
  {
    [CollectionsFilterCellAccessibility accessibilityRowRange];
  }

  v3 = [(CollectionsFilterCellAccessibility *)self _accessibilityAncestorIsKindOf:accessibilityRowRange_carouselViewClass];
  if (v3)
  {
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"collectionView"];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v3 safeValueForKey:@"logicController"];
    v7 = v6;
    v8 = 0;
    v9 = 0x7FFFFFFFLL;
    if (v5 && v6)
    {
      v10 = [v6 safeArrayForKey:@"filters"];
      if ([v10 count])
      {
        objc_opt_class();
        v11 = __UIAccessibilityCastAsClass();
        v12 = [v5 indexPathForCell:v11];

        if (v12)
        {
          v9 = [v12 item];
          v8 = [v10 count];
        }

        else
        {
          v8 = 0;
          v9 = 0x7FFFFFFFLL;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0x7FFFFFFFLL;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0x7FFFFFFFLL;
  }

  v13 = v9;
  v14 = v8;
  result.length = v14;
  result.location = v13;
  return result;
}

Class __59__CollectionsFilterCellAccessibility_accessibilityRowRange__block_invoke()
{
  result = NSClassFromString(&cfstr_Collectionsfil_1.isa);
  accessibilityRowRange_carouselViewClass = result;
  return result;
}

@end