@interface PKMetalUtility
+ (CGAffineTransform)transformConvertingRect:(SEL)rect toRect:(CGRect)toRect percent:(CGRect)percent;
+ (CGSize)clampedPixelSize:(CGSize)size;
+ (double)layerContentsScale;
+ (id)defaultDevice;
+ (id)textureFromImage:(CGImage *)image device:(id)device;
@end

@implementation PKMetalUtility

+ (id)defaultDevice
{
  v2 = MTLCreateSystemDefaultDevice();

  return v2;
}

+ (double)layerContentsScale
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen nativeScale];
  v4 = v3;

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

  if ((v7 & 1) == 0)
  {
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    if ([bundleIdentifier2 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
    {
    }

    else
    {
      mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier3 = [mainBundle3 bundleIdentifier];
      v12 = [bundleIdentifier3 isEqualToString:@"com.apple.quicklook.UIExtension"];

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

+ (CGSize)clampedPixelSize:(CGSize)size
{
  if (size.width > 8192.0)
  {
    size.height = round(size.height * 8192.0 / size.width);
    size.width = 8192.0;
  }

  if (size.height > 8192.0)
  {
    size.width = round(size.width * 8192.0 / size.height);
    size.height = 8192.0;
  }

  v3 = round(size.width);
  if (v3 < 1.0)
  {
    v3 = 1.0;
  }

  v4 = round(size.height);
  if (v4 < 1.0)
  {
    v4 = 1.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

+ (id)textureFromImage:(CGImage *)image device:(id)device
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6974438];
  deviceCopy = device;
  v7 = [[v5 alloc] initWithDevice:deviceCopy];

  v8 = *MEMORY[0x1E6974400];
  v13[0] = *MEMORY[0x1E6974408];
  v13[1] = v8;
  v14[0] = &unk_1F47C1340;
  v14[1] = &unk_1F47C1358;
  v13[2] = *MEMORY[0x1E69743E8];
  v14[2] = MEMORY[0x1E695E110];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v12 = 0;
  v10 = [v7 newTextureWithCGImage:image options:v9 error:&v12];

  return v10;
}

+ (CGAffineTransform)transformConvertingRect:(SEL)rect toRect:(CGRect)toRect percent:(CGRect)percent
{
  height = percent.size.height;
  width = percent.size.width;
  v8 = toRect.size.height;
  v9 = toRect.size.width;
  y = toRect.origin.y;
  x = toRect.origin.x;
  v13 = DKDSubtractPoints(percent.origin.x, percent.origin.y, toRect.origin.x);
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