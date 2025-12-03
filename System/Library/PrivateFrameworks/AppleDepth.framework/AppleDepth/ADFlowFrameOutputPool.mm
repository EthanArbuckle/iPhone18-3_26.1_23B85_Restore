@interface ADFlowFrameOutputPool
+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)descriptor confidenceDescriptor:(id)confidenceDescriptor;
+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)descriptor confidenceDescriptor:(id)confidenceDescriptor confidenceLevelsDescriptor:(id)levelsDescriptor normalsDescriptor:(id)normalsDescriptor uncertaintyDescriptor:(id)uncertaintyDescriptor depthMaskDescriptor:(id)maskDescriptor layout:(unint64_t)layout;
+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)descriptor confidenceDescriptor:(id)confidenceDescriptor layout:(unint64_t)layout;
+ (ADFlowFrameOutputPool)poolWithDepthDimensions:(CGSize)dimensions depthFormat:(unsigned int)format confidenceDimensions:(CGSize)confidenceDimensions confidenceFormat:(unsigned int)confidenceFormat confidenceLevelsDimensions:(CGSize)levelsDimensions confidenceLevelsFormat:(unsigned int)levelsFormat normalsDimensions:(CGSize)normalsDimensions normalsFormat:(unsigned int)self0 uncertaintyDimensions:(CGSize)self1 uncertaintyFormat:(unsigned int)self2 depthMaskDimensions:(CGSize)self3 depthMaskFormat:(unsigned int)self4;
- (ADFlowFrameOutputPool)initWithDepthDimensions:(CGSize)dimensions depthFormat:(unsigned int)format confidenceDimensions:(CGSize)confidenceDimensions confidenceFormat:(unsigned int)confidenceFormat confidenceLevelsDimensions:(CGSize)levelsDimensions confidenceLevelsFormat:(unsigned int)levelsFormat normalsDimensions:(CGSize)normalsDimensions normalsFormat:(unsigned int)self0 uncertaintyDimensions:(CGSize)self1 uncertaintyFormat:(double)self2 depthMaskDimensions:(CGSize)self3 depthMaskFormat:(unsigned int)self4;
- (__CVBuffer)bufferFromPool:(__CVPixelBufferPool *)pool;
- (id)frameOutput;
- (void)dealloc;
@end

@implementation ADFlowFrameOutputPool

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_depthBufferPool);
  CVPixelBufferPoolRelease(self->_confidenceBufferPool);
  CVPixelBufferPoolRelease(self->_confidenceLevelsBufferPool);
  CVPixelBufferPoolRelease(self->_normalsBufferPool);
  CVPixelBufferPoolRelease(self->_uncertaintyBufferPool);
  CVPixelBufferPoolRelease(self->_depthMaskBufferPool);
  v3.receiver = self;
  v3.super_class = ADFlowFrameOutputPool;
  [(ADFlowFrameOutputPool *)&v3 dealloc];
}

- (id)frameOutput
{
  v3 = objc_opt_new();
  [v3 setDepth:{-[ADFlowFrameOutputPool bufferFromPool:](self, "bufferFromPool:", self->_depthBufferPool)}];
  [v3 setConfidence:{-[ADFlowFrameOutputPool bufferFromPool:](self, "bufferFromPool:", self->_confidenceBufferPool)}];
  [v3 setConfidenceLevels:{-[ADFlowFrameOutputPool bufferFromPool:](self, "bufferFromPool:", self->_confidenceLevelsBufferPool)}];
  [v3 setNormals:{-[ADFlowFrameOutputPool bufferFromPool:](self, "bufferFromPool:", self->_normalsBufferPool)}];
  [v3 setUncertainty:{-[ADFlowFrameOutputPool bufferFromPool:](self, "bufferFromPool:", self->_uncertaintyBufferPool)}];
  [v3 setDepthMask:{-[ADFlowFrameOutputPool bufferFromPool:](self, "bufferFromPool:", self->_depthMaskBufferPool)}];

  return v3;
}

- (__CVBuffer)bufferFromPool:(__CVPixelBufferPool *)pool
{
  pixelBufferOut = 0;
  if (!pool)
  {
    return 0;
  }

  CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], pool, &pixelBufferOut);
  return pixelBufferOut;
}

