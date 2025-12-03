@interface PhotosCloudRecommendations
- (PhotosCloudRecommendations)init;
- (void)recommendationsForThresholds:(id)thresholds afterTimestamp:(id)timestamp completion:(id)completion;
@end

@implementation PhotosCloudRecommendations

- (void)recommendationsForThresholds:(id)thresholds afterTimestamp:(id)timestamp completion:(id)completion
{
  completionCopy = completion;
  storageManagementUtility = [(PhotosCloudRecommendations *)self storageManagementUtility];
  if ([storageManagementUtility shouldShowCloudStorageTip])
  {
    cloudStorageTotalBytesSize = [storageManagementUtility cloudStorageTotalBytesSize];
    v9 = PXLocalizedString();
    v21 = [NSByteCountFormatter stringFromByteCount:cloudStorageTotalBytesSize countStyle:0];
    v22 = PXStringWithValidatedFormat();

    v10 = [CENativeModalRecommendationAction alloc];
    v11 = PXLocalizedString();
    v12 = [v10 initWithIdentifier:@"com.apple.mobileslideshow-reviewPhotosAndVideos" title:v11 detailControllerClass:{objc_opt_class(), v21}];

    v13 = [CERecommendation alloc];
    v14 = PXLocalizedString();
    bundleID = [(PhotosCloudRecommendations *)self bundleID];
    v16 = [NSNumber numberWithUnsignedLong:cloudStorageTotalBytesSize];
    v17 = CERecommendationTypeDeclutter;
    v24 = v12;
    v18 = [NSArray arrayWithObjects:&v24 count:1];
    v19 = [v13 initWithIdentifier:@"com.apple.mobileslideshow-reviewPhotosAndVideos" title:v14 message:v22 bundleID:bundleID storageRecoverable:v16 category:v17 actions:v18];

    v23 = v19;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    completionCopy[2](completionCopy, v20, 0);
  }

  else
  {
    completionCopy[2](completionCopy, &__NSArray0__struct, 0);
  }
}

- (PhotosCloudRecommendations)init
{
  v8.receiver = self;
  v8.super_class = PhotosCloudRecommendations;
  v2 = [(PhotosCloudRecommendations *)&v8 init];
  if (v2)
  {
    v3 = [PXStorageManagementUtility alloc];
    v4 = +[PHPhotoLibrary px_systemPhotoLibrary];
    v5 = [v3 initWithPhotoLibrary:v4];
    storageManagementUtility = v2->_storageManagementUtility;
    v2->_storageManagementUtility = v5;
  }

  return v2;
}

@end