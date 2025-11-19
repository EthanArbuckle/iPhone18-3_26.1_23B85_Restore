@interface CIImageProcessorKernel
+ (BOOL)processWithInputs:(NSArray *)inputs arguments:(NSDictionary *)arguments output:(id)output error:(NSError *)error;
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 outputs:(id)a5 error:(id *)a6;
+ (CIImage)applyWithExtent:(CGRect)extent inputs:(NSArray *)inputs arguments:(NSDictionary *)args error:(NSError *)error;
+ (NSArray)roiTileArrayForInput:(int)input arguments:(NSDictionary *)arguments outputRect:(CGRect)outputRect;
+ (id)applyWithExtents:(id)a3 inputs:(id)a4 arguments:(id)a5 error:(id *)a6;
+ (id)logDescription:(id)a3;
+ (int)_call_formatForInputAtIndex:(int)a3 arguments:(id)a4;
+ (int)_call_outputFormatWithArguments:(id)a3;
+ (unint64_t)_digestForArgs:(id)a3;
@end

@implementation CIImageProcessorKernel

+ (BOOL)processWithInputs:(NSArray *)inputs arguments:(NSDictionary *)arguments output:(id)output error:(NSError *)error
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"%s must be overridden in %@ class", "+[CIImageProcessorKernel processWithInputs:arguments:output:error:]", NSStringFromClass(v9)), 0}];
  objc_exception_throw(v10);
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 outputs:(id)a5 error:(id *)a6
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"%s must be overridden in %@ class", "+[CIImageProcessorKernel processWithInputs:arguments:outputs:error:]", NSStringFromClass(v9)), 0}];
  objc_exception_throw(v10);
}

+ (NSArray)roiTileArrayForInput:(int)input arguments:(NSDictionary *)arguments outputRect:(CGRect)outputRect
{
  v6[1] = *MEMORY[0x1E69E9840];
  [a1 roiForInput:*&input arguments:arguments outputRect:{outputRect.origin.x, outputRect.origin.y, outputRect.size.width, outputRect.size.height}];
  v6[0] = [CIVector vectorWithCGRect:?];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
}

+ (id)logDescription:(id)a3
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

+ (unint64_t)_digestForArgs:(id)a3
{
  v6 = 0;
  XXH64_reset(v5, 0);
  if (a3 && (digestAdd(v5, a3, &v6), v6))
  {
    return 0;
  }

  else
  {
    return XXH64_digest(v5);
  }
}

+ (int)_call_formatForInputAtIndex:(int)a3 arguments:(id)a4
{
  v5 = *&a3;
  v6 = [objc_opt_class() methodForSelector:sel_formatForInputAtIndex_arguments_];
  v7 = [CIImageProcessorKernel methodForSelector:sel_formatForInputAtIndex_arguments_];
  v8 = objc_opt_class();
  if (v6 == v7)
  {

    return [v8 formatForInputAtIndex:v5];
  }

  else
  {

    return [v8 formatForInputAtIndex:v5 arguments:a4];
  }
}

+ (int)_call_outputFormatWithArguments:(id)a3
{
  v4 = [objc_opt_class() methodForSelector:sel_outputFormatWithArguments_];
  v5 = [CIImageProcessorKernel methodForSelector:sel_outputFormatWithArguments_];
  v6 = objc_opt_class();
  if (v4 == v5)
  {

    return [v6 outputFormat];
  }

  else
  {

    return [v6 outputFormatWithArguments:a3];
  }
}

