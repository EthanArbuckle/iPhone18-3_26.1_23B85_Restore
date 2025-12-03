@interface UIImage(AppleAccountUI)
+ (id)_circularImageFromIcon:()AppleAccountUI size:scale:;
+ (id)_imageDescriptorForSize:()AppleAccountUI;
+ (id)_imageForIcon:()AppleAccountUI imageDescriptor:;
+ (id)aaui_imageFromColor:()AppleAccountUI;
+ (id)addBackgroundForImage:()AppleAccountUI withBackgroundColor:yShift:;
+ (id)circularImageForBundleID:()AppleAccountUI size:scale:;
+ (id)circularImageFromCGImage:()AppleAccountUI size:scale:;
+ (id)iconForSize:()AppleAccountUI bundleIdentifier:;
+ (id)iconForSize:()AppleAccountUI typeID:;
- (id)_imageByCroppingCGImageToRect:()AppleAccountUI;
- (id)_imageByCroppingCIImageToRect:()AppleAccountUI;
- (id)imageByCroppingToRect:()AppleAccountUI;
- (void)_cropRectForRawImageOrientation:()AppleAccountUI;
@end

@implementation UIImage(AppleAccountUI)

+ (id)aaui_imageFromColor:()AppleAccountUI
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

- (id)imageByCroppingToRect:()AppleAccountUI
{
  [self _cropRectForRawImageOrientation:?];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ([self CGImage])
  {
    v10 = [self _imageByCroppingCGImageToRect:{v3, v5, v7, v9}];
  }

  else
  {
    cIImage = [self CIImage];

    if (cIImage)
    {
      v10 = [self _imageByCroppingCIImageToRect:{v3, v5, v7, v9}];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_imageByCroppingCGImageToRect:()AppleAccountUI
{
  cGImage = [self CGImage];
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  v11 = CGImageCreateWithImageInRect(cGImage, v17);
  v12 = MEMORY[0x1E69DCAB8];
  [self scale];
  v14 = [v12 imageWithCGImage:v11 scale:objc_msgSend(self orientation:{"imageOrientation"), v13}];
  CGImageRelease(v11);

  return v14;
}

- (id)_imageByCroppingCIImageToRect:()AppleAccountUI
{
  cIImage = [self CIImage];
  v11 = [cIImage imageByCroppingToRect:{a2, a3, a4, a5}];

  v12 = MEMORY[0x1E69DCAB8];
  [self scale];
  v14 = [v12 imageWithCIImage:v11 scale:objc_msgSend(self orientation:{"imageOrientation"), v13}];

  return v14;
}

- (void)_cropRectForRawImageOrientation:()AppleAccountUI
{
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&v31.a = *MEMORY[0x1E695EFD0];
  *&v31.c = v10;
  v28 = v10;
  v27 = *(MEMORY[0x1E695EFD0] + 32);
  *&v31.tx = v27;
  imageOrientation = [self imageOrientation];
  if (imageOrientation <= 7)
  {
    if (((1 << imageOrientation) & 0x22) != 0)
    {
      *&v30.a = *&v31.a;
      *&v30.c = v28;
      *&v30.tx = v27;
      CGAffineTransformRotate(&v31, &v30, 3.14159265);
      [self size];
      v21 = v20;
      [self scale];
      v23 = -(v21 * v22);
      [self size];
      v25 = v24;
      [self scale];
      v16 = -(v25 * v26);
      v29 = v31;
      v15 = v23;
      goto LABEL_8;
    }

    if (((1 << imageOrientation) & 0x44) != 0)
    {
      *&v30.a = *&v31.a;
      *&v30.c = v28;
      *&v30.tx = v27;
      CGAffineTransformRotate(&v31, &v30, 1.57079633);
      [self size];
      v18 = v17;
      [self scale];
      v16 = -(v18 * v19);
      v29 = v31;
      v15 = 0.0;
      goto LABEL_8;
    }

    if (((1 << imageOrientation) & 0x88) != 0)
    {
      *&v30.a = *&v31.a;
      *&v30.c = v28;
      *&v30.tx = v27;
      CGAffineTransformRotate(&v31, &v30, -1.57079633);
      [self size];
      v13 = v12;
      [self scale];
      v15 = -(v13 * v14);
      v29 = v31;
      v16 = 0.0;
LABEL_8:
      CGAffineTransformTranslate(&v30, &v29, v15, v16);
      v31 = v30;
    }
  }

  v30 = v31;
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectApplyAffineTransform(v32, &v30);
}

+ (id)circularImageForBundleID:()AppleAccountUI size:scale:
{
  v8 = MEMORY[0x1E69A8A00];
  v9 = a5;
  v10 = [[v8 alloc] initWithBundleIdentifier:v9];

  v11 = [self _circularImageFromIcon:v10 size:a2 scale:a3];

  return v11;
}

+ (id)_circularImageFromIcon:()AppleAccountUI size:scale:
{
  v8 = MEMORY[0x1E69A8A30];
  v9 = a5;
  v10 = [[v8 alloc] initWithSize:a2 scale:{a2, a3}];
  v11 = [v9 prepareImageForDescriptor:v10];

  v12 = [self circularImageFromCGImage:objc_msgSend(v11 size:"CGImage") scale:{a2, a2, a3}];

  return v12;
}

+ (id)iconForSize:()AppleAccountUI typeID:
{
  v8 = MEMORY[0x1E69A8A00];
  v9 = a5;
  v10 = [[v8 alloc] initWithType:v9];

  v11 = [self _imageDescriptorForSize:{a2, a3}];
  v12 = [self _imageForIcon:v10 imageDescriptor:v11];

  return v12;
}

+ (id)iconForSize:()AppleAccountUI bundleIdentifier:
{
  v8 = MEMORY[0x1E69A8A00];
  v9 = a5;
  v10 = [[v8 alloc] initWithBundleIdentifier:v9];

  v11 = [self _imageDescriptorForSize:{a2, a3}];
  v12 = [self _imageForIcon:v10 imageDescriptor:v11];

  return v12;
}

+ (id)_imageForIcon:()AppleAccountUI imageDescriptor:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 imageForDescriptor:v6];
  if ([v7 placeholder])
  {
    v8 = [v5 prepareImageForDescriptor:v6];

    v7 = v8;
  }

  v9 = MEMORY[0x1E69DCAB8];
  cGImage = [v7 CGImage];
  [v7 scale];
  v11 = [v9 imageWithCGImage:cGImage scale:0 orientation:?];

  return v11;
}

+ (id)_imageDescriptorForSize:()AppleAccountUI
{
  v4 = objc_alloc_init(MEMORY[0x1E69A8A30]);
  [v4 setSize:{self, a2}];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  [v4 setScale:?];

  return v4;
}

+ (id)circularImageFromCGImage:()AppleAccountUI size:scale:
{
  v10 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{self, a2}];
  v11 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a6 scale:0 orientation:a3];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__UIImage_AppleAccountUI__circularImageFromCGImage_size_scale___block_invoke;
  v16[3] = &unk_1E820C698;
  selfCopy = self;
  v19 = a2;
  v17 = v11;
  v12 = v11;
  v13 = [v10 imageWithActions:v16];
  if (!v13)
  {
    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [UIImage(AppleAccountUI) circularImageFromCGImage:v14 size:? scale:?];
    }
  }

  return v13;
}

