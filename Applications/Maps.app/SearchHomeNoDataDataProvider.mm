@interface SearchHomeNoDataDataProvider
- (SearchHomeNoDataDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title;
@end

@implementation SearchHomeNoDataDataProvider

- (SearchHomeNoDataDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title
{
  objectsCopy = objects;
  identifierCopy = identifier;
  titleCopy = title;
  v21.receiver = self;
  v21.super_class = SearchHomeNoDataDataProvider;
  v13 = [(SearchHomeNoDataDataProvider *)&v21 init];
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