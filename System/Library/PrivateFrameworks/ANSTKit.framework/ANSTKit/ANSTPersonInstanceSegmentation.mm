@interface ANSTPersonInstanceSegmentation
+ (id)new;
- (ANSTPersonInstanceSegmentation)init;
- (ANSTPersonInstanceSegmentation)initWithConfiguration:(id)configuration;
- (ANSTPersonInstanceSegmentation)initWithConfiguration:(id)configuration error:(id *)error;
- (BOOL)bindInputPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (BOOL)bindOutputTensor:(__IOSurface *)tensor error:(id *)error;
- (BOOL)commitIOBindingWithError:(id *)error;
- (BOOL)executeInferenceWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (__CVBuffer)outputMaskAtIndex:(unint64_t)index error:(id *)error;
- (float)outputMaskConfidenceScoreAtIndex:(unint64_t)index error:(id *)error;
- (void)dealloc;
@end

@implementation ANSTPersonInstanceSegmentation

- (ANSTPersonInstanceSegmentation)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTPersonInstanceSegmentation)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v6, a2);
  __break(1u);
  return result;
}

- (ANSTPersonInstanceSegmentation)initWithConfiguration:(id)configuration error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = ANSTPersonInstanceSegmentation;
  v8 = [(ANSTAlgorithm *)&v21 initWithConfiguration:configurationCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, configuration);
    v9->_prepared = 0;
    v9->_inputImageBound = 0;
    v9->_outputMasksBound = 0;
    v9->_ioCommitted = 0;
    v10 = [ANSTPixelBufferDescriptor alloc];
    v12 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v10, v11, @"input_image", 448, 576, 1111970369, 0, error);
    inputPixelBufferDescriptor = v9->_inputPixelBufferDescriptor;
    v9->_inputPixelBufferDescriptor = v12;

    if (!v9->_inputPixelBufferDescriptor || (v22[0] = xmmword_22E661AB8, v22[1] = unk_22E661AC8, v14 = [ANSTTensorDescriptor alloc], v16 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v14, v15, @"masks", 104, 4, v22, 1, error), outputTensorDescriptor = v9->_outputTensorDescriptor, v9->_outputTensorDescriptor = v16, outputTensorDescriptor, !v9->_outputTensorDescriptor))
    {
      v18 = 0;
      goto LABEL_7;
    }

    *v9->_outputScores = malloc_type_malloc(0x14uLL, 0x1000040BDFB0063uLL);
  }

  v18 = v9;
LABEL_7:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)dealloc
{
  v3 = *self->_outputScores;
  if (v3)
  {
    free(v3);
  }

  *self->_outputScores = 0;
  v4.receiver = self;
  v4.super_class = ANSTPersonInstanceSegmentation;
  [(ANSTPersonInstanceSegmentation *)&v4 dealloc];
}

