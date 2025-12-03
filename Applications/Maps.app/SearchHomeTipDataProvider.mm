@interface SearchHomeTipDataProvider
- (NSArray)objects;
- (SearchHomeTipDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title;
@end

@implementation SearchHomeTipDataProvider

- (NSArray)objects
{
  if ((MapsFeature_IsEnabled_NaturalSearchMaps() & 1) == 0)
  {
    v3 = +[MapsOfflineUIHelper sharedHelper];
    isUsingOfflineMaps = [v3 isUsingOfflineMaps];

    if (isUsingOfflineMaps)
    {
      objects = self->_objects;
      self->_objects = &__NSArray0__struct;
    }
  }

  v6 = self->_objects;

  return v6;
}

- (SearchHomeTipDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title
{
  objectsCopy = objects;
  identifierCopy = identifier;
  titleCopy = title;
  v21.receiver = self;
  v21.super_class = SearchHomeTipDataProvider;
  v13 = [(SearchHomeTipDataProvider *)&v21 init];
  if (v13)
  {
    v14 = [objectsCopy copy];
    objects = v13->_objects;
    v13->_objects = v14;

    v13->_type = type;
    v16 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v18 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v18;
  }

  return v13;
}

@end