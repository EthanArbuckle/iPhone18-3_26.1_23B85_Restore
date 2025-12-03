@interface CIWarpKernel
+ (CIWarpKernel)kernelWithString:(NSString *)string;
- (CGRect)autogenerateROI:(void *)i args:(SerialObjectPtrArray *)args arguments:(id)arguments extent:(CGRect)extent;
- (CIWarpKernel)initWithString:(id)string;
- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments;
- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments options:(id)options;
- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback inputImage:(id)image arguments:(id)arguments options:(id)options;
- (id)generateGeneralKernelFromWarpKernel:(void *)kernel args:(SerialObjectPtrArray *)args;
- (id)generateMainFromWarpKernel:(void *)kernel args:(SerialObjectPtrArray *)args;
- (id)makeGridImage:(CGRect)image nx:(int)nx ny:(int)ny;
@end

@implementation CIWarpKernel

+ (CIWarpKernel)kernelWithString:(NSString *)string
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v14 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithString", "%{public}@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __33__CIWarpKernel_kernelWithString___block_invoke;
  v11 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIWarpKernel kernelWithString:]"))
  {
    v6 = [[self alloc] initWithString:string];
    if (v6)
    {
      v7 = [objc_opt_class() description];
      CoreAnalytics(v7, &cfstr_Kernelwithstri.isa, 1);
    }
  }

  else
  {
    v6 = 0;
  }

  v10(v9);
  return v6;
}

void __33__CIWarpKernel_kernelWithString___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithString", "%{public}@", &v4, 0xCu);
  }
}

- (CIWarpKernel)initWithString:(id)string
{
  if (check_cikl_string(string, "[CIWarpKernel initWithString:]"))
  {

    return [(CIKernel *)self _initWithString:string andCIKernelLibrary:0 usingCruftCompatibility:0 isInternal:0];
  }

  else
  {

    return 0;
  }
}

- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments options:(id)options
{
  v6 = ci_logger_api();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(CIWarpKernel *)v6 applyWithExtent:v7 roiCallback:v8 arguments:v9 options:v10, v11, v12, v13];
  }

  return 0;
}

- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments
{
  v5 = ci_logger_api();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CIWarpKernel *)v5 applyWithExtent:v6 roiCallback:v7 arguments:v8, v9, v10, v11, v12];
  }

  return 0;
}

- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback inputImage:(id)image arguments:(id)arguments options:(id)options
{
  v30 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(extent) || !image || ([image extent], CGRectIsEmpty(v32)))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    priv = self->super._priv;
    if ((*(*priv + 16))(priv) == 71)
    {
      v12 = [arguments count];
      if (CI::Kernel::num_apply_arguments(priv) == v12)
      {
        if (v12 < 1)
        {
LABEL_18:
          operator new();
        }

        v13 = 0;
        while (1)
        {
          if (*(priv + 12) == 1)
          {
            type = CI::KernelArguments::get_type((priv + 17), v13);
          }

          else
          {
            type = v13 >= *(priv + 5) ? 0 : *(priv[8] + 4 * v13);
          }

          if ((verify_argument_type([arguments objectAtIndexedSubscript:v13], type, 0) & 1) == 0)
          {
            break;
          }

          if ((v12 & 0x7FFFFFFF) == ++v13)
          {
            goto LABEL_18;
          }
        }

        v17 = ci_logger_api();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = priv[3];
          v19 = expected_argument_type(type);
          [arguments objectAtIndexedSubscript:v13];
          *buf = 136447234;
          v21 = "[CIWarpKernel applyWithExtent:roiCallback:inputImage:arguments:options:]";
          v22 = 2082;
          v23 = v18;
          v24 = 1024;
          v25 = v13;
          v26 = 2082;
          v27 = v19;
          v28 = 2114;
          v29 = [objc_opt_class() description];
          _os_log_error_impl(&dword_19CC36000, v17, OS_LOG_TYPE_ERROR, "%{public}s type mismatch for kernel '%{public}s' parameter %d. %{public}sGot %{public}@.", buf, 0x30u);
        }
      }

      else
      {
        v16 = ci_logger_api();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [CIWarpKernel applyWithExtent:? roiCallback:? inputImage:? arguments:? options:?];
        }
      }
    }

    else
    {
      v15 = ci_logger_api();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CIWarpKernel applyWithExtent:roiCallback:inputImage:arguments:options:];
      }
    }

    return 0;
  }
}