- (ADFlowFrameOutputPool)initWithDepthDimensions:(CGSize)dimensions depthFormat:(unsigned int)format confidenceDimensions:(CGSize)confidenceDimensions confidenceFormat:(unsigned int)confidenceFormat confidenceLevelsDimensions:(CGSize)levelsDimensions confidenceLevelsFormat:(unsigned int)levelsFormat normalsDimensions:(CGSize)normalsDimensions normalsFormat:(unsigned int)self0 uncertaintyDimensions:(CGSize)self1 uncertaintyFormat:(double)self2 depthMaskDimensions:(CGSize)self3 depthMaskFormat:(unsigned int)self4
{
  height = uncertaintyDimensions.height;
  width = uncertaintyDimensions.width;
  v16 = *&normalsFormat;
  v17 = *&levelsFormat;
  v18 = *&confidenceFormat;
  v19 = normalsDimensions.height;
  v20 = normalsDimensions.width;
  v21 = levelsDimensions.height;
  v22 = levelsDimensions.width;
  v23 = confidenceDimensions.height;
  v24 = confidenceDimensions.width;
  v25 = *&format;
  v26 = dimensions.height;
  v27 = dimensions.width;
  v44.receiver = self;
  v44.super_class = ADFlowFrameOutputPool;
  v28 = [(ADFlowFrameOutputPool *)&v44 init];
  v29 = v28;
  if (v28)
  {
    v28->_depthBufferPool = 0;
    v30 = MEMORY[0x277CBF3A8];
    v31 = *MEMORY[0x277CBF3A8];
    v32 = *(MEMORY[0x277CBF3A8] + 8);
    v33 = v27 == *MEMORY[0x277CBF3A8];
    if (v26 != v32)
    {
      v33 = 0;
    }

    if (v25 && !v33)
    {
      v45.width = v27;
      v45.height = v26;
      v28->_depthBufferPool = PixelBufferUtils::createPixelBufferPool(v25, v45, 10);
      v31 = *v30;
      v32 = v30[1];
    }

    v29->_confidenceBufferPool = 0;
    v34 = v24 == v31;
    if (v23 != v32)
    {
      v34 = 0;
    }

    if (v18 && !v34)
    {
      v46.width = v24;
      v46.height = v23;
      v29->_confidenceBufferPool = PixelBufferUtils::createPixelBufferPool(v18, v46, 10);
      v31 = *v30;
      v32 = v30[1];
    }

    v29->_confidenceLevelsBufferPool = 0;
    v35 = v22 == v31;
    if (v21 != v32)
    {
      v35 = 0;
    }

    if (v17 && !v35)
    {
      v47.width = v22;
      v47.height = v21;
      v29->_confidenceLevelsBufferPool = PixelBufferUtils::createPixelBufferPool(v17, v47, 10);
      v31 = *v30;
      v32 = v30[1];
    }

    v29->_normalsBufferPool = 0;
    v36 = v20 == v31;
    if (v19 != v32)
    {
      v36 = 0;
    }

    if (v16 && !v36)
    {
      v48.width = v20;
      v48.height = v19;
      v29->_normalsBufferPool = PixelBufferUtils::createPixelBufferPool(v16, v48, 10);
      v31 = *v30;
      v32 = v30[1];
    }

    uncertaintyFormatCopy = uncertaintyFormat;
    v38 = maskDimensions.width;
    v29->_uncertaintyBufferPool = 0;
    v39 = uncertaintyFormat == v31;
    if (maskDimensions.width != v32)
    {
      v39 = 0;
    }

    if (LODWORD(width) && !v39)
    {
      v29->_uncertaintyBufferPool = PixelBufferUtils::createPixelBufferPool(*&width, *&uncertaintyFormatCopy, 10);
      v31 = *v30;
      v32 = v30[1];
    }

    v40 = maskDimensions.height;
    v41 = *&maskFormat;
    v29->_depthMaskBufferPool = 0;
    v42 = maskDimensions.height == v31;
    if (*&maskFormat != v32)
    {
      v42 = 0;
    }

    if (LODWORD(height) && !v42)
    {
      v29->_depthMaskBufferPool = PixelBufferUtils::createPixelBufferPool(*&height, *&v40, 10);
    }
  }

  return v29;
}

+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)descriptor confidenceDescriptor:(id)confidenceDescriptor
{
  v4 = [ADFlowFrameOutputPool poolWithDepthDescriptor:descriptor confidenceDescriptor:confidenceDescriptor layout:255];

  return v4;
}

