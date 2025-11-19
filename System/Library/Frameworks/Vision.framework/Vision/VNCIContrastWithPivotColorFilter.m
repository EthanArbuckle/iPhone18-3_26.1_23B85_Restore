@interface VNCIContrastWithPivotColorFilter
- (VNCIContrastWithPivotColorFilter)init;
- (VNCIContrastWithPivotColorFilter)initWithInputParameters:(id)a3;
- (id)outputImage;
- (void)_initProperties;
- (void)setInputPivot:(id)a3;
@end

@implementation VNCIContrastWithPivotColorFilter

- (id)outputImage
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [(VNCIContrastWithPivotColorFilter *)self inputContrast];
  [v3 floatValue];
  v5 = v4;

  if (v5 == 1.0)
  {
    v6 = [(VNCIFilter *)self inputImage];
  }

  else
  {
    v7 = [(VNCIContrastWithPivotColorFilter *)self inputPivot];
    v11[0] = v7;
    v8 = [(VNCIContrastWithPivotColorFilter *)self inputContrast];
    v11[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v6 = [(VNCIFilter *)&self->super.super.super.isa applyWithArguments:v9];
  }

  return v6;
}

- (void)setInputPivot:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AD98];
  v9 = v4;
  [v4 floatValue];
  *&v6 = fminf(*&v6, 1.0);
  if (*&v6 < 0.0)
  {
    *&v6 = 0.0;
  }

  v7 = [v5 numberWithFloat:v6];
  inputPivot = self->_inputPivot;
  self->_inputPivot = v7;
}

- (VNCIContrastWithPivotColorFilter)initWithInputParameters:(id)a3
{
  v3 = [(VNCIFilter *)self initWithKernelName:@"contrastWithPivot" inputParameters:a3];
  v4 = v3;
  if (v3)
  {
    [(VNCIContrastWithPivotColorFilter *)v3 _initProperties];
  }

  return v4;
}

- (void)_initProperties
{
  if (!*(a1 + 96))
  {
    *(a1 + 96) = &unk_1F19C2428;
  }

  if (!*(a1 + 104))
  {
    *(a1 + 104) = &unk_1F19C2438;
  }
}

- (VNCIContrastWithPivotColorFilter)init
{
  v5.receiver = self;
  v5.super_class = VNCIContrastWithPivotColorFilter;
  v2 = [(VNCIFilter *)&v5 initWithKernelName:@"contrastWithPivot"];
  v3 = v2;
  if (v2)
  {
    [(VNCIContrastWithPivotColorFilter *)v2 _initProperties];
  }

  return v3;
}

@end