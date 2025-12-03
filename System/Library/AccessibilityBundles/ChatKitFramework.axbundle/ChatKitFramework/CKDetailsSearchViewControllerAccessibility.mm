@interface CKDetailsSearchViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier;
- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (id)dequeueReusableSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAddCellToMapWithSection:(id)section cell:(id)cell;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
@end

@implementation CKDetailsSearchViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKDetailsSearchViewController" isKindOfClass:@"CKSearchViewController"];
  [validationsCopy validateClass:@"CKSearchViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CKSearchViewController" conformsToProtocol:@"UICollectionViewDelegate"];
  [validationsCopy validateClass:@"CKSearchViewController" hasInstanceMethod:@"searchControllers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKDetailsSearchResultsTitleHeaderCell"];
  [validationsCopy validateProtocol:@"UICollectionViewDelegate" hasMethod:@"collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:" isInstanceMethod:1 isRequired:0];
  [validationsCopy validateClass:@"CKSearchController" hasInstanceMethod:@"cellForItemInCollectionView:atIndexPath:withIdentifier:" withFullSignature:{"@", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"dequeueReusableCellWithReuseIdentifier:forIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"dequeueReusableSupplementaryViewOfKind:withReuseIdentifier:forIndexPath:" withFullSignature:{"@", "@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CKDetailsSearchViewControllerAccessibility;
  [(CKDetailsSearchViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKDetailsSearchViewControllerAccessibility *)self safeValueForKey:@"view"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __88__CKDetailsSearchViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2B0930;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityElementsBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __88__CKDetailsSearchViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x29EDB8DE8] array];
  v3 = [WeakRetained safeArrayForKey:@"searchControllers"];
  v4 = [v3 count];

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [WeakRetained _axSectionMap];
      v7 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:i];
      v8 = [v6 objectForKey:v7];
      [v2 axSafelyAddObjectsFromArray:v8];
    }
  }

  return v2;
}

- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = CKDetailsSearchViewControllerAccessibility;
  v9 = [(CKDetailsSearchViewControllerAccessibility *)&v12 cellForItemInCollectionView:view atIndexPath:pathCopy withIdentifier:identifier];
  if (v9)
  {
    v10 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
    [(CKDetailsSearchViewControllerAccessibility *)self _axAddCellToMapWithSection:v10 cell:v9];
  }

  return v9;
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  supplementaryViewCopy = supplementaryView;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = CKDetailsSearchViewControllerAccessibility;
  [(CKDetailsSearchViewControllerAccessibility *)&v13 collectionView:view willDisplaySupplementaryView:supplementaryViewCopy forElementKind:kind atIndexPath:pathCopy];
  if (supplementaryViewCopy)
  {
    v12 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
    [(CKDetailsSearchViewControllerAccessibility *)self _axAddCellToMapWithSection:v12 cell:supplementaryViewCopy];
  }
}

- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  [(CKDetailsSearchViewControllerAccessibility *)self _setAXSectionMap:0];
  v10.receiver = self;
  v10.super_class = CKDetailsSearchViewControllerAccessibility;
  v8 = [(CKDetailsSearchViewControllerAccessibility *)&v10 dequeueReusableCellWithReuseIdentifier:identifierCopy forIndexPath:pathCopy];

  return v8;
}

- (id)dequeueReusableSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier forIndexPath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  kindCopy = kind;
  [(CKDetailsSearchViewControllerAccessibility *)self _setAXSectionMap:0];
  v13.receiver = self;
  v13.super_class = CKDetailsSearchViewControllerAccessibility;
  v11 = [(CKDetailsSearchViewControllerAccessibility *)&v13 dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:identifierCopy forIndexPath:pathCopy];

  return v11;
}

- (void)_axAddCellToMapWithSection:(id)section cell:(id)cell
{
  sectionCopy = section;
  cellCopy = cell;
  _axSectionMap = [(CKDetailsSearchViewControllerAccessibility *)self _axSectionMap];

  if (!_axSectionMap)
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    [(CKDetailsSearchViewControllerAccessibility *)self _setAXSectionMap:dictionary];
  }

  _axSectionMap2 = [(CKDetailsSearchViewControllerAccessibility *)self _axSectionMap];
  v10 = [_axSectionMap2 objectForKey:sectionCopy];

  if (v10)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    NSClassFromString(&cfstr_Ckdetailssearc_2.isa);
    if (objc_opt_isKindOfClass())
    {
      [array axSafelyAddObject:cellCopy];
      [array axSafelyAddObjectsFromArray:v10];
    }

    else
    {
      [array axSafelyAddObjectsFromArray:v10];
      [array axSafelyAddObject:cellCopy];
    }
  }

  else
  {
    array = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, cellCopy}];
  }

  _axSectionMap3 = [(CKDetailsSearchViewControllerAccessibility *)self _axSectionMap];
  [_axSectionMap3 setObject:array forKey:sectionCopy];
}

@end