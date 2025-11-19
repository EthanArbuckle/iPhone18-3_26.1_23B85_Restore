@interface ABVCardCardDAVExporter
+ (id)copyVCardRepresentationOfRecord:(void *)a3 withPhoto:(id)a4 extraPhotoParameters:(id)a5;
+ (id)copyVCardRepresentationOfRecord:(void *)a3 withPhoto:(id)a4 extraPhotoParameters:(id)a5 includeWallpaper:(BOOL)a6;
@end

@implementation ABVCardCardDAVExporter

+ (id)copyVCardRepresentationOfRecord:(void *)a3 withPhoto:(id)a4 extraPhotoParameters:(id)a5
{
  v8 = objc_opt_class();

  return [v8 copyVCardRepresentationOfRecord:a3 withPhoto:a4 extraPhotoParameters:a5 includeWallpaper:0];
}

+ (id)copyVCardRepresentationOfRecord:(void *)a3 withPhoto:(id)a4 extraPhotoParameters:(id)a5 includeWallpaper:(BOOL)a6
{
  v6 = a6;
  v10 = [(ABVCardRecord *)[ABVCardCardDAVRecord alloc] initWithRecord:a3];
  if (ABRecordGetRecordType(a3))
  {
    v11 = [(ABVCardRecord *)v10 _copyGroupVCardRepresentationAsStringIncludeExternalProperties:1];
  }

  else
  {
    if (!a4)
    {
      a4 = [MEMORY[0x1E695DEF0] data];
    }

    v11 = [(ABVCardRecord *)v10 _copyVCardRepresentationAsStringIncludeExternalProperties:1 withPhoto:a4 extraPhotoParameters:a5 includePrivateData:1 includeWallpaper:v6];
  }

  v12 = v11;

  v13 = [v12 copyABVCardDataRepresentation];
  return v13;
}

@end