@interface MTRContentLauncherClusterContentSearchStruct
- (MTRContentLauncherClusterContentSearchStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRContentLauncherClusterContentSearchStruct

- (MTRContentLauncherClusterContentSearchStruct)init
{
  v6.receiver = self;
  v6.super_class = MTRContentLauncherClusterContentSearchStruct;
  v2 = [(MTRContentLauncherClusterContentSearchStruct *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    parameterList = v2->_parameterList;
    v2->_parameterList = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRContentLauncherClusterContentSearchStruct);
  v5 = [(MTRContentLauncherClusterContentSearchStruct *)self parameterList];
  [(MTRContentLauncherClusterContentSearchStruct *)v4 setParameterList:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: parameterList:%@ >", v5, self->_parameterList];;

  return v6;
}

@end