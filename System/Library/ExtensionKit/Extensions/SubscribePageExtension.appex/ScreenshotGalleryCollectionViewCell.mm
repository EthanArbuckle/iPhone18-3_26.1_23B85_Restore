@interface ScreenshotGalleryCollectionViewCell
- (_TtC22SubscribePageExtension35ScreenshotGalleryCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation ScreenshotGalleryCollectionViewCell

- (_TtC22SubscribePageExtension35ScreenshotGalleryCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ScreenshotGalleryCollectionViewCell();
  return [(ScreenshotCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

@end