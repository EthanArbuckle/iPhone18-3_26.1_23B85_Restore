@interface MTRZoneManagementClusterTwoDCartesianZoneStruct
- (MTRZoneManagementClusterTwoDCartesianZoneStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRZoneManagementClusterTwoDCartesianZoneStruct

- (MTRZoneManagementClusterTwoDCartesianZoneStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRZoneManagementClusterTwoDCartesianZoneStruct;
  v2 = [(MTRZoneManagementClusterTwoDCartesianZoneStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284BD0DD8;

    use = v3->_use;
    v3->_use = &unk_284C3E588;

    array = [MEMORY[0x277CBEA60] array];
    vertices = v3->_vertices;
    v3->_vertices = array;

    color = v3->_color;
    v3->_color = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRZoneManagementClusterTwoDCartesianZoneStruct);
  name = [(MTRZoneManagementClusterTwoDCartesianZoneStruct *)self name];
  [(MTRZoneManagementClusterTwoDCartesianZoneStruct *)v4 setName:name];

  v6 = [(MTRZoneManagementClusterTwoDCartesianZoneStruct *)self use];
  [(MTRZoneManagementClusterTwoDCartesianZoneStruct *)v4 setUse:v6];

  vertices = [(MTRZoneManagementClusterTwoDCartesianZoneStruct *)self vertices];
  [(MTRZoneManagementClusterTwoDCartesianZoneStruct *)v4 setVertices:vertices];

  color = [(MTRZoneManagementClusterTwoDCartesianZoneStruct *)self color];
  [(MTRZoneManagementClusterTwoDCartesianZoneStruct *)v4 setColor:color];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: name:%@ use:%@; vertices:%@; color:%@; >", v5, self->_name, self->_use, self->_vertices, self->_color];;

  return v6;
}

@end