+ (CIImage)applyWithExtent:(CGRect)extent inputs:(NSArray *)inputs arguments:(NSDictionary *)args error:(NSError *)error
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v51[1] = *MEMORY[0x1E69E9840];
  v13 = NSSelectorFromString(&cfstr_Processwithinp.isa);
  v14 = [objc_opt_class() methodForSelector:v13];
  v15 = [CIImageProcessorKernel methodForSelector:v13];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  if (v14 == v15 || v16 == v17)
  {
    v36 = MEMORY[0x1E695DF30];
    v37 = *MEMORY[0x1E695D940];
    v38 = MEMORY[0x1E696AEC0];
    v39 = objc_opt_class();
    v40 = [v36 exceptionWithName:v37 reason:objc_msgSend(v38 userInfo:{"stringWithFormat:", @"%s must be overridden in %@ class", "+[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:]", NSStringFromClass(v39)), 0}];
    objc_exception_throw(v40);
  }

  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  if (CGRectIsEmpty(v53))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v41 = error;
    v20 = [objc_opt_class() skipFormatChecks];
    v21 = [(NSArray *)inputs count];
    v22 = [a1 _call_outputFormatWithArguments:args];
    v24 = CI::format_modernize(v22, "+[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:]", v23);
    v25 = v24;
    if (v20 & 1) != 0 || !v24 || (CI::ProcessorImage::format_is_supported(v24, 0))
    {
      if (!v25 || v25 == 266)
      {
        [objc_opt_class() allowSRGBTranferFuntionOnOutput];
      }

      if (v25 != 261 && v25 != 2053 && v25 != 2309)
      {
        [objc_opt_class() outputIsOpaque];
      }

      if (![a1 _digestForArgs:args])
      {
        v26 = ci_logger_performance();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = objc_opt_class();
          *buf = 136446466;
          v47 = "+[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:]";
          v48 = 2114;
          v49 = NSStringFromClass(v27);
          _os_log_impl(&dword_19CC36000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s each object in arguments dictionary be an NSArray, NSDictionary, NSNumber, NSValue, NSData, NSString, NSNull, CIVector, CIColor, CIImage, CGImageRef or CGColorSpaceRef for CoreImage to cache optimally (%{public}@).", buf, 0x16u);
        }
      }

      if (!v21)
      {
LABEL_33:
        [objc_opt_class() methodForSelector:sel_roiTileArrayForInput_arguments_outputRect_];
        [CIImageProcessorKernel methodForSelector:sel_roiTileArrayForInput_arguments_outputRect_];
        if (v21)
        {
          operator new();
        }

        [objc_opt_class() logDescription:args];
        [objc_opt_class() onlyUsesMetal];
        operator new();
      }

      v42 = malloc_type_calloc(4uLL, v21, 0x100004052888210uLL);
      v28 = malloc_type_calloc(1uLL, v21, 0x100004077774924uLL);
      v29 = 0;
      v30 = 0;
      while (1)
      {
        v31 = [a1 _call_formatForInputAtIndex:v30 arguments:args];
        v33 = CI::format_modernize(v31, "+[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:]", v32);
        v34 = v33;
        v42[v29] = v33;
        v35 = v33 ? v20 : 1;
        if ((v35 & 1) == 0 && (CI::ProcessorImage::format_is_supported(v33, 1) & 1) == 0)
        {
          break;
        }

        v28[v29] = 0;
        if (!v34 || v34 == 266)
        {
          v28[v29] = [objc_opt_class() allowSRGBTranferFuntionOnInputAtIndex:v30];
        }

        v29 = (v30 + 1);
        v30 = v29;
        if (v21 <= v29)
        {
          goto LABEL_33;
        }
      }

      if (v41)
      {
        v44 = @"CINonLocalizedDescriptionKey";
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputFormat for image %d must be 0, %s.", v30, "R8, Rh, Rf, BGRA8, RGBAh, RGBAf"];
        *v41 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v45, &v44, 1)}];
      }

      free(v42);
      if (v28)
      {
        free(v28);
      }
    }

    else if (v41)
    {
      v50 = @"CINonLocalizedDescriptionKey";
      v51[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"outputFormat must be 0, %s.", "R8, Rh, Rf, BGRA8, RGBAh, RGBAf"];
      *v41 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v51, &v50, 1)}];
    }

    return 0;
  }
}

void __65__CIImageProcessorKernel_applyWithExtent_inputs_arguments_error___block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = objc_autoreleasePoolPush();
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v15 = [objc_opt_class() roiTileArrayForInput:a2 arguments:*(a1 + 40) outputRect:{a4, a5, a6, a7}];
  for (i = 0; [v15 count] > i; ++i)
  {
    [objc_msgSend(v15 objectAtIndexedSubscript:{i, 0, 0, 0, 0), "CGRectValue"}];
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v22 = v19;
    v23 = v20;
    std::vector<CGRect>::push_back[abi:nn200100](a3, &v21);
  }

  objc_autoreleasePoolPop(v14);
}

