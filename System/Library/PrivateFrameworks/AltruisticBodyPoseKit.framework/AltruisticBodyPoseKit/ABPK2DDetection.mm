@interface ABPK2DDetection
+ (CGSize)inputDimensionsForDeviceOrientation:(id)orientation;
- (ABPK2DDetection)initWithNetworkConfig:(id)config;
- (BOOL)initMLNetwork;
- (id).cxx_construct;
- (id)_createResultDataFromImageDataForNeuralNetwork:(id)network originalImageData:(id)data outputPixelBuffer:(__CVBuffer *)buffer numberOfOutputTensors:(unint64_t)tensors rotationOfResultTensor:(int64_t)tensor;
- (id)createException:(void *)exception forNetwork:(id)network;
- (id)runWithImage:(__CVBuffer *)image abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor;
- (id)runWithImageDataForNeuralNetwork:(id)network originalImageData:(id)data abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor;
- (id)runWithMLImage:(id)image originalImage:(id)originalImage abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor;
- (void)_bindOutputTensor;
- (void)changeEspressoConfig:(id)config;
- (void)dealloc;
@end

@implementation ABPK2DDetection

- (ABPK2DDetection)initWithNetworkConfig:(id)config
{
  configCopy = config;
  v6 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " ABPK2DDetection: Initializing ", buf, 2u);
  }

  v19.receiver = self;
  v19.super_class = ABPK2DDetection;
  v7 = [(ABPK2DDetection *)&v19 init];
  v8 = v7;
  if (v7 && (objc_storeStrong(&v7->_config2D, config), [ABPK2DMLModelConfigSelector getModelWithNetworkConfig:v8->_config2D], v9 = objc_claimAutoreleasedReturnValue(), mlConfig = v8->_mlConfig, v8->_mlConfig = v9, mlConfig, [(ABPK2DDetection *)v8 setUseEspressoZeroCopyOutput:1], [(ABPK2DDetection *)v8 initMLNetwork]))
  {
    [(ABPKMLModelConfiguration2D *)v8->_mlConfig inputDimensions];
    v8->_parameters.input.resolution.width = v11;
    v8->_parameters.input.resolution.height = v12;
    [(ABPKMLModelConfiguration2D *)v8->_mlConfig biasR];
    v8->_parameters.input.preprocessor.bias_r = v13;
    [(ABPKMLModelConfiguration2D *)v8->_mlConfig biasG];
    v8->_parameters.input.preprocessor.bias_g = v14;
    [(ABPKMLModelConfiguration2D *)v8->_mlConfig biasB];
    v8->_parameters.input.preprocessor.bias_b = v15;
    [(ABPKMLModelConfiguration2D *)v8->_mlConfig scale];
    v8->_parameters.input.preprocessor.scale = v16;
    v8->_parameters.input.preprocessor.network_wants_bgr = [(ABPKMLModelConfiguration2D *)v8->_mlConfig networkWantsBGR];
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (CGSize)inputDimensionsForDeviceOrientation:(id)orientation
{
  [orientation inputDimensions];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)createException:(void *)exception forNetwork:(id)network
{
  networkCopy = network;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  espresso_plan_get_error_info();
  v7 = [v5 initWithUTF8String:v6];
  v8 = MEMORY[0x277CBEAD8];
  networkCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ in %@", v7, networkCopy];
  v10 = [v8 exceptionWithName:@"EspressoPlanFailure" reason:networkCopy userInfo:0];

  return v10;
}

- (BOOL)initMLNetwork
{
  v67 = *MEMORY[0x277D85DE8];
  [(ABPK2DDetection *)self _startLoadingMLModelSignpost];
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPK2DDetection: Initializing ML Network ", &buf, 2u);
  }

  inputTensorNames = [(ABPKMLModelConfiguration *)self->_mlConfig inputTensorNames];
  inputTensorNames = self->_inputTensorNames;
  self->_inputTensorNames = inputTensorNames;

  outputTensorNames = [(ABPKMLModelConfiguration *)self->_mlConfig outputTensorNames];
  outputTensorNames = self->_outputTensorNames;
  self->_outputTensorNames = outputTensorNames;

  self->_useEspressoV2 = 0;
  compiledMLModelPath = [(ABPKMLModelConfiguration *)self->_mlConfig compiledMLModelPath];
  if (!compiledMLModelPath)
  {
    v9 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = 0;
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Network path is nil: %@ ", &buf, 0xCu);
    }

    goto LABEL_35;
  }

  v9 = [(ABPKMLModelConfiguration2D *)self->_mlConfig configStringForABPKDeviceOrientation:3];
  v10 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " \t Select network config: %@ ", &buf, 0xCu);
  }

  if (![compiledMLModelPath hasSuffix:@".bundle"])
  {
    context = espresso_create_context();
    self->_context = context;
    if (context)
    {
      v18 = "ANE";
    }

    else
    {
      v19 = espresso_create_context();
      self->_context = v19;
      if (!v19)
      {
        v45 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_23EDDC000, v45, OS_LOG_TYPE_ERROR, " ANE not available. GPU not available. Espresso context creation failed for 2d detection model. ", &buf, 2u);
        }

        goto LABEL_35;
      }

      v18 = "GPU";
    }

    v20 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_23EDDC000, v20, OS_LOG_TYPE_DEFAULT, " \t Deploying 2d detection model on %s ", &buf, 0xCu);
    }

    Espresso::get_internal_context(&buf, self->_context, v21);
    *(buf + 68) = 1;
    v22 = [compiledMLModelPath stringByAppendingPathComponent:@"model.espresso.net"];
    v23 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v64 = 138412290;
      v65 = v22;
      _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_DEFAULT, " %@ ", v64, 0xCu);
    }

    v24 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v25 = [v24 fileExistsAtPath:v22 isDirectory:0];
    if (v25)
    {
      v26 = self->_context;
      self->_plan = espresso_create_plan();
      v27 = v22;
      [v22 UTF8String];
      if (!espresso_plan_add_network())
      {
        plan = self->_network.plan;
        v29 = *&self->_network.network_index;
        v30 = v9;
        [v9 UTF8String];
        if (!espresso_network_select_configuration())
        {
          if (![(ABPKMLModelConfiguration2D *)self->_mlConfig applyPreProcessing])
          {
            goto LABEL_23;
          }

          v31 = self->_network.plan;
          v32 = *&self->_network.network_index;
          v33 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
          v34 = v33;
          [v33 UTF8String];
          LOBYTE(v31) = espresso_set_image_preprocessing_params() == 0;

          if (v31)
          {
LABEL_23:
            v35 = self->_inputTensorNames;
            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = __32__ABPK2DDetection_initMLNetwork__block_invoke;
            v62[3] = &unk_278C71960;
            v62[4] = self;
            v36 = compiledMLModelPath;
            v63 = v36;
            [(NSArray *)v35 enumerateObjectsUsingBlock:v62];
            std::vector<espresso_buffer_t>::resize(&self->_espressoOutputTensors.__begin_, [(NSArray *)self->_outputTensorNames count]);
            std::vector<__CVPixelBufferPool *>::resize(&self->_espressoOutputBufferPools.__begin_, [(NSArray *)self->_outputTensorNames count]);
            std::vector<__CVPixelBufferPool *>::resize(&self->_outputBuffers.__begin_, [(NSArray *)self->_outputTensorNames count]);
            v37 = self->_outputTensorNames;
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __32__ABPK2DDetection_initMLNetwork__block_invoke_17;
            v60[3] = &unk_278C71960;
            v60[4] = self;
            v38 = v36;
            v61 = v38;
            [(NSArray *)v37 enumerateObjectsUsingBlock:v60];
            v39 = self->_plan;
            if (espresso_plan_build())
            {
              v48 = __ABPKLogSharedInstance();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *v64 = 0;
                _os_log_impl(&dword_23EDDC000, v48, OS_LOG_TYPE_ERROR, " Could not build plan ", v64, 2u);
              }

              v49 = [(ABPK2DDetection *)self createException:self->_plan forNetwork:v38];
              objc_exception_throw(v49);
            }

            [(ABPK2DDetection *)self _bindOutputTensor];
            v40 = self->_inputTensorNames;
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __32__ABPK2DDetection_initMLNetwork__block_invoke_18;
            v58[3] = &unk_278C71960;
            v58[4] = self;
            v41 = v38;
            v59 = v41;
            [(NSArray *)v40 enumerateObjectsUsingBlock:v58];
            v42 = self->_outputTensorNames;
            v52 = MEMORY[0x277D85DD0];
            v53 = 3221225472;
            v54 = __32__ABPK2DDetection_initMLNetwork__block_invoke_19;
            v55 = &unk_278C71960;
            selfCopy = self;
            v57 = v41;
            [(NSArray *)v42 enumerateObjectsUsingBlock:&v52];

            goto LABEL_28;
          }

          v50 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *v64 = 0;
            _os_log_impl(&dword_23EDDC000, v50, OS_LOG_TYPE_ERROR, " Could not set preprocessing parameters for the input image ", v64, 2u);
          }
        }
      }

      v51 = [(ABPK2DDetection *)self createException:self->_plan forNetwork:compiledMLModelPath];
      objc_exception_throw(v51);
    }

    v43 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v64 = 138412290;
      v65 = v22;
      _os_log_impl(&dword_23EDDC000, v43, OS_LOG_TYPE_ERROR, " Network path is invalid: %@ ", v64, 0xCu);
    }

