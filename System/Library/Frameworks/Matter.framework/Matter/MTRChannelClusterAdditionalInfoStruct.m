@interface MTRChannelClusterAdditionalInfoStruct
- (MTRChannelClusterAdditionalInfoStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRChannelClusterAdditionalInfoStruct

- (MTRChannelClusterAdditionalInfoStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRChannelClusterAdditionalInfoStruct;
  v2 = [(MTRChannelClusterAdditionalInfoStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284BD0DD8;

    value = v3->_value;
    v3->_value = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRChannelClusterAdditionalInfoStruct);
  v5 = [(MTRChannelClusterAdditionalInfoStruct *)self name];
  [(MTRChannelClusterAdditionalInfoStruct *)v4 setName:v5];

  v6 = [(MTRChannelClusterAdditionalInfoStruct *)self value];
  [(MTRChannelClusterAdditionalInfoStruct *)v4 setValue:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: name:%@ value:%@; >", v5, self->_name, self->_value];;

  return v6;
}

@end