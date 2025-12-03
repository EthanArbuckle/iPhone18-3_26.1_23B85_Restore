@interface BKLibraryBookshelfSupplementalPDFPickerCollectionViewConfiguration
- (BKLibraryBookshelfSupplementalPDFPickerCollectionViewConfiguration)initWithCollection:(id)collection storePlaylistID:(id)d fromActionMenu:(BOOL)menu;
- (id)sortControlConfig;
- (id)supplementalContentPDFTitle;
@end

@implementation BKLibraryBookshelfSupplementalPDFPickerCollectionViewConfiguration

- (BKLibraryBookshelfSupplementalPDFPickerCollectionViewConfiguration)initWithCollection:(id)collection storePlaylistID:(id)d fromActionMenu:(BOOL)menu
{
  menuCopy = menu;
  collectionCopy = collection;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = BKLibraryBookshelfSupplementalPDFPickerCollectionViewConfiguration;
  v10 = [(BKLibraryBookshelfSupplementalPDFPickerCollectionViewConfiguration *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v10 setCollection:collectionCopy];
    collectionID = [collectionCopy collectionID];
    [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v11 setCollectionID:collectionID];

    [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v11 setSupplementalContentStorePlaylistID:dCopy];
    [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v11 setInitialViewMode:2];
    [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v11 setFromActionMenu:menuCopy];
  }

  return v11;
}

- (id)sortControlConfig
{
  v3 = +[NSMutableArray array];
  v4 = objc_alloc_init(BKLibrarySortByMode);
  [(BKLibrarySortByMode *)v4 setSortMode:2];
  [(BKLibrarySortByMode *)v4 setTitle:&stru_100A30A68];
  [(BKLibrarySortByMode *)v4 setLabel:&stru_100A30A68];
  supplementalContentStorePlaylistID = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self supplementalContentStorePlaylistID];
  v6 = [BKLibraryManager predicateForSupplementalContentLibraryAssetsWithStorePlaylistID:supplementalContentStorePlaylistID];
  [(BKLibrarySortByMode *)v4 setAllowExplicitPredicate:v6];

  allowExplicitPredicate = [(BKLibrarySortByMode *)v4 allowExplicitPredicate];
  v15[0] = allowExplicitPredicate;
  v8 = +[BKLibraryManager predicateToExcludeLibraryAssetsWithExplicitContent];
  v15[1] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  [(BKLibrarySortByMode *)v4 setHideExplicitPredicate:v10];

  v11 = [NSSortDescriptor sortDescriptorWithKey:@"sortTitle" ascending:1 selector:"localizedStandardCompare:"];
  v14 = v11;
  v12 = [NSArray arrayWithObjects:&v14 count:1];
  [(BKLibrarySortByMode *)v4 setSortDescriptors:v12];

  [(BKLibrarySortByMode *)v4 setSectionKeyPath:0];
  [(BKLibrarySortByMode *)v4 setSectionKeyPathForDisplay:0];
  [(BKLibrarySortByMode *)v4 setEntityName:@"BKLibraryAsset"];
  [(BKLibrarySortByMode *)v4 setAllowsReordering:0];
  [v3 addObject:v4];

  return v3;
}

- (id)supplementalContentPDFTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Choose a PDF" value:&stru_100A30A68 table:0];

  return v3;
}

@end