void __65__CIImageProcessorKernel_applyWithExtent_inputs_arguments_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, unsigned __int8 a14, int a15, void *a16, CI::TileTask *a17)
{
  v78 = *MEMORY[0x1E69E9840];
  v24 = objc_autoreleasePoolPush();
  v69 = [[CIImageProcessorOutput alloc] initWithSurface:a7 texture:a8 digest:a13 allowSRGB:a14 bounds:*(a1 + 72) onlyMetal:a16 context:a9 tileTask:a10, a11, a12, a17];
  if (*(a1 + 64) <= 1uLL)
  {
    v25 = 1;
  }

  else
  {
    v25 = *(a1 + 64);
  }

  std::vector<std::vector<IRect>>::vector[abi:nn200100](v74, v25);
  if (*(a1 + 64))
  {
    v26 = 0;
    v27 = 0;
    do
    {
      (*(*(a1 + 56) + 16))(__p, a9, a10, a11, a12);
      v28 = (v74[0] + v26);
      v29 = *(v74[0] + v26);
      if (v29)
      {
        v28[1] = v29;
        operator delete(v29);
        *v28 = 0;
        v28[1] = 0;
        v28[2] = 0;
      }

      *v28 = *__p;
      v28[2] = v77;
      ++v27;
      v30 = *(a1 + 64);
      v26 += 24;
    }

    while (v30 > v27);
  }

  else
  {
    v30 = 0;
  }

  v62 = v24;
  v32 = *v74[0];
  v31 = *(v74[0] + 8);
  v68 = [MEMORY[0x1E695DF70] arrayWithCapacity:v30];
  if (*(a1 + 64))
  {
    v33 = 0;
    v34 = (v31 - v32) >> 5;
    v35 = 1;
    do
    {
      std::vector<CGRect>::vector[abi:nn200100](__p, (v74[0] + 24 * v33));
      v79 = CGRectInset(*(__p[0] + a15), 0.001, 0.001);
      v80 = CGRectIntegral(v79);
      x = v80.origin.x;
      y = v80.origin.y;
      width = v80.size.width;
      height = v80.size.height;
      if (CGRectIsNull(v80))
      {
        v40 = 0;
        v41 = 0;
        v42 = 0x7FFFFFFF;
        v43 = 0x7FFFFFFF;
      }

      else
      {
        v81.origin.x = x;
        v81.origin.y = y;
        v81.size.width = width;
        v81.size.height = height;
        if (CGRectIsInfinite(v81))
        {
          v42 = -2147483647;
          v40 = 0xFFFFFFFFLL;
          v41 = 0xFFFFFFFFLL;
          v43 = -2147483647;
        }

        else
        {
          v82.origin.x = x;
          v82.origin.y = y;
          v82.size.width = width;
          v82.size.height = height;
          v83 = CGRectInset(v82, 0.000001, 0.000001);
          v84 = CGRectIntegral(v83);
          v43 = v84.origin.x;
          v42 = v84.origin.y;
          v41 = v84.size.width;
          v40 = v84.size.height;
        }
      }

      v85 = CGRectInset(*(*a5 + 32 * v33), 0.001, 0.001);
      v86 = CGRectIntegral(v85);
      v44 = v86.origin.x;
      v45 = v86.origin.y;
      v46 = v86.size.width;
      v47 = v86.size.height;
      if (CGRectIsNull(v86))
      {
        v48 = 0;
        v49 = 0;
        v50 = 0x7FFFFFFF;
        v51 = 0x7FFFFFFF;
      }

      else
      {
        v87.origin.x = v44;
        v87.origin.y = v45;
        v87.size.width = v46;
        v87.size.height = v47;
        if (CGRectIsInfinite(v87))
        {
          v50 = -2147483647;
          v48 = 0xFFFFFFFFLL;
          v49 = 0xFFFFFFFFLL;
          v51 = -2147483647;
        }

        else
        {
          v88.origin.x = v44;
          v88.origin.y = v45;
          v88.size.width = v46;
          v88.size.height = v47;
          v89 = CGRectInset(v88, 0.000001, 0.000001);
          v90 = CGRectIntegral(v89);
          v51 = v90.origin.x;
          v50 = v90.origin.y;
          v49 = v90.size.width;
          v48 = v90.size.height;
        }
      }

      cf[0] = __PAIR64__(v42, v43);
      cf[1] = v41;
      cf[2] = v40;
      v70[0] = v51;
      v70[1] = v50;
      v71 = v49;
      v72 = v48;
      if (v43 == v51 && v42 == v50 && v41 == v49 && v40 == v48)
      {
        v52 = 0;
      }

      else
      {
        v52 = *(a1 + 73);
      }

      [v68 addObject:{createTileInput(v69, a15, v34, cf, v70, *(*a2 + 8 * v33), *(*a3 + 8 * v33), *(*a4 + 8 * v33), (*(*a6 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v33)) != 0, *(a1 + 72), a16, v52 & 1)}];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v33 = v35;
    }

    while (*(a1 + 64) > v35++);
  }

  v54 = ci_signpost_log_render();
  v55 = (*(*a16 + 280))(a16) << 32;
  if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
  {
    v56 = *(a1 + 32);
    LODWORD(__p[0]) = 138543362;
    *(__p + 4) = v56;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v55, "processor_process", "%{public}@", __p, 0xCu);
  }

  v57 = (*(*a16 + 280))(a16);
  TimerBase::TimerBase(__p, v57, 0, "processor_process", 0);
  cf[0] = 0;
  [objc_opt_class() processWithInputs:v68 arguments:*(a1 + 48) output:v69 error:cf];
  if (cf[0])
  {
    CI::TileTask::setCommandBufferError(a17, cf[0]);
  }

  _ZZZ65__CIImageProcessorKernel_applyWithExtent_inputs_arguments_error__EUb1_EN13SignpostTimerD1Ev(__p);
  v58 = ci_signpost_log_render();
  v59 = (*(*a16 + 280))(a16) << 32;
  if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
  {
    v60 = *(a1 + 32);
    LODWORD(__p[0]) = 138543362;
    *(__p + 4) = v60;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v58, OS_SIGNPOST_INTERVAL_BEGIN, v59, "processor_postprocess", "%{public}@", __p, 0xCu);
  }

  v61 = (*(*a16 + 280))(a16);
  TimerBase::TimerBase(__p, v61, 0, "processor_postprocess", 0);
  v75 = v69;
  post_process(v68, [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1], a16);
  _ZZZ65__CIImageProcessorKernel_applyWithExtent_inputs_arguments_error__EUb1_EN13SignpostTimerD1E_0v(__p);
  __p[0] = v74;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](__p);
  objc_autoreleasePoolPop(v62);
}

