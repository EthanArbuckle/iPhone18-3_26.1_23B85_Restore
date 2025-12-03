@interface VNCIContrastWithPivotColorFilter
- (VNCIContrastWithPivotColorFilter)init;
- (VNCIContrastWithPivotColorFilter)initWithInputParameters:(id)parameters;
- (id)outputImage;
- (void)_initProperties;
- (void)setInputPivot:(id)pivot;
@end

@implementation VNCIContrastWithPivotColorFilter

- (id)outputImage
{
  v11[2] = *MEMORY[0x1E69E9840];
  inputContrast = [(VNCIContrastWithPivotColorFilter *)self inputContrast];
  [inputContrast floatValue];
  v5 = v4;

  if (v5 == 1.0)
  {
    inputImage = [(VNCIFilter *)self inputImage];
  }

  else
  {
    inputPivot = [(VNCIContrastWithPivotColorFilter *)self inputPivot];
    v11[0] = inputPivot;
    inputContrast2 = [(VNCIContrastWithPivotColorFilter *)self inputContrast];
    v11[1] = inputContrast2;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    inputImage = [(VNCIFilter *)&self->super.super.super.isa applyWithArguments:v9];
  }

  return inputImage;
}

- (void)setInputPivot:(id)pivot
{
  pivotCopy = pivot;
  v5 = MEMORY[0x1E696AD98];
  v9 = pivotCopy;
  [pivotCopy floatValue];
  *&v6 = fminf(*&v6, 1.0);
  if (*&v6 < 0.0)
  {
    *&v6 = 0.0;
  }

  v7 = [v5 numberWithFloat:v6];
  inputPivot = self->_inputPivot;
  self->_inputPivot = v7;
}

- (VNCIContrastWithPivotColorFilter)initWithInputParameters:(id)parameters
{
  v3 = [(VNCIFilter *)self initWithKernelName:@"contrastWithPivot" inputParameters:parameters];
  v4 = v3;
  if (v3)
  {
    [(VNCIContrastWithPivotColorFilter *)v3 _initProperties];
  }

  return v4;
}

- (void)_initProperties
{
  if (!*(self + 96))
  {
    *(self + 96) = &unk_1F19C2428;
  }

  if (!*(self + 104))
  {
    *(self + 104) = &unk_1F19C2438;
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