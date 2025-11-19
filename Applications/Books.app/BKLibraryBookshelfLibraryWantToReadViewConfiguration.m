@interface BKLibraryBookshelfLibraryWantToReadViewConfiguration
- (BKLibraryBookshelfLibraryWantToReadViewConfiguration)init;
- (id)sortControlConfig;
@end

@implementation BKLibraryBookshelfLibraryWantToReadViewConfiguration

- (BKLibraryBookshelfLibraryWantToReadViewConfiguration)init
{
  v11.receiver = self;
  v11.super_class = BKLibraryBookshelfLibraryWantToReadViewConfiguration;
  v2 = [(BKLibraryBookshelfLibraryWantToReadViewConfiguration *)&v11 init];
  if (v2)
  {
    v3 = +[BKLibraryManager defaultManager];
    v4 = [v3 collectionController];
    v5 = kBKCollectionDefaultIDWantToRead;
    v6 = +[BKLibraryManager defaultManager];
    v7 = [v6 uiChildContext];
    v8 = [v4 mutableCollectionWithCollectionID:v5 inManagedObjectContext:v7 error:0];
    [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v2 setCollection:v8];

    [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v2 setCollectionID:v5];
    v9 = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v2 collection];
    -[BKLibraryBookshelfLibraryBaseViewConfiguration setInitialViewMode:](v2, "setInitialViewMode:", [v9 resolvedViewMode]);
  }

  return v2;
}

- (id)sortControlConfig
{
  v2 = objc_alloc_init(BKLibrarySortByMode);
  [(BKLibrarySortByMode *)v2 setSortMode:6];
  [(BKLibrarySortByMode *)v2 setTitle:&stru_100A30A68];
  [(BKLibrarySortByMode *)v2 setLabel:&stru_100A30A68];
  v3 = kBKCollectionDefaultIDWantToRead;
  v4 = [BKLibraryManager predicateForCollectionMembersInCollectionID:kBKCollectionDefaultIDWantToRead hideUnownedItems:0 allowExplicit:1];
  [(BKLibrarySortByMode *)v2 setAllowExplicitPredicate:v4];

  v5 = [BKLibraryManager predicateForCollectionMembersInCollectionID:v3 hideUnownedItems:0 allowExplicit:0];
  [(BKLibrarySortByMode *)v2 setHideExplicitPredicate:v5];

  v6 = [NSSortDescriptor sortDescriptorWithKey:@"sortKey" ascending:0];
  v12[0] = v6;
  v7 = [NSSortDescriptor sortDescriptorWithKey:@"assetID" ascending:0];
  v12[1] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:2];
  [(BKLibrarySortByMode *)v2 setSortDescriptors:v8];

  [(BKLibrarySortByMode *)v2 setSectionKeyPath:0];
  [(BKLibrarySortByMode *)v2 setSectionKeyPathForDisplay:0];
  [(BKLibrarySortByMode *)v2 setEntityName:@"BKCollectionMember"];
  [(BKLibrarySortByMode *)v2 setAllowsReordering:1];
  v11 = v2;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

@end