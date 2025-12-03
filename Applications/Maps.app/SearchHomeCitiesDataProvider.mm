@interface SearchHomeCitiesDataProvider
- (NSArray)objects;
- (SearchHomeCitiesDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title;
@end

@implementation SearchHomeCitiesDataProvider

- (NSArray)objects
{
  objects = self->_objects;
  v2 = [NSArray arrayWithObjects:&objects count:1];

  return v2;
}

- (SearchHomeCitiesDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title
{
  objectsCopy = objects;
  identifierCopy = identifier;
  titleCopy = title;
  v25.receiver = self;
  v25.super_class = SearchHomeCitiesDataProvider;
  v13 = [(SearchHomeCitiesDataProvider *)&v25 init];
  if (v13)
  {
    v14 = [objectsCopy copy];
    objects = v13->_objects;
    v13->_objects = v14;

    v16 = [[MKPlaceCompactCollectionsLogicController alloc] initWithGuideLocations:objectsCopy context:1];
    v17 = [v16 compactCollectionsInSection:0];
    v26 = v17;
    v18 = [NSArray arrayWithObjects:&v26 count:1];
    viewModels = v13->_viewModels;
    v13->_viewModels = v18;

    v13->_type = type;
    v20 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v20;

    v22 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v22;
  }

  return v13;
}

@end