LABEL_28:
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    if (v25)
    {
      goto LABEL_31;
    }

LABEL_35:
    v44 = 0;
    goto LABEL_36;
  }

  self->_useEspressoV2 = 1;
  v11 = [[ABPKMLNetworkV2 alloc] initWithNetworkPath:compiledMLModelPath networkConfig:v9 inputNames:self->_inputTensorNames outputNames:self->_outputTensorNames useSurface:1];
  networkV2 = self->_networkV2;
  self->_networkV2 = v11;

  inputBuffers = [(ABPKMLNetworkV2 *)self->_networkV2 inputBuffers];
  inputBufferDict = self->_inputBufferDict;
  self->_inputBufferDict = inputBuffers;

  outputBuffers = [(ABPKMLNetworkV2 *)self->_networkV2 outputBuffers];
  outputBufferDict = self->_outputBufferDict;
  self->_outputBufferDict = outputBuffers;

LABEL_31:
  [(ABPK2DDetection *)self _endLoadingMLModelSignpost:v52];
  v44 = 1;
LABEL_36:

  v46 = *MEMORY[0x277D85DE8];
  return v44;
}

void __32__ABPK2DDetection_initMLNetwork__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v10 = v3;
  [v10 UTF8String];
  if (espresso_network_declare_input())
  {
    v8 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v10;
      _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_ERROR, " Could not declare input tensor: %@ ", buf, 0xCu);
    }

    v9 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(a1 + 40)];
    objc_exception_throw(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __32__ABPK2DDetection_initMLNetwork__block_invoke_17(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v10 = v3;
  [v10 UTF8String];
  if (espresso_network_declare_output())
  {
    v8 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v10;
      _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_ERROR, " Could not declare output tensor: %@ ", buf, 0xCu);
    }

    v9 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(a1 + 40)];
    objc_exception_throw(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __32__ABPK2DDetection_initMLNetwork__block_invoke_18(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  [v3 UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v9 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Could not obtain dimension for input tensor: %@ ", &v11, 0xCu);
    }

    v10 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(a1 + 40)];
    objc_exception_throw(v10);
  }

  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138413314;
    v12 = v3;
    v13 = 2048;
    v14 = v21;
    v15 = 2048;
    v16 = *(&v21 + 1);
    v17 = 2048;
    v18 = v22;
    v19 = 2048;
    v20 = *(&v22 + 1);
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " \t Tensor %@ dimensions %zu %zu %zu %zu ", &v11, 0x34u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __32__ABPK2DDetection_initMLNetwork__block_invoke_19(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  [v3 UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v9 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Could not obtain dimension for output tensor: %@ ", &v11, 0xCu);
    }

    v10 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(a1 + 40)];
    objc_exception_throw(v10);
  }

  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138413314;
    v12 = v3;
    v13 = 2048;
    v14 = v21;
    v15 = 2048;
    v16 = *(&v21 + 1);
    v17 = 2048;
    v18 = v22;
    v19 = 2048;
    v20 = *(&v22 + 1);
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " \t Tensor %@ dimensions %zu %zu %zu %zu ", &v11, 0x34u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_bindOutputTensor
{
  outputTensorNames = self->_outputTensorNames;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__ABPK2DDetection__bindOutputTensor__block_invoke;
  v3[3] = &unk_278C718C0;
  v3[4] = self;
  [(NSArray *)outputTensorNames enumerateObjectsUsingBlock:v3];
}

