@interface PLPhotoEditPersistenceManager(PhotosFrameworkAdditions)
+ (id)compositionControllerWithAdjustmentData:()PhotosFrameworkAdditions asset:imageOrientation:outMasterWidth:outMasterHeight:;
@end

@implementation PLPhotoEditPersistenceManager(PhotosFrameworkAdditions)

+ (id)compositionControllerWithAdjustmentData:()PhotosFrameworkAdditions asset:imageOrientation:outMasterWidth:outMasterHeight:
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  [v12 fetchPropertySetsIfNeeded];
  photoIrisProperties = [v12 photoIrisProperties];
  v14 = photoIrisProperties;
  if (photoIrisProperties)
  {
    [photoIrisProperties photoIrisVideoDuration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  if ((PLOrientationIsValid() & 1) == 0)
  {
    originalMetadataProperties = [v12 originalMetadataProperties];
    a5 = [originalMetadataProperties originalExifOrientation];
  }

  v17 = [MEMORY[0x1E69BE648] importPropertiesWithEXIFOrientation:a5 duration:Seconds];
  data = [v11 data];
  if (data)
  {
    v19 = objc_alloc_init(MEMORY[0x1E69BE650]);
    formatIdentifier = [v11 formatIdentifier];
    [v11 formatVersion];
    v22 = v21 = a7;
    v28 = 0;
    v27 = [v19 loadPhotoEditData:data formatIdentifier:formatIdentifier formatVersion:v22 importProperties:v17 error:&v28];
    v23 = v28;

    if (v23)
    {
      v24 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LODWORD(time.value) = 138412290;
        *(&time.value + 4) = v23;
        _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, "+[PLPhotoEditPersistenceManager compositionControllerWithAdjustmentData:asset:] could not create composition from persistence manager: %@", &time, 0xCu);
      }
    }

    if (a6 && v21)
    {
      [v19 loadMasterDimensionsFromPhotoEditData:data outMasterWidth:a6 outMasterHeight:v21];
    }

    v25 = v27;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end