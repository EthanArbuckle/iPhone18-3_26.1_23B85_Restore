@interface CIInterleavedToPlanar3
- (id)outputImage;
@end

@implementation CIInterleavedToPlanar3

- (id)outputImage
{
  v24[2] = *MEMORY[0x1E69E9840];
  v2 = [(CIPlanarize *)self inputImage];
  [(CIImage *)v2 extent];
  if (CGRectIsEmpty(v25))
  {
    return 0;
  }

  [(CIImage *)v2 extent];
  if (CGRectIsInfinite(v26))
  {
    return 0;
  }

  v4 = [CIKernel kernelWithInternalRepresentation:&CI::_interleavedToPlanar3];
  [(CIImage *)v2 extent];
  v6 = v5;
  [(CIImage *)v2 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  CGAffineTransformMakeScale(&v21, 1.0, 3.0);
  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  v28 = CGRectApplyAffineTransform(v27, &v21);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  v24[0] = v2;
  v24[1] = [MEMORY[0x1E696AD98] numberWithDouble:{v6, MEMORY[0x1E69E9820], 3221225472, __37__CIInterleavedToPlanar3_outputImage__block_invoke, &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, *&v6}];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v22 = @"kCIKernelOutputFormat";
  v23 = [MEMORY[0x1E696AD98] numberWithInt:2053];
  return -[CIKernel applyWithExtent:roiCallback:arguments:options:](v4, "applyWithExtent:roiCallback:arguments:options:", &v20, v19, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1], x, y, width, height);
}

@end