void __36__ABPK2DDetection__bindOutputTensor__block_invoke(uint64_t a1, void *a2)
{
  buf[21] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) useEspressoZeroCopyOutput])
  {
    v4 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v3;
      _os_log_impl(&dword_23EDDC000, v4, OS_LOG_TYPE_DEBUG, " \t Bind Output Tensor %@  ", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    v7 = *(v5 + 56);
    v8 = v3;
    [v3 UTF8String];
    espresso_network_bind_buffer();
    pixelBufferOut = 0;
    v9 = buf[0];
    v39 = *MEMORY[0x277CC4E28];
    v40 = MEMORY[0x277CBEC10];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v11 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v9, v10, &pixelBufferOut);
    if (!CVPixelBufferGetIOSurface(pixelBufferOut))
    {
      v12 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = *(a1 + 32);
        *v33 = 138412546;
        v34 = v15;
        v35 = 2048;
        v36 = v16;
        _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_ERROR, " %@ (%p): Could not get IOSurface ", v33, 0x16u);
      }
    }

    if (v11)
    {
      v26 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 32);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = *(a1 + 32);
        *v33 = 138412802;
        v34 = v29;
        v35 = 2048;
        v36 = v30;
        v37 = 1024;
        v38 = v11;
        _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_ERROR, " %@ (%p): Could not create CVPixelBuffer for neural network: %d ", v33, 0x1Cu);
      }

      exception = __cxa_allocate_exception(8uLL);
      *exception = "Error: Could not create CVPixelBuffer for neural network";
      __cxa_throw(exception, MEMORY[0x277D82740], 0);
    }

    v17 = *(a1 + 32);
    v18 = *(v17 + 48);
    v19 = *(v17 + 56);
    v20 = v3;
    [v3 UTF8String];
    espresso_network_bind_direct_cvpixelbuffer();
    CVPixelBufferRelease(pixelBufferOut);
  }

  else
  {
    v21 = *(a1 + 32);
    v22 = *(v21 + 48);
    v23 = *(v21 + 56);
    [v3 UTF8String];
    v24 = *(*(a1 + 32) + 504);
    espresso_network_bind_buffer();
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)runWithImageDataForNeuralNetwork:(id)network originalImageData:(id)data abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor
{
  tensorCopy = tensor;
  v71 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  dataCopy = data;
  pixelBuffer = [networkCopy pixelBuffer];
  v12 = pixelBuffer;
  if (!pixelBuffer)
  {
    v15 = __ABPKLogSharedInstance();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v30 = " Input image is nil ";
LABEL_23:
    _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_24;
  }

  if (CVPixelBufferGetPixelFormatType(pixelBuffer) != 1111970369)
  {
    v15 = __ABPKLogSharedInstance();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v30 = " Input image format is not valid ";
    goto LABEL_23;
  }

  if (!CVPixelBufferGetIOSurface(v12))
  {
    v15 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = " Input image pixelbuffer not backed by IOSurface ";
      goto LABEL_23;
    }

LABEL_24:
    v31 = 0;
    goto LABEL_25;
  }

  v13 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = convertABPKDeviceOrientationEnumToString(orientation);
    *buf = 138412290;
    *&buf[4] = v14;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " \t Device Orientation: %@ ", buf, 0xCu);
  }

  v15 = [(ABPKMLModelConfiguration2D *)self->_mlConfig configStringForABPKDeviceOrientation:orientation];
  v16 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v15;
    _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " \t Selected network mode: %@ ", buf, 0xCu);
  }

  if (!v15)
  {
    v60 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v60, OS_LOG_TYPE_ERROR, " Invalid network mode specified ", buf, 2u);
    }

    v61 = [(ABPK2DDetection *)self createException:self->_plan forNetwork:self->_netSubPath];
    objc_exception_throw(v61);
  }

  v17 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    Height = CVPixelBufferGetHeight(v12);
    Width = CVPixelBufferGetWidth(v12);
    *buf = 134218240;
    *&buf[4] = Height;
    *&buf[12] = 2048;
    *&buf[14] = Width;
    _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_DEBUG, " \t Binding image with (height,width) = (%zu,%zu) ", buf, 0x16u);
  }

  [(ABPK2DDetection *)self changeEspressoConfig:v15];
  if (self->_useEspressoV2)
  {
    inputBufferDict = self->_inputBufferDict;
    v21 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
    v22 = [(NSMutableDictionary *)inputBufferDict objectForKeyedSubscript:v21];

    CVPixelBufferLockBaseAddress(v12, 0);
    IOSurface = CVPixelBufferGetIOSurface(v12);
    v24 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
    [v22 setInput:v24 FromIOSurface:IOSurface];

    [(ABPKMLNetworkV2 *)self->_networkV2 execute];
    CVPixelBufferUnlockBaseAddress(v12, 0);
    v25 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " \t Creating AR2DSkeletonRawEspressoResult with heatmap only ", buf, 2u);
    }

    v26 = 0;
    memset(buf, 0, 24);
    while (v26 < [(NSArray *)self->_outputTensorNames count])
    {
      outputBufferDict = self->_outputBufferDict;
      v28 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:v26];
      v29 = [(NSMutableDictionary *)outputBufferDict objectForKeyedSubscript:v28];

      __p = CVPixelBufferRetain([v29 pixelBuffer]);
      std::vector<__CVBuffer *>::push_back[abi:ne200100](buf, &__p);

      ++v26;
    }

    v31 = [ABPK2DDetection _createResultDataFromImageDataForNeuralNetwork:"_createResultDataFromImageDataForNeuralNetwork:originalImageData:outputPixelBuffer:numberOfOutputTensors:rotationOfResultTensor:" originalImageData:networkCopy outputPixelBuffer:dataCopy numberOfOutputTensors:? rotationOfResultTensor:?];
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    goto LABEL_25;
  }

  CVPixelBufferLockBaseAddress(v12, 0);
  v34 = 0;
  v35 = 0;
  __p = 0;
  v68 = 0;
  v69 = 0;
  while (v35 < [(NSArray *)self->_outputTensorNames count])
  {
    plan = self->_network.plan;
    v36 = *&self->_network.network_index;
    v38 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:v35];
    v39 = v38;
    [v38 UTF8String];
    espresso_network_query_blob_dimensions();

    v40 = *buf;
    v41 = *&buf[8];
    useEspressoZeroCopyOutput = [(ABPK2DDetection *)self useEspressoZeroCopyOutput];
    v43 = (*(&v41 + 1) * v41);
    v44 = v40;
    if (useEspressoZeroCopyOutput)
    {
      v66 = ABPKCreateCVPixelBufferFromPoolWithZeroCopyOption(&self->_espressoOutputBufferPools.__begin_[v34], 1278226536, self, @"Espresso Output", 1, v44, v43);
      std::vector<__CVBuffer *>::push_back[abi:ne200100](&__p, &v66);
      v45 = self->_network.plan;
      v46 = *&self->_network.network_index;
      v47 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:v35];
      v48 = v47;
      [v47 UTF8String];
      espresso_network_bind_direct_cvpixelbuffer();
    }

    else
    {
      v66 = ABPKCreateCVPixelBufferFromPoolWithZeroCopyOption(&self->_espressoOutputBufferPools.__begin_[v34], 1278226536, self, @"Espresso Output", 0, v44, v43);
      std::vector<__CVBuffer *>::push_back[abi:ne200100](&__p, &v66);
      v49 = self->_network.plan;
      v50 = *&self->_network.network_index;
      v47 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:v35];
      v51 = v47;
      [v47 UTF8String];
      espresso_network_bind_cvpixelbuffer();
    }

    ++v35;
    ++v34;
  }

  v52 = self->_network.plan;
  v53 = *&self->_network.network_index;
  v54 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
  v55 = v54;
  [v54 UTF8String];
  v56 = espresso_network_bind_direct_cvpixelbuffer() == 0;

  if (!v56)
  {
    v62 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v62, OS_LOG_TYPE_ERROR, " Could not direct bind input image as CVPixelBuffer ", buf, 2u);
    }