- (id)generateMainFromWarpKernel:(void *)kernel args:(SerialObjectPtrArray *)args
{
  v6 = [MEMORY[0x1E696AD60] stringWithUTF8String:*(kernel + 4)];
  [v6 insertString:@" atIndex:{vec2 samplePoint", objc_msgSend(v6, "rangeOfString:", @")"}]);
  [v6 replaceOccurrencesOfString:@"destCoord()" withString:@"samplePoint" options:2 range:{0, objc_msgSend(v6, "length")}];
  objc_msgSend(v6, "appendString:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"\nkernel vec4 autoROI_%s(__sample s,vec4 e,"), *(kernel + 3));
  if (args->var0 < 2)
  {
    objc_msgSend(v6, "appendString:", @"  vec2 pt =(");
    [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *(kernel + 3))}];
    objc_msgSend(v6, "appendString:", @"(");
  }

  else
  {
    v7 = 0;
    var0 = args->var0;
    v8 = (args->var0 - 1);
    do
    {
      if (*(kernel + 12) == 1)
      {
        type = CI::KernelArguments::get_type((kernel + 136), v7);
      }

      else if (v7 >= *(kernel + 5))
      {
        type = 0;
      }

      else
      {
        type = *(*(kernel + 8) + 4 * v7);
      }

      v10 = v7 + 1;
      if (v8 - 1 == v7)
      {
        v11 = ") {";
      }

      else
      {
        v11 = ",";
      }

      [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s v%d%s", off_1E75C3DD0[type], v7++, v11)}];
    }

    while (v8 != v10);
    objc_msgSend(v6, "appendString:", @"  vec2 pt =(");
    [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *(kernel + 3))}];
    objc_msgSend(v6, "appendString:", @"(");
    v12 = 0;
    do
    {
      v13 = (v12 + 1);
      if (v12 - var0 == -2)
      {
        v14 = ",s.xy) - e.xy) / e.zw; return pt.xyxy; }";
      }

      else
      {
        v14 = ", ";
      }

      [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"v%d%s", v12, v14)}];
      v12 = v13;
    }

    while (v13 - var0 != -1);
  }

  return v6;
}

- (id)generateGeneralKernelFromWarpKernel:(void *)kernel args:(SerialObjectPtrArray *)args
{
  v6 = [MEMORY[0x1E696AD60] stringWithUTF8String:*(kernel + 4)];
  objc_msgSend(v6, "appendString:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"\nkernel vec4 autoROI_%s(sampler s,vec4 e,"), *(kernel + 3));
  if (args->var0 < 2)
  {
    [v6 appendString:@"  vec2 pt = "];
    [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *(kernel + 3))}];
    objc_msgSend(v6, "appendString:", @"(");
  }

  else
  {
    v7 = 0;
    var0 = args->var0;
    v8 = (args->var0 - 1);
    do
    {
      if (*(kernel + 12) == 1)
      {
        type = CI::KernelArguments::get_type((kernel + 136), v7);
      }

      else if (v7 >= *(kernel + 5))
      {
        type = 0;
      }

      else
      {
        type = *(*(kernel + 8) + 4 * v7);
      }

      v10 = v7 + 1;
      if (v8 - 1 == v7)
      {
        v11 = ") {";
      }

      else
      {
        v11 = ",";
      }

      [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s v%d%s", off_1E75C3DD0[type], v7++, v11)}];
    }

    while (v8 != v10);
    [v6 appendString:@"  vec2 pt = "];
    [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *(kernel + 3))}];
    objc_msgSend(v6, "appendString:", @"(");
    v12 = 0;
    do
    {
      v13 = (v12 + 1);
      if (v12 - var0 == -2)
      {
        v14 = ");\n  ";
      }

      else
      {
        v14 = ",";
      }

      [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"v%d%s", v12, v14)}];
      v12 = v13;
    }

    while (v13 - var0 != -1);
  }

  [v6 appendString:{@" return ((samplerTransform(s, pt).xyxy)- e.xyxy) / e.zwzw; }"}];
  return v6;
}

- (id)makeGridImage:(CGRect)image nx:(int)nx ny:(int)ny
{
  height = image.size.height;
  width = image.size.width;
  y = image.origin.y;
  x = image.origin.x;
  v11 = 16 * nx;
  v12 = v11 * ny;
  v13 = malloc_type_malloc(v12, 0x100004052888210uLL);
  v14 = v13;
  if (ny >= 1)
  {
    v15 = 0;
    v18 = v13 + 4;
    nyCopy = ny;
    do
    {
      if (nx >= 1)
      {
        v16 = height / (ny - 1);
        v20 = (v16 * v15);
        if (nyCopy == 1)
        {
          v20 = height;
        }

        v21 = y + v20;
        v17 = x + width;
        *(v18 - 1) = v17;
        *v18 = v21;
        *(v18 + 4) = 0x3F80000000000000;
      }

      v18 += 16;
      ++v15;
      --nyCopy;
    }

    while (nyCopy);
  }

  v22 = [MEMORY[0x1E695DEF0] dataWithBytes:v13 length:v12];
  free(v14);
  null = [MEMORY[0x1E695DFB0] null];

  return [CIImage imageWithBitmapData:v22 bytesPerRow:v11 size:2312 format:null colorSpace:nx, ny];
}

