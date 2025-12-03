@interface CRLInstantAlphaHelper
+ (id)newInstantAlphaImageWithCGImage:(CGImage *)image ofSize:(CGSize)size;
+ (id)newMaskBitmapWithPoint:(CGPoint)point image:(id)image tolerance:(unint64_t)tolerance oldMaskBitmap:(id)bitmap;
+ (id)newMaskSeedFillWithPoint:(CGPoint)point inImage:(id)image tolerance:(unint64_t)tolerance oldFill:(id)fill;
+ (id)removeBackgroundFromCGImage:(CGImage *)image;
+ (void)p_loadVKCGImageRemoveBackground;
@end

@implementation CRLInstantAlphaHelper

+ (id)newInstantAlphaImageWithCGImage:(CGImage *)image ofSize:(CGSize)size
{
  v5 = sub_10012211C(size.width);
  v7 = v6;
  v8 = [[CRLInstantAlphaImage alloc] initWithWidth:v5 height:v6];
  if (v8)
  {
    v9 = sub_1000CCC44();
    ColorSpace = CGImageGetColorSpace(image);
    if (CGColorSpaceIsWideGamutRGB(ColorSpace))
    {
      v9 = sub_1000CCE28();
    }

    v11 = CGBitmapContextCreate(v8->mImageData, v5, v7, 8uLL, 4 * v5, v9, 0x2001u);
    v14.origin.x = sub_10011ECB4();
    CGContextDrawImage(v11, v14, image);
    CGContextRelease(v11);
    v12 = v8;
  }

  return v8;
}

+ (id)newMaskBitmapWithPoint:(CGPoint)point image:(id)image tolerance:(unint64_t)tolerance oldMaskBitmap:(id)bitmap
{
  y = point.y;
  x = point.x;
  imageCopy = image;
  bitmapCopy = bitmap;
  v12 = [[CRLInstantAlphaBinaryBitmap alloc] initWithWidth:imageCopy[1] height:imageCopy[2]];
  v13 = sub_1001825F8(imageCopy, x, y);
  v14 = dispatch_get_global_queue(0, 0);
  v15 = imageCopy[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100182874;
  block[3] = &unk_1018429D0;
  v23 = imageCopy;
  v24 = bitmapCopy;
  v16 = v12;
  v27 = v13;
  v25 = v16;
  toleranceCopy = tolerance;
  v17 = bitmapCopy;
  v18 = imageCopy;
  dispatch_apply(v15, v14, block);
  v19 = v25;
  v20 = v16;

  return v20;
}

+ (id)newMaskSeedFillWithPoint:(CGPoint)point inImage:(id)image tolerance:(unint64_t)tolerance oldFill:(id)fill
{
  y = point.y;
  x = point.x;
  v17[0] = 0;
  v10 = (*(image + 1) - 1);
  fillCopy = fill;
  imageCopy = image;
  v13 = sub_1004C3240(x, 0.0, v10);
  v14 = sub_1004C3240(y, 0.0, (imageCopy[2] - 1));
  v17[0] = sub_1001825F8(imageCopy, v13, v14);
  v17[1] = tolerance;
  v15 = [CRLInstantAlphaSeedFill newSeedFillWithImage:imageCopy seedPoint:v17 context:fillCopy oldFill:v13, v14];

  return v15;
}

+ (id)removeBackgroundFromCGImage:(CGImage *)image
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10018330C;
  v27 = sub_10018331C;
  v28 = objc_alloc_init(CRLRemoveImageBackgroundData);
  p_loadVKCGImageRemoveBackground = [self p_loadVKCGImageRemoveBackground];
  if (!p_loadVKCGImageRemoveBackground)
  {
    goto LABEL_9;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100183324;
  v19[3] = &unk_101842A38;
  v21 = &v23;
  imageCopy = image;
  v7 = dispatch_group_create();
  v20 = v7;
  v8 = objc_retainBlock(v19);
  dispatch_group_enter(v7);
  p_loadVKCGImageRemoveBackground(image, 1, v8);
  v9 = dispatch_time(0, 5000000000);
  v10 = dispatch_group_wait(v7, v9);
  if (v10)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101324F4C();
    }

    v11 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Remove background from image timed out.", v18, 2u);
    }

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Can’t Remove Background" value:0 table:0];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"The background can’t be removed from this image." value:0 table:0];

    v16 = [NSError crl_errorWithDomain:@"com.apple.freeform" code:2 alertTitle:v13 alertMessage:v15];
    [v24[5] setError:v16];
    v3 = v24[5];
  }

  if (!v10)
  {
LABEL_9:
    v3 = v24[5];
  }

  _Block_object_dispose(&v23, 8);

  return v3;
}

+ (void)p_loadVKCGImageRemoveBackground
{
  if (qword_101A34768 != -1)
  {
    sub_101324FC4();
  }

  return qword_101A34770;
}

@end