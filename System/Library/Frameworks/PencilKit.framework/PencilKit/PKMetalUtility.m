@interface PKMetalUtility
+ (CGAffineTransform)transformConvertingRect:(SEL)a3 toRect:(CGRect)a4 percent:(CGRect)a5;
+ (CGSize)clampedPixelSize:(CGSize)a3;
+ (double)layerContentsScale;
+ (id)defaultDevice;
+ (id)textureFromImage:(CGImage *)a3 device:(id)a4;
@end

@implementation PKMetalUtility

+ (id)defaultDevice
{
  v2 = MTLCreateSystemDefaultDevice();

  return v2;
}

+ (double)layerContentsScale
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 nativeScale];
  v4 = v3;

  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 bundleIdentifier];
    if ([v9 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
    {
    }

    else
    {
      v10 = [MEMORY[0x1E696AAE8] mainBundle];
      v11 = [v10 bundleIdentifier];
      v12 = [v11 isEqualToString:@"com.apple.quicklook.UIExtension"];

      if ((v12 & 1) == 0 && !PKIsQuickNoteOnPhone())
      {
        return v4;
      }
    }
  }

  if (PKIsPhoneDevice())
  {
    v13 = 2.0;
    if (v4 <= 2.0)
    {
      return v4;
    }

    return v13;
  }

  v14 = _os_feature_enabled_impl();
  v13 = 2.0;
  if (v4 <= 2.0)
  {
    v13 = v4;
  }

  if (v14)
  {
    return v13;
  }

  return v4;
}

+ (CGSize)clampedPixelSize:(CGSize)a3
{
  if (a3.width > 8192.0)
  {
    a3.height = round(a3.height * 8192.0 / a3.width);
    a3.width = 8192.0;
  }

  if (a3.height > 8192.0)
  {
    a3.width = round(a3.width * 8192.0 / a3.height);
    a3.height = 8192.0;
  }

  v3 = round(a3.width);
  if (v3 < 1.0)
  {
    v3 = 1.0;
  }

  v4 = round(a3.height);
  if (v4 < 1.0)
  {
    v4 = 1.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

+ (id)textureFromImage:(CGImage *)a3 device:(id)a4
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6974438];
  v6 = a4;
  v7 = [[v5 alloc] initWithDevice:v6];

  v8 = *MEMORY[0x1E6974400];
  v13[0] = *MEMORY[0x1E6974408];
  v13[1] = v8;
  v14[0] = &unk_1F47C1340;
  v14[1] = &unk_1F47C1358;
  v13[2] = *MEMORY[0x1E69743E8];
  v14[2] = MEMORY[0x1E695E110];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v12 = 0;
  v10 = [v7 newTextureWithCGImage:a3 options:v9 error:&v12];

  return v10;
}

+ (CGAffineTransform)transformConvertingRect:(SEL)a3 toRect:(CGRect)a4 percent:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v8 = a4.size.height;
  v9 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = DKDSubtractPoints(a5.origin.x, a5.origin.y, a4.origin.x);
  v15 = DKDMultiplyPointScalar(v13, v14, a6);
  v16 = MEMORY[0x1E695EFD0];
  v17 = *MEMORY[0x1E695EFD0];
  v18 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v18;
  v19 = *(v16 + 32);
  *&retstr->tx = v19;
  *&v29.a = v17;
  *&v29.c = v18;
  *&v29.tx = v19;
  CGAffineTransformTranslate(retstr, &v29, v15, v20);
  v21 = *&retstr->c;
  *&v28.a = *&retstr->a;
  *&v28.c = v21;
  *&v28.tx = *&retstr->tx;
  CGAffineTransformTranslate(&v29, &v28, x, y);
  v22 = *&v29.c;
  *&retstr->a = *&v29.a;
  *&retstr->c = v22;
  *&retstr->tx = *&v29.tx;
  v23 = *&retstr->c;
  *&v28.a = *&retstr->a;
  *&v28.c = v23;
  *&v28.tx = *&retstr->tx;
  CGAffineTransformScale(&v29, &v28, 1.0 - a6 + width / v9 * a6, 1.0 - a6 + height / v8 * a6);
  v24 = *&v29.c;
  *&retstr->a = *&v29.a;
  *&retstr->c = v24;
  *&retstr->tx = *&v29.tx;
  v25 = *&retstr->c;
  *&v28.a = *&retstr->a;
  *&v28.c = v25;
  *&v28.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v29, &v28, -x, -y);
  v27 = *&v29.c;
  *&retstr->a = *&v29.a;
  *&retstr->c = v27;
  *&retstr->tx = *&v29.tx;
  return result;
}

@end