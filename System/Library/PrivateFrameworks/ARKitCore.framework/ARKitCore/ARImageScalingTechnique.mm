@interface ARImageScalingTechnique
+ (id)scalingPassDescriptionForInputSize:(CGSize)size scaledSize:(CGSize)scaledSize conversionPixelFormat:(unsigned int)format;
- (ARImageScalingTechnique)initWithDownscaleFactor:(unsigned __int8)factor;
- (ARImageScalingTechnique)initWithScaledSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (CGSize)scaledSize;
- (__CVBuffer)_applyScalingPasses:(__CVBuffer *)passes;
- (id)processData:(id)data;
- (void)_createScalingPassesForInputSize:(CGSize)size;
@end

@implementation ARImageScalingTechnique

- (ARImageScalingTechnique)initWithDownscaleFactor:(unsigned __int8)factor
{
  v8.receiver = self;
  v8.super_class = ARImageScalingTechnique;
  v4 = [(ARTechnique *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_downscaleFactor = factor;
    v4->_shouldUseScaleFactor = 1;
    v4->_conversionPixelFormatType = 0;
    v4->_scalingInputSize = *MEMORY[0x1E695F060];
    scalingPasses = v4->_scalingPasses;
    v4->_scalingPasses = 0;
  }

  return v5;
}

- (ARImageScalingTechnique)initWithScaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = ARImageScalingTechnique;
  v5 = [(ARTechnique *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_downscaleFactor = 0;
    v5->_conversionPixelFormatType = 0;
    v5->_scaledSize.width = width;
    v5->_scaledSize.height = height;
    v5->_shouldUseScaleFactor = 0;
    v5->_scalingInputSize = *MEMORY[0x1E695F060];
    scalingPasses = v5->_scalingPasses;
    v5->_scalingPasses = 0;
  }

  return v6;
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = dataCopy;
  v7 = v6;
  v8 = v6;
  if (isKindOfClass)
  {
    Width = CVPixelBufferGetWidth([(ARImageData *)v6 pixelBuffer]);
    Height = CVPixelBufferGetHeight([(ARImageData *)v7 pixelBuffer]);
    if (!self->_shouldUseScaleFactor)
    {
      goto LABEL_5;
    }

    if ([(ARImageScalingTechnique *)self downscaleFactor]> 1)
    {
LABEL_9:
      [(ARImageScalingTechnique *)self _createScalingPassesForInputSize:Width, Height];
      v14 = [(ARImageScalingTechnique *)self _applyScalingPasses:[(ARImageData *)v7 pixelBuffer]];
      v8 = [[ARModifiedImageData alloc] initWithImageData:v7];
      [(ARImageData *)v8 setPixelBuffer:v14];
      [(ARImageData *)v7 cameraIntrinsics];
      v27 = v16;
      v28 = v15;
      v26 = v17;
      [(ARImageData *)v7 imageResolution];
      v19 = v18;
      v21 = v20;
      [(ARImageData *)v8 imageResolution];
      *&v24 = ARAdjustIntrinsicsForViewportSize(v28, v27, v26, v19, v21, v22, v23);
      [(ARImageData *)v8 setCameraIntrinsics:v24];
      CVPixelBufferRelease(v14);
LABEL_11:

      goto LABEL_12;
    }

    if (!self->_shouldUseScaleFactor)
    {
LABEL_5:
      [(ARImageScalingTechnique *)self scaledSize];
      if (v12 != Width || v11 != Height)
      {
        goto LABEL_9;
      }
    }

    v8 = v7;
    goto LABEL_11;
  }

LABEL_12:

  return v8;
}

- (void)_createScalingPassesForInputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v47 = *MEMORY[0x1E69E9840];
  p_scaledSize = &self->_scaledSize;
  if (self->_shouldUseScaleFactor)
  {
    v7 = size.width / [(ARImageScalingTechnique *)self downscaleFactor];
    v8 = height / [(ARImageScalingTechnique *)self downscaleFactor];
  }

  else
  {
    v7 = p_scaledSize->width;
    v8 = self->_scaledSize.height;
  }

  p_scalingInputSize = &self->_scalingInputSize;
  v10 = self->_scalingInputSize.width == width && self->_scalingInputSize.height == height;
  if (!v10 || ((v11 = p_scaledSize->height, p_scaledSize->width == v7) ? (v12 = v11 == v8) : (v12 = 0), !v12 || (-[NSMutableArray lastObject](self->_scalingPasses, "lastObject", p_scaledSize->width, v11), (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = v13, -[NSMutableArray lastObject](self->_scalingPasses, "lastObject"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 conversionPixelFormatType], v17 = -[ARImageScalingTechnique conversionPixelFormatType](self, "conversionPixelFormatType"), v15, v14, v16 != v17)))
  {
    if (self->_scalingPasses)
    {
      kdebug_trace();
      v18 = _ARLogTechnique_5();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138543618;
        v36 = v20;
        v37 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Recreating scaling passes", buf, 0x16u);
      }

      v21 = _ARLogTechnique_5();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = p_scalingInputSize->width;
        v25 = self->_scalingInputSize.height;
        v26 = p_scaledSize->width;
        v27 = p_scaledSize->height;
        *buf = 138544642;
        v36 = v23;
        v37 = 2048;
        selfCopy3 = self;
        v39 = 2048;
        v40 = v24;
        v41 = 2048;
        v42 = v25;
        v43 = 2048;
        v44 = v26;
        v45 = 2048;
        v46 = v27;
        _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: was scaling from %.1f x %.1f to %.1f x %.1f", buf, 0x3Eu);
      }

      v28 = _ARLogTechnique_5();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138544642;
        v36 = v30;
        v37 = 2048;
        selfCopy3 = self;
        v39 = 2048;
        v40 = width;
        v41 = 2048;
        v42 = height;
        v43 = 2048;
        v44 = v7;
        v45 = 2048;
        v46 = v8;
        _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "%{public}@ <%p>: now scaling from %.1f x %.1f to %.1f x %.1f", buf, 0x3Eu);
      }
    }

    p_scalingInputSize->width = width;
    self->_scalingInputSize.height = height;
    p_scaledSize->width = v7;
    p_scaledSize->height = v8;
    v31 = [objc_opt_class() scalingPassDescriptionForInputSize:-[ARImageScalingTechnique conversionPixelFormatType](self scaledSize:"conversionPixelFormatType") conversionPixelFormat:p_scalingInputSize->width, self->_scalingInputSize.height, p_scaledSize->width, p_scaledSize->height];
    v32 = objc_opt_new();
    scalingPasses = self->_scalingPasses;
    self->_scalingPasses = v32;

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __60__ARImageScalingTechnique__createScalingPassesForInputSize___block_invoke;
    v34[3] = &unk_1E817C468;
    v34[4] = self;
    [v31 enumerateObjectsUsingBlock:v34];
  }
}

