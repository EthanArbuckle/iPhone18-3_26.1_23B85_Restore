@interface CIColorKernel
+ (CIColorKernel)kernelWithString:(NSString *)string;
+ (id)SDOFV2MetalKernelNamed:(id)named;
+ (id)SDOFV3MetalKernelNamed:(id)named;
- (BOOL)canReduceOutputChannels;
- (BOOL)perservesAlpha;
- (BOOL)preservesOpacity;
- (BOOL)preservesRange;
- (CIColorKernel)initWithString:(id)string;
- (id)applyWithExtent:(CGRect)extent arguments:(id)arguments options:(id)options;
- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments;
- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments options:(id)options;
- (void)setCanReduceOutputChannels:(BOOL)channels;
- (void)setPerservesAlpha:(BOOL)alpha;
- (void)setPreservesRange:(BOOL)range;
@end

@implementation CIColorKernel

+ (CIColorKernel)kernelWithString:(NSString *)string
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
  v10 = __34__CIColorKernel_kernelWithString___block_invoke;
  v11 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIColorKernel kernelWithString:]"))
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

void __34__CIColorKernel_kernelWithString___block_invoke(uint64_t a1)
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

- (CIColorKernel)initWithString:(id)string
{
  if (check_cikl_string(string, "[CIColorKernel initWithString:]"))
  {

    return [(CIKernel *)self _initWithString:string andCIKernelLibrary:0 usingCruftCompatibility:0 isInternal:0];
  }

  else
  {

    return 0;
  }
}

- (BOOL)preservesOpacity
{
  priv = self->super._priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 154);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)perservesAlpha
{
  priv = self->super._priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 154);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setPerservesAlpha:(BOOL)alpha
{
  v11 = *MEMORY[0x1E69E9840];
  priv = self->super._priv;
  v5 = *(priv + 4);
  v6 = ci_logger_api();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v9 = 136446210;
      v10 = "[CIColorKernel setPerservesAlpha:]";
      v8 = "%{public}s is deprecated. Add __attribute__((preserves_opacity)) to the CIKL source instead.";
LABEL_6:
      _os_log_impl(&dword_19CC36000, v6, OS_LOG_TYPE_INFO, v8, &v9, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = 136446210;
    v10 = "[CIColorKernel setPerservesAlpha:]";
    v8 = "%{public}s is deprecated. Add [[stitchable,user_annotation(kCIPreservesOpacity)]] to the Metal source instead.";
    goto LABEL_6;
  }

  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    CI::Kernel::set_preserves_alpha(priv, alpha);
  }
}

- (BOOL)preservesRange
{
  priv = self->super._priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 156);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setPreservesRange:(BOOL)range
{
  priv = self->super._priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {

    CI::Kernel::set_preserves_range(priv, range);
  }
}

- (BOOL)canReduceOutputChannels
{
  priv = self->super._priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 152);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setCanReduceOutputChannels:(BOOL)channels
{
  priv = self->super._priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {

    CI::Kernel::set_can_reduce_output_channels(priv, channels);
  }
}

- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments options:(id)options
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v17 = *MEMORY[0x1E69E9840];
  if (callback)
  {
    v18.origin.x = (*(callback + 2))(callback, 0, extent.origin, *&extent.origin.y, extent.size, *&extent.size.height);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    if (!CGRectEqualToRect(v18, v19))
    {
      v13 = ci_logger_api();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 136446210;
        v16 = "[CIColorKernel applyWithExtent:roiCallback:arguments:options:]";
        _os_log_impl(&dword_19CC36000, v13, OS_LOG_TYPE_INFO, "%{public}s ignores callback and is not recomended.  Use applyWithExtent:arguments:options: instead.", &v15, 0xCu);
      }
    }
  }

  return [(CIColorKernel *)self applyWithExtent:arguments arguments:options options:x, y, width, height];
}

- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v15 = *MEMORY[0x1E69E9840];
  if (callback)
  {
    v16.origin.x = (*(callback + 2))(callback, 0, extent.origin, *&extent.origin.y, extent.size, *&extent.size.height);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    if (!CGRectEqualToRect(v16, v17))
    {
      v11 = ci_logger_api();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 136446210;
        v14 = "[CIColorKernel applyWithExtent:roiCallback:arguments:]";
        _os_log_impl(&dword_19CC36000, v11, OS_LOG_TYPE_INFO, "%{public}s ignores callback and is not recomended.  Use applyWithExtent:arguments: instead.", &v13, 0xCu);
      }
    }
  }

  return [(CIColorKernel *)self applyWithExtent:arguments arguments:x, y, width, height];
}

