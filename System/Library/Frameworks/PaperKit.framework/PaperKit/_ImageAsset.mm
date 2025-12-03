@interface _ImageAsset
- (CGRect)acceptableCropRect;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (_ImageAsset)initWithImage:(id)image;
- (unint64_t)pixelHeight;
- (unint64_t)pixelWidth;
@end

@implementation _ImageAsset

- (_ImageAsset)initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = _ImageAsset;
  v6 = [(_ImageAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
  }

  return v7;
}

- (CGRect)preferredCropRect
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 1.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (unint64_t)pixelWidth
{
  image = [(_ImageAsset *)self image];
  [image size];
  v4 = v3;

  return v4;
}

- (unint64_t)pixelHeight
{
  image = [(_ImageAsset *)self image];
  [image size];
  v4 = v3;

  return v4;
}

- (CGRect)faceAreaRect
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)acceptableCropRect
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 1.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end