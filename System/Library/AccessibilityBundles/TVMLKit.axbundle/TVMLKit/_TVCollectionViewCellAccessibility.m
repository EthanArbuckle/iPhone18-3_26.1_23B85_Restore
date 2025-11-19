@interface _TVCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityAncestorFocusParcel;
- (id)_accessibilityFrameDelegate;
- (id)_atvaccessibilityCollectionViewCellSemanticContext;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
@end

@implementation _TVCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVCollectionViewCell" isKindOfClass:@"TVContainerCollectionViewCell"];
  [v3 validateClass:@"TVContainerCollectionViewCell" hasInstanceMethod:@"allowsFocus" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_TVCardFloatingContentView"];
  [v3 validateClass:@"_TVCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _TVCollectionViewCellAccessibility;
  [(_TVCollectionViewCellAccessibility *)&v3 prepareForReuse];
  [(_TVCollectionViewCellAccessibility *)self _accessibilityRemoveValueForKey:@"cachedTextForSubhierarchy"];
}

- (id)_accessibilityAncestorFocusParcel
{
  if (_accessibilityAncestorFocusParcel_onceToken != -1)
  {
    [_TVCollectionViewCellAccessibility _accessibilityAncestorFocusParcel];
  }

  if ([(_TVCollectionViewCellAccessibility *)self isAccessibilityElement]&& ([(_TVCollectionViewCellAccessibility *)self superview], v3 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
  {
    v5 = self;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TVCollectionViewCellAccessibility;
    v5 = [(_TVCollectionViewCellAccessibility *)&v7 _accessibilityAncestorFocusParcel];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = _TVCollectionViewCellAccessibility;
  v3 = [(_TVCollectionViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(_TVCollectionViewCellAccessibility *)self isAccessibilityElement];
  v5 = *MEMORY[0x29EDC7F70];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (id)accessibilityLabel
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [(_TVCollectionViewCellAccessibility *)self accessibilityUserDefinedLabel];
  if (![v3 length] && -[_TVCollectionViewCellAccessibility isAccessibilityElement](self, "isAccessibilityElement"))
  {
    v4 = [(_TVCollectionViewCellAccessibility *)self _accessibilityValueForKey:@"cachedTextForSubhierarchy"];

    if (![v4 length])
    {
      [(_TVCollectionViewCellAccessibility *)self _accessibilityCollectionViewCellContentSubviews];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = v17 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
LABEL_6:
        v9 = 0;
        v10 = v4;
        while (1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v4 = [*(*(&v14 + 1) + 8 * v9) accessibilityLabel];

          if ([v4 length])
          {
            break;
          }

          ++v9;
          v10 = v4;
          if (v7 == v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v7)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      if (![v4 length])
      {
        v11 = [(_TVCollectionViewCellAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:0 exclusions:0];

        v4 = v11;
      }

      [(_TVCollectionViewCellAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:@"cachedTextForSubhierarchy", v14];
    }

    v3 = v4;
  }

  v12 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)_accessibilityFrameDelegate
{
  v11 = 0;
  objc_opt_class();
  v3 = [(_TVCollectionViewCellAccessibility *)self safeValueForKey:@"contentView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 subviews];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [v4 subviews];
    v8 = [v7 firstObject];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVCollectionViewCellAccessibility;
    v8 = [(_TVCollectionViewCellAccessibility *)&v10 _accessibilityFrameDelegate];
  }

  return v8;
}

- (id)_atvaccessibilityCollectionViewCellSemanticContext
{
  v2 = [(_TVCollectionViewCellAccessibility *)self safeValueForKey:@"contentView"];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"subviews"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 axFilterObjectsUsingBlock:&__block_literal_global_323];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = MEMORY[0x29EDB8EA0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end