@interface BKLibraryBookshelfLibrarySeriesViewConfiguration
- (BKLibraryBookshelfLibrarySeriesViewConfiguration)initWithSeriesContainer:(id)container initialViewMode:(unint64_t)mode;
- (id)noBooksDescription;
- (id)noBooksDescriptionHeader;
- (id)seriesID;
- (id)sortControlConfig;
- (id)viewDescription;
- (id)viewTitle;
@end

@implementation BKLibraryBookshelfLibrarySeriesViewConfiguration

- (BKLibraryBookshelfLibrarySeriesViewConfiguration)initWithSeriesContainer:(id)container initialViewMode:(unint64_t)mode
{
  containerCopy = container;
  v15.receiver = self;
  v15.super_class = BKLibraryBookshelfLibrarySeriesViewConfiguration;
  v7 = [(BKLibraryBookshelfLibrarySeriesViewConfiguration *)&v15 init];
  if (v7)
  {
    v8 = +[BKLibraryManager defaultManager];
    [(BKLibraryBookshelfLibrarySeriesViewConfiguration *)v7 setSeriesContainer:containerCopy];
    [(BKLibraryBookshelfLibraryBaseViewConfiguration *)v7 setInitialViewMode:mode];
    [(BKLibraryBookshelfLibrarySeriesViewConfiguration *)v7 setInitialSortMode:+[BKCollection sortModeForSeriesCollections]];
    managedObjectContext = [containerCopy managedObjectContext];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001B2A0C;
    v12[3] = &unk_100A03440;
    v13 = containerCopy;
    v14 = v8;
    v10 = v8;
    [managedObjectContext performBlock:v12];
  }

  return v7;
}

- (id)seriesID
{
  seriesContainer = [(BKLibraryBookshelfLibrarySeriesViewConfiguration *)self seriesContainer];
  assetID = [seriesContainer assetID];

  return assetID;
}

- (id)viewTitle
{
  seriesContainer = [(BKLibraryBookshelfLibrarySeriesViewConfiguration *)self seriesContainer];
  title = [seriesContainer title];

  return title;
}

- (id)viewDescription
{
  seriesContainer = [(BKLibraryBookshelfLibrarySeriesViewConfiguration *)self seriesContainer];
  displayAuthor = [seriesContainer displayAuthor];

  return displayAuthor;
}

- (id)noBooksDescriptionHeader
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"No Purchased Books" value:&stru_100A30A68 table:0];

  return v3;
}

- (id)noBooksDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"You haven’t purchased any books in this series." value:&stru_100A30A68 table:0];

  return v3;
}

- (id)sortControlConfig
{
  v3 = +[BKLibraryManager defaultManager];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Filter by…" value:&stru_100A30A68 table:0];

  v6 = objc_alloc_init(BKLibrarySortByMode);
  [(BKLibrarySortByMode *)v6 setSortMode:9];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Purchased" value:&stru_100A30A68 table:0];
  [(BKLibrarySortByMode *)v6 setTitle:v8];

  [(BKLibrarySortByMode *)v6 setLabel:v5];
  seriesID = [(BKLibraryBookshelfLibrarySeriesViewConfiguration *)self seriesID];
  v10 = [v3 contentPredicateForSeriesID:seriesID onlyPurchased:1 forceCloud:1 allowsExplicit:1];
  [(BKLibrarySortByMode *)v6 setAllowExplicitPredicate:v10];

  seriesID2 = [(BKLibraryBookshelfLibrarySeriesViewConfiguration *)self seriesID];
  v12 = [v3 contentPredicateForSeriesID:seriesID2 onlyPurchased:1 forceCloud:1 allowsExplicit:0];
  [(BKLibrarySortByMode *)v6 setHideExplicitPredicate:v12];

  v13 = [NSSortDescriptor sortDescriptorWithKey:@"seriesSortKey" ascending:1];
  v28 = v13;
  v14 = [NSArray arrayWithObjects:&v28 count:1];
  [(BKLibrarySortByMode *)v6 setSortDescriptors:v14];

  [(BKLibrarySortByMode *)v6 setSectionKeyPath:0];
  [(BKLibrarySortByMode *)v6 setSectionKeyPathForDisplay:0];
  [(BKLibrarySortByMode *)v6 setEntityName:@"BKLibraryAsset"];
  [(BKLibrarySortByMode *)v6 setAllowsReordering:0];
  v15 = objc_alloc_init(BKLibrarySortByMode);
  [(BKLibrarySortByMode *)v15 setSortMode:10];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"All In Series" value:&stru_100A30A68 table:0];
  [(BKLibrarySortByMode *)v15 setTitle:v17];

  [(BKLibrarySortByMode *)v15 setLabel:v5];
  seriesID3 = [(BKLibraryBookshelfLibrarySeriesViewConfiguration *)self seriesID];
  v19 = [v3 contentPredicateForSeriesID:seriesID3 onlyPurchased:0 forceCloud:1 allowsExplicit:1];
  [(BKLibrarySortByMode *)v15 setAllowExplicitPredicate:v19];

  seriesID4 = [(BKLibraryBookshelfLibrarySeriesViewConfiguration *)self seriesID];
  v21 = [v3 contentPredicateForSeriesID:seriesID4 onlyPurchased:0 forceCloud:1 allowsExplicit:0];
  [(BKLibrarySortByMode *)v15 setHideExplicitPredicate:v21];

  v22 = [NSSortDescriptor sortDescriptorWithKey:@"seriesSortKey" ascending:1];
  v27 = v22;
  v23 = [NSArray arrayWithObjects:&v27 count:1];
  [(BKLibrarySortByMode *)v15 setSortDescriptors:v23];

  [(BKLibrarySortByMode *)v15 setSectionKeyPath:0];
  [(BKLibrarySortByMode *)v15 setSectionKeyPathForDisplay:0];
  [(BKLibrarySortByMode *)v15 setEntityName:@"BKLibraryAsset"];
  [(BKLibrarySortByMode *)v15 setAllowsReordering:0];
  v26[0] = v15;
  v26[1] = v6;
  v24 = [NSArray arrayWithObjects:v26 count:2];

  return v24;
}

@end