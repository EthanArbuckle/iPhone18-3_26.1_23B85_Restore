@interface MTRApplicationLauncherClusterApplicationEPStruct
- (MTRApplicationLauncherClusterApplicationEPStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRApplicationLauncherClusterApplicationEPStruct

- (MTRApplicationLauncherClusterApplicationEPStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRApplicationLauncherClusterApplicationEPStruct;
  v2 = [(MTRApplicationLauncherClusterApplicationEPStruct *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    application = v2->_application;
    v2->_application = v3;

    endpoint = v2->_endpoint;
    v2->_endpoint = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRApplicationLauncherClusterApplicationEPStruct);
  application = [(MTRApplicationLauncherClusterApplicationEPStruct *)self application];
  [(MTRApplicationLauncherClusterApplicationEPStruct *)v4 setApplication:application];

  endpoint = [(MTRApplicationLauncherClusterApplicationEPStruct *)self endpoint];
  [(MTRApplicationLauncherClusterApplicationEPStruct *)v4 setEndpoint:endpoint];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: application:%@ endpoint:%@; >", v5, self->_application, self->_endpoint];;

  return v6;
}

@end