@interface ACXGizmoApplicationInstallStatusItem
+ (ACXGizmoApplicationInstallStatusItem)itemWithStatus:(unint64_t)status companionBundleID:(id)d;
@end

@implementation ACXGizmoApplicationInstallStatusItem

+ (ACXGizmoApplicationInstallStatusItem)itemWithStatus:(unint64_t)status companionBundleID:(id)d
{
  dCopy = d;
  v6 = objc_alloc_init(ACXGizmoApplicationInstallStatusItem);
  [(ACXGizmoApplicationInstallStatusItem *)v6 setInstallStatus:status];
  [(ACXGizmoApplicationInstallStatusItem *)v6 setCompanionBundleID:dCopy];

  return v6;
}

@end