+ (id)applyWithExtents:(id)a3 inputs:(id)a4 arguments:(id)a5 error:(id *)a6
{
  v77[1] = *MEMORY[0x1E69E9840];
  v9 = NSSelectorFromString(&cfstr_Processwithinp_0.isa);
  v10 = [a1 methodForSelector:v9];
  v11 = [CIImageProcessorKernel methodForSelector:v9];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  if (v10 == v11 || v12 == v13)
  {
    v50 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%s must be overridden in %@ class", "+[CIImageProcessorKernel applyWithExtents:inputs:arguments:error:]", NSStringFromClass(a1)), 0}];
    objc_exception_throw(v50);
  }

  v15 = [a3 count];
  if (v15)
  {
    if (v15 < 5)
    {
      v51 = v15;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v18 = [a3 countByEnumeratingWithState:&v57 objects:v75 count:16];
      if (v18)
      {
        v19 = *v58;
LABEL_12:
        v20 = 0;
        while (1)
        {
          if (*v58 != v19)
          {
            objc_enumerationMutation(a3);
          }

          v21 = *(*(&v57 + 1) + 8 * v20);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v21 count] != 4)
          {
            break;
          }

          [v21 CGRectValue];
          x = v78.origin.x;
          y = v78.origin.y;
          width = v78.size.width;
          height = v78.size.height;
          if (CGRectIsInfinite(v78) || (v79.origin.x = x, v79.origin.y = y, v79.size.width = width, v79.size.height = height, CGRectIsEmpty(v79)) || (v80.origin.x = x, v80.origin.y = y, v80.size.width = width, v80.size.height = height, CGRectIsEmpty(v80)))
          {
            if (!a6)
            {
              return 0;
            }

            v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"extents objects must be finite, integral, and not empty."];
            v71 = @"CINonLocalizedDescriptionKey";
            v72 = v38;
            v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v72, &v71, 1)}];
            goto LABEL_43;
          }

          if (v18 == ++v20)
          {
            v18 = [a3 countByEnumeratingWithState:&v57 objects:v75 count:16];
            if (v18)
            {
              goto LABEL_12;
            }

            goto LABEL_22;
          }
        }

        if (!a6)
        {
          return 0;
        }

        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"extents objects must be CIVectors of length 4."];
        v73 = @"CINonLocalizedDescriptionKey";
        v74 = v39;
        v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v74, &v73, 1)}];
        goto LABEL_43;
      }

