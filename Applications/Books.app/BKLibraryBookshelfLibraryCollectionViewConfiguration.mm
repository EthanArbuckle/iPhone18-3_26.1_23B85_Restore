@interface BKLibraryBookshelfLibraryCollectionViewConfiguration
- (BKLibraryBookshelfLibraryCollectionViewConfiguration)initWithCollection:(id)a3;
- (BOOL)supportsReadingListsButton;
- (id)sortControlConfig;
- (id)viewDescription;
- (id)viewTitle;
@end

@implementation BKLibraryBookshelfLibraryCollectionViewConfiguration

- (BKLibraryBookshelfLibraryCollectionViewConfiguration)initWithCollection:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BKLibraryBookshelfLibraryCollectionViewConfiguration;
  v5 = [(BKLibraryBookshelfLibraryCollectionViewConfiguration *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v5 setCollection:v4];
    v7 = [v4 collectionID];
    [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v6 setCollectionID:v7];

    v8 = +[BKLibraryManager defaultManager];
    v9 = [v8 collectionController];
    v10 = kBKCollectionDefaultAll;
    v11 = +[BKLibraryManager defaultManager];
    v12 = [v11 uiChildContext];
    v13 = [v9 mutableCollectionWithCollectionID:v10 inManagedObjectContext:v12 error:0];

    -[BKLibraryBookshelfLibraryBaseViewConfiguration setInitialViewMode:](v6, "setInitialViewMode:", [v13 resolvedViewMode]);
  }

  return v6;
}

- (BOOL)supportsReadingListsButton
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  v4 = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self collection];
  v5 = [v4 collectionID];
  v6 = [v5 isEqualToString:kBKCollectionDefaultAll];

  return v6;
}

- (id)viewTitle
{
  v2 = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self collection];
  v3 = [v2 title];

  return v3;
}

- (id)viewDescription
{
  v3 = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self collection];
  if ([v3 isDefaultCollection])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self collection];
    v4 = [v5 details];
  }

  return v4;
}

