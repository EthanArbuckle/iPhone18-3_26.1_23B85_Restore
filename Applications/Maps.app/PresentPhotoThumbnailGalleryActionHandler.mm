@interface PresentPhotoThumbnailGalleryActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation PresentPhotoThumbnailGalleryActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    coordinator = [contextCopy coordinator];
    mapItem = [v6 mapItem];
    albumIndex = [v6 albumIndex];

    [coordinator viewControllerShowPhotoThumbnailGalleryWithMapItem:mapItem albumIndex:albumIndex];
  }
}

@end