LABEL_22:
      v26 = [MEMORY[0x1E695DF70] array];
      v27 = v51;
      do
      {
        [v26 addObject:{+[CIImage emptyImage](CIImage, "emptyImage")}];
        --v27;
      }

      while (v27);
      if (![a1 _digestForArgs:a5])
      {
        v28 = ci_logger_performance();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = NSStringFromClass(a1);
          *buf = 136446466;
          *&buf[4] = "+[CIImageProcessorKernel applyWithExtents:inputs:arguments:error:]";
          *&buf[12] = 2114;
          *&buf[14] = v29;
          _os_log_impl(&dword_19CC36000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s each object in arguments dictionary be an NSArray, NSDictionary, NSNumber, NSValue, NSData, NSString, NSNull, CIVector, CIColor, CIImage, CGImageRef or CGColorSpaceRef for CoreImage to cache optimally (%{public}@).", buf, 0x16u);
        }
      }

      v30 = [a4 count];
      if (!v30)
      {
        v40 = 0;
        v68[0] = 0;
        v68[1] = 0;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        memset(buf, 0, sizeof(buf));
        v41 = &buf[16];
        v56 = 0;
        do
        {
          [objc_msgSend(a3 objectAtIndexedSubscript:{v40), "CGRectValue"}];
          *(v41 - 2) = v42;
          *(v41 - 1) = v43;
          *v41 = v44;
          *(v41 + 1) = v45;
          *(&v56 + v40 + 4) = [a1 allowSRGBTranferFuntionOnOutput];
          v46 = [a1 outputFormatAtIndex:v40 arguments:a5];
          *(v68 + v40) = v46;
          if (CI::format_has_alpha(v46))
          {
            v47 = [a1 outputIsOpaque];
          }

          else
          {
            v47 = 1;
          }

          *(&v56 + v40++) = v47;
          v41 += 32;
        }

        while ((v51 & 7) != v40);
        [a1 logDescription:a5];
        [objc_opt_class() methodForSelector:sel_roiTileArrayForInput_arguments_outputRect_];
        [CIImageProcessorKernel methodForSelector:sel_roiTileArrayForInput_arguments_outputRect_];
        [objc_opt_class() onlyUsesMetal];
        operator new();
      }

      v53 = malloc_type_calloc(4uLL, v30, 0x100004052888210uLL);
      v54 = malloc_type_calloc(1uLL, v30, 0x100004077774924uLL);
      v31 = 0;
      v32 = 0;
      while (1)
      {
        v33 = [a1 _call_formatForInputAtIndex:v32 arguments:a5];
        v35 = CI::format_modernize(v33, "+[CIImageProcessorKernel applyWithExtents:inputs:arguments:error:]", v34);
        v53[v31] = v35;
        v36 = [a1 skipFormatChecks];
        v37 = v35 ? v36 : 1;
        if ((v37 & 1) == 0 && (CI::ProcessorImage::format_is_supported(v35, 1) & 1) == 0)
        {
          break;
        }

        v54[v31] = 0;
        if (!v35 || v35 == 266)
        {
          v54[v31] = [a1 allowSRGBTranferFuntionOnInputAtIndex:v32];
        }

        v31 = (v32 + 1);
        v32 = v31;
        if (v30 <= v31)
        {
          operator new();
        }
      }

      if (a6)
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputFormat for image %d must be 0, %s.", v32, "R8, Rh, Rf, BGRA8, RGBAh, RGBAf"];
        v69 = @"CINonLocalizedDescriptionKey";
        v70 = v48;
        *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v70, &v69, 1)}];
      }

      free(v53);
      if (v54)
      {
        free(v54);
      }
    }

    else if (a6)
    {
      v76 = @"CINonLocalizedDescriptionKey";
      v77[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"The number of extents is too large."];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v77, &v76, 1)}];
