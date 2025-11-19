@interface ODRBackgroundMaintenance
- (ODRBackgroundMaintenance)init;
@end

@implementation ODRBackgroundMaintenance

- (ODRBackgroundMaintenance)init
{
  v7.receiver = self;
  v7.super_class = ODRBackgroundMaintenance;
  v2 = [(ODRBackgroundMaintenance *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    maintenanceQueue = v2->_maintenanceQueue;
    v2->_maintenanceQueue = v3;

    v5 = v2->_maintenanceQueue;
    if (v5)
    {
      [(NSOperationQueue *)v5->_operationQueue setName:@"OnDemandResourcesDaemon Maintenance Queue"];
    }
  }

  return v2;
}

@end