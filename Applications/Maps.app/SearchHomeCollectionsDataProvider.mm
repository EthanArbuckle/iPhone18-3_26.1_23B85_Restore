@interface SearchHomeCollectionsDataProvider
- (BOOL)itemIsSaved:(id)saved;
- (NSArray)objects;
- (SearchHomeCollectionsDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title;
@end

@implementation SearchHomeCollectionsDataProvider

- (BOOL)itemIsSaved:(id)saved
{
  savedCopy = saved;
  objects = [(SearchHomeCollectionsDataProvider *)self objects];
  if (![objects count])
  {
    isSaved = 0;
    goto LABEL_7;
  }

  viewModels = [(SearchHomeCollectionsDataProvider *)self viewModels];
  v7 = [viewModels count];

  if (v7)
  {
    objects2 = [(SearchHomeCollectionsDataProvider *)self objects];
    firstObject = [objects2 firstObject];
    v10 = [firstObject indexOfObject:savedCopy];

    viewModels2 = [(SearchHomeCollectionsDataProvider *)self viewModels];
    v12 = [viewModels2 count];

    if (v10 < v12)
    {
      viewModels3 = [(SearchHomeCollectionsDataProvider *)self viewModels];
      firstObject2 = [viewModels3 firstObject];
      objects = [firstObject2 objectAtIndex:v10];

      isSaved = [objects isSaved];
LABEL_7:

      goto LABEL_8;
    }
  }

  isSaved = 0;
LABEL_8:

  return isSaved;
}

- (NSArray)objects
{
  objects = self->_objects;
  v2 = [NSArray arrayWithObjects:&objects count:1];

  return v2;
}

- (SearchHomeCollectionsDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title
{
  objectsCopy = objects;
  identifierCopy = identifier;
  titleCopy = title;
  v27.receiver = self;
  v27.super_class = SearchHomeCollectionsDataProvider;
  v13 = [(SearchHomeCollectionsDataProvider *)&v27 init];
  if (v13)
  {
    v14 = [objectsCopy copy];
    objects = v13->_objects;
    v13->_objects = v14;

    v16 = [MKPlaceCollectionsLogicController alloc];
    v17 = +[CuratedCollectionSyncManager sharedManager];
    v18 = [v16 initWithPlaceCollections:objectsCopy usingSyncCoordinator:v17 inContext:3];

    collections = [v18 collections];
    v28 = collections;
    v20 = [NSArray arrayWithObjects:&v28 count:1];
    viewModels = v13->_viewModels;
    v13->_viewModels = v20;

    v13->_type = type;
    v22 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v22;

    v24 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v24;
  }

  return v13;
}

@end