- (CGRect)autogenerateROI:(void *)i args:(SerialObjectPtrArray *)args arguments:(id)arguments extent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v48[3] = *MEMORY[0x1E69E9840];
  if (CGRectIsInfinite(extent) || (v49.origin.x = x, v49.origin.y = y, v49.size.width = width, v49.size.height = height, CGRectIsEmpty(v49)))
  {
    v14 = *MEMORY[0x1E695F050];
    v15 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v17 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v18 = *(MEMORY[0x1E695EFD0] + 16);
    *&v46.a = *MEMORY[0x1E695EFD0];
    *&v46.c = v18;
    *&v46.tx = *(MEMORY[0x1E695EFD0] + 32);
    v19 = [CIKernel kernelWithString:[(CIWarpKernel *)self generateGeneralKernelFromWarpKernel:i args:args]];
    v20 = [CIFilter filterWithName:@"CIConstantColorGenerator"];
    [(CIFilter *)v20 setDefaults];
    v21 = [-[CIFilter valueForKey:](v20 valueForKey:{@"outputImage", "imageByCroppingToRect:", x, y, width, height}];
    CGAffineTransformMakeTranslation(&v46, -x, -y);
    v45 = v46;
    v22 = [v21 imageByApplyingTransform:&v45];
    CGAffineTransformMakeScale(&v45, 16.0 / width, 16.0 / height);
    v46 = v45;
    v23 = [v22 imageByApplyingTransform:&v45];
    CGAffineTransformMakeTranslation(&v45, -x, -y);
    v46 = v45;
    v44 = v45;
    CGAffineTransformScale(&v45, &v44, 16.0 / width, 16.0 / height);
    v46 = v45;
    v24 = [MEMORY[0x1E695DF70] arrayWithArray:arguments];
    [v24 insertObject:v23 atIndex:0];
    [v24 insertObject:+[CIVector vectorWithCGRect:](CIVector atIndex:{"vectorWithCGRect:", 0.0, 0.0, 16.0, 16.0), 1}];
    [v23 extent];
    v25 = [(CIKernel *)v19 applyWithExtent:&__block_literal_global_70 roiCallback:v24 arguments:?];
    v48[0] = MEMORY[0x1E695E118];
    v47[0] = @"software_renderer";
    v47[1] = @"working_format";
    v48[1] = [MEMORY[0x1E696AD98] numberWithInt:2312];
    v47[2] = @"working_color_space";
    v48[2] = [MEMORY[0x1E695DFB0] null];
    v26 = +[CIContext _cachedContext:options:](CIContext, "_cachedContext:options:", @"CIWarpKernel-autoROI", [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3]);
    v27 = +[CIContext defaultWorkingColorSpace];
    v28 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
    [v26 render:v25 toBitmap:v28 rowBytes:256 bounds:2312 format:v27 colorSpace:{0.0, 0.0, 16.0, 16.0}];
    v29 = 0;
    v30 = *v28;
    v31 = v28[1];
    v32 = v28;
    v33 = *v28;
    v34 = v31;
    do
    {
      v35 = 0;
      do
      {
        v36 = v32[v35];
        if (fabsf(v36) <= 10000.0)
        {
          v37 = v32[v35 + 1];
          if (fabsf(v37) <= 10000.0)
          {
            v38 = y + v37 * height;
            v39 = x + v36 * width;
            if (v33 <= v39)
            {
              v33 = v39;
            }

            if (v30 >= v39)
            {
              v30 = v39;
            }

            if (v34 <= v38)
            {
              v34 = v38;
            }

            if (v31 >= v38)
            {
              v31 = v38;
            }
          }
        }

        v35 += 4;
      }

      while ((v35 * 4) != 256);
      v32 += 64;
      ++v29;
    }

    while (v29 != 16);
    v50.origin.x = v30;
    v50.origin.y = v31;
    v50.size.width = (v33 - v30);
    v50.size.height = (v34 - v31);
    v51 = CGRectInset(v50, -0.5, -0.5);
    v14 = v51.origin.x;
    v15 = v51.origin.y;
    v16 = v51.size.width;
    v17 = v51.size.height;
    free(v28);
  }

  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (void)applyWithExtent:roiCallback:inputImage:arguments:options:.cold.1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)applyWithExtent:(CI::Kernel *)a1 roiCallback:inputImage:arguments:options:.cold.2(CI::Kernel *a1)
{
  CI::Kernel::num_apply_arguments(a1);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_0(&dword_19CC36000, v1, v2, "%{public}s argument count mismatch for kernel '%{public}s', expected %d but saw %d.", v3, v4, v5, v6, 2u);
}

@end