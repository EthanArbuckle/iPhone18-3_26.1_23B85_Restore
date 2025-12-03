@interface MTRContentLauncherClusterAdditionalInfoStruct
- (MTRContentLauncherClusterAdditionalInfoStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRContentLauncherClusterAdditionalInfoStruct

- (MTRContentLauncherClusterAdditionalInfoStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRContentLauncherClusterAdditionalInfoStruct;
  v2 = [(MTRContentLauncherClusterAdditionalInfoStruct *)&v7 init];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentLauncherClusterAdditionalInfoStruct);
  name = [(MTRContentLauncherClusterAdditionalInfoStruct *)self name];
  [(MTRContentLauncherClusterAdditionalInfoStruct *)v4 setName:name];

  value = [(MTRContentLauncherClusterAdditionalInfoStruct *)self value];
  [(MTRContentLauncherClusterAdditionalInfoStruct *)v4 setValue:value];

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