LABEL_56:

    v63 = [(ABPK2DDetection *)self createException:self->_plan forNetwork:self->_netSubPath];
    objc_exception_throw(v63);
  }

  v57 = self->_plan;
  if (espresso_plan_execute_sync())
  {
    v62 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v62, OS_LOG_TYPE_ERROR, " Could not execute plan ", buf, 2u);
    }

    goto LABEL_56;
  }

  CVPixelBufferUnlockBaseAddress(v12, 0);
  for (i = 0; i < [(NSArray *)self->_outputTensorNames count]; ++i)
  {
    self->_outputBuffers.__begin_[i] = CVPixelBufferRetain(*(__p + i));
  }

  v31 = [ABPK2DDetection _createResultDataFromImageDataForNeuralNetwork:"_createResultDataFromImageDataForNeuralNetwork:originalImageData:outputPixelBuffer:numberOfOutputTensors:rotationOfResultTensor:" originalImageData:networkCopy outputPixelBuffer:dataCopy numberOfOutputTensors:? rotationOfResultTensor:?];
  if ([(ABPK2DDetection *)self useEspressoZeroCopyOutput])
  {
    for (j = 0; j < [(NSArray *)self->_outputTensorNames count]; ++j)
    {
      CVPixelBufferRelease(*(__p + j));
    }
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

LABEL_25:

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)runWithMLImage:(id)image originalImage:(id)originalImage abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor
{
  v20 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  originalImageCopy = originalImage;
  [(ABPK2DDetection *)self _startEvaluateBodyPoseForImageSignpostWithTimestamp:timestamp];
  CVPixelBufferRetain([imageCopy pixelBuffer]);
  v14 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    timestampCopy = timestamp;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " %f ABPK2DDetection: runWithImage ", &v18, 0xCu);
  }

  v15 = [(ABPK2DDetection *)self runWithImageDataForNeuralNetwork:imageCopy originalImageData:originalImageCopy abpkOrientation:orientation atTimestamp:tensor rotationOfResultTensor:timestamp];
  [(ABPK2DDetection *)self _endEvaluateBodyPoseForImageSignpostWithTimestamp:timestamp];
  CVPixelBufferRelease([imageCopy pixelBuffer]);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)runWithImage:(__CVBuffer *)image abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor
{
  [(ABPK2DDetection *)self _startEvaluateBodyPoseForImageSignpostWithTimestamp:?];
  v11 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " ABPK2DDetection: runWithImage ", v15, 2u);
  }

  v12 = [[ABPKMLImageData alloc] initWithPixelBuffer:image timestamp:orientation abpkDeviceOrientation:0 preprocessingParameters:timestamp];
  v13 = [(ABPK2DDetection *)self runWithImageDataForNeuralNetwork:v12 originalImageData:0 abpkOrientation:orientation atTimestamp:tensor rotationOfResultTensor:timestamp];
  [(ABPK2DDetection *)self _endEvaluateBodyPoseForImageSignpostWithTimestamp:timestamp];

  return v13;
}

