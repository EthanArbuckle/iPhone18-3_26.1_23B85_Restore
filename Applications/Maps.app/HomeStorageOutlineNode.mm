@interface HomeStorageOutlineNode
- (HomeStorageOutlineNode)initWithDictionaryRepresentation:(id)representation;
- (HomeStorageOutlineNode)initWithExpandedValue:(id)value children:(id)children;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation HomeStorageOutlineNode

- (NSDictionary)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  expandedValue = self->_expandedValue;
  if (expandedValue)
  {
    [v3 setObject:expandedValue forKeyedSubscript:@"expanded"];
  }

  v6 = +[NSMutableDictionary dictionary];
  children = self->_children;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100DFDB6C;
  v12[3] = &unk_1016555C8;
  v8 = v6;
  v13 = v8;
  [(NSDictionary *)children enumerateKeysAndObjectsUsingBlock:v12];
  if ([v8 count])
  {
    v9 = [v8 copy];
    [v4 setObject:v9 forKeyedSubscript:@"children"];
  }

  v10 = [v4 copy];

  return v10;
}

- (HomeStorageOutlineNode)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"expanded"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [representationCopy objectForKeyedSubscript:@"children"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v10 count]);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100DFDD48;
  v15 = v14[3] = &unk_1016555A0;
  v11 = v15;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];

  v12 = [(HomeStorageOutlineNode *)self initWithExpandedValue:v7 children:v11];
  return v12;
}

- (HomeStorageOutlineNode)initWithExpandedValue:(id)value children:(id)children
{
  valueCopy = value;
  childrenCopy = children;
  v14.receiver = self;
  v14.super_class = HomeStorageOutlineNode;
  v9 = [(HomeStorageOutlineNode *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expandedValue, value);
    v11 = [NSDictionary dictionaryWithDictionary:childrenCopy];
    children = v10->_children;
    v10->_children = v11;
  }

  return v10;
}

@end