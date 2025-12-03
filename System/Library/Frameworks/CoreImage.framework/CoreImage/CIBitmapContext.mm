@interface CIBitmapContext
+ (id)context;
+ (id)contextWithBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format;
+ (id)contextWithBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format options:(id)options;
+ (id)contextWithOptions:(id)options;
- (BOOL)setBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format;
- (CGRect)bounds;
- (CIBitmapContext)initWithBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format options:(id)options;
- (CIBitmapContext)initWithOptions:(id)options;
- (void)dealloc;
- (void)drawImage:(id)image inRect:(CGRect)rect fromRect:(CGRect)fromRect;
@end

@implementation CIBitmapContext

+ (id)context
{
  v2 = objc_alloc_init(CIBitmapContext);

  return v2;
}

+ (id)contextWithOptions:(id)options
{
  v3 = [[CIBitmapContext alloc] initWithOptions:options];

  return v3;
}

+ (id)contextWithBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format
{
  v6 = [[CIBitmapContext alloc] initWithBitmap:bitmap rowBytes:bytes bounds:*&format format:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];

  return v6;
}

+ (id)contextWithBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format options:(id)options
{
  v7 = [[CIBitmapContext alloc] initWithBitmap:bitmap rowBytes:bytes bounds:*&format format:options options:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];

  return v7;
}

- (CIBitmapContext)initWithOptions:(id)options
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
  [v4 setValue:MEMORY[0x1E695E118] forKey:@"software_renderer"];
  v6.receiver = self;
  v6.super_class = CIBitmapContext;
  return [(CIContext *)&v6 initWithOptions:v4];
}

- (CIBitmapContext)initWithBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format options:(id)options
{
  v7 = *&format;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
  [v15 setValue:MEMORY[0x1E695E118] forKey:@"software_renderer"];
  v19.receiver = self;
  v19.super_class = CIBitmapContext;
  v17 = [(CIContext *)&v19 initWithOptions:v15];
  if (v17 && ![(CIBitmapContext *)v17 setBitmap:bitmap rowBytes:bytes bounds:CI::format_modernize(v7 format:"[CIBitmapContext initWithBitmap:rowBytes:bounds:format:options:]", v16), x, y, width, height])
  {

    return 0;
  }

  return v17;
}

- (BOOL)setBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format
{
  v6 = *&format;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  bcpriv = self->_bcpriv;
  if (bcpriv)
  {
    free(bcpriv);
    self->_bcpriv = 0;
  }

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v32 = CGRectStandardize(v31);
  if (!bitmap)
  {
    goto LABEL_5;
  }

  v15 = v32.origin.x;
  v16 = v32.origin.y;
  v17 = v32.size.width;
  v18 = v32.size.height;
  if (CGRectIsEmpty(v32))
  {
    goto LABEL_5;
  }

  v33.origin.x = v15;
  v33.origin.y = v16;
  v33.size.width = v17;
  v33.size.height = v18;
  if (CGRectIsInfinite(v33) || v17 >= 1000000.0 || v18 >= 1000000.0)
  {
    v26 = ci_logger_api();
    v19 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!v19)
    {
      return v19;
    }

    [CIBitmapContext setBitmap:v26 rowBytes:? bounds:? format:?];
  }

  else
  {
    v21 = CI::format_modernize(v6, "[CIBitmapContext setBitmap:rowBytes:bounds:format:]", v20);
    if (v21 == 258)
    {
      v22 = 259;
    }

    else
    {
      v22 = v21;
    }

    if (CI::format_is_supported_render_to_bitmap(v22))
    {
      v23 = CI::format_destination_rowbytes_requirement(v22);
      if (!(bytes % v23))
      {
        v28 = malloc_type_malloc(0x38uLL, 0x10800402C4B44A1uLL);
        self->_bcpriv = v28;
        v28->var0 = bitmap;
        v29 = self->_bcpriv;
        v29->var1 = bytes;
        v29->var2.origin.x = v15;
        v29->var2.origin.y = v16;
        v29->var2.size.width = v17;
        v29->var2.size.height = v18;
        v29->var3 = v22;
LABEL_5:
        LOBYTE(v19) = 1;
        return v19;
      }

      v24 = v23;
      v25 = ci_logger_api();
      v19 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (!v19)
      {
        return v19;
      }

      [CIBitmapContext setBitmap:v24 rowBytes:v25 bounds:? format:?];
    }

    else
    {
      v27 = ci_logger_api();
      v19 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (!v19)
      {
        return v19;
      }

      [CIBitmapContext setBitmap:v22 rowBytes:? bounds:? format:?];
    }
  }

  LOBYTE(v19) = 0;
  return v19;
}

- (void)dealloc
{
  bcpriv = self->_bcpriv;
  if (bcpriv)
  {
    free(bcpriv);
    self->_bcpriv = 0;
  }

  v4.receiver = self;
  v4.super_class = CIBitmapContext;
  [(CIContext *)&v4 dealloc];
}

