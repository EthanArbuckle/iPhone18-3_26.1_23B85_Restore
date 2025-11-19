@interface CICircularityDescriptor
- (id)outputImage;
@end

@implementation CICircularityDescriptor

- (id)outputImage
{
  v34[1] = *MEMORY[0x1E69E9840];
  inputCentroid = self->inputCentroid;
  if (!inputCentroid)
  {
    inputImage = self->inputImage;
    inputExtent = self->inputExtent;
    v33 = @"inputExtent";
    v34[0] = inputExtent;
    inputCentroid = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIAreaRedCentroid", [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1]);
  }

  [(CIVector *)self->inputExtent CGRectValue];
  v7 = v6;
  v9 = v8;
  v10 = self->inputImage;
  v11 = self->inputExtent;
  v31 = @"inputExtent";
  v32 = v11;
  v12 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v10, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1]), "imageByClampingToExtent");
  v13 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_cdintersect];
  *&v7 = v7 * v9 / 3.14159265;
  [(CIImage *)self->inputImage extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v30[0] = self->inputImage;
  v30[1] = inputCentroid;
  v30[2] = v12;
  LODWORD(v14) = LODWORD(v7);
  v30[3] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v22 = -[CIColorKernel applyWithExtent:arguments:](v13, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4], v15, v17, v19, v21);
  v23 = self->inputExtent;
  v28 = @"inputExtent";
  v29 = v23;
  v24 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](v22, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1]), "imageByClampingToExtent");
  v25 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_cdmeasure];
  v27[0] = v12;
  v27[1] = v24;
  return -[CIColorKernel applyWithExtent:arguments:](v25, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2], 0.0, 0.0, 1.0, 1.0);
}

@end