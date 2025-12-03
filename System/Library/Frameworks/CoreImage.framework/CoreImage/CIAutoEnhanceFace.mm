@interface CIAutoEnhanceFace
- (CGRect)faceRect;
- (CIAutoEnhanceFace)initWithBounds:(CGRect)bounds andImage:(id)image usingContext:(id)context;
@end

@implementation CIAutoEnhanceFace

- (CIAutoEnhanceFace)initWithBounds:(CGRect)bounds andImage:(id)image usingContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  v33.origin.x = bounds.origin.x + bounds.size.width * 0.339999974 * 0.5;
  v33.origin.y = bounds.origin.y + bounds.size.height * 0.339999974 * 0.5;
  v33.size.width = bounds.size.width * 0.660000026;
  v33.size.height = bounds.size.height * 0.660000026;
  v34 = CGRectIntegral(v33);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v30.receiver = self;
  v30.super_class = CIAutoEnhanceFace;
  v12 = [(CIAutoEnhanceFace *)&v30 init];
  v13 = v12;
  if (v12)
  {
    if (width >= height)
    {
      v14 = height;
    }

    else
    {
      v14 = width;
    }

    v12->size = v14;
    v12->centerX = (x + width * 0.5);
    v12->centerY = (y + height * 0.5);
    CGAffineTransformMakeTranslation(&v31, -x, -y);
    v15 = [image imageByApplyingTransform:&v31];
    CGAffineTransformMakeScale(&v31, 16.0 / width, 16.0 / height);
    v16 = [v15 imageByApplyingTransform:&v31];
    bzero(&v31, 0x400uLL);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v18 = 0.0;
    [context render:v16 toBitmap:&v31 rowBytes:64 bounds:264 format:DeviceRGB colorSpace:{0.0, 0.0, 16.0, 16.0}];
    CGColorSpaceRelease(DeviceRGB);
    v20 = 0;
    v21 = 0.212;
    v22 = 0.0;
    do
    {
      LOBYTE(v21) = *(&v31.a + v20);
      LOBYTE(v19) = *(&v31.a + v20 + 1);
      *&v23 = *&v19;
      v24 = *&v23 / 255.0;
      LOBYTE(v23) = *(&v31.a + v20 + 2);
      v25 = v23 / 255.0;
      v26 = pow(*&v21 / 255.0, 0.55);
      v27 = pow(v24, 0.55);
      v28 = pow(v25, 0.55);
      v22 = v22 + v27 * -0.2755 + v26 * 0.596 + v28 * -0.321;
      v19 = v27 * -0.523 + v26 * 0.212;
      v21 = v19 + v28 * 0.311;
      v18 = v18 + v21;
      v20 += 4;
    }

    while (v20 != 1024);
    v13->I = v22 * 0.00390625;
    v13->Q = v18 * 0.00390625;
  }

  return v13;
}

- (CGRect)faceRect
{
  size = self->size;
  v3 = (self->centerX - size);
  v4 = (self->centerY - size);
  v5 = (2 * size);
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end