- (id)applyWithExtent:(CGRect)extent arguments:(id)arguments options:(id)options
{
  v27 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(extent))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    priv = self->super._priv;
    if ((*(*priv + 16))(priv) == 70)
    {
      v9 = [arguments count];
      if (CI::Kernel::num_apply_arguments(priv) == v9)
      {
        if (v9 < 1)
        {
LABEL_28:
          operator new();
        }

        v10 = 0;
        while (1)
        {
          if (*(priv + 12) == 1)
          {
            type = CI::KernelArguments::get_type((priv + 17), v10);
          }

          else if (v10 >= *(priv + 5))
          {
            type = 0;
          }

          else
          {
            type = *(priv[8] + 4 * v10);
          }

          if (*(*priv + 72))(priv) && !priv[4] && (type == 15 || type == 8) && (([arguments objectAtIndexedSubscript:v10], objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_msgSend(arguments, "objectAtIndexedSubscript:", v10), objc_opt_class(), (objc_opt_isKindOfClass())))
          {
            CI::Kernel::set_argument_type(priv, v10, 1);
            CI::Kernel::set_half_color_inputs(priv, type == 15);
          }

          else if ((verify_argument_type([arguments objectAtIndexedSubscript:v10], type, 1) & 1) == 0)
          {
            v14 = ci_logger_api();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = priv[3];
              v16 = expected_argument_type(type);
              [arguments objectAtIndexedSubscript:v10];
              v17 = 136447234;
              v18 = "[CIColorKernel applyWithExtent:arguments:options:]";
              v19 = 2082;
              v20 = v15;
              v21 = 1024;
              v22 = v10;
              v23 = 2082;
              v24 = v16;
              v25 = 2114;
              v26 = [objc_opt_class() description];
              _os_log_error_impl(&dword_19CC36000, v14, OS_LOG_TYPE_ERROR, "%{public}s type mismatch for kernel '%{public}s' parameter %d. %{public}sGot %{public}@.", &v17, 0x30u);
            }

            return 0;
          }

          if ((v9 & 0x7FFFFFFF) == ++v10)
          {
            goto LABEL_28;
          }
        }
      }

      v13 = ci_logger_api();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CIColorKernel applyWithExtent:? arguments:? options:?];
      }
    }

    else
    {
      v12 = ci_logger_api();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CIColorKernel applyWithExtent:arguments:options:];
      }
    }

    return 0;
  }
}

+ (id)SDOFV2MetalKernelNamed:(id)named
{
  if (SDOFV2MetalLibURL::onceToken != -1)
  {
    SDOFV2MetalLibURL_cold_1();
  }

  if (!SDOFV2MetalLibURL::url)
  {
    return 0;
  }

  return [CIKernel cachedKernelWithFunctionName:"cachedKernelWithFunctionName:fromMetalLibrary:error:" fromMetalLibrary:named error:?];
}

+ (id)SDOFV3MetalKernelNamed:(id)named
{
  if (SDOFV3MetalLibURL::onceToken != -1)
  {
    +[CIKernel(SDOF) SDOFV3MetalKernelNamed:];
  }

  if (!SDOFV3MetalLibURL::url)
  {
    return 0;
  }

  return [CIKernel cachedKernelWithFunctionName:"cachedKernelWithFunctionName:fromMetalLibrary:error:" fromMetalLibrary:named error:?];
}

- (void)applyWithExtent:arguments:options:.cold.1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)applyWithExtent:(CI::Kernel *)a1 arguments:options:.cold.2(CI::Kernel *a1)
{
  CI::Kernel::num_apply_arguments(a1);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_0(&dword_19CC36000, v1, v2, "%{public}s argument count mismatch for kernel '%{public}s', expected %d but saw %d.", v3, v4, v5, v6, 2u);
}

- (void)applyWithExtent:arguments:options:.cold.3()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  v1[0] = 136446466;
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(&dword_19CC36000, v0, OS_LOG_TYPE_DEBUG, "%{public}s kernel '%{public}s' specified 'preservesOpacity' but extent is not the same as the extent of the first input image.", v1, 0x16u);
}

- (void)applyWithExtent:arguments:options:.cold.4()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  v1[0] = 136446466;
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(&dword_19CC36000, v0, OS_LOG_TYPE_DEBUG, "%{public}s kernel '%{public}s' specified 'preservesOpacity' but has no inputs.", v1, 0x16u);
}

@end