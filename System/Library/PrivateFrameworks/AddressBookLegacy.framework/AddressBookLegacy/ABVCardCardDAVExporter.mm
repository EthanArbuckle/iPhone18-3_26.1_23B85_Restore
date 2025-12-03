@interface ABVCardCardDAVExporter
+ (id)copyVCardRepresentationOfRecord:(void *)record withPhoto:(id)photo extraPhotoParameters:(id)parameters;
+ (id)copyVCardRepresentationOfRecord:(void *)record withPhoto:(id)photo extraPhotoParameters:(id)parameters includeWallpaper:(BOOL)wallpaper;
@end

@implementation ABVCardCardDAVExporter

+ (id)copyVCardRepresentationOfRecord:(void *)record withPhoto:(id)photo extraPhotoParameters:(id)parameters
{
  v8 = objc_opt_class();

  return [v8 copyVCardRepresentationOfRecord:record withPhoto:photo extraPhotoParameters:parameters includeWallpaper:0];
}

+ (id)copyVCardRepresentationOfRecord:(void *)record withPhoto:(id)photo extraPhotoParameters:(id)parameters includeWallpaper:(BOOL)wallpaper
{
  wallpaperCopy = wallpaper;
  v10 = [(ABVCardRecord *)[ABVCardCardDAVRecord alloc] initWithRecord:record];
  if (ABRecordGetRecordType(record))
  {
    v11 = [(ABVCardRecord *)v10 _copyGroupVCardRepresentationAsStringIncludeExternalProperties:1];
  }

  else
  {
    if (!photo)
    {
      photo = [MEMORY[0x1E695DEF0] data];
    }

    v11 = [(ABVCardRecord *)v10 _copyVCardRepresentationAsStringIncludeExternalProperties:1 withPhoto:photo extraPhotoParameters:parameters includePrivateData:1 includeWallpaper:wallpaperCopy];
  }

  v12 = v11;

  copyABVCardDataRepresentation = [v12 copyABVCardDataRepresentation];
  return copyABVCardDataRepresentation;
}

@end