LABEL_43:
      v17 = 0;
      *a6 = v16;
      return v17;
    }

    return 0;
  }

  return MEMORY[0x1E695E0F0];
}

void __66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error___block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = objc_autoreleasePoolPush();
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v15 = [*(a1 + 32) roiTileArrayForInput:a2 arguments:*(a1 + 40) outputRect:{a4, a5, a6, a7}];
  for (i = 0; [v15 count] > i; ++i)
  {
    [objc_msgSend(v15 objectAtIndexedSubscript:{i, 0, 0, 0, 0), "CGRectValue"}];
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v22 = v19;
    v23 = v20;
    std::vector<CGRect>::push_back[abi:nn200100](a3, &v21);
  }

  objc_autoreleasePoolPop(v14);
}

void __66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, uint64_t *a8, uint64_t *a9, uint64_t a10, double *a11, unsigned __int8 *a12, int a13, void *a14, CI::TileTask *a15)
{
  v87 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:a7];
  if (a7 >= 1)
  {
    v19 = a7;
    v20 = a11 + 2;
    do
    {
      v22 = [CIImageProcessorOutput alloc];
      v24 = *a8++;
      v23 = v24;
      v26 = *a9++;
      v25 = v26;
      LODWORD(v26) = *a12++;
      v27 = *(v20 - 2);
      v28 = *(v20 - 1);
      v29 = *v20;
      v30 = v20[1];
      v20 += 4;
      [v17 addObject:{-[CIImageProcessorOutput initWithSurface:texture:digest:allowSRGB:bounds:onlyMetal:context:tileTask:](v22, "initWithSurface:texture:digest:allowSRGB:bounds:onlyMetal:context:tileTask:", v23, v25, a10, v26, *(a1 + 72), a14, v27, v28, v29, v30, a15)}];
      --v19;
    }

    while (v19);
  }

  if (*(a1 + 64) <= 1uLL)
  {
    v31 = 1;
  }

  else
  {
    v31 = *(a1 + 64);
  }

  std::vector<std::vector<IRect>>::vector[abi:nn200100](v84, v31);
  v32 = a1;
  if (*(a1 + 64))
  {
    v33 = 0;
    v34 = 0;
    do
    {
      (*(*(a1 + 56) + 16))(__p, *a11, a11[1], a11[2], a11[3]);
      v35 = (v84[0] + v33);
      v36 = *(v84[0] + v33);
      if (v36)
      {
        v35[1] = v36;
        operator delete(v36);
        *v35 = 0;
        v35[1] = 0;
        v35[2] = 0;
      }

      *v35 = *__p;
      v35[2] = v86;
      ++v34;
      v37 = *(a1 + 64);
      v33 += 24;
    }

    while (v37 > v34);
  }

  else
  {
    v37 = 0;
  }

  v39 = *v84[0];
  v38 = *(v84[0] + 8);
  v77 = [MEMORY[0x1E695DF70] arrayWithCapacity:v37];
  if (*(a1 + 64))
  {
    v40 = 0;
    v71 = (v38 - v39) >> 5;
    v41 = 1;
    v78 = v17;
    do
    {
      std::vector<CGRect>::vector[abi:nn200100](__p, (v84[0] + 24 * v40));
      v88 = CGRectInset(*(__p[0] + a13), 0.001, 0.001);
      v89 = CGRectIntegral(v88);
      x = v89.origin.x;
      y = v89.origin.y;
      width = v89.size.width;
      height = v89.size.height;
      if (CGRectIsNull(v89))
      {
        v46 = 0;
        v47 = 0;
        v48 = 0x7FFFFFFF;
        v49 = 0x7FFFFFFF;
      }

      else
      {
        v90.origin.x = x;
        v90.origin.y = y;
        v90.size.width = width;
        v90.size.height = height;
        if (CGRectIsInfinite(v90))
        {
          v48 = -2147483647;
          v46 = 0xFFFFFFFFLL;
          v47 = 0xFFFFFFFFLL;
          v49 = -2147483647;
        }

        else
        {
          v91.origin.x = x;
          v91.origin.y = y;
          v91.size.width = width;
          v91.size.height = height;
          v92 = CGRectInset(v91, 0.000001, 0.000001);
          v93 = CGRectIntegral(v92);
          v49 = v93.origin.x;
          v48 = v93.origin.y;
          v47 = v93.size.width;
          v46 = v93.size.height;
        }
      }

      v94 = CGRectInset(*(*a5 + 32 * v40), 0.001, 0.001);
      v95 = CGRectIntegral(v94);
      v50 = v95.origin.x;
      v51 = v95.origin.y;
      v52 = v95.size.width;
      v53 = v95.size.height;
      if (CGRectIsNull(v95))
      {
        v54 = 0;
        v55 = 0;
        v56 = 0x7FFFFFFF;
        v57 = 0x7FFFFFFF;
      }

      else
      {
        v96.origin.x = v50;
        v96.origin.y = v51;
        v96.size.width = v52;
        v96.size.height = v53;
        if (CGRectIsInfinite(v96))
        {
          v56 = -2147483647;
          v54 = 0xFFFFFFFFLL;
          v55 = 0xFFFFFFFFLL;
          v57 = -2147483647;
        }

        else
        {
          v97.origin.x = v50;
          v97.origin.y = v51;
          v97.size.width = v52;
          v97.size.height = v53;
          v98 = CGRectInset(v97, 0.000001, 0.000001);
          v99 = CGRectIntegral(v98);
          v57 = v99.origin.x;
          v56 = v99.origin.y;
          v55 = v99.size.width;
          v54 = v99.size.height;
        }
      }

      v58 = [v78 objectAtIndexedSubscript:v40];
      cf[0] = __PAIR64__(v48, v49);
      cf[1] = v47;
      cf[2] = v46;
      v80[0] = v57;
      v80[1] = v56;
      v81 = v55;
      v82 = v54;
      if (v49 == v57 && v48 == v56 && v47 == v55 && v46 == v54)
      {
        v59 = 0;
        v60 = a1;
      }

      else
      {
        v60 = a1;
        v59 = *(a1 + 73);
      }

      [v77 addObject:{createTileInput(v58, a13, v71, cf, v80, *(*a2 + 8 * v40), *(*a3 + 8 * v40), *(*a4 + 8 * v40), (*(*a6 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v40)) != 0, *(v60 + 72), a14, v59 & 1)}];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v40 = v41;
      v32 = a1;
      v61 = *(a1 + 64) > v41++;
      v17 = v78;
    }

    while (v61);
  }

  v62 = ci_signpost_log_render();
  v63 = (*(*a14 + 280))(a14) << 32;
  if (v63 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
  {
    v64 = *(v32 + 32);
    LODWORD(__p[0]) = 138543362;
    *(__p + 4) = v64;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v62, OS_SIGNPOST_INTERVAL_BEGIN, v63, "processor_process", "%{public}@", __p, 0xCu);
  }

  v65 = (*(*a14 + 280))(a14);
  TimerBase::TimerBase(__p, v65, 0, "processor_process", 0);
  cf[0] = 0;
  [objc_opt_class() processWithInputs:v77 arguments:*(v32 + 48) outputs:v17 error:cf];
  if (cf[0])
  {
    CI::TileTask::setCommandBufferError(a15, cf[0]);
  }

  _ZZZ66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error__EUb2_EN13SignpostTimerD1Ev(__p);
  v66 = ci_signpost_log_render();
  v67 = (*(*a14 + 280))(a14) << 32;
  if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
  {
    v68 = *(v32 + 32);
    LODWORD(__p[0]) = 138543362;
    *(__p + 4) = v68;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v66, OS_SIGNPOST_INTERVAL_BEGIN, v67, "processor_postprocess", "%{public}@", __p, 0xCu);
  }

  v69 = (*(*a14 + 280))(a14);
  TimerBase::TimerBase(__p, v69, 0, "processor_postprocess", 0);
  post_process(v77, v17, a14);
  _ZZZ66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error__EUb2_EN13SignpostTimerD1E_0v(__p);
  __p[0] = v84;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](__p);
  objc_autoreleasePoolPop(context);
}

@end