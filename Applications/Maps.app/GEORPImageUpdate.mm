@interface GEORPImageUpdate
+ (id)deleteImageUpdateWithImageId:(id)id;
+ (id)newImageUpdateWithClientImageId:(id)id responseData:(id)data;
+ (id)newImageUpdateWithImageId:(id)id;
+ (id)newImageUpdateWithImageId:(id)id photoMetadata:(id)metadata;
+ (id)unmodifiedImageUpdateWithImageId:(id)id;
- (NSUUID)comparisonIdentifier;
@end

@implementation GEORPImageUpdate

- (NSUUID)comparisonIdentifier
{
  v3 = [NSUUID alloc];
  photoMetadata = [(GEORPImageUpdate *)self photoMetadata];
  clientImageUuid = [photoMetadata clientImageUuid];
  v6 = [v3 initWithUUIDString:clientImageUuid];

  return v6;
}

+ (id)unmodifiedImageUpdateWithImageId:(id)id
{
  idCopy = id;
  v4 = objc_alloc_init(GEORPImageUpdate);
  [v4 setAction:3];
  [v4 setImageId:idCopy];

  return v4;
}

+ (id)deleteImageUpdateWithImageId:(id)id
{
  idCopy = id;
  v4 = objc_alloc_init(GEORPImageUpdate);
  [v4 setAction:2];
  [v4 setImageId:idCopy];

  return v4;
}

+ (id)newImageUpdateWithClientImageId:(id)id responseData:(id)data
{
  dataCopy = data;
  idCopy = id;
  v7 = [GEORPImageUpdate newImageUpdateWithImageId:0];
  [v7 setUploadResponse:dataCopy];

  v8 = objc_alloc_init(GEORPPhotoMetadata);
  [v8 setClientImageUuid:idCopy];

  [v7 setPhotoMetadata:v8];
  return v7;
}

+ (id)newImageUpdateWithImageId:(id)id photoMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = [GEORPImageUpdate newImageUpdateWithImageId:id];
  [v6 setPhotoMetadata:metadataCopy];

  return v6;
}

+ (id)newImageUpdateWithImageId:(id)id
{
  idCopy = id;
  v4 = objc_alloc_init(GEORPImageUpdate);
  [v4 setAction:1];
  [v4 setImageId:idCopy];

  return v4;
}

@end