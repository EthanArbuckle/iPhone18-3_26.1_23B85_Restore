@interface APMaintenanceHandle
- (APMaintenanceHandle)init;
- (id)getStateDumpWithError:(id *)error;
@end

@implementation APMaintenanceHandle

- (id)getStateDumpWithError:(id *)error
{
  v3 = sub_185B59D20();

  return v3;
}

- (APMaintenanceHandle)init
{
  v3.receiver = self;
  v3.super_class = APMaintenanceHandle;
  return [(APMaintenanceHandle *)&v3 init];
}

@end