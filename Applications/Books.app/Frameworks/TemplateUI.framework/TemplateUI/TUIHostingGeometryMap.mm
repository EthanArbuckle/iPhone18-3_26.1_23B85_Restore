@interface TUIHostingGeometryMap
- (TUIHostingGeometryMap)initWithMap:(id)map identifiers:(id)identifiers;
- (id)computeDifferencesWithMap:(id)map;
- (id)description;
@end

@implementation TUIHostingGeometryMap

- (TUIHostingGeometryMap)initWithMap:(id)map identifiers:(id)identifiers
{
  mapCopy = map;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = TUIHostingGeometryMap;
  v8 = [(TUIHostingGeometryMap *)&v14 init];
  if (v8)
  {
    v9 = [mapCopy copy];
    map = v8->_map;
    v8->_map = v9;

    v11 = [identifiersCopy copy];
    identifiers = v8->_identifiers;
    v8->_identifiers = v11;
  }

  return v8;
}

- (id)computeDifferencesWithMap:(id)map
{
  mapCopy = map;
  v5 = objc_opt_new();
  v6 = [mapCopy map];
  allKeys = [v6 allKeys];
  v8 = [NSMutableSet setWithArray:allKeys];

  map = self->_map;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_D11BC;
  v17[3] = &unk_261628;
  v18 = mapCopy;
  v19 = v8;
  v10 = v5;
  v20 = v10;
  v11 = v8;
  v12 = mapCopy;
  [(NSDictionary *)map enumerateKeysAndObjectsUsingBlock:v17];
  allObjects = [v11 allObjects];
  [v10 addObjectsFromArray:allObjects];

  v14 = v20;
  v15 = v10;

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p map=%@>", v4, self, self->_map];

  return v5;
}

@end