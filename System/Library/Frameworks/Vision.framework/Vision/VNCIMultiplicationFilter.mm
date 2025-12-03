@interface VNCIMultiplicationFilter
- (VNCIMultiplicationFilter)init;
- (id)outputImage;
@end

@implementation VNCIMultiplicationFilter

- (id)outputImage
{
  v10[4] = *MEMORY[0x1E69E9840];
  inputFactor1 = [(VNCIMultiplicationFilter *)self inputFactor1];
  v10[0] = inputFactor1;
  inputFactor2 = [(VNCIMultiplicationFilter *)self inputFactor2];
  v10[1] = inputFactor2;
  inputFactor3 = [(VNCIMultiplicationFilter *)self inputFactor3];
  v10[2] = inputFactor3;
  inputFactor4 = [(VNCIMultiplicationFilter *)self inputFactor4];
  v10[3] = inputFactor4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [(VNCIFilter *)&self->super.super.super.isa applyWithArguments:v7];

  return v8;
}

- (VNCIMultiplicationFilter)init
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"multiplyByFactor"];
  v10.receiver = self;
  v10.super_class = VNCIMultiplicationFilter;
  v4 = [(VNCIFilter *)&v10 initWithKernelName:v3];

  if (v4)
  {
    inputFactor1 = v4->_inputFactor1;
    v4->_inputFactor1 = &unk_1F19C2448;

    inputFactor2 = v4->_inputFactor2;
    v4->_inputFactor2 = &unk_1F19C2448;

    inputFactor3 = v4->_inputFactor3;
    v4->_inputFactor3 = &unk_1F19C2448;

    inputFactor4 = v4->_inputFactor4;
    v4->_inputFactor4 = &unk_1F19C2448;
  }

  return v4;
}

@end