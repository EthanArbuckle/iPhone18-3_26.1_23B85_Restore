@interface CNContactListCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CNContactListCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNContactListCollectionViewCell" hasInstanceMethod:@"isEmergencyContact" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CNContactListCollectionViewCell" isKindOfClass:@"UICollectionViewListCell"];
}

- (id)accessibilityLabel
{
  v13.receiver = self;
  v13.super_class = CNContactListCollectionViewCellAccessibility;
  v3 = [(CNContactListCollectionViewCellAccessibility *)&v13 accessibilityLabel];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__2;
  v11[4] = __Block_byref_object_dispose__2;
  v12 = 0;
  if ([(CNContactListCollectionViewCellAccessibility *)self safeBoolForKey:@"_isEmergencyContact"])
  {
    v4 = accessibilityLocalizedString(@"contact.cell.emergency");
  }

  else
  {
    v4 = 0;
  }

  v10 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [v5 accessories];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __66__CNContactListCollectionViewCellAccessibility_accessibilityLabel__block_invoke;
  v9[3] = &unk_29F2B5C90;
  v9[4] = v11;
  [v6 enumerateObjectsUsingBlock:v9];

  v7 = __UIAXStringForVariables();

  _Block_object_dispose(v11, 8);

  return v7;
}

void __66__CNContactListCollectionViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v8 = v7;
    if (v7)
    {
      v9 = [v7 customView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        objc_opt_class();
        v11 = [v8 customView];
        v12 = __UIAccessibilityCastAsClass();

        v13 = [v12 image];
        v14 = [v13 imageAsset];
        v15 = [v14 safeStringForKey:@"assetName"];

        if (v12 && [v15 isEqualToString:@"nosign"])
        {
          v16 = accessibilityLocalizedString(@"contact.cell.blocked");
          v17 = *(*(a1 + 32) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;

          *a4 = 1;
        }
      }
    }
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CNContactListCollectionViewCellAccessibility;
  return [(CNContactListCollectionViewCellAccessibility *)&v3 accessibilityTraits]& ~*MEMORY[0x29EDC7F88];
}

@end