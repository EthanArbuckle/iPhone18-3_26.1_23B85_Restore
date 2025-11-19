@interface ACXGizmoApplicationInstallStatusItem
+ (ACXGizmoApplicationInstallStatusItem)itemWithStatus:(unint64_t)a3 companionBundleID:(id)a4;
@end

@implementation ACXGizmoApplicationInstallStatusItem

+ (ACXGizmoApplicationInstallStatusItem)itemWithStatus:(unint64_t)a3 companionBundleID:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(ACXGizmoApplicationInstallStatusItem);
  [(ACXGizmoApplicationInstallStatusItem *)v6 setInstallStatus:a3];
  [(ACXGizmoApplicationInstallStatusItem *)v6 setCompanionBundleID:v5];

  return v6;
}

@end