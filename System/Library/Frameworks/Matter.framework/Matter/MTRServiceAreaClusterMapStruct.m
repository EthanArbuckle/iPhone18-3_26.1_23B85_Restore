@interface MTRServiceAreaClusterMapStruct
- (MTRServiceAreaClusterMapStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRServiceAreaClusterMapStruct

- (MTRServiceAreaClusterMapStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRServiceAreaClusterMapStruct;
  v2 = [(MTRServiceAreaClusterMapStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    mapID = v2->_mapID;
    v2->_mapID = &unk_284C3E588;

    name = v3->_name;
    v3->_name = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRServiceAreaClusterMapStruct);
  v5 = [(MTRServiceAreaClusterMapStruct *)self mapID];
  [(MTRServiceAreaClusterMapStruct *)v4 setMapID:v5];

  v6 = [(MTRServiceAreaClusterMapStruct *)self name];
  [(MTRServiceAreaClusterMapStruct *)v4 setName:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: mapID:%@ name:%@; >", v5, self->_mapID, self->_name];;

  return v6;
}

@end