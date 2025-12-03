@interface MTRTargetNavigatorClusterTargetInfoStruct
- (MTRTargetNavigatorClusterTargetInfoStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTargetNavigatorClusterTargetInfoStruct

- (MTRTargetNavigatorClusterTargetInfoStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRTargetNavigatorClusterTargetInfoStruct;
  v2 = [(MTRTargetNavigatorClusterTargetInfoStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = &unk_284C3E588;

    name = v3->_name;
    v3->_name = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTargetNavigatorClusterTargetInfoStruct);
  identifier = [(MTRTargetNavigatorClusterTargetInfoStruct *)self identifier];
  [(MTRTargetNavigatorClusterTargetInfoStruct *)v4 setIdentifier:identifier];

  name = [(MTRTargetNavigatorClusterTargetInfoStruct *)self name];
  [(MTRTargetNavigatorClusterTargetInfoStruct *)v4 setName:name];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: identifier:%@ name:%@; >", v5, self->_identifier, self->_name];;

  return v6;
}

@end