- (id)sortControlConfig
{
  v3 = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self collectionID];
  v36 = [BKLibraryManager predicateForCollectionMembersInCollectionID:v3 hideUnownedItems:0 allowExplicit:1];

  v4 = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self collectionID];
  v35 = [BKLibraryManager predicateForCollectionMembersInCollectionID:v4 hideUnownedItems:0 allowExplicit:0];

  v5 = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self collectionID];
  v6 = [BKLibraryManager predicateForAssetsInCollectionID:v5 allowExplicit:1];

  v7 = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self collectionID];
  v8 = [BKLibraryManager predicateForAssetsInCollectionID:v7 allowExplicit:0];

  v9 = [NSSortDescriptor sortDescriptorWithKey:@"sortTitle" ascending:1 selector:"localizedStandardCompare:"];
  v38 = [NSSortDescriptor sortDescriptorWithKey:@"sortAuthor" ascending:1 selector:"localizedStandardCompare:"];
  v10 = +[NSMutableArray array];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Sort by…" value:&stru_100A30A68 table:0];

  v13 = objc_alloc_init(BKLibrarySortByMode);
  [(BKLibrarySortByMode *)v13 setSortMode:1];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Recent" value:&stru_100A30A68 table:0];
  [(BKLibrarySortByMode *)v13 setTitle:v15];

  v37 = v12;
  [(BKLibrarySortByMode *)v13 setLabel:v12];
  [(BKLibrarySortByMode *)v13 setAllowExplicitPredicate:v6];
  [(BKLibrarySortByMode *)v13 setHideExplicitPredicate:v8];
  v16 = [NSSortDescriptor sortDescriptorWithKey:@"lastOpenDate" ascending:0];
  v42[0] = v16;
  v42[1] = v9;
  v17 = [NSArray arrayWithObjects:v42 count:2];
  [(BKLibrarySortByMode *)v13 setSortDescriptors:v17];

  [(BKLibrarySortByMode *)v13 setSectionKeyPath:0];
  [(BKLibrarySortByMode *)v13 setSectionKeyPathForDisplay:0];
  [(BKLibrarySortByMode *)v13 setEntityName:@"BKLibraryAsset"];
  [(BKLibrarySortByMode *)v13 setAllowsReordering:0];
  [v10 addObject:v13];
  v18 = objc_alloc_init(BKLibrarySortByMode);
  [(BKLibrarySortByMode *)v18 setSortMode:2];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Title" value:&stru_100A30A68 table:0];
  [(BKLibrarySortByMode *)v18 setTitle:v20];

  [(BKLibrarySortByMode *)v18 setLabel:v12];
  v21 = v6;
  v34 = v6;
  [(BKLibrarySortByMode *)v18 setAllowExplicitPredicate:v6];
  [(BKLibrarySortByMode *)v18 setHideExplicitPredicate:v8];
  v41 = v9;
  v22 = [NSArray arrayWithObjects:&v41 count:1];
  [(BKLibrarySortByMode *)v18 setSortDescriptors:v22];

  [(BKLibrarySortByMode *)v18 setSectionKeyPath:0];
  [(BKLibrarySortByMode *)v18 setSectionKeyPathForDisplay:0];
  [(BKLibrarySortByMode *)v18 setEntityName:@"BKLibraryAsset"];
  [(BKLibrarySortByMode *)v18 setAllowsReordering:0];
  [v10 addObject:v18];
  v23 = objc_alloc_init(BKLibrarySortByMode);
  [(BKLibrarySortByMode *)v23 setSortMode:3];
  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"Author" value:&stru_100A30A68 table:0];
  [(BKLibrarySortByMode *)v23 setTitle:v25];

  [(BKLibrarySortByMode *)v23 setLabel:v37];
  [(BKLibrarySortByMode *)v23 setAllowExplicitPredicate:v21];
  [(BKLibrarySortByMode *)v23 setHideExplicitPredicate:v8];
  v40[0] = v38;
  v40[1] = v9;
  v26 = [NSArray arrayWithObjects:v40 count:2];
  [(BKLibrarySortByMode *)v23 setSortDescriptors:v26];

  [(BKLibrarySortByMode *)v23 setSectionKeyPath:@"sortAuthor"];
  [(BKLibrarySortByMode *)v23 setSectionKeyPathForDisplay:@"author"];
  [(BKLibrarySortByMode *)v23 setEntityName:@"BKLibraryAsset"];
  [(BKLibrarySortByMode *)v23 setAllowsReordering:0];
  [v10 addObject:v23];
  v27 = objc_alloc_init(BKLibrarySortByMode);
  [(BKLibrarySortByMode *)v27 setSortMode:6];
  v28 = +[NSBundle mainBundle];
  v29 = [v28 localizedStringForKey:@"Manual" value:&stru_100A30A68 table:0];
  [(BKLibrarySortByMode *)v27 setTitle:v29];

  [(BKLibrarySortByMode *)v27 setLabel:v37];
  [(BKLibrarySortByMode *)v27 setAllowExplicitPredicate:v36];
  [(BKLibrarySortByMode *)v27 setHideExplicitPredicate:v35];
  v30 = [NSSortDescriptor sortDescriptorWithKey:@"sortKey" ascending:0];
  v39[0] = v30;
  v31 = [NSSortDescriptor sortDescriptorWithKey:@"assetID" ascending:0];
  v39[1] = v31;
  v32 = [NSArray arrayWithObjects:v39 count:2];
  [(BKLibrarySortByMode *)v27 setSortDescriptors:v32];

  [(BKLibrarySortByMode *)v27 setSectionKeyPath:0];
  [(BKLibrarySortByMode *)v27 setSectionKeyPathForDisplay:0];
  [(BKLibrarySortByMode *)v27 setEntityName:@"BKCollectionMember"];
  [(BKLibrarySortByMode *)v27 setAllowsReordering:1];
  [v10 addObject:v27];

  return v10;
}

@end