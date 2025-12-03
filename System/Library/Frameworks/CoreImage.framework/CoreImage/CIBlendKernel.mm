@interface CIBlendKernel
+ (CIBlendKernel)kernelWithInternalRepresentation:(const void *)representation;
+ (CIBlendKernel)kernelWithString:(NSString *)string;
+ (CIBlendKernel)kernelWithString:(id)string extentType:(int)type;
+ (id)cachedKernelWithString:(id)string extentType:(int)type;
- (CIBlendKernel)initWithString:(id)string;
- (CIBlendKernel)initWithString:(id)string extentType:(int)type;
- (CIImage)applyWithForeground:(CIImage *)foreground background:(CIImage *)background;
- (CIImage)applyWithForeground:(CIImage *)foreground background:(CIImage *)background colorSpace:(CGColorSpaceRef)colorSpace;
- (int)extentType;
- (void)setIsBackIfForeIsClear:(BOOL)clear;
- (void)setIsClearIfBackIsClear:(BOOL)clear;
- (void)setIsClearIfForeIsClear:(BOOL)clear;
- (void)setIsForeIfBackIsClear:(BOOL)clear;
@end

@implementation CIBlendKernel

+ (CIBlendKernel)kernelWithString:(NSString *)string
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
  v10 = __34__CIBlendKernel_kernelWithString___block_invoke;
  v11 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIBlendKernel kernelWithString:]"))
  {
    v6 = [[CIBlendKernel alloc] initWithString:string];
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

void __34__CIBlendKernel_kernelWithString___block_invoke(uint64_t a1)
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

- (CIBlendKernel)initWithString:(id)string
{
  if (check_cikl_string(string, "[CIBlendKernel initWithString:]"))
  {

    return [(CIBlendKernel *)self initWithString:string extentType:0];
  }

  else
  {

    return 0;
  }
}

+ (id)cachedKernelWithString:(id)string extentType:(int)type
{
  v4 = *&type;
  v21 = *MEMORY[0x1E69E9840];
  v7 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v7))
  {
    *buf = 138543362;
    v20 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cachedKernelWithString:extentType", "%{public}@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v16 = __51__CIBlendKernel_cachedKernelWithString_extentType___block_invoke;
  v17 = &unk_1E75C2AA0;
  selfCopy = self;
  cache = [self cache];
  objc_sync_enter(cache);
  v9 = [cache objectForKey:string];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v10 = [[self alloc] initWithString:string extentType:v4];
    null = v10;
    if (!v10)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [cache setObject:null forKey:string];
  }

  objc_sync_exit(cache);
  if (v10 == [MEMORY[0x1E695DFB0] null])
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v16(v15);
  return v13;
}

void __51__CIBlendKernel_cachedKernelWithString_extentType___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cachedKernelWithString:extentType", "%{public}@", &v4, 0xCu);
  }
}

+ (CIBlendKernel)kernelWithInternalRepresentation:(const void *)representation
{
  if ((*(*representation + 16))(representation, a2) != 70)
  {
    return 0;
  }

  v4 = [objc_alloc(objc_opt_class()) _initWithInternalRepresentation:representation];

  return v4;
}

+ (CIBlendKernel)kernelWithString:(id)string extentType:(int)type
{
  v4 = *&type;
  v13 = *MEMORY[0x1E69E9840];
  v7 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v7))
  {
    *buf = 138543362;
    v12 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithString:extentType", "%{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[3] = &unk_1E75C2AA0;
  v10[4] = self;
  v8 = [[CIBlendKernel alloc] initWithString:string extentType:v4];
  __45__CIBlendKernel_kernelWithString_extentType___block_invoke(v10);
  return v8;
}

void __45__CIBlendKernel_kernelWithString_extentType___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithString:extentType", "%{public}@", &v4, 0xCu);
  }
}

- (CIBlendKernel)initWithString:(id)string extentType:(int)type
{
  v4 = *&type;
  if (!check_cikl_string(string, "[CIBlendKernel initWithString:extentType:]"))
  {

    return 0;
  }

  v11.receiver = self;
  v11.super_class = CIBlendKernel;
  v7 = [(CIColorKernel *)&v11 initWithString:string];
  v8 = v7;
  if (v7)
  {
    parameters = [(CIKernel *)v7 parameters];
    if ([parameters count] == 2 && objc_msgSend(objc_msgSend(objc_msgSend(parameters, "objectAtIndex:", 0), "valueForKey:", @"CIAttributeClass"), "isEqual:", @"CISampler") && objc_msgSend(objc_msgSend(objc_msgSend(parameters, "objectAtIndex:", 1), "valueForKey:", @"CIAttributeClass"), "isEqual:", @"CISampler"))
    {
      (*(*v8->super.super._priv + 80))(v8->super.super._priv, v4);
      return v8;
    }

    return 0;
  }

  return v8;
}

