@interface _TVCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityAncestorFocusParcel;
- (id)_accessibilityFrameDelegate;
- (id)_atvaccessibilityCollectionViewCellSemanticContext;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
@end

@implementation _TVCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVCollectionViewCell" isKindOfClass:@"TVContainerCollectionViewCell"];
  [validationsCopy validateClass:@"TVContainerCollectionViewCell" hasInstanceMethod:@"allowsFocus" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"_TVCardFloatingContentView"];
  [validationsCopy validateClass:@"_TVCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
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
    selfCopy = self;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TVCollectionViewCellAccessibility;
    selfCopy = [(_TVCollectionViewCellAccessibility *)&v7 _accessibilityAncestorFocusParcel];
  }

  return selfCopy;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = _TVCollectionViewCellAccessibility;
  accessibilityTraits = [(_TVCollectionViewCellAccessibility *)&v7 accessibilityTraits];
  isAccessibilityElement = [(_TVCollectionViewCellAccessibility *)self isAccessibilityElement];
  v5 = *MEMORY[0x29EDC7F70];
  if (!isAccessibilityElement)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (id)accessibilityLabel
{
  v19 = *MEMORY[0x29EDCA608];
  accessibilityUserDefinedLabel = [(_TVCollectionViewCellAccessibility *)self accessibilityUserDefinedLabel];
  if (![accessibilityUserDefinedLabel length] && -[_TVCollectionViewCellAccessibility isAccessibilityElement](self, "isAccessibilityElement"))
  {
    accessibilityLabel = [(_TVCollectionViewCellAccessibility *)self _accessibilityValueForKey:@"cachedTextForSubhierarchy"];

    if (![accessibilityLabel length])
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
        v10 = accessibilityLabel;
        while (1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          accessibilityLabel = [*(*(&v14 + 1) + 8 * v9) accessibilityLabel];

          if ([accessibilityLabel length])
          {
            break;
          }

          ++v9;
          v10 = accessibilityLabel;
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

      if (![accessibilityLabel length])
      {
        v11 = [(_TVCollectionViewCellAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:0 exclusions:0];

        accessibilityLabel = v11;
      }

      [(_TVCollectionViewCellAccessibility *)self _accessibilitySetRetainedValue:accessibilityLabel forKey:@"cachedTextForSubhierarchy", v14];
    }

    accessibilityUserDefinedLabel = accessibilityLabel;
  }

  v12 = *MEMORY[0x29EDCA608];

  return accessibilityUserDefinedLabel;
}

- (id)_accessibilityFrameDelegate
{
  v11 = 0;
  objc_opt_class();
  v3 = [(_TVCollectionViewCellAccessibility *)self safeValueForKey:@"contentView"];
  v4 = __UIAccessibilityCastAsClass();

  subviews = [v4 subviews];
  v6 = [subviews count];

  if (v6 == 1)
  {
    subviews2 = [v4 subviews];
    firstObject = [subviews2 firstObject];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVCollectionViewCellAccessibility;
    firstObject = [(_TVCollectionViewCellAccessibility *)&v10 _accessibilityFrameDelegate];
  }

  return firstObject;
}

- (id)_atvaccessibilityCollectionViewCellSemanticContext
{
  v2 = [(_TVCollectionViewCellAccessibility *)self safeValueForKey:@"contentView"];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"subviews"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 axFilterObjectsUsingBlock:&__block_literal_global_323];
  firstObject = [v5 firstObject];

  if (firstObject)
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