@interface MTRApplicationLauncherClusterApplicationStruct
- (MTRApplicationLauncherClusterApplicationStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRApplicationLauncherClusterApplicationStruct

- (MTRApplicationLauncherClusterApplicationStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRApplicationLauncherClusterApplicationStruct;
  v2 = [(MTRApplicationLauncherClusterApplicationStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    catalogVendorID = v2->_catalogVendorID;
    v2->_catalogVendorID = &unk_284C3E588;

    applicationID = v3->_applicationID;
    v3->_applicationID = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRApplicationLauncherClusterApplicationStruct);
  v5 = [(MTRApplicationLauncherClusterApplicationStruct *)self catalogVendorID];
  [(MTRApplicationLauncherClusterApplicationStruct *)v4 setCatalogVendorID:v5];

  v6 = [(MTRApplicationLauncherClusterApplicationStruct *)self applicationID];
  [(MTRApplicationLauncherClusterApplicationStruct *)v4 setApplicationID:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: catalogVendorID:%@ applicationID:%@; >", v5, self->_catalogVendorID, self->_applicationID];;

  return v6;
}

@end