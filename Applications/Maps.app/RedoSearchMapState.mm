@interface RedoSearchMapState
- (BOOL)isEqual:(id)equal;
- (RedoSearchMapState)initWithMapRegion:(id)region zoomLevel:(double)level;
@end

@implementation RedoSearchMapState

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    mapRegion = [(RedoSearchMapState *)self mapRegion];
    mapRegion2 = [(RedoSearchMapState *)v6 mapRegion];
    if ([mapRegion isEqual:mapRegion2])
    {
      [(RedoSearchMapState *)self zoomLevel];
      v10 = v9;
      [(RedoSearchMapState *)v6 zoomLevel];
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (RedoSearchMapState)initWithMapRegion:(id)region zoomLevel:(double)level
{
  regionCopy = region;
  v11.receiver = self;
  v11.super_class = RedoSearchMapState;
  v8 = [(RedoSearchMapState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapRegion, region);
    v9->_zoomLevel = level;
  }

  return v9;
}

@end