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
  selfCopy = self;

  return [selfCopy CGImage];
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
  v1 = [self imageByApplyingSymbolConfiguration:?];

  return v1;
}

- (id)_lp_imageForcingUserInterfaceStyle:()LPExtras
{
  imageAsset = [self imageAsset];

  if (imageAsset)
  {
    imageAsset2 = [self imageAsset];
    if (a3 == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v7];
    v9 = [imageAsset2 imageWithTraitCollection:v8];

    _lp_CGImage = [v9 _lp_CGImage];
    selfCopy = [MEMORY[0x1E69DCAB8] _lp_createImageWithCGImage:_lp_CGImage];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end