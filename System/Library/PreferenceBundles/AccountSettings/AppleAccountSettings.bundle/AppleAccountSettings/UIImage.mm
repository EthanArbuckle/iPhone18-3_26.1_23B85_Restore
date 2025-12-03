@interface UIImage
+ (id)_circularImageFromIcon:(id)icon size:(double)size scale:(double)scale;
+ (id)_imageDescriptorForSize:(CGSize)size;
+ (id)_imageForIcon:(id)icon imageDescriptor:(id)descriptor;
+ (id)aaui_imageFromColor:(id)color;
+ (id)addBackgroundForImage:(id)image withBackgroundColor:(id)color yShift:(double)shift;
+ (id)circularImageForBundleID:(id)d size:(double)size scale:(double)scale;
+ (id)circularImageFromCGImage:(CGImage *)image size:(CGSize)size scale:(double)scale;
+ (id)iconForSize:(CGSize)size bundleIdentifier:(id)identifier;
+ (id)iconForSize:(CGSize)size typeID:(id)d;
- (CGRect)_cropRectForRawImageOrientation:(CGRect)orientation;
- (id)_imageByCroppingCGImageToRect:(CGRect)rect;
- (id)_imageByCroppingCIImageToRect:(CGRect)rect;
- (id)imageByCroppingToRect:(CGRect)rect;
@end

@implementation UIImage

+ (id)aaui_imageFromColor:(id)color
{
  colorCopy = color;
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  [colorCopy set];

  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  UIRectFill(v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

- (id)imageByCroppingToRect:(CGRect)rect
{
  [(UIImage *)self _cropRectForRawImageOrientation:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(UIImage *)self CGImage])
  {
    v12 = [(UIImage *)self _imageByCroppingCGImageToRect:v5, v7, v9, v11];
  }

  else
  {
    cIImage = [(UIImage *)self CIImage];

    if (cIImage)
    {
      v12 = [(UIImage *)self _imageByCroppingCIImageToRect:v5, v7, v9, v11];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)_imageByCroppingCGImageToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  cGImage = [(UIImage *)self CGImage];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGImageCreateWithImageInRect(cGImage, v14);
  [(UIImage *)self scale];
  v11 = [UIImage imageWithCGImage:v9 scale:[(UIImage *)self imageOrientation] orientation:v10];
  CGImageRelease(v9);

  return v11;
}

- (id)_imageByCroppingCIImageToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  cIImage = [(UIImage *)self CIImage];
  v9 = [cIImage imageByCroppingToRect:{x, y, width, height}];

  [(UIImage *)self scale];
  v11 = [UIImage imageWithCIImage:v9 scale:[(UIImage *)self imageOrientation] orientation:v10];

  return v11;
}

- (CGRect)_cropRectForRawImageOrientation:(CGRect)orientation
{
  height = orientation.size.height;
  width = orientation.size.width;
  y = orientation.origin.y;
  x = orientation.origin.x;
  v8 = *&CGAffineTransformIdentity.c;
  *&v29.a = *&CGAffineTransformIdentity.a;
  *&v29.c = v8;
  v26 = v8;
  v25 = *&CGAffineTransformIdentity.tx;
  *&v29.tx = v25;
  imageOrientation = [(UIImage *)self imageOrientation];
  if (imageOrientation <= 7)
  {
    if (((1 << imageOrientation) & 0x22) != 0)
    {
      *&v28.a = *&v29.a;
      *&v28.c = v26;
      *&v28.tx = v25;
      CGAffineTransformRotate(&v29, &v28, 3.14159265);
      [(UIImage *)self size];
      v19 = v18;
      [(UIImage *)self scale];
      v21 = -(v19 * v20);
      [(UIImage *)self size];
      v23 = v22;
      [(UIImage *)self scale];
      v14 = -(v23 * v24);
      v27 = v29;
      v13 = v21;
      goto LABEL_8;
    }

    if (((1 << imageOrientation) & 0x44) != 0)
    {
      *&v28.a = *&v29.a;
      *&v28.c = v26;
      *&v28.tx = v25;
      CGAffineTransformRotate(&v29, &v28, 1.57079633);
      [(UIImage *)self size];
      v16 = v15;
      [(UIImage *)self scale];
      v14 = -(v16 * v17);
      v27 = v29;
      v13 = 0.0;
      goto LABEL_8;
    }

    if (((1 << imageOrientation) & 0x88) != 0)
    {
      *&v28.a = *&v29.a;
      *&v28.c = v26;
      *&v28.tx = v25;
      CGAffineTransformRotate(&v29, &v28, -1.57079633);
      [(UIImage *)self size];
      v11 = v10;
      [(UIImage *)self scale];
      v13 = -(v11 * v12);
      v27 = v29;
      v14 = 0.0;
LABEL_8:
      CGAffineTransformTranslate(&v28, &v27, v13, v14);
      v29 = v28;
    }
  }

  v28 = v29;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  return CGRectApplyAffineTransform(v30, &v28);
}

+ (id)circularImageForBundleID:(id)d size:(double)size scale:(double)scale
{
  dCopy = d;
  v9 = [[ISIcon alloc] initWithBundleIdentifier:dCopy];

  v10 = [self _circularImageFromIcon:v9 size:size scale:scale];

  return v10;
}

+ (id)_circularImageFromIcon:(id)icon size:(double)size scale:(double)scale
{
  iconCopy = icon;
  v9 = [[ISImageDescriptor alloc] initWithSize:size scale:{size, scale}];
  v10 = [iconCopy prepareImageForDescriptor:v9];

  v11 = [self circularImageFromCGImage:objc_msgSend(v10 size:"CGImage") scale:{size, size, scale}];

  return v11;
}

+ (id)iconForSize:(CGSize)size typeID:(id)d
{
  height = size.height;
  width = size.width;
  dCopy = d;
  v8 = [[ISIcon alloc] initWithType:dCopy];

  v9 = [self _imageDescriptorForSize:{width, height}];
  v10 = [self _imageForIcon:v8 imageDescriptor:v9];

  return v10;
}

+ (id)iconForSize:(CGSize)size bundleIdentifier:(id)identifier
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  v8 = [[ISIcon alloc] initWithBundleIdentifier:identifierCopy];

  v9 = [self _imageDescriptorForSize:{width, height}];
  v10 = [self _imageForIcon:v8 imageDescriptor:v9];

  return v10;
}

