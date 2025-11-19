@interface RedoSearchMapState
- (BOOL)isEqual:(id)a3;
- (RedoSearchMapState)initWithMapRegion:(id)a3 zoomLevel:(double)a4;
@end

@implementation RedoSearchMapState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RedoSearchMapState *)self mapRegion];
    v8 = [(RedoSearchMapState *)v6 mapRegion];
    if ([v7 isEqual:v8])
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

- (RedoSearchMapState)initWithMapRegion:(id)a3 zoomLevel:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RedoSearchMapState;
  v8 = [(RedoSearchMapState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapRegion, a3);
    v9->_zoomLevel = a4;
  }

  return v9;
}

@end