- (void)drawImage:(id)image inRect:(CGRect)rect fromRect:(CGRect)fromRect
{
  if (!self->_bcpriv)
  {
    return;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v39 = CGRectStandardize(fromRect);
  v11 = v39.origin.x;
  v12 = v39.origin.y;
  v13 = v39.size.width;
  v14 = v39.size.height;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v40 = CGRectStandardize(v39);
  v15 = v40.origin.x;
  v16 = v40.origin.y;
  v17 = v40.size.width;
  v18 = v40.size.height;
  _internalContext = [(CIContext *)self _internalContext];
  if (!image)
  {
    return;
  }

  if (!_internalContext)
  {
    return;
  }

  v41.origin.x = v15;
  v41.origin.y = v16;
  v41.size.width = v17;
  v41.size.height = v18;
  if (CGRectIsEmpty(v41))
  {
    return;
  }

  [image extent];
  v46.origin.x = v20;
  v46.origin.y = v21;
  v46.size.width = v22;
  v46.size.height = v23;
  v42.origin.x = v11;
  v42.origin.y = v12;
  v42.size.width = v13;
  v42.size.height = v14;
  v43 = CGRectIntersection(v42, v46);
  if (CGRectIsEmpty(v43))
  {
    return;
  }

  v44.origin.x = v11;
  v44.origin.y = v12;
  v44.size.width = v13;
  v44.size.height = v14;
  if (CGRectIsInfinite(v44) || (v45.origin.x = v15, v45.origin.y = v16, v45.size.width = v17, v45.size.height = v18, CGRectIsInfinite(v45)))
  {
    v24 = ci_logger_api();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CIBitmapContext drawImage:v24 inRect:? fromRect:?];
    }

    return;
  }

  _outputColorSpace = [(CIContext *)self _outputColorSpace];
  Model = CGColorSpaceGetModel(_outputColorSpace);
  var3 = self->_bcpriv->var3;
  if (!CI::format_is_luminance(var3))
  {
    if (Model != kCGColorSpaceModelRGB)
    {
      _outputColorSpace = +[CIContext defaultRGBColorSpace];
      v30 = ci_logger_api();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [CIBitmapContext drawImage:? inRect:? fromRect:?];
      }

      goto LABEL_19;
    }

LABEL_16:
    v29 = 0;
    goto LABEL_20;
  }

  if (Model == kCGColorSpaceModelMonochrome)
  {
    goto LABEL_16;
  }

  _outputColorSpace = +[CIContext defaultGrayColorSpace];
  v28 = ci_logger_api();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [CIBitmapContext drawImage:? inRect:? fromRect:?];
  }

LABEL_19:
  v29 = 1;
LABEL_20:
  v33 = v17 / v13;
  v34 = v17 / v13 * 0.0;
  v35 = v18 / v14 * 0.0;
  v36 = v18 / v14;
  v37 = v15 - v17 / v13 * v11 - v35 * v12;
  v38 = v16 - v34 * v11 - v18 / v14 * v12;
  v31 = [image imageByApplyingTransform:&v33];
  bcpriv = self->_bcpriv;
  [(CIContext *)self render:v31 toBitmap:bcpriv->var0 rowBytes:bcpriv->var1 bounds:bcpriv->var3 format:_outputColorSpace colorSpace:bcpriv->var2.origin.x, bcpriv->var2.origin.y, bcpriv->var2.size.width, bcpriv->var2.size.height];
  if (v29)
  {
    CGColorSpaceRelease(_outputColorSpace);
  }
}

- (CGRect)bounds
{
  bcpriv = self->_bcpriv;
  if (bcpriv)
  {
    p_x = &bcpriv->var2.origin.x;
  }

  else
  {
    p_x = MEMORY[0x1E695F050];
  }

  v4 = *p_x;
  v5 = p_x[1];
  v6 = p_x[2];
  v7 = p_x[3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setBitmap:(int)a1 rowBytes:bounds:format:.cold.1(int a1)
{
  CI::name_for_format(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s format %{public}s is unsupported.\n", v3, v4, v5, v6, 2u);
}

- (void)setBitmap:(uint64_t)a1 rowBytes:(NSObject *)a2 bounds:format:.cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446466;
  v3 = "[CIBitmapContext setBitmap:rowBytes:bounds:format:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "%{public}s rowBytes must be a multiple of %ld.\n", &v2, 0x16u);
}

- (void)setBitmap:(os_log_t)log rowBytes:bounds:format:.cold.3(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CIBitmapContext setBitmap:rowBytes:bounds:format:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s bounds is too large\n", &v1, 0xCu);
}

- (void)drawImage:(int)a1 inRect:fromRect:.cold.1(int a1)
{
  CI::name_for_format(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s context's output colorspace can't be used with pixel format %{public}s. Using default RGB output colorspace instead.\n", v3, v4, v5, v6, 2u);
}

- (void)drawImage:(int)a1 inRect:fromRect:.cold.2(int a1)
{
  CI::name_for_format(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s context's output colorspace can't be used with pixel format %{public}s. Using default grayscale output colorspace instead.\n", v3, v4, v5, v6, 2u);
}

- (void)drawImage:(os_log_t)log inRect:fromRect:.cold.3(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CIBitmapContext drawImage:inRect:fromRect:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s given an infinite rect", &v1, 0xCu);
}

@end