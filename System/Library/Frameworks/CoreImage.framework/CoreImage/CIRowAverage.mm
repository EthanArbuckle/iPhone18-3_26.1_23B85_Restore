@interface CIRowAverage
- (id)outputImage;
@end

@implementation CIRowAverage

- (id)outputImage
{
  inputImage = self->super.super.inputImage;
  v15 = xmmword_19CF26640;
  v16 = 0x3FF0000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = [(CIImage *)inputImage imageByApplyingTransform:&v15];
  [(CIVector *)self->super.super.inputExtent Y];
  v6 = v5;
  [(CIVector *)self->super.super.inputExtent X];
  v8 = -v7;
  [(CIVector *)self->super.super.inputExtent Z];
  v10 = v8 - v9;
  [(CIVector *)self->super.super.inputExtent W];
  v12 = v11;
  [(CIVector *)self->super.super.inputExtent Z];
  return [(CIImage *)v4 filteredImage:@"CIColumnAverage" keysAndValues:@"inputExtent", [CIVector vectorWithX:v6 Y:v10 Z:v12 W:v13], 0];
}

@end