@interface CISampler
+ (CISampler)samplerWithImage:(CIImage *)im;
+ (CISampler)samplerWithImage:(CIImage *)im keysAndValues:(id)key0;
+ (CISampler)samplerWithImage:(CIImage *)im options:(NSDictionary *)dict;
- (CGRect)extent;
- (CIFilterShape)definition;
- (CISampler)init;
- (CISampler)initWithImage:(CIImage *)im options:(NSDictionary *)dict;
- (id)_initWithImage:(id)image key0:(id)key0 vargs:(char *)vargs;
- (id)debugDescription;
- (id)description;
- (id)opaqueShape;
- (void)dealloc;
- (void)init;
@end

@implementation CISampler

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    if (priv[22] > 0x3FFu)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __20__CISampler_dealloc__block_invoke_2;
      v5[3] = &__block_descriptor_40_e5_v8__0l;
      v5[4] = priv;
      CI::Object::performDeferredRoot(v5);
    }

    else
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __20__CISampler_dealloc__block_invoke;
      v6[3] = &__block_descriptor_40_e5_v8__0l;
      v6[4] = priv;
      CI::Object::performDeferred(v6);
    }
  }

  v4.receiver = self;
  v4.super_class = CISampler;
  [(CISampler *)&v4 dealloc];
}

void __20__CISampler_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

void __20__CISampler_dealloc__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

- (CISampler)init
{
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CISampler *)v3 init];
  }

  return 0;
}

- (id)_initWithImage:(id)image key0:(id)key0 vargs:(char *)vargs
{
  v26 = *MEMORY[0x1E69E9840];
  vargsCopy = vargs;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (key0)
  {
    *&v9 = 138543362;
    v20 = v9;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = ci_logger_api();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CISampler _initWithImage:v22 key0:v13 vargs:?];
        }

        goto LABEL_13;
      }

      v10 = vargsCopy;
      vargsCopy += 8;
      v11 = *v10;
      if (*v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (v12 = CFGetTypeID(v11), v12 == CGColorSpaceGetTypeID()))
        {
          [dictionary setValue:v11 forKey:{key0, v20}];
        }

        else
        {
          v17 = ci_logger_api();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            key0Copy2 = key0;
            v15 = v17;
            v16 = "CISampler value for key '%{public}@' must be a NSObject or a CGColorSpaceRef. Skipping.";
            goto LABEL_16;
          }
        }
      }

      else
      {
        v14 = ci_logger_api();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = v20;
          key0Copy2 = key0;
          v15 = v14;
          v16 = "CISampler value for key '%{public}@' is nil. Skipping.";
LABEL_16:
          _os_log_error_impl(&dword_19CC36000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
        }
      }

LABEL_13:
      v18 = vargsCopy;
      vargsCopy += 8;
      key0 = *v18;
    }

    while (*v18);
  }

  return [(CISampler *)self initWithImage:image options:dictionary, v20];
}

- (CISampler)initWithImage:(CIImage *)im options:(NSDictionary *)dict
{
  v40 = *MEMORY[0x1E69E9840];
  if (!im)
  {
LABEL_44:

    return 0;
  }

  imageByClampingToExtent = im;
  [-[NSDictionary valueForKey:](dict valueForKey:{@"blur", "doubleValue"}];
  v8 = fmax(v7, 0.0);
  if (v8 > 0.0)
  {
    if ([(NSDictionary *)dict valueForKey:@"blur_format"])
    {
      v9 = ci_logger_api();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = "[CISampler initWithImage:options:]";
        _os_log_impl(&dword_19CC36000, v9, OS_LOG_TYPE_INFO, "%{public}s ignoring kCISamplerBlurFormat because it is not supported.", buf, 0xCu);
      }
    }

    imageByClampingToExtent = [(CIImage *)imageByClampingToExtent imageByApplyingGaussianBlurWithSigma:v8];
  }

  v10 = [(NSDictionary *)dict valueForKey:@"wrap_mode"];
  if (v10)
  {
    v11 = v10;
    if ([v10 isEqual:@"clamp"])
    {
      [(CIImage *)imageByClampingToExtent extent];
      if (!CGRectIsInfinite(v41))
      {
        imageByClampingToExtent = [(CIImage *)imageByClampingToExtent imageByClampingToExtent];
      }
    }

    if ([v11 isEqual:@"periodic"])
    {
      [(CIImage *)imageByClampingToExtent extent];
      if (!CGRectIsInfinite(v42))
      {
        v12 = ci_logger_api();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *&buf[4] = "[CISampler initWithImage:options:]";
          _os_log_impl(&dword_19CC36000, v12, OS_LOG_TYPE_INFO, "%{public}s ignoring kCISamplerWrapPeriodic because it is not supported.", buf, 0xCu);
        }
      }
    }
  }

  v13 = [(NSDictionary *)dict valueForKey:@"filter_mode"];
  if (v13)
  {
    v14 = v13;
    if ([v13 isEqual:@"nearest"])
    {
      imageBySamplingNearest = [(CIImage *)imageByClampingToExtent imageBySamplingNearest];
LABEL_18:
      imageByClampingToExtent = imageBySamplingNearest;
      goto LABEL_22;
    }

    if (([v14 isEqual:@"point"] & 1) == 0 && objc_msgSend(v14, "isEqual:", @"linear"))
    {
      imageBySamplingNearest = [(CIImage *)imageByClampingToExtent imageBySamplingLinear];
      goto LABEL_18;
    }
  }

