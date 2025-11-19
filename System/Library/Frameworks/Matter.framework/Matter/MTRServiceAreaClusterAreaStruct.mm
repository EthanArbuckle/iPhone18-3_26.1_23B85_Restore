@interface MTRServiceAreaClusterAreaStruct
- (MTRServiceAreaClusterAreaStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRServiceAreaClusterAreaStruct

- (MTRServiceAreaClusterAreaStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRServiceAreaClusterAreaStruct;
  v2 = [(MTRServiceAreaClusterAreaStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    areaID = v2->_areaID;
    v2->_areaID = &unk_284C3E588;

    mapID = v3->_mapID;
    v3->_mapID = 0;

    v6 = objc_opt_new();
    areaInfo = v3->_areaInfo;
    v3->_areaInfo = v6;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRServiceAreaClusterAreaStruct);
  v5 = [(MTRServiceAreaClusterAreaStruct *)self areaID];
  [(MTRServiceAreaClusterAreaStruct *)v4 setAreaID:v5];

  v6 = [(MTRServiceAreaClusterAreaStruct *)self mapID];
  [(MTRServiceAreaClusterAreaStruct *)v4 setMapID:v6];

  v7 = [(MTRServiceAreaClusterAreaStruct *)self areaInfo];
  [(MTRServiceAreaClusterAreaStruct *)v4 setAreaInfo:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: areaID:%@ mapID:%@; areaInfo:%@; >", v5, self->_areaID, self->_mapID, self->_areaInfo];;

  return v6;
}

@end