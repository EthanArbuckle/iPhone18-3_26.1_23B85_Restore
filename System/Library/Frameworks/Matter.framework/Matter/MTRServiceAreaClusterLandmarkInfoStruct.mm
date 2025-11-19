@interface MTRServiceAreaClusterLandmarkInfoStruct
- (MTRServiceAreaClusterLandmarkInfoStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRServiceAreaClusterLandmarkInfoStruct

- (MTRServiceAreaClusterLandmarkInfoStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRServiceAreaClusterLandmarkInfoStruct;
  v2 = [(MTRServiceAreaClusterLandmarkInfoStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    landmarkTag = v2->_landmarkTag;
    v2->_landmarkTag = &unk_284C3E588;

    relativePositionTag = v3->_relativePositionTag;
    v3->_relativePositionTag = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRServiceAreaClusterLandmarkInfoStruct);
  v5 = [(MTRServiceAreaClusterLandmarkInfoStruct *)self landmarkTag];
  [(MTRServiceAreaClusterLandmarkInfoStruct *)v4 setLandmarkTag:v5];

  v6 = [(MTRServiceAreaClusterLandmarkInfoStruct *)self relativePositionTag];
  [(MTRServiceAreaClusterLandmarkInfoStruct *)v4 setRelativePositionTag:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: landmarkTag:%@ relativePositionTag:%@; >", v5, self->_landmarkTag, self->_relativePositionTag];;

  return v6;
}

@end