- (int)extentType
{
  priv = self->super.super._priv;
  if (priv)
  {
    return priv[41];
  }

  else
  {
    return 0;
  }
}

- (void)setIsBackIfForeIsClear:(BOOL)clear
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = "[CIBlendKernel setIsBackIfForeIsClear:]";
    _os_log_impl(&dword_19CC36000, v3, OS_LOG_TYPE_INFO, "%{public}s  is deprecated.", &v4, 0xCu);
  }
}

- (void)setIsForeIfBackIsClear:(BOOL)clear
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = "[CIBlendKernel setIsForeIfBackIsClear:]";
    _os_log_impl(&dword_19CC36000, v3, OS_LOG_TYPE_INFO, "%{public}s  is deprecated.", &v4, 0xCu);
  }
}

- (void)setIsClearIfForeIsClear:(BOOL)clear
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = "[CIBlendKernel setIsClearIfForeIsClear:]";
    _os_log_impl(&dword_19CC36000, v3, OS_LOG_TYPE_INFO, "%{public}s  is deprecated.", &v4, 0xCu);
  }
}

- (void)setIsClearIfBackIsClear:(BOOL)clear
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = "[CIBlendKernel setIsClearIfBackIsClear:]";
    _os_log_impl(&dword_19CC36000, v3, OS_LOG_TYPE_INFO, "%{public}s  is deprecated.", &v4, 0xCu);
  }
}

- (CIImage)applyWithForeground:(CIImage *)foreground background:(CIImage *)background
{
  v25[2] = *MEMORY[0x1E69E9840];
  [(CIImage *)foreground extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CIImage *)background extent];
  x = v15;
  y = v17;
  width = v19;
  height = v21;
  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  if (CGRectIsEmpty(v27) && [(CIBlendKernel *)self isBackIfForeIsClear])
  {
    return background;
  }

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  if (CGRectIsEmpty(v28) && [(CIBlendKernel *)self isForeIfBackIsClear])
  {
    return foreground;
  }

  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  if (!CGRectIsEmpty(v29) || ![(CIBlendKernel *)self isClearIfForeIsClear])
  {
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    if (!CGRectIsEmpty(v30) || ![(CIBlendKernel *)self isClearIfBackIsClear])
    {
      v24 = *(self->super.super._priv + 41);
      if (v24 != 3)
      {
        if (v24 == 1)
        {
          v33.origin.x = v8;
          v33.origin.y = v10;
          v33.size.width = v12;
          v33.size.height = v14;
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v32 = CGRectIntersection(v33, v35);
        }

        else
        {
          if (v24)
          {
            x = v8;
            y = v10;
            width = v12;
            height = v14;
            goto LABEL_20;
          }

          v31.origin.x = v8;
          v31.origin.y = v10;
          v31.size.width = v12;
          v31.size.height = v14;
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = height;
          v32 = CGRectUnion(v31, v34);
        }

        x = v32.origin.x;
        y = v32.origin.y;
        width = v32.size.width;
        height = v32.size.height;
      }

LABEL_20:
      v25[0] = foreground;
      v25[1] = background;
      return -[CIColorKernel applyWithExtent:arguments:](self, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2], x, y, width, height);
    }
  }

  return +[CIImage emptyImage];
}

- (CIImage)applyWithForeground:(CIImage *)foreground background:(CIImage *)background colorSpace:(CGColorSpaceRef)colorSpace
{
  if (colorSpace)
  {
    v6 = [(CIBlendKernel *)self applyWithForeground:[(CIImage *)foreground imageByColorMatchingWorkingSpaceToColorSpace:colorSpace] background:[(CIImage *)background imageByColorMatchingWorkingSpaceToColorSpace:colorSpace]];

    return [(CIImage *)v6 imageByColorMatchingColorSpaceToWorkingSpace:colorSpace];
  }

  else
  {

    return [(CIBlendKernel *)self applyWithForeground:foreground background:?];
  }
}

@end