@interface UIImage
+ (id)_circularImageFromIcon:(id)a3 size:(double)a4 scale:(double)a5;
+ (id)_imageDescriptorForSize:(CGSize)a3;
+ (id)_imageForIcon:(id)a3 imageDescriptor:(id)a4;
+ (id)aaui_imageFromColor:(id)a3;
+ (id)addBackgroundForImage:(id)a3 withBackgroundColor:(id)a4 yShift:(double)a5;
+ (id)circularImageForBundleID:(id)a3 size:(double)a4 scale:(double)a5;
+ (id)circularImageFromCGImage:(CGImage *)a3 size:(CGSize)a4 scale:(double)a5;
+ (id)iconForSize:(CGSize)a3 bundleIdentifier:(id)a4;
+ (id)iconForSize:(CGSize)a3 typeID:(id)a4;
- (CGRect)_cropRectForRawImageOrientation:(CGRect)a3;
- (id)_imageByCroppingCGImageToRect:(CGRect)a3;
- (id)_imageByCroppingCIImageToRect:(CGRect)a3;
- (id)imageByCroppingToRect:(CGRect)a3;
@end

@implementation UIImage

+ (id)aaui_imageFromColor:(id)a3
{
  v3 = a3;
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  [v3 set];

  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  UIRectFill(v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

- (id)imageByCroppingToRect:(CGRect)a3
{
  [(UIImage *)self _cropRectForRawImageOrientation:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v13 = [(UIImage *)self CIImage];

    if (v13)
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

- (id)_imageByCroppingCGImageToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIImage *)self CGImage];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGImageCreateWithImageInRect(v8, v14);
  [(UIImage *)self scale];
  v11 = [UIImage imageWithCGImage:v9 scale:[(UIImage *)self imageOrientation] orientation:v10];
  CGImageRelease(v9);

  return v11;
}

- (id)_imageByCroppingCIImageToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIImage *)self CIImage];
  v9 = [v8 imageByCroppingToRect:{x, y, width, height}];

  [(UIImage *)self scale];
  v11 = [UIImage imageWithCIImage:v9 scale:[(UIImage *)self imageOrientation] orientation:v10];

  return v11;
}

- (CGRect)_cropRectForRawImageOrientation:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = *&CGAffineTransformIdentity.c;
  *&v29.a = *&CGAffineTransformIdentity.a;
  *&v29.c = v8;
  v26 = v8;
  v25 = *&CGAffineTransformIdentity.tx;
  *&v29.tx = v25;
  v9 = [(UIImage *)self imageOrientation];
  if (v9 <= 7)
  {
    if (((1 << v9) & 0x22) != 0)
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

    if (((1 << v9) & 0x44) != 0)
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

    if (((1 << v9) & 0x88) != 0)
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

+ (id)circularImageForBundleID:(id)a3 size:(double)a4 scale:(double)a5
{
  v8 = a3;
  v9 = [[ISIcon alloc] initWithBundleIdentifier:v8];

  v10 = [a1 _circularImageFromIcon:v9 size:a4 scale:a5];

  return v10;
}

+ (id)_circularImageFromIcon:(id)a3 size:(double)a4 scale:(double)a5
{
  v8 = a3;
  v9 = [[ISImageDescriptor alloc] initWithSize:a4 scale:{a4, a5}];
  v10 = [v8 prepareImageForDescriptor:v9];

  v11 = [a1 circularImageFromCGImage:objc_msgSend(v10 size:"CGImage") scale:{a4, a4, a5}];

  return v11;
}

+ (id)iconForSize:(CGSize)a3 typeID:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [[ISIcon alloc] initWithType:v7];

  v9 = [a1 _imageDescriptorForSize:{width, height}];
  v10 = [a1 _imageForIcon:v8 imageDescriptor:v9];

  return v10;
}

+ (id)iconForSize:(CGSize)a3 bundleIdentifier:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [[ISIcon alloc] initWithBundleIdentifier:v7];

  v9 = [a1 _imageDescriptorForSize:{width, height}];
  v10 = [a1 _imageForIcon:v8 imageDescriptor:v9];

  return v10;
}

+ (id)_imageForIcon:(id)a3 imageDescriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 imageForDescriptor:v6];
  if ([v7 placeholder])
  {
    v8 = [v5 prepareImageForDescriptor:v6];

    v7 = v8;
  }

  v9 = [v7 CGImage];
  [v7 scale];
  v10 = [UIImage imageWithCGImage:v9 scale:0 orientation:?];

  return v10;
}

+ (id)_imageDescriptorForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = objc_alloc_init(ISImageDescriptor);
  [v5 setSize:{width, height}];
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  [v5 setScale:?];

  return v5;
}

+ (id)circularImageFromCGImage:(CGImage *)a3 size:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v9 = [[UIGraphicsImageRenderer alloc] initWithSize:{a4.width, a4.height}];
  [UIImage imageWithCGImage:a3 scale:0 orientation:a5];
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

+ (id)addBackgroundForImage:(id)a3 withBackgroundColor:(id)a4 yShift:(double)a5
{
  v7 = a3;
  v8 = a4;
  [v7 size];
  v10 = (29.0 - v9) * 0.5;
  [v7 size];
  v12 = (29.0 - v11) * 0.5;
  [v7 size];
  v14 = v13;
  [v7 size];
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
  v34 = v8;
  v35 = v7;
  v39 = a5;
  v40 = v10;
  v41 = v12;
  v42 = v14;
  v43 = v16;
  v23 = v7;
  v24 = v8;
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