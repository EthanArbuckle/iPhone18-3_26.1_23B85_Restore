@interface THPageThumbnailViewInTransition
- (CGRect)originalThumbnailFrame;
- (THPageThumbnailView)thumbnailView;
@end

@implementation THPageThumbnailViewInTransition

- (THPageThumbnailView)thumbnailView
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);

  return WeakRetained;
}

- (CGRect)originalThumbnailFrame
{
  x = self->_originalThumbnailFrame.origin.x;
  y = self->_originalThumbnailFrame.origin.y;
  width = self->_originalThumbnailFrame.size.width;
  height = self->_originalThumbnailFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end