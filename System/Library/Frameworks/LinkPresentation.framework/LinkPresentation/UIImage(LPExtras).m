@interface UIImage(LPExtras)
+ (id)_lp_createImageWithCGImage:()LPExtras;
+ (id)_lp_systemImageNamed:()LPExtras;
- (id)_lp_imageByApplyingSymbolConfiguration:()LPExtras;
- (id)_lp_imageForcingUserInterfaceStyle:()LPExtras;
- (uint64_t)_lp_CGImage;
@end

@implementation UIImage(LPExtras)

- (uint64_t)_lp_CGImage
{
  v1 = a1;

  return [v1 CGImage];
}

+ (id)_lp_createImageWithCGImage:()LPExtras
{
  v3 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:a3];

  return v3;
}

+ (id)_lp_systemImageNamed:()LPExtras
{
  v0 = [MEMORY[0x1E69DCAB8] _systemImageNamed:?];

  return v0;
}

- (id)_lp_imageByApplyingSymbolConfiguration:()LPExtras
{
  v1 = [a1 imageByApplyingSymbolConfiguration:?];

  return v1;
}

- (id)_lp_imageForcingUserInterfaceStyle:()LPExtras
{
  v5 = [a1 imageAsset];

  if (v5)
  {
    v6 = [a1 imageAsset];
    if (a3 == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v7];
    v9 = [v6 imageWithTraitCollection:v8];

    v10 = [v9 _lp_CGImage];
    v11 = [MEMORY[0x1E69DCAB8] _lp_createImageWithCGImage:v10];
  }

  else
  {
    v11 = a1;
  }

  return v11;
}

@end