+ (id)addBackgroundForImage:()AppleAccountUI withBackgroundColor:yShift:
{
  v7 = a4;
  v8 = a5;
  [v7 size];
  v10 = (29.0 - v9) * 0.5;
  [v7 size];
  v12 = (29.0 - v11) * 0.5;
  [v7 size];
  v14 = v13;
  [v7 size];
  v16 = v15;
  v17 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{29.0, 29.0}];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __76__UIImage_AppleAccountUI__addBackgroundForImage_withBackgroundColor_yShift___block_invoke;
  v34[3] = &unk_1E820C6C0;
  v37 = 0;
  v38 = 0;
  __asm { FMOV            V0.2D, #29.0 }

  v28 = _Q0;
  v39 = _Q0;
  v35 = v8;
  v36 = v7;
  selfCopy = self;
  v41 = v10;
  v42 = v12;
  v43 = v14;
  v44 = v16;
  v23 = v7;
  v24 = v8;
  v25 = [v17 imageWithActions:v34];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __76__UIImage_AppleAccountUI__addBackgroundForImage_withBackgroundColor_yShift___block_invoke_2;
  v29[3] = &unk_1E820BB48;
  v31 = 0;
  v32 = 0;
  v33 = v28;
  v30 = v25;
  v26 = [v17 imageWithActions:v29];

  return v26;
}

+ (void)circularImageFromCGImage:()AppleAccountUI size:scale:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "+[UIImage(AppleAccountUI) circularImageFromCGImage:size:scale:]";
  _os_log_error_impl(&dword_1C5355000, log, OS_LOG_TYPE_ERROR, "%s Couldn't create circular image", &v1, 0xCu);
}

@end