LABEL_22:
  v16 = [(NSDictionary *)dict valueForKey:@"affine_matrix"];
  if (!v16)
  {
    goto LABEL_35;
  }

  v17 = v16;
  v18 = *(MEMORY[0x1E695EFD0] + 16);
  v35 = *MEMORY[0x1E695EFD0];
  v36 = v18;
  v37 = *(MEMORY[0x1E695EFD0] + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objCType = [v17 objCType];
    if (!strcmp(objCType, "{CGAffineTransform=dddddd}") || !strcmp(objCType, "{?=dddddd}"))
    {
      [v17 getValue:&v35 size:48];
LABEL_29:
      *buf = v35;
      *&buf[16] = v36;
      v39 = v37;
      imageByClampingToExtent = [(CIImage *)imageByClampingToExtent imageByApplyingTransform:buf, v35];
      goto LABEL_35;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = 0u;
      memset(buf, 0, sizeof(buf));
      [v17 transformStruct];
      v35 = *buf;
      v36 = *&buf[16];
      v37 = v39;
      goto LABEL_29;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 count] == 6)
    {
      [objc_msgSend(v17 objectAtIndex:{0), "doubleValue"}];
      *&v35 = v20;
      [objc_msgSend(v17 objectAtIndex:{1), "doubleValue"}];
      *(&v35 + 1) = v21;
      [objc_msgSend(v17 objectAtIndex:{2), "doubleValue"}];
      *&v36 = v22;
      [objc_msgSend(v17 objectAtIndex:{3), "doubleValue"}];
      *(&v36 + 1) = v23;
      [objc_msgSend(v17 objectAtIndex:{4), "doubleValue"}];
      *&v37 = v24;
      [objc_msgSend(v17 objectAtIndex:{5), "doubleValue"}];
      *(&v37 + 1) = v25;
      goto LABEL_29;
    }
  }

  v26 = ci_logger_api();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v17 description];
    *buf = 136446466;
    *&buf[4] = "[CISampler initWithImage:options:]";
    *&buf[12] = 2114;
    *&buf[14] = v27;
    _os_log_impl(&dword_19CC36000, v26, OS_LOG_TYPE_INFO, "%{public}s ignoring kCISamplerAffineMatrix value because it is not a valid object '%{public}@'.", buf, 0x16u);
  }

LABEL_35:
  v28 = [(NSDictionary *)dict valueForKey:@"color_space", v35];
  if (v28)
  {
    v30 = v28;
    if (CI::ColorSpace_is_RGB_and_supports_output(v28, v29))
    {
      imageByClampingToExtent = [(CIImage *)imageByClampingToExtent imageByColorMatchingWorkingSpaceToColorSpace:v30];
    }

    else
    {
      v31 = ci_logger_api();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = "[CISampler initWithImage:options:]";
        _os_log_impl(&dword_19CC36000, v31, OS_LOG_TYPE_INFO, "%{public}s ignoring kCISamplerColorSpace value because it is not an RGB CGColorSpaceRef that supports output.", buf, 0xCu);
      }
    }
  }

  if (!imageByClampingToExtent)
  {
    goto LABEL_44;
  }

  _internalRepresentation = [(CIImage *)imageByClampingToExtent _internalRepresentation];
  v33 = _internalRepresentation;
  if (_internalRepresentation)
  {
    CI::Object::ref(_internalRepresentation);
  }

  self->_priv = v33;
  return self;
}

+ (CISampler)samplerWithImage:(CIImage *)im
{
  if (!im)
  {
    return 0;
  }

  v3 = [[CISampler alloc] initWithImage:im];

  return v3;
}

+ (CISampler)samplerWithImage:(CIImage *)im keysAndValues:(id)key0
{
  va_start(va, key0);
  if (im)
  {
    return [[CISampler alloc] _initWithImage:im key0:key0 vargs:va];
  }

  else
  {
    return 0;
  }
}

+ (CISampler)samplerWithImage:(CIImage *)im options:(NSDictionary *)dict
{
  if (!im)
  {
    return 0;
  }

  v4 = [[CISampler alloc] initWithImage:im options:dict];

  return v4;
}

- (CIFilterShape)definition
{
  [(CISampler *)self extent];

  return [CIFilterShape shapeWithRect:?];
}

- (id)opaqueShape
{
  priv = self->_priv;
  if ((*(*priv + 128))(priv, a2) != 1 && (*(*priv + 128))(priv) != -1)
  {
    return 0;
  }

  return [(CISampler *)self definition];
}

- (CGRect)extent
{
  (*(*self->_priv + 88))();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)description
{
  [(CISampler *)self extent];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsInfinite(v12))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CISampler: %p extent [infinite]>", self, v8, v9, v10, v11];
  }

  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (CGRectIsEmpty(v13))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CISampler: %p extent [empty]>", self, v8, v9, v10, v11];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CISampler: %p extent [%g %g %g %g]>", self, *&x, *&y, *&width, *&height];
  }
}

- (id)debugDescription
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__CISampler_debugDescription__block_invoke;
  v3[3] = &unk_1E75C1EE0;
  v3[4] = self;
  return stream_to_string(v3);
}

size_t __29__CISampler_debugDescription__block_invoke(uint64_t a1, FILE *a2)
{
  fprintf(a2, "<CISampler: %p>\n", *(a1 + 32));
  CI::Image::print_graph(*(*(a1 + 32) + 8), a2);

  return fwrite("\n\n", 2uLL, 1uLL, a2);
}

- (void)init
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CISampler init]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s init is not a valid initializer for CISampler", &v1, 0xCu);
}

- (void)_initWithImage:(uint8_t *)buf key0:(_BYTE *)a2 vargs:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "CISampler option key must be a NSString. Skipping.", buf, 2u);
}

@end