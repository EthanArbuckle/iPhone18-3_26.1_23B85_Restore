@interface THImageLayer
- (CGImage)p_createImageFromImageProviderBlock:(id)a3 withMaxSize:(CGSize)a4 outNativeSize:(CGSize *)a5;
- (void)setImageProviderBlock:(id)a3 setLayerBounds:(BOOL)a4 maxSize:(CGSize)a5 outNativeSize:(CGSize *)a6;
@end

@implementation THImageLayer

- (void)setImageProviderBlock:(id)a3 setLayerBounds:(BOOL)a4 maxSize:(CGSize)a5 outNativeSize:(CGSize *)a6
{
  if (a3)
  {
    v6 = a4;
    v8 = [(THImageLayer *)self p_createImageFromImageProviderBlock:a3 withMaxSize:a6 outNativeSize:a5.width, a5.height];
    [(THImageLayer *)self setContents:v8];
    if (v6)
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

- (CGImage)p_createImageFromImageProviderBlock:(id)a3 withMaxSize:(CGSize)a4 outNativeSize:(CGSize *)a5
{
  height = a4.height;
  width = a4.width;
  v8 = (*(a3 + 2))(a3, a2);
  v9 = v8;
  if (a5)
  {
    v10 = CGImageSourceCopyPropertiesAtIndex(v8, 0, 0);
    [-[__CFDictionary objectForKey:](v10 objectForKey:{kCGImagePropertyPixelWidth), "floatValue"}];
    v12 = v11;
    [-[__CFDictionary objectForKey:](v10 objectForKey:{kCGImagePropertyPixelHeight), "floatValue"}];
    a5->width = v12;
    a5->height = v13;
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