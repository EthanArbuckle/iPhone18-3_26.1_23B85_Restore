@interface AccountDetailCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation AccountDetailCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.AccountDetailCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.AccountDetailCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.AccountDetailCollectionViewCell" hasInstanceMethod:@"accessibilityDisabled" withFullSignature:{"B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = AccountDetailCollectionViewCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(AccountDetailCollectionViewCellAccessibility *)&v5 accessibilityTraits];
  if ([(AccountDetailCollectionViewCellAccessibility *)self safeBoolForKey:@"accessibilityDisabled"])
  {
    return *MEMORY[0x29EDC7FA8] | v3;
  }

  else
  {
    return v3 & ~*MEMORY[0x29EDC7FA8];
  }
}

@end