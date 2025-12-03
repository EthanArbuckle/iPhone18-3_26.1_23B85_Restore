@interface MTRCameraAVStreamManagementClusterVideoResolutionStruct
- (MTRCameraAVStreamManagementClusterVideoResolutionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterVideoResolutionStruct

- (MTRCameraAVStreamManagementClusterVideoResolutionStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRCameraAVStreamManagementClusterVideoResolutionStruct;
  v2 = [(MTRCameraAVStreamManagementClusterVideoResolutionStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    width = v2->_width;
    v2->_width = &unk_284C3E588;

    height = v3->_height;
    v3->_height = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoResolutionStruct);
  width = [(MTRCameraAVStreamManagementClusterVideoResolutionStruct *)self width];
  [(MTRCameraAVStreamManagementClusterVideoResolutionStruct *)v4 setWidth:width];

  height = [(MTRCameraAVStreamManagementClusterVideoResolutionStruct *)self height];
  [(MTRCameraAVStreamManagementClusterVideoResolutionStruct *)v4 setHeight:height];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: width:%@ height:%@; >", v5, self->_width, self->_height];;

  return v6;
}

@end