- (BOOL)prepareWithError:(id *)error
{
  if (self->_prepared)
  {
    return 1;
  }

  v6 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], a2, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vis.mlmodelc");
  v8 = objc_msgSend_URLByAppendingPathComponent_(v6, v7, @"model.mil");

  v9 = [ANSTE5MLNetwork alloc];
  v11 = objc_msgSend_initWithMILPath_e5FunctionName_(v9, v10, v8, @"main");
  network = self->_network;
  self->_network = v11;

  if (objc_msgSend_loadNetworkWithError_(self->_network, v13, error) && objc_msgSend_allocateAndBindNetworkIOExceptInputsNamed_outputsNamed_error_(self->_network, v14, &unk_28432B8F8, &unk_28432B910, error) && (objc_msgSend_tensorSurfaceForNetworkOutputNamed_error_(self->_network, v15, @"scores", error), v16 = objc_claimAutoreleasedReturnValue(), outputScoresSurface = self->_outputScoresSurface, self->_outputScoresSurface = v16, outputScoresSurface, self->_outputScoresSurface))
  {
    v3 = 1;
    self->_prepared = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)bindInputPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v7 = [ANSTPixelBuffer alloc];
  v10 = objc_msgSend_initWithDescriptor_pixelBuffer_orientation_error_(v7, v8, self->_inputPixelBufferDescriptor, buffer, 1, error);
  if (v10 && objc_msgSend_bindNetworkInputNamed_toPixelBuffer_error_(self->_network, v9, @"input_image", v10, error))
  {
    v11 = 1;
    self->_inputImageBound = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)bindOutputTensor:(__IOSurface *)tensor error:(id *)error
{
  v66[4] = *MEMORY[0x277D85DE8];
  v7 = [ANSTTensorSurface alloc];
  v10 = objc_msgSend_initWithDescriptor_ioSurface_error_(v7, v8, self->_outputTensorDescriptor, tensor, error);
  if (v10 && objc_msgSend_bindNetworkOutputNamed_toTensor_error_(self->_network, v9, @"masks", v10, error))
  {
    v13 = MEMORY[0x277CBEB18];
    v14 = objc_msgSend_outputMaskCount(self, v11, v12);
    v63 = objc_msgSend_arrayWithCapacity_(v13, v15, v14);
    v16 = *MEMORY[0x277CC4DD8];
    v65[0] = *MEMORY[0x277CC4EC8];
    v65[1] = v16;
    v66[0] = &unk_28432B9E8;
    v66[1] = &unk_28432BA00;
    v17 = *MEMORY[0x277CC4DE8];
    v65[2] = *MEMORY[0x277CC4E30];
    v65[3] = v17;
    v66[2] = &unk_28432BA18;
    v66[3] = MEMORY[0x277CBEC10];
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v66, v65, 4);
    v20 = [ANSTPixelBufferDescriptor alloc];
    pixelBufferAttributes = v19;
    v22 = objc_msgSend_initWithName_pixelBufferAttributes_error_(v20, v21, @"output_mask", v19, 0);
    IOSurfaceLock(tensor, 1u, 0);
    buffer = tensor;
    BaseAddress = IOSurfaceGetBaseAddress(tensor);
    v26 = objc_msgSend_tensorDescriptor(v10, v24, v25);
    v29 = objc_msgSend_strides(v26, v27, v28);
    v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 1);
    v34 = objc_msgSend_unsignedIntValue(v31, v32, v33);

    v37 = objc_msgSend_tensorDescriptor(v10, v35, v36);
    v40 = objc_msgSend_strides(v37, v38, v39);
    v42 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, 2);
    v45 = objc_msgSend_unsignedIntValue(v42, v43, v44);

    if (objc_msgSend_outputMaskCount(self, v46, v47))
    {
      v48 = 0;
      v49 = v45;
      v50 = *MEMORY[0x277CBECE8];
      do
      {
        texture = 0;
        CVPixelBufferCreateWithBytes(v50, 0x1C0uLL, 0x240uLL, 0x4C303068u, BaseAddress, v49, 0, 0, pixelBufferAttributes, &texture);
        v51 = [ANSTPixelBuffer alloc];
        v53 = objc_msgSend_initWithDescriptor_pixelBuffer_orientation_error_(v51, v52, v22, texture, 1, 0);
        objc_msgSend_addObject_(v63, v54, v53);
        CVPixelBufferRelease(texture);

        ++v48;
        BaseAddress += v34;
      }

      while (objc_msgSend_outputMaskCount(self, v55, v56) > v48);
    }

    IOSurfaceUnlock(buffer, 1u, 0);
    outputMasks = self->_outputMasks;
    self->_outputMasks = v63;

    self->_outputMasksBound = 1;
    v58 = 1;
  }

  else
  {
    v58 = 0;
  }

  v59 = *MEMORY[0x277D85DE8];
  return v58;
}

- (BOOL)commitIOBindingWithError:(id *)error
{
  if (self->_prepared)
  {
    if (self->_inputImageBound && self->_outputMasksBound)
    {
      v4 = objc_msgSend_commitNetworkIOBindingsWithError_(self->_network, a2, error);
      if (v4)
      {
        LOBYTE(v4) = 1;
        self->_ioCommitted = 1;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)executeInferenceWithError:(id *)error
{
  if (self->_ioCommitted)
  {
    v11[7] = v3;
    v11[8] = v4;
    v7 = objc_msgSend_executeInferenceWithError_(self->_network, a2, error);
    if (v7)
    {
      outputScoresSurface = self->_outputScoresSurface;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_22E5FA248;
      v11[3] = &unk_27884FC20;
      v11[4] = self;
      LOBYTE(v7) = objc_msgSend_performDataAccessWithOptions_usingBlock_error_(outputScoresSurface, v8, 0, v11, error);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (__CVBuffer)outputMaskAtIndex:(unint64_t)index error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_outputMaskCount(self, a2, index) <= index)
  {
    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA068];
      v19[0] = @"Index out of bound";
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v19, &v18, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 2, v15);
    }

    v17 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->_outputMasks, v7, index);
    v11 = objc_msgSend_pixelBuffer(v8, v9, v10);

    v12 = *MEMORY[0x277D85DE8];
    return v11;
  }
}

- (float)outputMaskConfidenceScoreAtIndex:(unint64_t)index error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_outputMaskCount(self, a2, index) <= index)
  {
    _S8 = 0.0;
    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA068];
      v20[0] = @"Index out of bound";
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v20, &v19, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 2, v15);
    }
  }

  else
  {
    _H0 = *(*self->_outputScores + 2 * index);
    __asm { FCVT            S8, H0 }
  }

  v17 = *MEMORY[0x277D85DE8];
  return _S8;
}

@end