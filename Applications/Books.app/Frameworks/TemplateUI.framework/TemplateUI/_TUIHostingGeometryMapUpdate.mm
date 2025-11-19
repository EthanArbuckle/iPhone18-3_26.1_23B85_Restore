@interface _TUIHostingGeometryMapUpdate
- (_TUIHostingGeometryMapUpdate)initWithFrom:(id)a3 to:(id)a4 reuseTypes:(id)a5;
@end

@implementation _TUIHostingGeometryMapUpdate

- (_TUIHostingGeometryMapUpdate)initWithFrom:(id)a3 to:(id)a4 reuseTypes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = _TUIHostingGeometryMapUpdate;
  v12 = [(_TUIHostingGeometryMapUpdate *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_from, a3);
    objc_storeStrong(&v13->_to, a4);
    if (v10 == v9)
    {
      if (v10)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v10)
      {
        v14 = [v10 computeDifferencesWithMap:v9];
        differences = v13->_differences;
        v13->_differences = v14;

LABEL_6:
        v16 = [[_TUIHostingGeometryReuseMap alloc] initWithMap:v10 reuseTypes:v11];
LABEL_10:
        toReuseMap = v13->_toReuseMap;
        v13->_toReuseMap = v16;

        goto LABEL_11;
      }

      if (v9)
      {
        v17 = [NSSet alloc];
        v18 = [v9 identifierEnumerator];
        v19 = [v18 allObjects];
        v20 = [v17 initWithArray:v19];
        v21 = v13->_differences;
        v13->_differences = v20;
      }
    }

    v16 = 0;
    goto LABEL_10;
  }

LABEL_11:

  return v13;
}

@end