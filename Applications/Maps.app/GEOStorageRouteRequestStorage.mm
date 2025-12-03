@interface GEOStorageRouteRequestStorage
- (GEOComposedGeometryRoutePersistentData)destinationRouteData;
- (void)setDestinationRouteData:(id)data;
@end

@implementation GEOStorageRouteRequestStorage

- (void)setDestinationRouteData:(id)data
{
  v6 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:data requiringSecureCoding:1 error:&v6];
  v5 = v6;
  [(GEOStorageRouteRequestStorage *)self setDestinationPersistentData:v4];
  objc_setAssociatedObject(self, "destinationRouteData", 0, 1);
}

- (GEOComposedGeometryRoutePersistentData)destinationRouteData
{
  destinationPersistentData = [(GEOStorageRouteRequestStorage *)self destinationPersistentData];
  if (destinationPersistentData)
  {
    v4 = objc_getAssociatedObject(self, "destinationRouteData");
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v9 = 0;
      v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:destinationPersistentData error:&v9];
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