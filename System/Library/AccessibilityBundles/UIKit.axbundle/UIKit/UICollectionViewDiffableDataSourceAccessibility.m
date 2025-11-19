@interface UICollectionViewDiffableDataSourceAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
@end

@implementation UICollectionViewDiffableDataSourceAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UICollectionViewDiffableDataSource" hasInstanceVariable:@"_impl" withType:"__UIDiffableDataSource"];
  [location[0] validateClass:@"__UIDiffableDataSource" hasInstanceMethod:@"itemIdentifierForIndexPath:" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v19.receiver = v23;
  v19.super_class = UICollectionViewDiffableDataSourceAccessibility;
  v20 = [(UICollectionViewDiffableDataSourceAccessibility *)&v19 collectionView:location[0] cellForItemAtIndexPath:v21];
  v18 = [(UICollectionViewDiffableDataSourceAccessibility *)v23 _accessibilityDiffableDataSourceAnnotator];
  if (v18)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 838860800;
    v13 = 48;
    v14 = __Block_byref_object_copy__1;
    v15 = __Block_byref_object_dispose__1;
    v16 = 0;
    v9[1] = &v10;
    v8 = MEMORY[0x29EDC9748](v23);
    v9[0] = MEMORY[0x29EDC9748](v21);
    AXPerformSafeBlock();
    v7 = MEMORY[0x29EDC9748](v11[5]);
    objc_storeStrong(v9, 0);
    objc_storeStrong(&v8, 0);
    _Block_object_dispose(&v10, 8);
    objc_storeStrong(&v16, 0);
    v17 = v7;
    (*(v18 + 2))(v18, v20, v7);
    objc_storeStrong(&v17, 0);
  }

  v5 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v18, 0);
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