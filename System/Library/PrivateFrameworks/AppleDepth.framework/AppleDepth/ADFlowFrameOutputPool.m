@interface ADFlowFrameOutputPool
+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)a3 confidenceDescriptor:(id)a4;
+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)a3 confidenceDescriptor:(id)a4 confidenceLevelsDescriptor:(id)a5 normalsDescriptor:(id)a6 uncertaintyDescriptor:(id)a7 depthMaskDescriptor:(id)a8 layout:(unint64_t)a9;
+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)a3 confidenceDescriptor:(id)a4 layout:(unint64_t)a5;
+ (ADFlowFrameOutputPool)poolWithDepthDimensions:(CGSize)a3 depthFormat:(unsigned int)a4 confidenceDimensions:(CGSize)a5 confidenceFormat:(unsigned int)a6 confidenceLevelsDimensions:(CGSize)a7 confidenceLevelsFormat:(unsigned int)a8 normalsDimensions:(CGSize)a9 normalsFormat:(unsigned int)a10 uncertaintyDimensions:(CGSize)a11 uncertaintyFormat:(unsigned int)a12 depthMaskDimensions:(CGSize)a13 depthMaskFormat:(unsigned int)a14;
- (ADFlowFrameOutputPool)initWithDepthDimensions:(CGSize)a3 depthFormat:(unsigned int)a4 confidenceDimensions:(CGSize)a5 confidenceFormat:(unsigned int)a6 confidenceLevelsDimensions:(CGSize)a7 confidenceLevelsFormat:(unsigned int)a8 normalsDimensions:(CGSize)a9 normalsFormat:(unsigned int)a10 uncertaintyDimensions:(CGSize)a11 uncertaintyFormat:(double)a12 depthMaskDimensions:(CGSize)a13 depthMaskFormat:(unsigned int)a14;
- (__CVBuffer)bufferFromPool:(__CVPixelBufferPool *)a3;
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

- (__CVBuffer)bufferFromPool:(__CVPixelBufferPool *)a3
{
  pixelBufferOut = 0;
  if (!a3)
  {
    return 0;
  }

  CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], a3, &pixelBufferOut);
  return pixelBufferOut;
}

- (ADFlowFrameOutputPool)initWithDepthDimensions:(CGSize)a3 depthFormat:(unsigned int)a4 confidenceDimensions:(CGSize)a5 confidenceFormat:(unsigned int)a6 confidenceLevelsDimensions:(CGSize)a7 confidenceLevelsFormat:(unsigned int)a8 normalsDimensions:(CGSize)a9 normalsFormat:(unsigned int)a10 uncertaintyDimensions:(CGSize)a11 uncertaintyFormat:(double)a12 depthMaskDimensions:(CGSize)a13 depthMaskFormat:(unsigned int)a14
{
  height = a11.height;
  width = a11.width;
  v16 = *&a10;
  v17 = *&a8;
  v18 = *&a6;
  v19 = a9.height;
  v20 = a9.width;
  v21 = a7.height;
  v22 = a7.width;
  v23 = a5.height;
  v24 = a5.width;
  v25 = *&a4;
  v26 = a3.height;
  v27 = a3.width;
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

    v37 = a12;
    v38 = a13.width;
    v29->_uncertaintyBufferPool = 0;
    v39 = a12 == v31;
    if (a13.width != v32)
    {
      v39 = 0;
    }

    if (LODWORD(width) && !v39)
    {
      v29->_uncertaintyBufferPool = PixelBufferUtils::createPixelBufferPool(*&width, *&v37, 10);
      v31 = *v30;
      v32 = v30[1];
    }

    v40 = a13.height;
    v41 = *&a14;
    v29->_depthMaskBufferPool = 0;
    v42 = a13.height == v31;
    if (*&a14 != v32)
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

+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)a3 confidenceDescriptor:(id)a4
{
  v4 = [ADFlowFrameOutputPool poolWithDepthDescriptor:a3 confidenceDescriptor:a4 layout:255];

  return v4;
}

+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)a3 confidenceDescriptor:(id)a4 layout:(unint64_t)a5
{
  v5 = [ADFlowFrameOutputPool poolWithDepthDescriptor:a3 confidenceDescriptor:a4 confidenceLevelsDescriptor:0 normalsDescriptor:0 uncertaintyDescriptor:0 depthMaskDescriptor:0 layout:a5];

  return v5;
}

+ (ADFlowFrameOutputPool)poolWithDepthDescriptor:(id)a3 confidenceDescriptor:(id)a4 confidenceLevelsDescriptor:(id)a5 normalsDescriptor:(id)a6 uncertaintyDescriptor:(id)a7 depthMaskDescriptor:(id)a8 layout:(unint64_t)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v49 = [ADFlowFrameOutputPool alloc];
  [v14 sizeForLayout:a9];
  v47 = v21;
  v48 = v20;
  v46 = [v14 pixelFormat];
  [v15 sizeForLayout:a9];
  v44 = v23;
  v45 = v22;
  v43 = [v15 pixelFormat];
  [v16 sizeForLayout:a9];
  v25 = v24;
  v27 = v26;
  v28 = [v16 pixelFormat];
  [v17 sizeForLayout:a9];
  v30 = v29;
  v32 = v31;
  v33 = [v17 pixelFormat];
  [v18 sizeForLayout:a9];
  v35 = v34;
  v37 = v36;
  v38 = [v18 pixelFormat];
  [v19 sizeForLayout:a9];
  v41 = -[ADFlowFrameOutputPool initWithDepthDimensions:depthFormat:confidenceDimensions:confidenceFormat:confidenceLevelsDimensions:confidenceLevelsFormat:normalsDimensions:normalsFormat:uncertaintyDimensions:uncertaintyFormat:depthMaskDimensions:depthMaskFormat:](v49, "initWithDepthDimensions:depthFormat:confidenceDimensions:confidenceFormat:confidenceLevelsDimensions:confidenceLevelsFormat:normalsDimensions:normalsFormat:uncertaintyDimensions:uncertaintyFormat:depthMaskDimensions:depthMaskFormat:", v46, v43, v28, v33, v38, [v19 pixelFormat], v48, v47, v45, v44, v25, v27, v30, v32, v35, v37, v39, v40);

  return v41;
}

+ (ADFlowFrameOutputPool)poolWithDepthDimensions:(CGSize)a3 depthFormat:(unsigned int)a4 confidenceDimensions:(CGSize)a5 confidenceFormat:(unsigned int)a6 confidenceLevelsDimensions:(CGSize)a7 confidenceLevelsFormat:(unsigned int)a8 normalsDimensions:(CGSize)a9 normalsFormat:(unsigned int)a10 uncertaintyDimensions:(CGSize)a11 uncertaintyFormat:(unsigned int)a12 depthMaskDimensions:(CGSize)a13 depthMaskFormat:(unsigned int)a14
{
  v14 = [[ADFlowFrameOutputPool alloc] initWithDepthDimensions:*&a4 depthFormat:*&a6 confidenceDimensions:*&a8 confidenceFormat:*&a10 confidenceLevelsDimensions:*&a11.width confidenceLevelsFormat:*&a11.height normalsDimensions:a3.width normalsFormat:a3.height uncertaintyDimensions:a5.width uncertaintyFormat:a5.height depthMaskDimensions:a7.width depthMaskFormat:a7.height, a9.width, a9.height, *&a12, *&a13.width, *&a13.height, *&a14];

  return v14;
}

@end