void __60__ARImageScalingTechnique__createScalingPassesForInputSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ARImageScalePass alloc] initWithDescription:v3];

  [*(*(a1 + 32) + 56) addObject:v4];
}

- (__CVBuffer)_applyScalingPasses:(__CVBuffer *)passes
{
  passesCopy = passes;
  v17 = *MEMORY[0x1E69E9840];
  CVPixelBufferRetain(passes);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_scalingPasses;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = passesCopy;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        passesCopy = [*(*(&v12 + 1) + 8 * v9) scalePixelBuffer:{v10, v12}];
        CVPixelBufferRelease(v10);
        ++v9;
        v10 = passesCopy;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return passesCopy;
}

+ (id)scalingPassDescriptionForInputSize:(CGSize)size scaledSize:(CGSize)scaledSize conversionPixelFormat:(unsigned int)format
{
  height = scaledSize.height;
  width = scaledSize.width;
  v7 = size.height;
  v8 = size.width;
  v53 = *MEMORY[0x1E69E9840];
  v10 = objc_opt_new();
  v11 = _ARLogTechnique_5();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v34 = v13;
    v35 = 2048;
    selfCopy3 = self;
    v37 = 2048;
    v38 = v8;
    v39 = 2048;
    v40 = v7;
    v41 = 2048;
    v42 = width;
    v43 = 2048;
    v44 = height;
    _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: scale (%.1f x %.1f) to (%.1f x %.1f) START", buf, 0x3Eu);
  }

  v31 = width;
  v32 = height;
  do
  {
    v14 = width / v8;
    v15 = height / v7;
    v16 = fmaxf(v14, 0.25);
    v17 = round(v8 * v16);
    v18 = fmaxf(v15, 0.25);
    v19 = round(v7 * v18);
    v20 = [[ARImageScalingPassDescription alloc] initWithSize:v17, v19];
    [v10 addObject:v20];

    v21 = _ARLogTechnique_5();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138545666;
      v34 = v23;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2048;
      v38 = v8;
      v39 = 2048;
      v40 = v7;
      v41 = 2048;
      v42 = v17;
      v43 = 2048;
      v44 = v19;
      v45 = 2048;
      v46 = v16;
      v47 = 2048;
      v48 = v18;
      v49 = 1024;
      v50 = v14 >= 0.25;
      v51 = 1024;
      v52 = v15 >= 0.25;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: \tscale (%f x %f) to (%f x %f) scaleX=%f, scaleY=%f, finalXPass=%d, finalYPass=%d", buf, 0x5Eu);
    }

    v24 = v14 < 0.25 || v15 < 0.25;
    v7 = v19;
    v8 = v17;
    width = v31;
    height = v32;
  }

  while (v24);
  v25 = _ARLogTechnique_5();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    *buf = 138544130;
    v34 = v27;
    v35 = 2048;
    selfCopy3 = self;
    v37 = 2048;
    v38 = v17;
    v39 = 2048;
    v40 = v19;
    _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: scaled to (%.1f x %.1f) COMPLETE", buf, 0x2Au);
  }

  lastObject = [v10 lastObject];
  [lastObject setPixelBufferFormat:format];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = ARImageScalingTechnique;
  if ([(ARTechnique *)&v15 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (self->_shouldUseScaleFactor)
    {
      downscaleFactor = [(ARImageScalingTechnique *)self downscaleFactor];
      v7 = downscaleFactor == [v5 downscaleFactor];
    }

    else
    {
      [(ARImageScalingTechnique *)self scaledSize];
      v9 = v8;
      v11 = v10;
      [v5 scaledSize];
      v7 = v11 == v13 && v9 == v12;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)scaledSize
{
  width = self->_scaledSize.width;
  height = self->_scaledSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end