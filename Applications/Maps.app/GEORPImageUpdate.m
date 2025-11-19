@interface GEORPImageUpdate
+ (id)deleteImageUpdateWithImageId:(id)a3;
+ (id)newImageUpdateWithClientImageId:(id)a3 responseData:(id)a4;
+ (id)newImageUpdateWithImageId:(id)a3;
+ (id)newImageUpdateWithImageId:(id)a3 photoMetadata:(id)a4;
+ (id)unmodifiedImageUpdateWithImageId:(id)a3;
- (NSUUID)comparisonIdentifier;
@end

@implementation GEORPImageUpdate

- (NSUUID)comparisonIdentifier
{
  v3 = [NSUUID alloc];
  v4 = [(GEORPImageUpdate *)self photoMetadata];
  v5 = [v4 clientImageUuid];
  v6 = [v3 initWithUUIDString:v5];

  return v6;
}

+ (id)unmodifiedImageUpdateWithImageId:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GEORPImageUpdate);
  [v4 setAction:3];
  [v4 setImageId:v3];

  return v4;
}

+ (id)deleteImageUpdateWithImageId:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GEORPImageUpdate);
  [v4 setAction:2];
  [v4 setImageId:v3];

  return v4;
}

+ (id)newImageUpdateWithClientImageId:(id)a3 responseData:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [GEORPImageUpdate newImageUpdateWithImageId:0];
  [v7 setUploadResponse:v5];

  v8 = objc_alloc_init(GEORPPhotoMetadata);
  [v8 setClientImageUuid:v6];

  [v7 setPhotoMetadata:v8];
  return v7;
}

+ (id)newImageUpdateWithImageId:(id)a3 photoMetadata:(id)a4
{
  v5 = a4;
  v6 = [GEORPImageUpdate newImageUpdateWithImageId:a3];
  [v6 setPhotoMetadata:v5];

  return v6;
}

+ (id)newImageUpdateWithImageId:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GEORPImageUpdate);
  [v4 setAction:1];
  [v4 setImageId:v3];

  return v4;
}

@end