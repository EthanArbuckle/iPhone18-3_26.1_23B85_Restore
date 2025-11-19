@interface THAnnotationSerializationManager
- (BOOL)wentOfflineAfterHandleAnnotationProvider:(id)a3 willEncounterAnnotationAssetVersion:(id)a4 assetAssetVersion:(id)a5 assetID:(id)a6 assetURL:(id)a7 copyIfGoingOffline:(BOOL)a8;
@end

@implementation THAnnotationSerializationManager

- (BOOL)wentOfflineAfterHandleAnnotationProvider:(id)a3 willEncounterAnnotationAssetVersion:(id)a4 assetAssetVersion:(id)a5 assetID:(id)a6 assetURL:(id)a7 copyIfGoingOffline:(BOOL)a8
{
  v8 = a8;
  v12 = [a4 isStrictlyNewerThanBookVersion:a5];
  if (v12)
  {
    if (([(THAnnotationSerializationManager *)self isAssetOfflineWithAssetID:a6]& 1) != 0)
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      [(THAnnotationSerializationManager *)self protected_takeAssetOfflineWithProvider:a3 assetID:a6 copyData:v8];
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

@end