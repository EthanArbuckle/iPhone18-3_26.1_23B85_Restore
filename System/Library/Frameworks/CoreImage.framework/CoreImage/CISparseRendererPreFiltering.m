@interface CISparseRendererPreFiltering
- (id)_kernel:(BOOL)a3;
- (id)outputImage;
- (id)outputImage:(id)a3 horizontal:(BOOL)a4 width:(double)a5;
- (void)dumpImage:(id)a3 extent:(CGRect)a4 prefixFilename:(id)a5;
@end

@implementation CISparseRendererPreFiltering

- (id)_kernel:(BOOL)a3
{
  v3 = a3;
  v4 = SDOFV2MetalLibURL();
  if (v3)
  {
    v5 = @"_sparserendering_prefilter_x";
  }

  else
  {
    v5 = @"_sparserendering_prefilter_y";
  }

  return [CIKernel cachedKernelWithFunctionName:v5 fromMetalLibrary:v4 error:0];
}

- (id)outputImage:(id)a3 horizontal:(BOOL)a4 width:(double)a5
{
  v44[3] = *MEMORY[0x1E69E9840];
  if (a3 && (v9 = [(CISparseRendererPreFiltering *)self _kernel:a4]) != 0)
  {
    v10 = v9;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    SDOFRenderingValue(&cfstr_Prefilterradiu.isa, self->inputTuningParameters);
    v41 = v11;
    [(NSNumber *)self->inputApertureScaling floatValue];
    v13 = v12;
    SDOFHighlightRecoveryValue(&cfstr_Blurradiust1.isa, self->inputTuningParameters);
    v15 = v14;
    SDOFHighlightRecoveryValue(&cfstr_Blurradiust0.isa, self->inputTuningParameters);
    v17 = v16;
    SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
    v19 = v18;
    SDOFRenderingValue(&cfstr_Prefilterradiu.isa, self->inputTuningParameters);
    v21 = v20;
    SDOFRenderingValue(&cfstr_Prefilterblurs.isa, self->inputTuningParameters);
    v23 = v22;
    SDOFHighlightRecoveryValue(&cfstr_Prefiltergain.isa, self->inputTuningParameters);
    v25 = [CIVector vectorWithX:v19 Y:v21 Z:v23 W:v24];
    [(NSNumber *)self->inputScale floatValue];
    v27 = [CIVector vectorWithX:(1.0 / ((v13 * v15) - (v13 * v17))) Y:-((1.0 / ((v13 * v15) - (v13 * v17))) * (v13 * v17)) Z:a5 W:v26];
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    [(NSNumber *)self->inputScale floatValue];
    v39 = v28;
    v29 = *MEMORY[0x1E695F040];
    v30 = *(MEMORY[0x1E695F040] + 8);
    v32 = *(MEMORY[0x1E695F040] + 16);
    v31 = *(MEMORY[0x1E695F040] + 24);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __61__CISparseRendererPreFiltering_outputImage_horizontal_width___block_invoke;
    v36[3] = &unk_1E75C3888;
    v37 = a4;
    v36[4] = v40;
    v36[5] = v38;
    v44[0] = a3;
    v44[1] = v25;
    v44[2] = v27;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
    v42 = @"kCIKernelOutputFormat";
    v43 = [MEMORY[0x1E696AD98] numberWithInt:2056];
    v34 = [v10 applyWithExtent:v36 roiCallback:v33 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v43, &v42, 1), v29, v30, v32, v31}];
    _Block_object_dispose(v38, 8);
    _Block_object_dispose(v40, 8);
    return v34;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

double __61__CISparseRendererPreFiltering_outputImage_horizontal_width___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = -(*(*(*(a1 + 32) + 8) + 24) * *(*(*(a1 + 40) + 8) + 24));
  v6 = v5;
  if (*(a1 + 48))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0.0;
  }

  if (*(a1 + 48))
  {
    v6 = 0.0;
  }

  *&result = CGRectInset(*&a2, v7, v6);
  return result;
}

- (void)dumpImage:(id)a3 extent:(CGRect)a4 prefixFilename:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  v15[2] = *MEMORY[0x1E69E9840];
  v8 = [a3 imageByCroppingToRect:{a4.origin.x, a4.origin.y}];
  v9 = malloc_type_malloc((height * (width * 8.0)), 0x1000040BDFB0063uLL);
  if (v9)
  {
    v10 = v9;
    v14[0] = @"working_format";
    v14[1] = @"kCIContextName";
    v15[0] = [MEMORY[0x1E696AD98] numberWithInt:2056];
    v15[1] = @"CIPortraitBlurVr-dumpImage";
    v11 = +[CIContext contextWithOptions:](CIContext, "contextWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2]);
    [v8 extent];
    [(CIContext *)v11 render:v8 toBitmap:v10 rowBytes:(width * 8.0) bounds:2056 format:0 colorSpace:?];
    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:(height * (width * 8.0))];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@%gx%g.f16", NSTemporaryDirectory(), a5, *&width, *&height];
    [v12 writeToFile:v13 atomically:1];
    NSLog(&cfstr_Filename_0.isa, v13);
    free(v10);
  }
}

- (id)outputImage
{
  [(CIImage *)self->inputImage extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CISparseRendererPreFiltering *)self outputImage:[(CISparseRendererPreFiltering *)self outputImage:[(CIImage *)self->inputImage imageByClampingToExtent] horizontal:1 width:v7] horizontal:0 width:v7];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  if (CGRectEqualToRect(*MEMORY[0x1E695F040], v14))
  {
    return v11;
  }

  return [v11 imageByCroppingToRect:{v4, v6, v8, v10}];
}

@end