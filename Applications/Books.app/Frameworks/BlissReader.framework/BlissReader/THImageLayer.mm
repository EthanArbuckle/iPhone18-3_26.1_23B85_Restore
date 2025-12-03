@interface THImageLayer
- (CGImage)p_createImageFromImageProviderBlock:(id)block withMaxSize:(CGSize)size outNativeSize:(CGSize *)nativeSize;
- (void)setImageProviderBlock:(id)block setLayerBounds:(BOOL)bounds maxSize:(CGSize)size outNativeSize:(CGSize *)nativeSize;
@end

@implementation THImageLayer

- (void)setImageProviderBlock:(id)block setLayerBounds:(BOOL)bounds maxSize:(CGSize)size outNativeSize:(CGSize *)nativeSize
{
  if (block)
  {
    boundsCopy = bounds;
    v8 = [(THImageLayer *)self p_createImageFromImageProviderBlock:block withMaxSize:nativeSize outNativeSize:size.width, size.height];
    [(THImageLayer *)self setContents:v8];
    if (boundsCopy)
    {
      Width = CGImageGetWidth(v8);
      [(THImageLayer *)self setBounds:0.0, 0.0, Width, CGImageGetHeight(v8)];
    }

    CGImageRelease(v8);
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }
}

- (CGImage)p_createImageFromImageProviderBlock:(id)block withMaxSize:(CGSize)size outNativeSize:(CGSize *)nativeSize
{
  height = size.height;
  width = size.width;
  v8 = (*(block + 2))(block, a2);
  v9 = v8;
  if (nativeSize)
  {
    v10 = CGImageSourceCopyPropertiesAtIndex(v8, 0, 0);
    [-[__CFDictionary objectForKey:](v10 objectForKey:{kCGImagePropertyPixelWidth), "floatValue"}];
    v12 = v11;
    [-[__CFDictionary objectForKey:](v10 objectForKey:{kCGImagePropertyPixelHeight), "floatValue"}];
    nativeSize->width = v12;
    nativeSize->height = v13;
  }

  v14 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{kCFBooleanTrue, kCGImageSourceCreateThumbnailFromImageAlways, 0}];
  v15 = width;
  v16 = height;
  v17 = ceilf(fmaxf(v15, v16));
  if (v17 < 1.79769313e308)
  {
    [v14 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v17), kCGImageSourceThumbnailMaxPixelSize}];
  }

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v9, 0, v14);
  if (!ThumbnailAtIndex)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return ThumbnailAtIndex;
}

@end