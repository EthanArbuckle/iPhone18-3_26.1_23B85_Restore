@interface MacPlacePhotoViewerConfiguration
- (MacPlacePhotoViewerConfiguration)initWithMapItem:(id)a3 photoGalleryViewController:(id)a4;
- (MacPlacePhotoViewerConfiguration)initWithMapItem:(id)a3 startingContext:(int64_t)a4;
@end

@implementation MacPlacePhotoViewerConfiguration

- (MacPlacePhotoViewerConfiguration)initWithMapItem:(id)a3 photoGalleryViewController:(id)a4
{
  v7 = a4;
  v8 = [(MacPlacePhotoViewerConfiguration *)self initWithMapItem:a3 startingContext:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photoGalleryViewController, a4);
  }

  return v9;
}

- (MacPlacePhotoViewerConfiguration)initWithMapItem:(id)a3 startingContext:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MacPlacePhotoViewerConfiguration;
  v8 = [(MacPlacePhotoViewerConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, a3);
    v9->_startingContext = a4;
  }

  return v9;
}

@end