@interface _TUIHostingGeometryMapUpdate
- (_TUIHostingGeometryMapUpdate)initWithFrom:(id)from to:(id)to reuseTypes:(id)types;
@end

@implementation _TUIHostingGeometryMapUpdate

- (_TUIHostingGeometryMapUpdate)initWithFrom:(id)from to:(id)to reuseTypes:(id)types
{
  fromCopy = from;
  toCopy = to;
  typesCopy = types;
  v24.receiver = self;
  v24.super_class = _TUIHostingGeometryMapUpdate;
  v12 = [(_TUIHostingGeometryMapUpdate *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_from, from);
    objc_storeStrong(&v13->_to, to);
    if (toCopy == fromCopy)
    {
      if (toCopy)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (toCopy)
      {
        v14 = [toCopy computeDifferencesWithMap:fromCopy];
        differences = v13->_differences;
        v13->_differences = v14;

LABEL_6:
        v16 = [[_TUIHostingGeometryReuseMap alloc] initWithMap:toCopy reuseTypes:typesCopy];
LABEL_10:
        toReuseMap = v13->_toReuseMap;
        v13->_toReuseMap = v16;

        goto LABEL_11;
      }

      if (fromCopy)
      {
        v17 = [NSSet alloc];
        identifierEnumerator = [fromCopy identifierEnumerator];
        allObjects = [identifierEnumerator allObjects];
        v20 = [v17 initWithArray:allObjects];
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