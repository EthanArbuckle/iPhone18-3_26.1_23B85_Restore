@interface SearchHomeCitiesDataProvider
- (NSArray)objects;
- (SearchHomeCitiesDataProvider)initWithObjects:(id)a3 type:(int64_t)a4 identifier:(id)a5 title:(id)a6;
@end

@implementation SearchHomeCitiesDataProvider

- (NSArray)objects
{
  objects = self->_objects;
  v2 = [NSArray arrayWithObjects:&objects count:1];

  return v2;
}

- (SearchHomeCitiesDataProvider)initWithObjects:(id)a3 type:(int64_t)a4 identifier:(id)a5 title:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = SearchHomeCitiesDataProvider;
  v13 = [(SearchHomeCitiesDataProvider *)&v25 init];
  if (v13)
  {
    v14 = [v10 copy];
    objects = v13->_objects;
    v13->_objects = v14;

    v16 = [[MKPlaceCompactCollectionsLogicController alloc] initWithGuideLocations:v10 context:1];
    v17 = [v16 compactCollectionsInSection:0];
    v26 = v17;
    v18 = [NSArray arrayWithObjects:&v26 count:1];
    viewModels = v13->_viewModels;
    v13->_viewModels = v18;

    v13->_type = a4;
    v20 = [v11 copy];
    identifier = v13->_identifier;
    v13->_identifier = v20;

    v22 = [v12 copy];
    title = v13->_title;
    v13->_title = v22;
  }

  return v13;
}

@end