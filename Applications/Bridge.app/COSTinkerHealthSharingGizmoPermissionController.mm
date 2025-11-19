@interface COSTinkerHealthSharingGizmoPermissionController
- (COSTinkerHealthSharingGizmoPermissionController)init;
@end

@implementation COSTinkerHealthSharingGizmoPermissionController

- (COSTinkerHealthSharingGizmoPermissionController)init
{
  v3 = objc_alloc_init(COSTinkerHealthSharingSetupDelegate);
  v7.receiver = self;
  v7.super_class = COSTinkerHealthSharingGizmoPermissionController;
  v4 = [(COSTinkerHealthSharingGizmoPermissionController *)&v7 initWithStyle:1 delegate:v3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_setupDelegate, v3);
    [(COSTinkerHealthSharingSetupDelegate *)v5->_setupDelegate setPresentingController:v5];
  }

  return v5;
}

@end