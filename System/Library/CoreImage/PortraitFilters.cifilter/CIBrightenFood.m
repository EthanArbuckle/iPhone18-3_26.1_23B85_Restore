@interface CIBrightenFood
- (id)_brightenFood;
- (id)outputImage;
@end

@implementation CIBrightenFood

- (id)_brightenFood
{
  if (qword_8CEC8 != -1)
  {
    sub_4B350();
  }

  return qword_8CEC0;
}

- (id)outputImage
{
  inputImage = self->super.inputImage;
  if (!inputImage)
  {
    return 0;
  }

  v4 = [(CIBrightenFood *)self _brightenFood];
  [(NSNumber *)self->super.inputPShift floatValue];
  v6 = v5;
  [(NSNumber *)self->super.inputTShift floatValue];
  v8 = v7;
  v9 = ((v6 * v6) + (v7 + -0.5) * (v7 + -0.5)) / -0.0225;
  v10 = 1.0 - expf(v9);
  [(CIImage *)self->super.inputImage extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  *&v11 = v6 * v10;
  v21[3] = [NSNumber numberWithFloat:v11, inputImage, self->super.inputStrength, self->super.inputSat];
  *&v19 = v8 * v10;
  v21[4] = [NSNumber numberWithFloat:v19];
  return [v4 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v21, 5), v12, v14, v16, v18}];
}

@end