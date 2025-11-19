@interface RadialFalloffFilter
- (id)outputImage;
@end

@implementation RadialFalloffFilter

- (id)outputImage
{
  [(CIVector *)self->inputExtent CGRectValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NSNumber *)self->inputFalloff floatValue];
  v12 = v11;
  [(NSNumber *)self->inputRadius floatValue];
  v14 = v13;
  inputCenter = self->inputCenter;
  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;

  return RRradialCentroidMask(inputCenter, *&v16, v14, v12, 1);
}

@end