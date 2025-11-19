@interface _TUIHostingGeometryReuseMap
- (_TUIHostingGeometryReuseMap)initWithMap:(id)a3 reuseTypes:(id)a4;
- (id)geometryForIdentifier:(id)a3 requestedSize:(CGSize)a4;
@end

@implementation _TUIHostingGeometryReuseMap

- (_TUIHostingGeometryReuseMap)initWithMap:(id)a3 reuseTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = _TUIHostingGeometryReuseMap;
  v8 = [(_TUIHostingGeometryReuseMap *)&v21 init];
  if (v8)
  {
    v9 = [v6 identifiers];
    v10 = v7;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_E730C;
    v25 = &unk_261980;
    v26 = v10;
    v11 = [v9 objectsPassingTest:&v22];

    reuseIdentifiers = v8->_reuseIdentifiers;
    v8->_reuseIdentifiers = v11;

    v13 = [v6 map];
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

- (id)geometryForIdentifier:(id)a3 requestedSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [_TUIHostingGeometryReuseKey alloc];
  v9 = [v7 type];
  v10 = [v7 identifier];

  v11 = [(_TUIHostingGeometryReuseKey *)v8 initWithType:v9 identifier:v10 requestedSize:width, height];
  v12 = [(NSDictionary *)self->_reuseMap objectForKeyedSubscript:v11];

  return v12;
}

@end