@interface MTRAccessControlClusterAccessRestrictionStruct
- (MTRAccessControlClusterAccessRestrictionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRAccessControlClusterAccessRestrictionStruct

- (MTRAccessControlClusterAccessRestrictionStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRAccessControlClusterAccessRestrictionStruct;
  v2 = [(MTRAccessControlClusterAccessRestrictionStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    type = v2->_type;
    v2->_type = &unk_284C3E588;

    id = v3->_id;
    v3->_id = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRAccessControlClusterAccessRestrictionStruct);
  type = [(MTRAccessControlClusterAccessRestrictionStruct *)self type];
  [(MTRAccessControlClusterAccessRestrictionStruct *)v4 setType:type];

  v6 = [(MTRAccessControlClusterAccessRestrictionStruct *)self id];
  [(MTRAccessControlClusterAccessRestrictionStruct *)v4 setId:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: type:%@ id:%@; >", v5, self->_type, self->_id];;

  return v6;
}

@end