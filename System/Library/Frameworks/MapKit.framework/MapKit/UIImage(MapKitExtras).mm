@interface UIImage(MapKitExtras)
+ (id)_mapkit_imageNamed:()MapKitExtras;
+ (id)_mapkit_imageNamed:()MapKitExtras compatibleWithTraitCollection:;
- (id)_mapkit_dimmedImage;
- (id)_mapkit_horizontallyFlippedImage;
- (id)_mapkit_imageWithAlpha:()MapKitExtras;
- (id)_mapkit_templateImageWithTintColor:()MapKitExtras;
@end

@implementation UIImage(MapKitExtras)

- (id)_mapkit_imageWithAlpha:()MapKitExtras
{
  if (a2 <= 0.0)
  {
    selfCopy = 0;
  }

  else if (a2 >= 1.0)
  {
    selfCopy = self;
  }

  else
  {
    [self size];
    v5 = v4;
    v7 = v6;
    [self scale];
    v9 = v8;
    v13.width = v5;
    v13.height = v7;
    UIGraphicsBeginImageContextWithOptions(v13, 0, v9);
    [self drawAtPoint:0 blendMode:*MEMORY[0x1E695EFF8] alpha:{*(MEMORY[0x1E695EFF8] + 8), a2}];
    selfCopy = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return selfCopy;
}

- (id)_mapkit_templateImageWithTintColor:()MapKitExtras
{
  v4 = a3;
  selfCopy = self;
  [selfCopy size];
  v7 = v6;
  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v6, v8}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__UIImage_MapKitExtras___mapkit_templateImageWithTintColor___block_invoke;
  v15[3] = &unk_1E76C6860;
  v18 = *MEMORY[0x1E695F058];
  v19 = v7;
  v20 = v9;
  v16 = v4;
  v17 = selfCopy;
  v11 = selfCopy;
  v12 = v4;
  v13 = [v10 imageWithActions:v15];

  return v13;
}

- (id)_mapkit_horizontallyFlippedImage
{
  [self size];
  v3 = v2;
  v5 = v4;
  [self scale];
  v7 = v6;
  v14.width = v3;
  v14.height = v5;
  UIGraphicsBeginImageContextWithOptions(v14, 0, v7);
  CurrentContext = UIGraphicsGetCurrentContext();
  [self size];
  v12.a = -1.0;
  v12.b = 0.0;
  v12.c = 0.0;
  v12.d = 1.0;
  v12.tx = v9;
  v12.ty = 0.0;
  CGContextConcatCTM(CurrentContext, &v12);
  [self drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (id)_mapkit_dimmedImage
{
  [self size];
  v3 = v2;
  v5 = v4;
  [self scale];
  v7 = v6;
  v21.width = v3;
  v21.height = v5;
  UIGraphicsBeginImageContextWithOptions(v21, 0, v7);
  CurrentContext = UIGraphicsGetCurrentContext();
  [self size];
  CGContextTranslateCTM(CurrentContext, 0.0, v9);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  [self size];
  v11 = v10;
  [self size];
  v13 = v12;
  cGImage = [self CGImage];
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v11;
  v22.size.height = v13;
  CGContextDrawImage(CurrentContext, v22, cGImage);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceAtop);
  CGContextSetRGBFillColor(CurrentContext, 0.0, 0.0, 0.0, 0.199999988);
  [self size];
  v16 = v15;
  [self size];
  v23.size.height = v17;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v16;
  CGContextFillRect(CurrentContext, v23);
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

+ (id)_mapkit_imageNamed:()MapKitExtras compatibleWithTraitCollection:
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = MEMORY[0x1E696AAE8];
  v7 = a4;
  v8 = a3;
  _mapkitBundle = [v6 _mapkitBundle];
  v10 = [v5 imageNamed:v8 inBundle:_mapkitBundle compatibleWithTraitCollection:v7];

  return v10;
}

+ (id)_mapkit_imageNamed:()MapKitExtras
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  _mapkitBundle = [v4 _mapkitBundle];
  v7 = [v3 imageNamed:v5 inBundle:_mapkitBundle];

  return v7;
}

@end