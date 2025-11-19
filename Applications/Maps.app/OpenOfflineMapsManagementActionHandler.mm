@interface OpenOfflineMapsManagementActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation OpenOfflineMapsManagementActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v13 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v13;
    v7 = [v6 downloadRegion];

    if (v7)
    {
      v8 = [v5 appCoordinator];
      v9 = [v6 downloadRegion];
      v10 = [v6 downloadRegionName];
      [v8 showOfflineMapRegionSelectorForRegion:v9 name:v10 pushDataManagementFirst:1];

LABEL_9:
      goto LABEL_10;
    }

    if ([v6 path] == 1)
    {
      IsEnabled_OfflineMapsUIEnhancementsEnabled = MapsFeature_IsEnabled_OfflineMapsUIEnhancementsEnabled();
      v12 = [v5 appCoordinator];
      v8 = v12;
      if (!IsEnabled_OfflineMapsUIEnhancementsEnabled)
      {
        [v12 viewControllerShowExpiredOfflineMaps:0];
        goto LABEL_9;
      }
    }

    else
    {
      v12 = [v5 appCoordinator];
      v8 = v12;
    }

    [v12 viewControllerShowOfflineMaps:0];
    goto LABEL_9;
  }

LABEL_10:
}

@end