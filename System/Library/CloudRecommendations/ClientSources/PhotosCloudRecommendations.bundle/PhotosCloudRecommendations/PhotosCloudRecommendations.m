@interface PhotosCloudRecommendations
- (PhotosCloudRecommendations)init;
- (void)recommendationsForThresholds:(id)a3 afterTimestamp:(id)a4 completion:(id)a5;
@end

@implementation PhotosCloudRecommendations

- (void)recommendationsForThresholds:(id)a3 afterTimestamp:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(PhotosCloudRecommendations *)self storageManagementUtility];
  if ([v7 shouldShowCloudStorageTip])
  {
    v8 = [v7 cloudStorageTotalBytesSize];
    v9 = PXLocalizedString();
    v21 = [NSByteCountFormatter stringFromByteCount:v8 countStyle:0];
    v22 = PXStringWithValidatedFormat();

    v10 = [CENativeModalRecommendationAction alloc];
    v11 = PXLocalizedString();
    v12 = [v10 initWithIdentifier:@"com.apple.mobileslideshow-reviewPhotosAndVideos" title:v11 detailControllerClass:{objc_opt_class(), v21}];

    v13 = [CERecommendation alloc];
    v14 = PXLocalizedString();
    v15 = [(PhotosCloudRecommendations *)self bundleID];
    v16 = [NSNumber numberWithUnsignedLong:v8];
    v17 = CERecommendationTypeDeclutter;
    v24 = v12;
    v18 = [NSArray arrayWithObjects:&v24 count:1];
    v19 = [v13 initWithIdentifier:@"com.apple.mobileslideshow-reviewPhotosAndVideos" title:v14 message:v22 bundleID:v15 storageRecoverable:v16 category:v17 actions:v18];

    v23 = v19;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    v6[2](v6, v20, 0);
  }

  else
  {
    v6[2](v6, &__NSArray0__struct, 0);
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