+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)descriptor confidenceDescriptor:(id)confidenceDescriptor layout:(unint64_t)layout
{
  v5 = [ADFlowFrameOutputPool poolWithDepthDescriptor:descriptor confidenceDescriptor:confidenceDescriptor confidenceLevelsDescriptor:0 normalsDescriptor:0 uncertaintyDescriptor:0 depthMaskDescriptor:0 layout:layout];

  return v5;
}

+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)descriptor confidenceDescriptor:(id)confidenceDescriptor confidenceLevelsDescriptor:(id)levelsDescriptor normalsDescriptor:(id)normalsDescriptor uncertaintyDescriptor:(id)uncertaintyDescriptor depthMaskDescriptor:(id)maskDescriptor layout:(unint64_t)layout
{
  descriptorCopy = descriptor;
  confidenceDescriptorCopy = confidenceDescriptor;
  levelsDescriptorCopy = levelsDescriptor;
  normalsDescriptorCopy = normalsDescriptor;
  uncertaintyDescriptorCopy = uncertaintyDescriptor;
  maskDescriptorCopy = maskDescriptor;
  v49 = [ADFlowFrameOutputPool alloc];
  [descriptorCopy sizeForLayout:layout];
  v47 = v21;
  v48 = v20;
  pixelFormat = [descriptorCopy pixelFormat];
  [confidenceDescriptorCopy sizeForLayout:layout];
  v44 = v23;
  v45 = v22;
  pixelFormat2 = [confidenceDescriptorCopy pixelFormat];
  [levelsDescriptorCopy sizeForLayout:layout];
  v25 = v24;
  v27 = v26;
  pixelFormat3 = [levelsDescriptorCopy pixelFormat];
  [normalsDescriptorCopy sizeForLayout:layout];
  v30 = v29;
  v32 = v31;
  pixelFormat4 = [normalsDescriptorCopy pixelFormat];
  [uncertaintyDescriptorCopy sizeForLayout:layout];
  v35 = v34;
  v37 = v36;
  pixelFormat5 = [uncertaintyDescriptorCopy pixelFormat];
  [maskDescriptorCopy sizeForLayout:layout];
  v41 = -[ADFlowFrameOutputPool initWithDepthDimensions:depthFormat:confidenceDimensions:confidenceFormat:confidenceLevelsDimensions:confidenceLevelsFormat:normalsDimensions:normalsFormat:uncertaintyDimensions:uncertaintyFormat:depthMaskDimensions:depthMaskFormat:](v49, "initWithDepthDimensions:depthFormat:confidenceDimensions:confidenceFormat:confidenceLevelsDimensions:confidenceLevelsFormat:normalsDimensions:normalsFormat:uncertaintyDimensions:uncertaintyFormat:depthMaskDimensions:depthMaskFormat:", pixelFormat, pixelFormat2, pixelFormat3, pixelFormat4, pixelFormat5, [maskDescriptorCopy pixelFormat], v48, v47, v45, v44, v25, v27, v30, v32, v35, v37, v39, v40);

  return v41;
}

+ (ADFlowFrameOutputPool)poolWithDepthDimensions:(CGSize)dimensions depthFormat:(unsigned int)format confidenceDimensions:(CGSize)confidenceDimensions confidenceFormat:(unsigned int)confidenceFormat confidenceLevelsDimensions:(CGSize)levelsDimensions confidenceLevelsFormat:(unsigned int)levelsFormat normalsDimensions:(CGSize)normalsDimensions normalsFormat:(unsigned int)self0 uncertaintyDimensions:(CGSize)self1 uncertaintyFormat:(unsigned int)self2 depthMaskDimensions:(CGSize)self3 depthMaskFormat:(unsigned int)self4
{
  v14 = [[ADFlowFrameOutputPool alloc] initWithDepthDimensions:*&format depthFormat:*&confidenceFormat confidenceDimensions:*&levelsFormat confidenceFormat:*&normalsFormat confidenceLevelsDimensions:*&uncertaintyDimensions.width confidenceLevelsFormat:*&uncertaintyDimensions.height normalsDimensions:dimensions.width normalsFormat:dimensions.height uncertaintyDimensions:confidenceDimensions.width uncertaintyFormat:confidenceDimensions.height depthMaskDimensions:levelsDimensions.width depthMaskFormat:levelsDimensions.height, normalsDimensions.width, normalsDimensions.height, *&uncertaintyFormat, *&maskDimensions.width, *&maskDimensions.height, *&maskFormat];

  return v14;
}

@end