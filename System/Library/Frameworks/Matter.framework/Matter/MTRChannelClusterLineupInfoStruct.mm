@interface MTRChannelClusterLineupInfoStruct
- (MTRChannelClusterLineupInfoStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRChannelClusterLineupInfoStruct

- (MTRChannelClusterLineupInfoStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRChannelClusterLineupInfoStruct;
  v2 = [(MTRChannelClusterLineupInfoStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    operatorName = v2->_operatorName;
    v2->_operatorName = &stru_284BD0DD8;

    lineupName = v3->_lineupName;
    v3->_lineupName = 0;

    postalCode = v3->_postalCode;
    v3->_postalCode = 0;

    lineupInfoType = v3->_lineupInfoType;
    v3->_lineupInfoType = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRChannelClusterLineupInfoStruct);
  v5 = [(MTRChannelClusterLineupInfoStruct *)self operatorName];
  [(MTRChannelClusterLineupInfoStruct *)v4 setOperatorName:v5];

  v6 = [(MTRChannelClusterLineupInfoStruct *)self lineupName];
  [(MTRChannelClusterLineupInfoStruct *)v4 setLineupName:v6];

  v7 = [(MTRChannelClusterLineupInfoStruct *)self postalCode];
  [(MTRChannelClusterLineupInfoStruct *)v4 setPostalCode:v7];

  v8 = [(MTRChannelClusterLineupInfoStruct *)self lineupInfoType];
  [(MTRChannelClusterLineupInfoStruct *)v4 setLineupInfoType:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: operatorName:%@ lineupName:%@; postalCode:%@; lineupInfoType:%@; >", v5, self->_operatorName, self->_lineupName, self->_postalCode, self->_lineupInfoType];;

  return v6;
}

@end