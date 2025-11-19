@interface MTRZoneManagementClusterTwoDCartesianVertexStruct
- (MTRZoneManagementClusterTwoDCartesianVertexStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRZoneManagementClusterTwoDCartesianVertexStruct

- (MTRZoneManagementClusterTwoDCartesianVertexStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRZoneManagementClusterTwoDCartesianVertexStruct;
  v2 = [(MTRZoneManagementClusterTwoDCartesianVertexStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    x = v2->_x;
    v2->_x = &unk_284C3E588;

    y = v3->_y;
    v3->_y = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRZoneManagementClusterTwoDCartesianVertexStruct);
  v5 = [(MTRZoneManagementClusterTwoDCartesianVertexStruct *)self x];
  [(MTRZoneManagementClusterTwoDCartesianVertexStruct *)v4 setX:v5];

  v6 = [(MTRZoneManagementClusterTwoDCartesianVertexStruct *)self y];
  [(MTRZoneManagementClusterTwoDCartesianVertexStruct *)v4 setY:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: x:%@ y:%@; >", v5, self->_x, self->_y];;

  return v6;
}

@end