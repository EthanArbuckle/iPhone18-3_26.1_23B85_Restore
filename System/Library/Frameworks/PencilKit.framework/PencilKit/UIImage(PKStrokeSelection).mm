@interface UIImage(PKStrokeSelection)
- (id)pk_imageRotated90DegreesClockwise:()PKStrokeSelection;
@end

@implementation UIImage(PKStrokeSelection)

- (id)pk_imageRotated90DegreesClockwise:()PKStrokeSelection
{
  [self size];
  v6 = v5;
  v8 = v7;
  v16.width = v7;
  v16.height = v6;
  UIGraphicsBeginImageContext(v16);
  v9 = MEMORY[0x1E69DCAB8];
  cGImage = [self CGImage];
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = [v9 imageWithCGImage:cGImage scale:v11 orientation:1.0];
  [v12 drawInRect:{0.0, 0.0, v8, v6}];

  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

@end