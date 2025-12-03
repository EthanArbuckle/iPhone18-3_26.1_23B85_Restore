@interface MTRContentLauncherClusterParameterStruct
- (MTRContentLauncherClusterParameterStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRContentLauncherClusterParameterStruct

- (MTRContentLauncherClusterParameterStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRContentLauncherClusterParameterStruct;
  v2 = [(MTRContentLauncherClusterParameterStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    type = v2->_type;
    v2->_type = &unk_284C3E588;

    value = v3->_value;
    v3->_value = &stru_284BD0DD8;

    externalIDList = v3->_externalIDList;
    v3->_externalIDList = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentLauncherClusterParameterStruct);
  type = [(MTRContentLauncherClusterParameterStruct *)self type];
  [(MTRContentLauncherClusterParameterStruct *)v4 setType:type];

  value = [(MTRContentLauncherClusterParameterStruct *)self value];
  [(MTRContentLauncherClusterParameterStruct *)v4 setValue:value];

  externalIDList = [(MTRContentLauncherClusterParameterStruct *)self externalIDList];
  [(MTRContentLauncherClusterParameterStruct *)v4 setExternalIDList:externalIDList];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: type:%@ value:%@; externalIDList:%@; >", v5, self->_type, self->_value, self->_externalIDList];;

  return v6;
}

@end