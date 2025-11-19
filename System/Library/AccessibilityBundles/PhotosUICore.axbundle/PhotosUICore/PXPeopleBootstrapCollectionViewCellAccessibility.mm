@interface PXPeopleBootstrapCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)setConfirmed:(BOOL)a3;
@end

@implementation PXPeopleBootstrapCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXPeopleBootstrapCollectionViewCell" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXPeopleBootstrapCollectionViewCell" hasInstanceMethod:@"setConfirmed:" withFullSignature:{"v", "B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(PXPeopleBootstrapCollectionViewCellAccessibility *)self safeValueForKey:@"image"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)setConfirmed:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PXPeopleBootstrapCollectionViewCellAccessibility;
  [(PXPeopleBootstrapCollectionViewCellAccessibility *)&v7 setConfirmed:?];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __65__PXPeopleBootstrapCollectionViewCellAccessibility_setConfirmed___block_invoke;
  v5[3] = &__block_descriptor_33_e15___NSString_8__0l;
  v6 = a3;
  [(PXPeopleBootstrapCollectionViewCellAccessibility *)self _setAccessibilityValueBlock:v5];
}

id __65__PXPeopleBootstrapCollectionViewCellAccessibility_setConfirmed___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = @"bootstrap.cell.confirmed.status";
  }

  else
  {
    v1 = @"bootstrap.cell.unconfirmed.status";
  }

  v2 = accessibilityPhotosUICoreLocalizedString(v1);

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PXPeopleBootstrapCollectionViewCellAccessibility;
  return [(PXPeopleBootstrapCollectionViewCellAccessibility *)&v3 accessibilityTraits]& ~*MEMORY[0x29EDC7FC0];
}

@end