- (void)changeEspressoConfig:(id)config
{
  v25 = *MEMORY[0x277D85DE8];
  configCopy = config;
  previous_network_configuration = self->_previous_network_configuration;
  if (previous_network_configuration != configCopy && ![(NSString *)previous_network_configuration isEqualToString:configCopy])
  {
    if (self->_useEspressoV2)
    {
      [(ABPKMLNetworkV2 *)self->_networkV2 changeNetWorkConfig:configCopy];
      goto LABEL_10;
    }

    [(ABPK2DDetection *)self _startLoadingMLModelSignpost];
    v6 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = configCopy;
      _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " \t Changing network config to: %@ ", buf, 0xCu);
    }

    plan = self->_plan;
    espresso_plan_build_clean();
    v8 = self->_network.plan;
    v9 = *&self->_network.network_index;
    v10 = configCopy;
    [(NSString *)configCopy UTF8String];
    if (espresso_network_select_configuration())
    {
      v16 = __ABPKLogSharedInstance();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v24 = configCopy;
      v17 = " Could not select network configuration: %@ ";
      v18 = v16;
      v19 = 12;
    }

    else
    {
      v11 = self->_plan;
      if (!espresso_plan_build())
      {
        [(ABPK2DDetection *)self _bindOutputTensor];
        inputTensorNames = self->_inputTensorNames;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __40__ABPK2DDetection_changeEspressoConfig___block_invoke;
        v22[3] = &unk_278C718C0;
        v22[4] = self;
        [(NSArray *)inputTensorNames enumerateObjectsUsingBlock:v22];
        outputTensorNames = self->_outputTensorNames;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __40__ABPK2DDetection_changeEspressoConfig___block_invoke_26;
        v21[3] = &unk_278C718C0;
        v21[4] = self;
        [(NSArray *)outputTensorNames enumerateObjectsUsingBlock:v21];
        [(ABPK2DDetection *)self _endLoadingMLModelSignpost];
        goto LABEL_10;
      }

      v16 = __ABPKLogSharedInstance();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        v20 = [(ABPK2DDetection *)self createException:self->_plan forNetwork:self->_netSubPath];
        objc_exception_throw(v20);
      }

      *buf = 0;
      v17 = " Could not build plan ";
      v18 = v16;
      v19 = 2;
    }

    _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    goto LABEL_16;
  }

