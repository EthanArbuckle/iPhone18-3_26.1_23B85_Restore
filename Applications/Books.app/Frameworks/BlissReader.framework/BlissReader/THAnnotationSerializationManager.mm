@interface THAnnotationSerializationManager
- (BOOL)wentOfflineAfterHandleAnnotationProvider:(id)provider willEncounterAnnotationAssetVersion:(id)version assetAssetVersion:(id)assetVersion assetID:(id)d assetURL:(id)l copyIfGoingOffline:(BOOL)offline;
@end

@implementation THAnnotationSerializationManager

- (BOOL)wentOfflineAfterHandleAnnotationProvider:(id)provider willEncounterAnnotationAssetVersion:(id)version assetAssetVersion:(id)assetVersion assetID:(id)d assetURL:(id)l copyIfGoingOffline:(BOOL)offline
{
  offlineCopy = offline;
  v12 = [version isStrictlyNewerThanBookVersion:assetVersion];
  if (v12)
  {
    if (([(THAnnotationSerializationManager *)self isAssetOfflineWithAssetID:d]& 1) != 0)
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      [(THAnnotationSerializationManager *)self protected_takeAssetOfflineWithProvider:provider assetID:d copyData:offlineCopy];
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

@end