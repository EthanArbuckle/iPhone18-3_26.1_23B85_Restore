@interface THWGalleryItem
- (CGRect)cropRect;
- (THWGalleryItem)initWithContext:(id)a3 imageData:(id)a4 thumbnailData:(id)a5 captionStorage:(id)a6 cropRect:(CGRect)a7 accessibilityDescriptions:(id)a8;
- (id)childEnumerator;
- (void)dealloc;
@end

@implementation THWGalleryItem

- (THWGalleryItem)initWithContext:(id)a3 imageData:(id)a4 thumbnailData:(id)a5 captionStorage:(id)a6 cropRect:(CGRect)a7 accessibilityDescriptions:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v22.receiver = self;
  v22.super_class = THWGalleryItem;
  v17 = [(THWGalleryItem *)&v22 init];
  if (v17)
  {
    v18 = a6;
    v17->_captionStorage = v18;
    [(THWPStorage *)v18 setPreventHighlighting:1];
    v17->_cropRect.origin.x = x;
    v17->_cropRect.origin.y = y;
    v17->_cropRect.size.width = width;
    v17->_cropRect.size.height = height;
    v17->_accessibilityDescriptions = a8;
    v19 = [[TSDMediaStyle alloc] initWithContext:a3 name:0 overridePropertyMap:0 isVariation:0];
    v17->_imageInfo = [[THImageInfo alloc] initWithContext:a3 geometry:0 style:v19 imageData:a4 originalImageData:0];
    v20 = [[TSDMaskInfo alloc] initWithContext:a3 geometry:0 pathSource:{+[TSDScalarPathSource rectangleWithNaturalSize:](TSDScalarPathSource, "rectangleWithNaturalSize:", 100.0, 100.0)}];
    [(THImageInfo *)v17->_imageInfo setMaskInfo:v20];

    if (a5)
    {
      v17->_thumbnailImageData = a5;
    }
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWGalleryItem;
  [(THWGalleryItem *)&v3 dealloc];
}

- (id)childEnumerator
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_captionStorage)
  {
    [v3 addObject:?];
  }

  return [v4 objectEnumerator];
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end