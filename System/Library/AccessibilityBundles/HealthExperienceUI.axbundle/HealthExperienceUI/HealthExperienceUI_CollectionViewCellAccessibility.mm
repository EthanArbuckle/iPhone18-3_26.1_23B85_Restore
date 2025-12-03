@interface HealthExperienceUI_CollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsSelectable;
- (id)_axDataTypeTileHeaderViewForCell:(id)cell;
- (id)_axDelegateForCheckingSelectabilityFromCollectionView:(id)view;
@end

@implementation HealthExperienceUI_CollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HealthExperienceUI.CompoundDataSourceCollectionViewController"];
  [validationsCopy validateClass:@"HealthExperienceUI.CompoundDataSourceCollectionViewController" hasInstanceMethod:@"collectionView:shouldSelectItemAtIndexPath:" withFullSignature:{"B", "@", "@", 0}];
  [validationsCopy validateClass:@"HealthExperienceUI.DataTypeTileHeaderView"];
  [validationsCopy validateClass:@"HealthExperienceUI.DataTypeTileHeaderView" hasInstanceMethod:@"accessibilityAccessoryLabel" withFullSignature:{"@", 0}];
}

- (BOOL)_axIsSelectable
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 _accessibilityAncestorIsKindOf:objc_opt_class()];
  if (v4)
  {
    v5 = [(HealthExperienceUI_CollectionViewCellAccessibility *)self _axDelegateForCheckingSelectabilityFromCollectionView:v4];
    v6 = [v4 indexPathForCell:v3];
    if (v6)
    {
      if (!v5 || ![v5 collectionView:v4 shouldSelectItemAtIndexPath:v6])
      {
        v10 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v7 = [(HealthExperienceUI_CollectionViewCellAccessibility *)self _axDataTypeTileHeaderViewForCell:v3];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 safeValueForKey:@"accessibilityAccessoryLabel"];
        v10 = v9 != 0;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v8 = AXLogValidations();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(HealthExperienceUI_CollectionViewCellAccessibility *)v8 _axIsSelectable];
      }

      v10 = 0;
    }

    goto LABEL_13;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (id)_axDelegateForCheckingSelectabilityFromCollectionView:(id)view
{
  viewCopy = view;
  if (!MEMORY[0x29C2D8570](@"HealthExperienceUI.CompoundDataSourceCollectionViewController"))
  {
    goto LABEL_8;
  }

  delegate = [viewCopy delegate];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = AXLogValidations();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(HealthExperienceUI_CollectionViewCellAccessibility *)self _axDelegateForCheckingSelectabilityFromCollectionView:delegate, v6];
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_8:
    delegate = 0;
  }

  return delegate;
}

- (id)_axDataTypeTileHeaderViewForCell:(id)cell
{
  cellCopy = cell;
  v4 = MEMORY[0x29C2D8570](@"HealthExperienceUI.DataTypeTileHeaderView");
  if (v4)
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __87__HealthExperienceUI_CollectionViewCellAccessibility__axDataTypeTileHeaderViewForCell___block_invoke;
    v7[3] = &__block_descriptor_40_e16_B16__0__UIView_8lu32l8;
    v7[4] = v4;
    v5 = [cellCopy _accessibilityFindSubviewDescendant:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_axDelegateForCheckingSelectabilityFromCollectionView:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_29BE39000, log, OS_LOG_TYPE_FAULT, "Unexpected class for collection view delegate of %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x29EDCA608];
}

@end