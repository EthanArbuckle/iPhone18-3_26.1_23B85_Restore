@interface PXPeopleCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityFavoriteButton;
- (id)_accessibilityPersonName;
- (id)_accessibilityUnfavoriteButton;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation PXPeopleCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXPeopleCollectionViewCell" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXPeopleCollectionViewCell" hasInstanceMethod:@"toggleFavorite:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PXPeopleCollectionViewCell" hasInstanceMethod:@"isFavorite" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXPeopleCollectionViewCell" hasInstanceMethod:@"badgeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXPeopleBadgeView" hasInstanceMethod:@"favoriteButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXPeopleBadgeView" hasInstanceMethod:@"unfavoriteButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXPeopleCollectionViewCell" hasInstanceMethod:@"peopleCellDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXPersonItem" hasInstanceMethod:@"modelObject" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHPerson" hasInstanceMethod:@"detectionType" withFullSignature:{"s", 0}];
}

- (id)_accessibilityPersonName
{
  objc_opt_class();
  v3 = [(PXPeopleCollectionViewCellAccessibility *)self safeValueForKey:@"name"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityPhotosUICoreLocalizedString(@"people.name.unknown");
  if ([v4 length])
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

- (id)accessibilityValue
{
  if ([(PXPeopleCollectionViewCellAccessibility *)self safeBoolForKey:@"isFavorite"])
  {
    v2 = accessibilityPhotosUICoreLocalizedString(@"people.favorite");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  if ([(PXPeopleCollectionViewCellAccessibility *)self _axPeopleHomeCellSelectionMode])
  {
    v4.receiver = self;
    v4.super_class = PXPeopleCollectionViewCellAccessibility;
    return [(PXPeopleCollectionViewCellAccessibility *)&v4 accessibilityTraits];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PXPeopleCollectionViewCellAccessibility;
    return *MEMORY[0x29EDC7F70] | [(PXPeopleCollectionViewCellAccessibility *)&v5 accessibilityTraits]| *MEMORY[0x29EDC7510];
  }
}

- (id)_accessibilityFavoriteButton
{
  v3 = [(PXPeopleCollectionViewCellAccessibility *)self safeValueForKeyPath:@"badgeView.favoriteButton"];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __71__PXPeopleCollectionViewCellAccessibility__accessibilityFavoriteButton__block_invoke;
  v5[3] = &unk_29F2E6480;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __71__PXPeopleCollectionViewCellAccessibility__accessibilityFavoriteButton__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityPhotosUICoreLocalizedString(@"add.favorite");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _accessibilityPersonName];
  v6 = [v2 localizedStringWithFormat:v3, v5];

  return v6;
}

- (id)_accessibilityUnfavoriteButton
{
  v3 = [(PXPeopleCollectionViewCellAccessibility *)self safeValueForKeyPath:@"badgeView.unfavoriteButton"];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __73__PXPeopleCollectionViewCellAccessibility__accessibilityUnfavoriteButton__block_invoke;
  v5[3] = &unk_29F2E6480;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __73__PXPeopleCollectionViewCellAccessibility__accessibilityUnfavoriteButton__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityPhotosUICoreLocalizedString(@"remove.favorite");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _accessibilityPersonName];
  v6 = [v2 localizedStringWithFormat:v3, v5];

  return v6;
}

- (id)automationElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  if ([(PXPeopleCollectionViewCellAccessibility *)self safeBoolForKey:@"isFavorite"])
  {
    [(PXPeopleCollectionViewCellAccessibility *)self _accessibilityUnfavoriteButton];
  }

  else
  {
    [(PXPeopleCollectionViewCellAccessibility *)self _accessibilityFavoriteButton];
  }
  v4 = ;
  [v3 axSafelyAddObject:v4];

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(PXPeopleCollectionViewCellAccessibility *)self _accessibilityFavoriteButton];

  if (v4)
  {
    if ([(PXPeopleCollectionViewCellAccessibility *)self safeBoolForKey:@"isFavorite"])
    {
      v5 = @"remove.favorite";
    }

    else
    {
      v5 = @"add.favorite";
    }

    v6 = accessibilityPhotosUICoreLocalizedString(v5);
    v7 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v6 target:self selector:sel__accessibilityToggleFavoriteActivate_];
    [v3 addObject:v7];
  }

  v11.receiver = self;
  v11.super_class = PXPeopleCollectionViewCellAccessibility;
  v8 = [(PXPeopleCollectionViewCellAccessibility *)&v11 accessibilityCustomActions];
  v9 = [v3 arrayByAddingObjectsFromArray:v8];

  return v9;
}

@end