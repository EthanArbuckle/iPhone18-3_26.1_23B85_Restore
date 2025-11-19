@interface PresentPhotoThumbnailGalleryAction
- (PresentPhotoThumbnailGalleryAction)initWithMapItem:(id)a3 albumIndex:(unint64_t)a4;
@end

@implementation PresentPhotoThumbnailGalleryAction

- (PresentPhotoThumbnailGalleryAction)initWithMapItem:(id)a3 albumIndex:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PresentPhotoThumbnailGalleryAction;
  v8 = [(PresentPhotoThumbnailGalleryAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, a3);
    v9->_albumIndex = a4;
  }

  return v9;
}

@end