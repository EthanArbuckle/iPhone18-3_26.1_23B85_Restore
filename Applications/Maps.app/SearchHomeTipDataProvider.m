@interface SearchHomeTipDataProvider
- (NSArray)objects;
- (SearchHomeTipDataProvider)initWithObjects:(id)a3 type:(int64_t)a4 identifier:(id)a5 title:(id)a6;
@end

@implementation SearchHomeTipDataProvider

- (NSArray)objects
{
  if ((MapsFeature_IsEnabled_NaturalSearchMaps() & 1) == 0)
  {
    v3 = +[MapsOfflineUIHelper sharedHelper];
    v4 = [v3 isUsingOfflineMaps];

    if (v4)
    {
      objects = self->_objects;
      self->_objects = &__NSArray0__struct;
    }
  }

  v6 = self->_objects;

  return v6;
}

- (SearchHomeTipDataProvider)initWithObjects:(id)a3 type:(int64_t)a4 identifier:(id)a5 title:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = SearchHomeTipDataProvider;
  v13 = [(SearchHomeTipDataProvider *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    objects = v13->_objects;
    v13->_objects = v14;

    v13->_type = a4;
    v16 = [v11 copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v18 = [v12 copy];
    title = v13->_title;
    v13->_title = v18;
  }

  return v13;
}

@end