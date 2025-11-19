@interface GEOStorageRouteRequestStorage
- (GEOComposedGeometryRoutePersistentData)destinationRouteData;
- (void)setDestinationRouteData:(id)a3;
@end

@implementation GEOStorageRouteRequestStorage

- (void)setDestinationRouteData:(id)a3
{
  v6 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v6];
  v5 = v6;
  [(GEOStorageRouteRequestStorage *)self setDestinationPersistentData:v4];
  objc_setAssociatedObject(self, "destinationRouteData", 0, 1);
}

- (GEOComposedGeometryRoutePersistentData)destinationRouteData
{
  v3 = [(GEOStorageRouteRequestStorage *)self destinationPersistentData];
  if (v3)
  {
    v4 = objc_getAssociatedObject(self, "destinationRouteData");
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v9 = 0;
      v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
      v7 = v9;
      objc_setAssociatedObject(self, "destinationRouteData", v6, 1);
      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end