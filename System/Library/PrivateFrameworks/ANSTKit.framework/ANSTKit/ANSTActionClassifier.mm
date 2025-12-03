@interface ANSTActionClassifier
- (ANSTActionClassifier)initWithConfig:(id)config error:(id *)error;
- (ANSTActionClassifier)initWithConfiguration:(id)configuration;
- (ANSTActionClassifierDelegate)delegate;
- (NSArray)listOfSupportedActions;
- (id)_initWithConfig:(id)config error:(id *)error;
- (void)dealloc;
- (void)resetInferenceState;
- (void)videoFeatureExtractor:(id)extractor didUpdateVideoFeature:(id)feature;
@end

@implementation ANSTActionClassifier

- (ANSTActionClassifier)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22E65BFC0(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v14 = objc_msgSend__initWithConfig_error_(self, v13, configurationCopy, 0);
  return v14;
}

- (ANSTActionClassifier)initWithConfig:(id)config error:(id *)error
{
  v11 = 0;
  v5 = objc_msgSend__initWithConfig_error_(self, a2, config, &v11);
  v6 = v11;
  if (v6)
  {
    v7 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C038(v6, v7);
    }

    if (error)
    {
      v8 = v6;
      v9 = 0;
      *error = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (id)_initWithConfig:(id)config error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v52.receiver = self;
  v52.super_class = ANSTActionClassifier;
  v8 = [(ANSTActionClassifier *)&v52 init];
  v9 = v8;
  if (!v8)
  {
LABEL_11:
    v49 = v9;
    goto LABEL_12;
  }

  objc_storeStrong(&v8->_configuration, config);
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_initWithCapacity_(v10, v11, 53);
  for (i = 0; i != 53; ++i)
  {
    v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, i);
    objc_msgSend_addObject_(v13, v16, v15);
  }

  objc_storeStrong((v9 + 16), v13);
  v17 = *(v9 + 24);
  *(v9 + 24) = 0;

  v18 = [ANSTVideoFeatureExtractorConfiguration alloc];
  v20 = objc_msgSend_initWithVersion_(v18, v19, 0x10000);
  v21 = [ANSTVideoFeatureExtractor alloc];
  v23 = objc_msgSend_initWithConfig_error_(v21, v22, v20, error);
  v24 = *(v9 + 32);
  *(v9 + 32) = v23;

  v26 = *(v9 + 32);
  if (v26 && (objc_msgSend_setDelegate_(v26, v25, v9), *(v9 + 56) = malloc_type_malloc(0xD4uLL, 0x100004052888210uLL), *(v9 + 64) = malloc_type_malloc(0xD4uLL, 0x100004052888210uLL), v53 = xmmword_22E6622B0, v27 = [ANSTTensorDescriptor alloc], (v29 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v27, v28, @"decodingMatrix", 102, 2, &v53, 1, error)) != 0))
  {
    v31 = v29;
    v32 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v30, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vfm.mlmodelc/action_decoding_matrix.bin");
    v34 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x277CBEA90], v33, v32, 1, error);
    v35 = *(v9 + 40);
    *(v9 + 40) = v34;

    v36 = *(v9 + 40);
    if (v36)
    {
      v37 = [ANSTTensorData alloc];
      v40 = objc_msgSend_bytes(*(v9 + 40), v38, v39);
      v43 = objc_msgSend_sizeInBytes(v31, v41, v42);
      v45 = objc_msgSend_initWithDescriptor_dataPointer_length_deallocator_error_(v37, v44, v31, v40, v43, 0, error);
      v46 = *(v9 + 48);
      *(v9 + 48) = v45;
    }

    else
    {
      v48 = v9;
    }

    if (v36)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v47 = v9;
  }

LABEL_12:

  v50 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  rawScores = self->_rawScores;
  if (rawScores)
  {
    free(rawScores);
  }

  probabilities = self->_probabilities;
  if (probabilities)
  {
    free(probabilities);
  }

  v5.receiver = self;
  v5.super_class = ANSTActionClassifier;
  [(ANSTActionClassifier *)&v5 dealloc];
}

- (NSArray)listOfSupportedActions
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = objc_msgSend_initWithCapacity_(v2, v3, 53);
  for (i = 1; i != 54; ++i)
  {
    v7 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v4, i);
    objc_msgSend_addObject_(v5, v8, v7);
  }

  return v5;
}

- (void)videoFeatureExtractor:(id)extractor didUpdateVideoFeature:(id)feature
{
  featureCopy = feature;
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_initWithCapacity_(v6, v7, 53);
  decodingMatrix = self->_decodingMatrix;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E625F28;
  v19[3] = &unk_27884FDD0;
  v20 = featureCopy;
  selfCopy = self;
  v10 = v8;
  v22 = v10;
  v11 = featureCopy;
  objc_msgSend_performDataAccessWithOptions_usingBlock_error_(decodingMatrix, v12, 0, v19, 0);
  currentPredictions = self->_currentPredictions;
  self->_currentPredictions = v10;
  v14 = v10;

  v17 = objc_msgSend_delegate(self, v15, v16);
  objc_msgSend_actionClassifier_didUpdateActionPredictions_(v17, v18, self, v14);
}

- (void)resetInferenceState
{
  currentPredictions = self->_currentPredictions;
  self->_currentPredictions = 0;

  featureExtractor = self->_featureExtractor;

  objc_msgSend_resetInferenceState(featureExtractor, v4, v5);
}

- (ANSTActionClassifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end