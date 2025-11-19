@interface SearchHomeCollectionsDataProvider
- (BOOL)itemIsSaved:(id)a3;
- (NSArray)objects;
- (SearchHomeCollectionsDataProvider)initWithObjects:(id)a3 type:(int64_t)a4 identifier:(id)a5 title:(id)a6;
@end

@implementation SearchHomeCollectionsDataProvider

- (BOOL)itemIsSaved:(id)a3
{
  v4 = a3;
  v5 = [(SearchHomeCollectionsDataProvider *)self objects];
  if (![v5 count])
  {
    v15 = 0;
    goto LABEL_7;
  }

  v6 = [(SearchHomeCollectionsDataProvider *)self viewModels];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(SearchHomeCollectionsDataProvider *)self objects];
    v9 = [v8 firstObject];
    v10 = [v9 indexOfObject:v4];

    v11 = [(SearchHomeCollectionsDataProvider *)self viewModels];
    v12 = [v11 count];

    if (v10 < v12)
    {
      v13 = [(SearchHomeCollectionsDataProvider *)self viewModels];
      v14 = [v13 firstObject];
      v5 = [v14 objectAtIndex:v10];

      v15 = [v5 isSaved];
LABEL_7:

      goto LABEL_8;
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (NSArray)objects
{
  objects = self->_objects;
  v2 = [NSArray arrayWithObjects:&objects count:1];

  return v2;
}

- (SearchHomeCollectionsDataProvider)initWithObjects:(id)a3 type:(int64_t)a4 identifier:(id)a5 title:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v27.receiver = self;
  v27.super_class = SearchHomeCollectionsDataProvider;
  v13 = [(SearchHomeCollectionsDataProvider *)&v27 init];
  if (v13)
  {
    v14 = [v10 copy];
    objects = v13->_objects;
    v13->_objects = v14;

    v16 = [MKPlaceCollectionsLogicController alloc];
    v17 = +[CuratedCollectionSyncManager sharedManager];
    v18 = [v16 initWithPlaceCollections:v10 usingSyncCoordinator:v17 inContext:3];

    v19 = [v18 collections];
    v28 = v19;
    v20 = [NSArray arrayWithObjects:&v28 count:1];
    viewModels = v13->_viewModels;
    v13->_viewModels = v20;

    v13->_type = a4;
    v22 = [v11 copy];
    identifier = v13->_identifier;
    v13->_identifier = v22;

    v24 = [v12 copy];
    title = v13->_title;
    v13->_title = v24;
  }

  return v13;
}

@end