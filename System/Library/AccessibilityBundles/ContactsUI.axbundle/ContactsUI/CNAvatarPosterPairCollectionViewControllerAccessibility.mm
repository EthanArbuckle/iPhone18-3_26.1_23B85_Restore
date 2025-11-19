@interface CNAvatarPosterPairCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
@end

@implementation CNAvatarPosterPairCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ContactsUI.CNAvatarPosterPairCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"ContactsUI.CNAvatarPosterPairCollectionViewController" hasSwiftField:@"centeredPosterButton" withSwiftType:"Optional<UIButton>"];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = CNAvatarPosterPairCollectionViewControllerAccessibility;
  v7 = a3;
  v8 = [(CNAvatarPosterPairCollectionViewControllerAccessibility *)&v20 collectionView:v7 cellForItemAtIndexPath:v6];
  [v8 setIsAccessibilityElement:1];
  v9 = -[CNAvatarPosterPairCollectionViewControllerAccessibility collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", v7, [v6 section]);

  v10 = [v6 item];
  v11 = v9 - 1;
  [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  if (v10 == v9 - 1)
  {
    v12 = accessibilityLocalizedString(@"add.new.poster");
    [v8 setAccessibilityLabel:v12];

    [v8 setAccessibilityValue:0];
    [v8 setAccessibilityHint:0];
  }

  else
  {
    v13 = accessibilityLocalizedString(@"contact.photo.and.poster");
    [v8 setAccessibilityLabel:v13];

    v14 = MEMORY[0x29EDBA0F8];
    v15 = accessibilityLocalizedString(@"contact.poster.position");
    v16 = [v14 stringWithFormat:v15, objc_msgSend(v6, "item") + 1, v11];
    [v8 setAccessibilityValue:v16];

    v17 = accessibilityLocalizedString(@"contact.photo.customize.hint");
    [v8 setAccessibilityHint:v17];
  }

  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __97__CNAvatarPosterPairCollectionViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke;
  v19[3] = &unk_29F2B5C48;
  v19[4] = self;
  [v8 setAccessibilityActivateBlock:v19];

  return v8;
}

void __97__CNAvatarPosterPairCollectionViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) safeSwiftValueForKey:@"centeredPosterButton"];
  v3 = __UIAccessibilityCastAsClass();

  [v3 sendActionsForControlEvents:0x2000];
}

@end