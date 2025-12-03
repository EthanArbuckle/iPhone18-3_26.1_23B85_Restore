@interface _TUIHostingGeometryReuseMap
- (_TUIHostingGeometryReuseMap)initWithMap:(id)map reuseTypes:(id)types;
- (id)geometryForIdentifier:(id)identifier requestedSize:(CGSize)size;
@end

@implementation _TUIHostingGeometryReuseMap

- (_TUIHostingGeometryReuseMap)initWithMap:(id)map reuseTypes:(id)types
{
  mapCopy = map;
  typesCopy = types;
  v21.receiver = self;
  v21.super_class = _TUIHostingGeometryReuseMap;
  v8 = [(_TUIHostingGeometryReuseMap *)&v21 init];
  if (v8)
  {
    identifiers = [mapCopy identifiers];
    v10 = typesCopy;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_E730C;
    v25 = &unk_261980;
    v26 = v10;
    v11 = [identifiers objectsPassingTest:&v22];

    reuseIdentifiers = v8->_reuseIdentifiers;
    v8->_reuseIdentifiers = v11;

    v13 = [mapCopy map];
    v14 = v10;
    v15 = objc_opt_new();
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_E7354;
    v25 = &unk_2619A8;
    v26 = v14;
    v16 = v15;
    v27 = v16;
    v17 = v14;
    [v13 enumerateKeysAndObjectsUsingBlock:&v22];
    if ([v16 count])
    {
      v18 = [v16 copy];
    }

    else
    {
      v18 = 0;
    }

    reuseMap = v8->_reuseMap;
    v8->_reuseMap = v18;
  }

  return v8;
}

- (id)geometryForIdentifier:(id)identifier requestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  v8 = [_TUIHostingGeometryReuseKey alloc];
  type = [identifierCopy type];
  identifier = [identifierCopy identifier];

  height = [(_TUIHostingGeometryReuseKey *)v8 initWithType:type identifier:identifier requestedSize:width, height];
  v12 = [(NSDictionary *)self->_reuseMap objectForKeyedSubscript:height];

  return v12;
}

@end