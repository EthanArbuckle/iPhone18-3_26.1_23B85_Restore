@interface MTRServiceAreaClusterAreaInfoStruct
- (MTRServiceAreaClusterAreaInfoStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRServiceAreaClusterAreaInfoStruct

- (MTRServiceAreaClusterAreaInfoStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRServiceAreaClusterAreaInfoStruct;
  v2 = [(MTRServiceAreaClusterAreaInfoStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    locationInfo = v2->_locationInfo;
    v2->_locationInfo = 0;

    landmarkInfo = v3->_landmarkInfo;
    v3->_landmarkInfo = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRServiceAreaClusterAreaInfoStruct);
  locationInfo = [(MTRServiceAreaClusterAreaInfoStruct *)self locationInfo];
  [(MTRServiceAreaClusterAreaInfoStruct *)v4 setLocationInfo:locationInfo];

  landmarkInfo = [(MTRServiceAreaClusterAreaInfoStruct *)self landmarkInfo];
  [(MTRServiceAreaClusterAreaInfoStruct *)v4 setLandmarkInfo:landmarkInfo];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: locationInfo:%@ landmarkInfo:%@; >", v5, self->_locationInfo, self->_landmarkInfo];;

  return v6;
}

@end