@interface CIImageAccumulator
+ (CIImageAccumulator)imageAccumulatorWithExtent:(CGRect)a3 format:(int)a4 options:(id)a5;
+ (CIImageAccumulator)imageAccumulatorWithExtent:(CGRect)extent format:(CIFormat)format;
+ (CIImageAccumulator)imageAccumulatorWithExtent:(CGRect)extent format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace;
- (CGRect)extent;
- (CIImageAccumulator)init;
- (CIImageAccumulator)initWithExtent:(CGRect)a3 format:(int)a4 options:(id)a5;
- (CIImageAccumulator)initWithExtent:(CGRect)extent format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace;
- (id)description;
- (void)clear;
- (void)dealloc;
- (void)setImage:(CIImage *)image dirtyRect:(CGRect)dirtyRect;
@end

@implementation CIImageAccumulator

- (CIImageAccumulator)init
{
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CIImageAccumulator init];
  }

  return 0;
}

+ (CIImageAccumulator)imageAccumulatorWithExtent:(CGRect)a3 format:(int)a4 options:(id)a5
{
  v5 = [[a1 alloc] initWithExtent:*&a4 format:a5 options:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];

  return v5;
}

+ (CIImageAccumulator)imageAccumulatorWithExtent:(CGRect)extent format:(CIFormat)format
{
  v4 = [[a1 alloc] initWithExtent:*&format format:{extent.origin.x, extent.origin.y, extent.size.width, extent.size.height}];

  return v4;
}

+ (CIImageAccumulator)imageAccumulatorWithExtent:(CGRect)extent format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace
{
  v5 = [[a1 alloc] initWithExtent:*&format format:colorSpace colorSpace:{extent.origin.x, extent.origin.y, extent.size.width, extent.size.height}];

  return v5;
}

- (CIImageAccumulator)initWithExtent:(CGRect)extent format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace
{
  v5 = *&format;
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v13[1] = *MEMORY[0x1E69E9840];
  if (colorSpace)
  {
    v12 = @"color_space";
    v13[0] = colorSpace;
    colorSpace = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  return [(CIImageAccumulator *)self initWithExtent:v5 format:colorSpace options:x, y, width, height];
}

- (CIImageAccumulator)initWithExtent:(CGRect)a3 format:(int)a4 options:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v40 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = CIImageAccumulator;
  v11 = [(CIImageAccumulator *)&v37 init];
  if (v11)
  {
    v12 = [a5 objectForKey:@"color_space"];
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    if (CGRectIsEmpty(v41))
    {
      v13 = ci_logger_api();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CIImageAccumulator initWithExtent:format:options:];
      }
    }

    else
    {
      if (a4 == 267 || a4 == 265 || a4 == 264)
      {
        v16 = 266;
      }

      else
      {
        v16 = a4;
      }

      if (v16 == 1800)
      {
        v16 = 2056;
      }

      if (v16 == 2824)
      {
        v17 = 2056;
      }

      else
      {
        v17 = v16;
      }

      if (v17 == 2312 || v17 == 2056 || v17 == 266)
      {
        v20 = [MEMORY[0x1E695DF90] dictionary];
        [v20 setObject:MEMORY[0x1E695E110] forKey:@"kCIContextEnableBlending"];
        if (!v12)
        {
          [v20 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"working_color_space"}];
        }

        [v20 setObject:@"CIImageAccumulator" forKey:@"kCIContextName"];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v38[0] = @"kCIContextCacheIntermediates";
        v38[1] = @"priority_request_low";
        v38[2] = @"priority_request_high";
        v38[3] = @"kCIContextUseMetalRenderer";
        v38[4] = @"quality";
        v38[5] = @"high_quality_downsample";
        v38[6] = @"kCIContextName";
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:{7, 0}];
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v22)
        {
          v23 = *v34;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v34 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v33 + 1) + 8 * i);
              if ([a5 valueForKey:v25])
              {
                [v20 setObject:objc_msgSend(a5 forKey:{"valueForKey:", v25), v25}];
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
          }

          while (v22);
        }

        if ([CIContext contextWithOptions:v20])
        {
          v26 = [a5 objectForKey:@"blend_kernel"];
          if (v26)
          {
            if (([v26 isMemberOfClass:objc_opt_class()] & 1) == 0)
            {
              [objc_msgSend(objc_opt_class() "description")];
              v27 = ci_logger_api();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                [CIImageAccumulator initWithExtent:format:options:];
              }
            }
          }

          operator new();
        }
      }

      else
      {
        v28 = CI::name_for_format(v17) == 0;
        v29 = ci_logger_api();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        if (v28)
        {
          if (v30)
          {
            [CIImageAccumulator initWithExtent:format:options:];
          }
        }

        else if (v30)
        {
          [CIImageAccumulator initWithExtent:format:options:];
        }
      }
    }

    v31 = ci_logger_api();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CIImageAccumulator initWithExtent:format:options:];
    }

    return 0;
  }

  return v11;
}

