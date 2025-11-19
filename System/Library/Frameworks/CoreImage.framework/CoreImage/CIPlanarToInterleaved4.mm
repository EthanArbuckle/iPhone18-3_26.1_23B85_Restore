@interface CIPlanarToInterleaved4
- (id)outputImage;
@end

@implementation CIPlanarToInterleaved4

- (id)outputImage
{
  v21[2] = *MEMORY[0x1E69E9840];
  v2 = [(CIPlanarize *)self inputImage];
  [(CIImage *)v2 extent];
  if (CGRectIsEmpty(v22))
  {
    return 0;
  }

  [(CIImage *)v2 extent];
  if (CGRectIsInfinite(v23))
  {
    return 0;
  }

  v4 = [CIKernel kernelWithInternalRepresentation:&CI::_planarToInterleaved4];
  [(CIImage *)v2 extent];
  v6 = v5;
  [(CIImage *)v2 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  CGAffineTransformMakeScale(&v20, 1.0, 0.25);
  v24.origin.x = v8;
  v24.origin.y = v10;
  v24.size.width = v12;
  v24.size.height = v14;
  v25 = CGRectApplyAffineTransform(v24, &v20);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v21[0] = v2;
  v21[1] = [MEMORY[0x1E696AD98] numberWithDouble:{v25.size.height, MEMORY[0x1E69E9820], 3221225472, __37__CIPlanarToInterleaved4_outputImage__block_invoke, &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, v6}];
  return -[CIKernel applyWithExtent:roiCallback:arguments:](v4, "applyWithExtent:roiCallback:arguments:", &v19, [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2], x, y, width, height);
}

@end