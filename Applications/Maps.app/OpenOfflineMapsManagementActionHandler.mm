@interface OpenOfflineMapsManagementActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation OpenOfflineMapsManagementActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    downloadRegion = [v6 downloadRegion];

    if (downloadRegion)
    {
      appCoordinator = [contextCopy appCoordinator];
      downloadRegion2 = [v6 downloadRegion];
      downloadRegionName = [v6 downloadRegionName];
      [appCoordinator showOfflineMapRegionSelectorForRegion:downloadRegion2 name:downloadRegionName pushDataManagementFirst:1];

LABEL_9:
      goto LABEL_10;
    }

    if ([v6 path] == 1)
    {
      IsEnabled_OfflineMapsUIEnhancementsEnabled = MapsFeature_IsEnabled_OfflineMapsUIEnhancementsEnabled();
      appCoordinator2 = [contextCopy appCoordinator];
      appCoordinator = appCoordinator2;
      if (!IsEnabled_OfflineMapsUIEnhancementsEnabled)
      {
        [appCoordinator2 viewControllerShowExpiredOfflineMaps:0];
        goto LABEL_9;
      }
    }

    else
    {
      appCoordinator2 = [contextCopy appCoordinator];
      appCoordinator = appCoordinator2;
    }

    [appCoordinator2 viewControllerShowOfflineMaps:0];
    goto LABEL_9;
  }

LABEL_10:
}

@end