- (void)dealloc
{
  state = self->_state;
  if (state)
  {
    CI::ImageAccumulator::~ImageAccumulator(state);
    MEMORY[0x19EAF5590]();
  }

  v4.receiver = self;
  v4.super_class = CIImageAccumulator;
  [(CIImageAccumulator *)&v4 dealloc];
}

- (CGRect)extent
{
  state = self->_state;
  v3 = *state;
  v4 = state[1];
  v5 = state[2];
  v6 = state[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setImage:(CIImage *)image dirtyRect:(CGRect)dirtyRect
{
  state = self->_state;
  if (image)
  {
    height = dirtyRect.size.height;
    width = dirtyRect.size.width;
    y = dirtyRect.origin.y;
    x = dirtyRect.origin.x;
    v11 = *state;
    v12 = *(state + 1);
    v13 = *(state + 2);
    v14 = *(state + 3);
    if (!CGRectIsInfinite(dirtyRect))
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      if (!CGRectIsEmpty(v27))
      {
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v29 = CGRectStandardize(v28);
        x = ceil(v29.origin.x);
        y = ceil(v29.origin.y);
        v15 = floor(v29.origin.x + v29.size.width);
        v16 = floor(v29.origin.y + v29.size.height);
        if (v15 > x && v16 > y)
        {
          width = v15 - x;
          height = v16 - y;
        }

        else
        {
          x = *MEMORY[0x1E695F050];
          y = *(MEMORY[0x1E695F050] + 8);
          width = *(MEMORY[0x1E695F050] + 16);
          height = *(MEMORY[0x1E695F050] + 24);
        }
      }
    }

    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v34.origin.x = v11;
    v34.origin.y = v12;
    v34.size.width = v13;
    v34.size.height = v14;
    v31 = CGRectIntersection(v30, v34);
    v19 = v31.origin.x;
    v20 = v31.origin.y;
    v21 = v31.size.width;
    v22 = v31.size.height;
    [(CIImage *)image extent];
    v35.origin.x = v19;
    v35.origin.y = v20;
    v35.size.width = v21;
    v35.size.height = v22;
    v23 = image;
    if (!CGRectContainsRect(v32, v35))
    {
      v23 = [(CIImage *)image imageByCompositingOverImage:[CIImage clearImage:v19, v20, v21, v22]];
    }

    [(CIImage *)image extent];
    v36.origin.x = v19;
    v36.origin.y = v20;
    v36.size.width = v21;
    v36.size.height = v22;
    if (CGRectContainsRect(v33, v36))
    {
      v23 = [(CIImage *)v23 imageByCroppingToRect:v19, v20, v21, v22];
    }

    v24 = self->_state;

    CI::ImageAccumulator::set(v24, v23);
  }

  else
  {
    v18 = *(state + 17);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2CI16ImageAccumulator5clearEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = state;
    dispatch_async(v18, block);
  }
}

- (void)clear
{
  state = self->_state;
  v3 = *(state + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI16ImageAccumulator5clearEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = state;
  dispatch_async(v3, block);
}

- (id)description
{
  [(CIImageAccumulator *)self extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CIImageAccumulator *)self format];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CIImageAccumulator: %p extent [%g %g %g %g] format %s>", self, v4, v6, v8, v10, CI::name_for_format(v11)];
}

- (void)initWithExtent:format:options:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithExtent:format:options:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end