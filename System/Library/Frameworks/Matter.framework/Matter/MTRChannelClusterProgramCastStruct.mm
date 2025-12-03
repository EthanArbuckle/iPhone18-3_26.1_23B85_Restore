@interface MTRChannelClusterProgramCastStruct
- (MTRChannelClusterProgramCastStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChannelClusterProgramCastStruct

- (MTRChannelClusterProgramCastStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRChannelClusterProgramCastStruct;
  v2 = [(MTRChannelClusterProgramCastStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284BD0DD8;

    role = v3->_role;
    v3->_role = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterProgramCastStruct);
  name = [(MTRChannelClusterProgramCastStruct *)self name];
  [(MTRChannelClusterProgramCastStruct *)v4 setName:name];

  role = [(MTRChannelClusterProgramCastStruct *)self role];
  [(MTRChannelClusterProgramCastStruct *)v4 setRole:role];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: name:%@ role:%@; >", v5, self->_name, self->_role];;

  return v6;
}

@end