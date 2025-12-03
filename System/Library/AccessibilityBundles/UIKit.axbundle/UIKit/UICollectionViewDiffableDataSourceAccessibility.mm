@interface UICollectionViewDiffableDataSourceAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
@end

@implementation UICollectionViewDiffableDataSourceAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UICollectionViewDiffableDataSource" hasInstanceVariable:@"_impl" withType:"__UIDiffableDataSource"];
  [location[0] validateClass:@"__UIDiffableDataSource" hasInstanceMethod:@"itemIdentifierForIndexPath:" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v21 = 0;
  objc_storeStrong(&v21, path);
  v19.receiver = selfCopy;
  v19.super_class = UICollectionViewDiffableDataSourceAccessibility;
  v20 = [(UICollectionViewDiffableDataSourceAccessibility *)&v19 collectionView:location[0] cellForItemAtIndexPath:v21];
  _accessibilityDiffableDataSourceAnnotator = [(UICollectionViewDiffableDataSourceAccessibility *)selfCopy _accessibilityDiffableDataSourceAnnotator];
  if (_accessibilityDiffableDataSourceAnnotator)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 838860800;
    v13 = 48;
    v14 = __Block_byref_object_copy__1;
    v15 = __Block_byref_object_dispose__1;
    v16 = 0;
    v9[1] = &v10;
    v8 = MEMORY[0x29EDC9748](selfCopy);
    v9[0] = MEMORY[0x29EDC9748](v21);
    AXPerformSafeBlock();
    v7 = MEMORY[0x29EDC9748](v11[5]);
    objc_storeStrong(v9, 0);
    objc_storeStrong(&v8, 0);
    _Block_object_dispose(&v10, 8);
    objc_storeStrong(&v16, 0);
    v17 = v7;
    (*(_accessibilityDiffableDataSourceAnnotator + 2))(_accessibilityDiffableDataSourceAnnotator, v20, v7);
    objc_storeStrong(&v17, 0);
  }

  v5 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&_accessibilityDiffableDataSourceAnnotator, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);

  return v5;
}

double __89__UICollectionViewDiffableDataSourceAccessibility_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) safeValueForKey:@"_impl"];
  v1 = [v6 itemIdentifierForIndexPath:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v6).n128_u64[0];
  return result;
}

@end