+ (id)_imageForIcon:(id)icon imageDescriptor:(id)descriptor
{
  iconCopy = icon;
  descriptorCopy = descriptor;
  v7 = [iconCopy imageForDescriptor:descriptorCopy];
  if ([v7 placeholder])
  {
    v8 = [iconCopy prepareImageForDescriptor:descriptorCopy];

    v7 = v8;
  }

  cGImage = [v7 CGImage];
  [v7 scale];
  v10 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];

  return v10;
}

+ (id)_imageDescriptorForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_alloc_init(ISImageDescriptor);
  [v5 setSize:{width, height}];
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  [v5 setScale:?];

  return v5;
}

+ (id)circularImageFromCGImage:(CGImage *)image size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v9 = [[UIGraphicsImageRenderer alloc] initWithSize:{size.width, size.height}];
  [UIImage imageWithCGImage:image scale:0 orientation:scale];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_3FDC;
  v14[3] = &unk_59240;
  v16 = width;
  v15 = v17 = height;
  v10 = v15;
  v11 = [v9 imageWithActions:v14];
  if (!v11)
  {
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_33054(v12);
    }
  }

  return v11;
}

+ (id)addBackgroundForImage:(id)image withBackgroundColor:(id)color yShift:(double)shift
{
  imageCopy = image;
  colorCopy = color;
  [imageCopy size];
  v10 = (29.0 - v9) * 0.5;
  [imageCopy size];
  v12 = (29.0 - v11) * 0.5;
  [imageCopy size];
  v14 = v13;
  [imageCopy size];
  v16 = v15;
  v17 = [[UIGraphicsImageRenderer alloc] initWithSize:{29.0, 29.0}];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_4284;
  v33[3] = &unk_59268;
  v36 = 0;
  v37 = 0;
  __asm { FMOV            V0.2D, #29.0 }

  v27 = _Q0;
  v38 = _Q0;
  v34 = colorCopy;
  v35 = imageCopy;
  shiftCopy = shift;
  v40 = v10;
  v41 = v12;
  v42 = v14;
  v43 = v16;
  v23 = imageCopy;
  v24 = colorCopy;
  [v17 imageWithActions:v33];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_431C;
  v28[3] = &unk_59290;
  v30 = 0;
  v31 = 0;
  v29 = v32 = v27;
  v25 = [v17 imageWithActions:v28];

  return v25;
}

@end