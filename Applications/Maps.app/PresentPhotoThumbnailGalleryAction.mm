@interface PresentPhotoThumbnailGalleryAction
- (PresentPhotoThumbnailGalleryAction)initWithMapItem:(id)item albumIndex:(unint64_t)index;
@end

@implementation PresentPhotoThumbnailGalleryAction

- (PresentPhotoThumbnailGalleryAction)initWithMapItem:(id)item albumIndex:(unint64_t)index
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = PresentPhotoThumbnailGalleryAction;
  v8 = [(PresentPhotoThumbnailGalleryAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, item);
    v9->_albumIndex = index;
  }

  return v9;
}

@end