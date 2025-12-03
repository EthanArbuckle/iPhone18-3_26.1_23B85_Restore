@interface THWGalleryItem
- (CGRect)cropRect;
- (THWGalleryItem)initWithContext:(id)context imageData:(id)data thumbnailData:(id)thumbnailData captionStorage:(id)storage cropRect:(CGRect)rect accessibilityDescriptions:(id)descriptions;
- (id)childEnumerator;
- (void)dealloc;
@end

@implementation THWGalleryItem

- (THWGalleryItem)initWithContext:(id)context imageData:(id)data thumbnailData:(id)thumbnailData captionStorage:(id)storage cropRect:(CGRect)rect accessibilityDescriptions:(id)descriptions
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v22.receiver = self;
  v22.super_class = THWGalleryItem;
  v17 = [(THWGalleryItem *)&v22 init];
  if (v17)
  {
    storageCopy = storage;
    v17->_captionStorage = storageCopy;
    [(THWPStorage *)storageCopy setPreventHighlighting:1];
    v17->_cropRect.origin.x = x;
    v17->_cropRect.origin.y = y;
    v17->_cropRect.size.width = width;
    v17->_cropRect.size.height = height;
    v17->_accessibilityDescriptions = descriptions;
    v19 = [[TSDMediaStyle alloc] initWithContext:context name:0 overridePropertyMap:0 isVariation:0];
    v17->_imageInfo = [[THImageInfo alloc] initWithContext:context geometry:0 style:v19 imageData:data originalImageData:0];
    v20 = [[TSDMaskInfo alloc] initWithContext:context geometry:0 pathSource:{+[TSDScalarPathSource rectangleWithNaturalSize:](TSDScalarPathSource, "rectangleWithNaturalSize:", 100.0, 100.0)}];
    [(THImageInfo *)v17->_imageInfo setMaskInfo:v20];

    if (thumbnailData)
    {
      v17->_thumbnailImageData = thumbnailData;
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