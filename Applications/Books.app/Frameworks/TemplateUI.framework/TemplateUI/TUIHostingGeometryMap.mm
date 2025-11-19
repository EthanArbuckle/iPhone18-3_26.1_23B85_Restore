@interface TUIHostingGeometryMap
- (TUIHostingGeometryMap)initWithMap:(id)a3 identifiers:(id)a4;
- (id)computeDifferencesWithMap:(id)a3;
- (id)description;
@end

@implementation TUIHostingGeometryMap

- (TUIHostingGeometryMap)initWithMap:(id)a3 identifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TUIHostingGeometryMap;
  v8 = [(TUIHostingGeometryMap *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    map = v8->_map;
    v8->_map = v9;

    v11 = [v7 copy];
    identifiers = v8->_identifiers;
    v8->_identifiers = v11;
  }

  return v8;
}

- (id)computeDifferencesWithMap:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 map];
  v7 = [v6 allKeys];
  v8 = [NSMutableSet setWithArray:v7];

  map = self->_map;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_D11BC;
  v17[3] = &unk_261628;
  v18 = v4;
  v19 = v8;
  v10 = v5;
  v20 = v10;
  v11 = v8;
  v12 = v4;
  [(NSDictionary *)map enumerateKeysAndObjectsUsingBlock:v17];
  v13 = [v11 allObjects];
  [v10 addObjectsFromArray:v13];

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