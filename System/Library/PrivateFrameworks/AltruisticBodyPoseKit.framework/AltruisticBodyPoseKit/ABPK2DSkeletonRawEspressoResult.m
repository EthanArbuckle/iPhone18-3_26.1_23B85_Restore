@interface ABPK2DSkeletonRawEspressoResult
- (ABPK2DSkeletonRawEspressoResult)initWithHeatMapBuffer:(ABPK2DSkeletonRawEspressoResult *)self heatMapShape:(SEL)a2 heatMapStrides:(__CVBuffer *)a3 rotationNeeded:(int64_t)a4;
- (ABPK2DSkeletonRawEspressoResult)initWithHeatMapBuffer:(__CVBuffer *)a3 heatMapShape:(__CVBuffer *)a4 heatMapStrides:(int64_t)a5 affinityMapBuffer:affinityMapShape:affinityMapStrides:rotationNeeded:;
- (ABPK2DSkeletonRawEspressoResult)initWithMLImage:(ABPK2DSkeletonRawEspressoResult *)self originalImageData:(SEL)a2 heatMapBuffer:(id)a3 heatMapShape:(id)a4 heatMapStrides:(__CVBuffer *)a5 rotationNeeded:(int64_t)a6;
- (ABPK2DSkeletonRawEspressoResult)initWithMLImage:(id)a3 originalImageData:(id)a4 heatMapBuffer:(__CVBuffer *)a5 heatMapShape:(__CVBuffer *)a6 heatMapStrides:(int64_t)a7 affinityMapBuffer:affinityMapShape:affinityMapStrides:rotationNeeded:;
- (void)dealloc;
@end

@implementation ABPK2DSkeletonRawEspressoResult

- (ABPK2DSkeletonRawEspressoResult)initWithMLImage:(id)a3 originalImageData:(id)a4 heatMapBuffer:(__CVBuffer *)a5 heatMapShape:(__CVBuffer *)a6 heatMapStrides:(int64_t)a7 affinityMapBuffer:affinityMapShape:affinityMapStrides:rotationNeeded:
{
  v25 = v9;
  v26 = v10;
  v23 = v7;
  v24 = v8;
  v17 = a3;
  v18 = a4;
  v27.receiver = self;
  v27.super_class = ABPK2DSkeletonRawEspressoResult;
  v19 = [(ABPK2DSkeletonRawEspressoResult *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_imageDataForNeuralNetwork, a3);
    objc_storeStrong(&v20->_inputImageData, a4);
    v20->_heatMapBuffer = CVPixelBufferRetain(a5);
    *v20->_heatMapShape = v23;
    *v20->_heatMapStrides = v24;
    v21 = CVPixelBufferRetain(a6);
    *v20->_affinityMapShape = v25;
    *v20->_affinityMapStrides = v26;
    v20->_affinityMapBuffer = v21;
    v20->_rotationNeeded = a7;
  }

  return v20;
}

- (ABPK2DSkeletonRawEspressoResult)initWithHeatMapBuffer:(__CVBuffer *)a3 heatMapShape:(__CVBuffer *)a4 heatMapStrides:(int64_t)a5 affinityMapBuffer:affinityMapShape:affinityMapStrides:rotationNeeded:
{
  v20 = v7;
  v21 = v8;
  v18 = v5;
  v19 = v6;
  v22.receiver = self;
  v22.super_class = ABPK2DSkeletonRawEspressoResult;
  v12 = [(ABPK2DSkeletonRawEspressoResult *)&v22 init];
  v13 = v12;
  if (v12)
  {
    imageDataForNeuralNetwork = v12->_imageDataForNeuralNetwork;
    v12->_imageDataForNeuralNetwork = 0;

    inputImageData = v13->_inputImageData;
    v13->_inputImageData = 0;

    v13->_heatMapBuffer = CVPixelBufferRetain(a3);
    *v13->_heatMapShape = v18;
    *v13->_heatMapStrides = v19;
    v16 = CVPixelBufferRetain(a4);
    *v13->_affinityMapShape = v20;
    *v13->_affinityMapStrides = v21;
    v13->_affinityMapBuffer = v16;
    v13->_rotationNeeded = a5;
  }

  return v13;
}

- (ABPK2DSkeletonRawEspressoResult)initWithMLImage:(ABPK2DSkeletonRawEspressoResult *)self originalImageData:(SEL)a2 heatMapBuffer:(id)a3 heatMapShape:(id)a4 heatMapStrides:(__CVBuffer *)a5 rotationNeeded:(int64_t)a6
{
  v19 = v6;
  v20 = v7;
  v13 = a3;
  v14 = a4;
  v21.receiver = self;
  v21.super_class = ABPK2DSkeletonRawEspressoResult;
  v15 = [(ABPK2DSkeletonRawEspressoResult *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_imageDataForNeuralNetwork, a3);
    objc_storeStrong(&v16->_inputImageData, a4);
    v17 = CVPixelBufferRetain(a5);
    *v16->_heatMapShape = v19;
    *v16->_heatMapStrides = v20;
    v16->_affinityMapBuffer = 0;
    v16->_rotationNeeded = a6;
    v16->_heatMapBuffer = v17;
    *v16->_affinityMapShape = 0u;
    *v16->_affinityMapStrides = 0u;
  }

  return v16;
}

- (ABPK2DSkeletonRawEspressoResult)initWithHeatMapBuffer:(ABPK2DSkeletonRawEspressoResult *)self heatMapShape:(SEL)a2 heatMapStrides:(__CVBuffer *)a3 rotationNeeded:(int64_t)a4
{
  v14 = v4;
  v15 = v5;
  v16.receiver = self;
  v16.super_class = ABPK2DSkeletonRawEspressoResult;
  v8 = [(ABPK2DSkeletonRawEspressoResult *)&v16 init];
  v9 = v8;
  if (v8)
  {
    imageDataForNeuralNetwork = v8->_imageDataForNeuralNetwork;
    v8->_imageDataForNeuralNetwork = 0;

    inputImageData = v9->_inputImageData;
    v9->_inputImageData = 0;

    v12 = CVPixelBufferRetain(a3);
    *v9->_heatMapShape = v14;
    *v9->_heatMapStrides = v15;
    v9->_affinityMapBuffer = 0;
    v9->_rotationNeeded = a4;
    v9->_heatMapBuffer = v12;
    *v9->_affinityMapShape = 0u;
    *v9->_affinityMapStrides = 0u;
  }

  return v9;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_heatMapBuffer);
  CVPixelBufferRelease(self->_affinityMapBuffer);
  v3.receiver = self;
  v3.super_class = ABPK2DSkeletonRawEspressoResult;
  [(ABPK2DSkeletonRawEspressoResult *)&v3 dealloc];
}

@end