LABEL_10:
  v14 = self->_previous_network_configuration;
  self->_previous_network_configuration = configCopy;

  v15 = *MEMORY[0x277D85DE8];
}

void __40__ABPK2DDetection_changeEspressoConfig___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  [v3 UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v9 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Could not obtain dimension for input tensor: %@ ", &v11, 0xCu);
    }

    v10 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(*(a1 + 32) + 464)];
    objc_exception_throw(v10);
  }

  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138413314;
    v12 = v3;
    v13 = 2048;
    v14 = v21;
    v15 = 2048;
    v16 = *(&v21 + 1);
    v17 = 2048;
    v18 = v22;
    v19 = 2048;
    v20 = *(&v22 + 1);
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " \t Tensor %@ dimensions %zu %zu %zu %zu ", &v11, 0x34u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __40__ABPK2DDetection_changeEspressoConfig___block_invoke_26(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  [v3 UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v9 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Could not obtain dimension for output tensor: %@ ", &v11, 0xCu);
    }

    v10 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(*(a1 + 32) + 464)];
    objc_exception_throw(v10);
  }

  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138413314;
    v12 = v3;
    v13 = 2048;
    v14 = v21;
    v15 = 2048;
    v16 = *(&v21 + 1);
    v17 = 2048;
    v18 = v22;
    v19 = 2048;
    v20 = *(&v22 + 1);
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " \t Tensor %@ dimensions %zu %zu %zu %zu ", &v11, 0x34u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_createResultDataFromImageDataForNeuralNetwork:(id)network originalImageData:(id)data outputPixelBuffer:(__CVBuffer *)buffer numberOfOutputTensors:(unint64_t)tensors rotationOfResultTensor:(int64_t)tensor
{
  networkCopy = network;
  dataCopy = data;
  v13 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " ABPK2DDetection: Create result data ", buf, 2u);
  }

  networkEstimatesAffinityMaps = [(ABPKMLModelConfiguration2D *)self->_mlConfig networkEstimatesAffinityMaps];
  mlConfig = self->_mlConfig;
  if (networkEstimatesAffinityMaps)
  {
    v38 = networkCopy;
    heatMapChannels = [(ABPKMLModelConfiguration2D *)mlConfig heatMapChannels];
    affinityMapChannels = [(ABPKMLModelConfiguration2D *)self->_mlConfig affinityMapChannels];
    Width = CVPixelBufferGetWidth(*buffer);
    Height = CVPixelBufferGetHeight(*buffer);
    tensorCopy = tensor;
    v21 = CVPixelBufferGetWidth(buffer[1]);
    v22 = CVPixelBufferGetHeight(buffer[1]);
    v23 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *v40 = 0;
      _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_DEBUG, " \t Creating AR2DSkeletonRawEspressoResult with heatmap and affinitymap ", v40, 2u);
    }

    v24 = [ABPK2DSkeletonRawEspressoResult alloc];
    LODWORD(v25) = Width;
    LODWORD(v26) = 1;
    LODWORD(v27) = v21;
    HIDWORD(v25) = Height / heatMapChannels;
    LODWORD(v28) = 1;
    HIDWORD(v28) = Width;
    HIDWORD(v27) = v22 / affinityMapChannels;
    HIDWORD(v26) = v21;
    v29 = [(ABPK2DSkeletonRawEspressoResult *)v24 initWithMLImage:v38 originalImageData:dataCopy heatMapBuffer:*buffer heatMapShape:buffer[1] heatMapStrides:tensorCopy affinityMapBuffer:v25 affinityMapShape:v28 affinityMapStrides:v27 rotationNeeded:v26];
    networkCopy = v38;
  }

  else
  {
    heatMapChannels2 = [(ABPKMLModelConfiguration2D *)mlConfig heatMapChannels];
    v31 = CVPixelBufferGetWidth(*buffer);
    v32 = CVPixelBufferGetHeight(*buffer);
    v33 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *v39 = 0;
      _os_log_impl(&dword_23EDDC000, v33, OS_LOG_TYPE_DEBUG, " \t Creating AR2DSkeletonRawEspressoResult with heatmap only ", v39, 2u);
    }

    v34 = [ABPK2DSkeletonRawEspressoResult alloc];
    LODWORD(v35) = v31;
    LODWORD(v36) = 1;
    HIDWORD(v35) = v32 / heatMapChannels2;
    HIDWORD(v36) = v31;
    v29 = [(ABPK2DSkeletonRawEspressoResult *)v34 initWithMLImage:networkCopy originalImageData:dataCopy heatMapBuffer:*buffer heatMapShape:tensor heatMapStrides:v35 rotationNeeded:v36];
  }

  return v29;
}

- (void)dealloc
{
  plan = self->_plan;
  espresso_plan_destroy();
  context = self->_context;
  espresso_context_destroy();
  begin = self->_espressoOutputBufferPools.__begin_;
  end = self->_espressoOutputBufferPools.__end_;
  while (begin != end)
  {
    if (*begin)
    {
      CVPixelBufferPoolRelease(*begin);
    }

    ++begin;
  }

  v7.receiver = self;
  v7.super_class = ABPK2DDetection;
  [(ABPK2DDetection *)&v7 dealloc];
}

- (id).cxx_construct
{
  *(self + 68) = 0;
  *(self + 32) = 0u;
  *(self + 33) = 0u;
  *(self + 30) = 0u;
  *(self + 31) = 0u;
  return self;
}

@end