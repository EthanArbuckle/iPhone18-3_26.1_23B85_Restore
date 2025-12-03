@interface MacPlacePhotoViewerConfiguration
- (MacPlacePhotoViewerConfiguration)initWithMapItem:(id)item photoGalleryViewController:(id)controller;
- (MacPlacePhotoViewerConfiguration)initWithMapItem:(id)item startingContext:(int64_t)context;
@end

@implementation MacPlacePhotoViewerConfiguration

- (MacPlacePhotoViewerConfiguration)initWithMapItem:(id)item photoGalleryViewController:(id)controller
{
  controllerCopy = controller;
  v8 = [(MacPlacePhotoViewerConfiguration *)self initWithMapItem:item startingContext:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photoGalleryViewController, controller);
  }

  return v9;
}

- (MacPlacePhotoViewerConfiguration)initWithMapItem:(id)item startingContext:(int64_t)context
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MacPlacePhotoViewerConfiguration;
  v8 = [(MacPlacePhotoViewerConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, item);
    v9->_startingContext = context;
  }

  return v9;
}

@end