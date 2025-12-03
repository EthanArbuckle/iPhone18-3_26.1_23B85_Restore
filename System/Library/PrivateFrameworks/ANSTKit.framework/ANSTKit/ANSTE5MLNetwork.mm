@interface ANSTE5MLNetwork
- (ANSTE5MLNetwork)initWithE5BundlePath:(id)path e5FunctionName:(id)name;
- (ANSTE5MLNetwork)initWithInferenceDescriptor:(id)descriptor error:(id *)p_isa;
- (ANSTE5MLNetwork)initWithMILPath:(id)path e5FunctionName:(id)name;
- (BOOL)_allocateAndBindBufferPort:(e5rt_io_port *)port error:(id *)error;
- (BOOL)_allocateAndBindNetworkInputsExcept:(id)except error:(id *)error;
- (BOOL)_allocateAndBindNetworkOutputsExcept:(id)except error:(id *)error;
- (BOOL)_allocateAndBindPort:(e5rt_io_port *)port portName:(const char *)name error:(id *)error;
- (BOOL)_allocateAndBindSurfacePort:(e5rt_io_port *)port error:(id *)error;
- (BOOL)_bindBufferPort:(e5rt_io_port *)port toTensor:(id)tensor error:(id *)error;
- (BOOL)_bindNetworkInputsToExistingNetwork:(id)network error:(id *)error;
- (BOOL)_bindNetworkOutputsToExistingNetwork:(id)network error:(id *)error;
- (BOOL)_bindSurfacePort:(e5rt_io_port *)port toPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (BOOL)_loadExecutionStreamOperationWithError:(id *)error;
- (BOOL)allocateAndBindNetworkIOExceptInputsNamed:(id)named outputsNamed:(id)outputsNamed error:(id *)error;
- (BOOL)bindNetworkIOToExistingNetwork:(id)network error:(id *)error;
- (BOOL)bindNetworkInputNamed:(id)named toPixelBuffer:(id)buffer error:(id *)error;
- (BOOL)bindNetworkInputNamed:(id)named toTensor:(id)tensor error:(id *)error;
- (BOOL)bindNetworkOutputNamed:(id)named toPixelBuffer:(id)buffer error:(id *)error;
- (BOOL)bindNetworkOutputNamed:(id)named toTensor:(id)tensor error:(id *)error;
- (BOOL)commitNetworkIOBindingsWithError:(id *)error;
- (BOOL)executeInferenceWithError:(id *)error;
- (BOOL)loadNetworkWithError:(id *)error;
- (BOOL)registerNetworkOutputNamed:(id)named asDataSourceForNetworkInputNamed:(id)inputNamed error:(id *)error;
- (id)_pixelBufferForPort:(e5rt_io_port *)port name:(id)name error:(id *)error;
- (id)_tensorSurfaceForPort:(e5rt_io_port *)port name:(id)name error:(id *)error;
- (id)pixelBufferForNetworkInputNamed:(id)named error:(id *)error;
- (id)pixelBufferForNetworkOutputNamed:(id)named error:(id *)error;
- (id)tensorSurfaceForNetworkInputNamed:(id)named error:(id *)error;
- (id)tensorSurfaceForNetworkOutputNamed:(id)named error:(id *)error;
- (void)dealloc;
@end

@implementation ANSTE5MLNetwork

- (ANSTE5MLNetwork)initWithMILPath:(id)path e5FunctionName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ANSTE5MLNetwork;
  v9 = [(ANSTE5MLNetwork *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_assetType = 1;
    objc_storeStrong(&v9->_assetURL, path);
    objc_storeStrong(&v10->_e5FunctionName, name);
    stateTensorTuples = v10->_stateTensorTuples;
    v10->_stateTensorTuples = 0;
  }

  return v10;
}

- (ANSTE5MLNetwork)initWithE5BundlePath:(id)path e5FunctionName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ANSTE5MLNetwork;
  v9 = [(ANSTE5MLNetwork *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_assetType = 0;
    objc_storeStrong(&v9->_assetURL, path);
    objc_storeStrong(&v10->_e5FunctionName, name);
    stateTensorTuples = v10->_stateTensorTuples;
    v10->_stateTensorTuples = 0;
  }

  return v10;
}

- (ANSTE5MLNetwork)initWithInferenceDescriptor:(id)descriptor error:(id *)p_isa
{
  v51[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v9 = objc_msgSend_e5FunctionName(descriptorCopy, v7, v8);

  if (v9)
  {
    if (objc_msgSend_assetType(descriptorCopy, v10, v11) == 1)
    {
      v14 = objc_msgSend_assetURL(descriptorCopy, v12, v13);
      v17 = objc_msgSend_e5FunctionName(descriptorCopy, v15, v16);
      v19 = objc_msgSend_initWithMILPath_e5FunctionName_(self, v18, v14, v17);
LABEL_15:
      self = v19;

      p_isa = &self->super.isa;
      goto LABEL_16;
    }

    if (!objc_msgSend_assetType(descriptorCopy, v12, v13))
    {
      v14 = objc_msgSend_assetURL(descriptorCopy, v30, v31);
      v17 = objc_msgSend_e5FunctionName(descriptorCopy, v43, v44);
      v19 = objc_msgSend_initWithE5BundlePath_e5FunctionName_(self, v45, v14, v17);
      goto LABEL_15;
    }

    v32 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_22E65867C(v32, v33, v34, v35, v36, v37, v38, v39);
    }

    if (p_isa)
    {
      v29 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA068];
      v49 = @"The provided descriptor's asset type is neither MIL nor E5 Bundle.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, &v49, &v48, 1);
      goto LABEL_13;
    }
  }

  else
  {
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E658708(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    if (p_isa)
    {
      v29 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA068];
      v51[0] = @"The provided inference descriptor is missing a valid E5 function name.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v51, &v50, 1);
      v41 = LABEL_13:;
      *p_isa = objc_msgSend_errorWithDomain_code_userInfo_(v29, v42, @"ANSTErrorDomain", 10, v41);

      p_isa = 0;
    }
  }

LABEL_16:

  v46 = *MEMORY[0x277D85DE8];
  return p_isa;
}

- (void)dealloc
{
  p_stream = &self->_stream;
  if (self->_stream)
  {
    v4 = e5rt_execution_stream_reset();
    if (v4)
    {
      v5 = v4;
      last_error_message = e5rt_get_last_error_message();
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_execution_stream_reset(_stream)", v5, last_error_message);
      v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22E658794();
      }
    }

    v10 = e5rt_execution_stream_release();
    if (v10)
    {
      v11 = v10;
      v12 = e5rt_get_last_error_message();
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&_stream)", v11, v12);
      v15 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22E658794();
      }
    }

    *p_stream = 0;
  }

  if (self->_operation)
  {
    v16 = e5rt_execution_stream_operation_release();
    if (v16)
    {
      v17 = v16;
      v18 = e5rt_get_last_error_message();
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&_operation)", v17, v18);
      v21 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_22E658794();
      }
    }

    self->_operation = 0;
  }

  v22.receiver = self;
  v22.super_class = ANSTE5MLNetwork;
  [(ANSTE5MLNetwork *)&v22 dealloc];
}

- (BOOL)loadNetworkWithError:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  ExecutionStreamOperationWithError = objc_msgSend__loadExecutionStreamOperationWithError_(self, a2, error);
  if (ExecutionStreamOperationWithError)
  {
    if (self->_stream || (v6 = e5rt_execution_stream_create(), !v6))
    {
      LOBYTE(ExecutionStreamOperationWithError) = 1;
    }

    else
    {
      v7 = v6;
      last_error_message = e5rt_get_last_error_message();
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&_stream)", v7, last_error_message);
      v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22E658808();
      }

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v18 = *MEMORY[0x277CCA068];
        v19[0] = v10;
        v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v19, &v18, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
      }

      LOBYTE(ExecutionStreamOperationWithError) = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return ExecutionStreamOperationWithError;
}

- (BOOL)allocateAndBindNetworkIOExceptInputsNamed:(id)named outputsNamed:(id)outputsNamed error:(id *)error
{
  outputsNamedCopy = outputsNamed;
  if (objc_msgSend__allocateAndBindNetworkInputsExcept_error_(self, v9, named, error))
  {
    v11 = objc_msgSend__allocateAndBindNetworkOutputsExcept_error_(self, v10, outputsNamedCopy, error);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)bindNetworkIOToExistingNetwork:(id)network error:(id *)error
{
  networkCopy = network;
  if (objc_msgSend__bindNetworkInputsToExistingNetwork_error_(self, v7, networkCopy, error))
  {
    v9 = objc_msgSend__bindNetworkOutputsToExistingNetwork_error_(self, v8, networkCopy, error);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)registerNetworkOutputNamed:(id)named asDataSourceForNetworkInputNamed:(id)inputNamed error:(id *)error
{
  v63[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  inputNamedCopy = inputNamed;
  v12 = objc_msgSend_tensorSurfaceForNetworkOutputNamed_error_(self, v10, namedCopy, error);
  if (v12)
  {
    v15 = objc_msgSend_tensorSurfaceForNetworkInputNamed_error_(self, v11, inputNamedCopy, error);
    if (v15)
    {
      v16 = objc_msgSend_tensorDescriptor(v12, v13, v14);
      v19 = objc_msgSend_tensorDescriptor(v15, v17, v18);
      hasSameMemoryLayoutAs = objc_msgSend_hasSameMemoryLayoutAs_(v16, v20, v19);

      if (hasSameMemoryLayoutAs)
      {
        v24 = objc_msgSend_surface(v15, v22, v23);
        AllocSize = IOSurfaceGetAllocSize(v24);
        v28 = objc_msgSend_surface(v12, v26, v27);
        v29 = IOSurfaceGetAllocSize(v28);
        if (AllocSize == v29)
        {
          v32 = [_ANSTE5MLNetworkStateTensorTuple alloc];
          error = objc_msgSend_initWithInputTensor_outputTensor_(v32, v33, v15, v12);
          stateTensorTuples = self->_stateTensorTuples;
          if (!stateTensorTuples)
          {
            v36 = objc_opt_new();
            v37 = self->_stateTensorTuples;
            self->_stateTensorTuples = v36;

            stateTensorTuples = self->_stateTensorTuples;
          }

          objc_msgSend_addObject_(stateTensorTuples, v34, error);

          LOBYTE(error) = 1;
          goto LABEL_23;
        }

        v41 = v29;
        v42 = objc_msgSend_tensorDescriptor(v15, v30, v31);
        v45 = objc_msgSend_sizeInBytes(v42, v43, v44);

        if (AllocSize != v45)
        {
          v48 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            sub_22E65887C(v15, AllocSize, v48);
          }
        }

        v49 = objc_msgSend_tensorDescriptor(v12, v46, v47);
        v52 = objc_msgSend_sizeInBytes(v49, v50, v51);

        if (v41 != v52)
        {
          v54 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
          {
            sub_22E65887C(v12, v41, v54);
          }
        }

        if (!error)
        {
          goto LABEL_23;
        }

        v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"Network output %@ can't be data source for network input %@ due to different IOSurface alloc size", namedCopy, inputNamedCopy);
        v39 = MEMORY[0x277CCA9B8];
        v60 = *MEMORY[0x277CCA068];
        v61 = v38;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v55, &v61, &v60, 1);
      }

      else
      {
        if (!error)
        {
LABEL_23:

          goto LABEL_24;
        }

        v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"Network output %@ can't be data source for network input %@ due to different memory layout", namedCopy, inputNamedCopy);
        v39 = MEMORY[0x277CCA9B8];
        v62 = *MEMORY[0x277CCA068];
        v63[0] = v38;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v63, &v62, 1);
      }
      v56 = ;
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v39, v57, @"ANSTErrorDomain", 2, v56);
    }

    LOBYTE(error) = 0;
    goto LABEL_23;
  }

  LOBYTE(error) = 0;
LABEL_24:

  v58 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)commitNetworkIOBindingsWithError:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  stream = self->_stream;
  operation = self->_operation;
  v6 = e5rt_execution_stream_encode_operation();
  if (v6)
  {
    last_error_message = e5rt_get_last_error_message();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(_stream, _operation)", v6, last_error_message);
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E658940();
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA068];
      v18[0] = v9;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v18, &v17, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"ANSTErrorDomain", 5, v13);
    }
  }

  result = v6 == 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)executeInferenceWithError:(id *)error
{
  v44[1] = *MEMORY[0x277D85DE8];
  stream = self->_stream;
  v6 = e5rt_execution_stream_execute_sync();
  if (v6)
  {
    last_error_message = e5rt_get_last_error_message();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(_stream)", v6, last_error_message);
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E6589B4();
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA068];
      v44[0] = v9;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v44, &v43, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"ANSTErrorDomain", 5, v13);
    }
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = self->_stateTensorTuples;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, &v38, v42, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v39;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v9);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          v23 = objc_msgSend_networkOutputTensor(v22, v17, v18);
          v26 = objc_msgSend_surface(v23, v24, v25);

          v29 = objc_msgSend_networkInputTensor(v22, v27, v28);
          v32 = objc_msgSend_surface(v29, v30, v31);

          AllocSize = IOSurfaceGetAllocSize(v32);
          IOSurfaceLock(v26, 1u, 0);
          IOSurfaceLock(v32, 0, 0);
          BaseAddress = IOSurfaceGetBaseAddress(v32);
          v35 = IOSurfaceGetBaseAddress(v26);
          memcpy(BaseAddress, v35, AllocSize);
          IOSurfaceUnlock(v26, 1u, 0);
          IOSurfaceUnlock(v32, 0, 0);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v17, &v38, v42, 16);
      }

      while (v19);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v6 == 0;
}

- (BOOL)_loadExecutionStreamOperationWithError:(id *)error
{
  v141[1] = *MEMORY[0x277D85DE8];
  if (!self->_operation)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"ANSTE5MLNetwork_%@", self->_e5FunctionName);
    assetType = self->_assetType;
    if (assetType == 1)
    {
      v30 = objc_msgSend_relativePath(self->_assetURL, v6, v7);
      v31 = v30;
      objc_msgSend_UTF8String(v31, v32, v33);

      objc_msgSend_UTF8String(self->_e5FunctionName, v34, v35);
      v36 = e5rt_e5_compiler_create();
      if (v36)
      {
        last_error_message = e5rt_get_last_error_message();
        v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"%s returned error code %u (%s)", "e5rt_e5_compiler_create(&compiler)", v36, last_error_message);
        v40 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_22E658A28();
        }

        if (error)
        {
          v42 = MEMORY[0x277CCA9B8];
          v138 = *MEMORY[0x277CCA068];
          v139 = v39;
          v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, &v139, &v138, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v42, v44, @"ANSTErrorDomain", 5, v43);
        }
      }

      else
      {
        v54 = e5rt_e5_compiler_options_create();
        if (v54)
        {
          v55 = e5rt_get_last_error_message();
          v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v56, @"%s returned error code %u (%s)", "e5rt_e5_compiler_options_create(&compilerOptions)", v54, v55);
          v58 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            sub_22E658A28();
          }

          if (error)
          {
            v60 = MEMORY[0x277CCA9B8];
            v136 = *MEMORY[0x277CCA068];
            v137 = v57;
            v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v59, &v137, &v136, 1);
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v60, v62, @"ANSTErrorDomain", 5, v61);
          }
        }

        else
        {
          v63 = e5rt_e5_compiler_options_set_mil_entry_points();
          if (v63)
          {
            v64 = e5rt_get_last_error_message();
            v66 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v65, @"%s returned error code %u (%s)", "e5rt_e5_compiler_options_set_mil_entry_points(compilerOptions, &milFunctionName, 1)", v63, v64);
            v67 = _ANSTLoggingGetOSLogForCategoryANSTKit();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              sub_22E658A28();
            }

            if (error)
            {
              v69 = MEMORY[0x277CCA9B8];
              v134 = *MEMORY[0x277CCA068];
              v135 = v66;
              v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v68, &v135, &v134, 1);
              *error = objc_msgSend_errorWithDomain_code_userInfo_(v69, v71, @"ANSTErrorDomain", 5, v70);
            }
          }

          else
          {
            v72 = e5rt_e5_compiler_compile();
            if (v72)
            {
              v73 = e5rt_get_last_error_message();
              v75 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v74, @"%s returned error code %u (%s)", "e5rt_e5_compiler_compile(compiler, milPath, compilerOptions, &library)", v72, v73);
              v76 = _ANSTLoggingGetOSLogForCategoryANSTKit();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                sub_22E658A28();
              }

              if (error)
              {
                v78 = MEMORY[0x277CCA9B8];
                v132 = *MEMORY[0x277CCA068];
                v133 = v75;
                v79 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v77, &v133, &v132, 1);
                *error = objc_msgSend_errorWithDomain_code_userInfo_(v78, v80, @"ANSTErrorDomain", 5, v79);
              }
            }

            else
            {
              v81 = e5rt_program_library_retain_program_function();
              if (v81)
              {
                v82 = e5rt_get_last_error_message();
                v84 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v83, @"%s returned error code %u (%s)", "e5rt_program_library_retain_program_function(library, milFunctionName, &function)", v81, v82);
                v85 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                {
                  sub_22E658A28();
                }

                if (error)
                {
                  v87 = MEMORY[0x277CCA9B8];
                  v130 = *MEMORY[0x277CCA068];
                  v131 = v84;
                  v88 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v86, &v131, &v130, 1);
                  *error = objc_msgSend_errorWithDomain_code_userInfo_(v87, v89, @"ANSTErrorDomain", 5, v88);
                }
              }

              else
              {
                v90 = e5rt_precompiled_compute_op_create_options_create_with_program_function();
                if (v90)
                {
                  v91 = e5rt_get_last_error_message();
                  v93 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v92, @"%s returned error code %u (%s)", "e5rt_precompiled_compute_op_create_options_create_with_program_function(&createOptions, function)", v90, v91);
                  v94 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                  {
                    sub_22E658A28();
                  }

                  if (error)
                  {
                    v96 = MEMORY[0x277CCA9B8];
                    v128 = *MEMORY[0x277CCA068];
                    v129 = v93;
                    v97 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v95, &v129, &v128, 1);
                    *error = objc_msgSend_errorWithDomain_code_userInfo_(v96, v98, @"ANSTErrorDomain", 5, v97);
                  }
                }

                else
                {
                  v99 = v8;
                  objc_msgSend_UTF8String(v8, v100, v101);
                  options_set_operation_name = e5rt_precompiled_compute_op_create_options_set_operation_name();
                  if (options_set_operation_name)
                  {
                    v103 = e5rt_get_last_error_message();
                    v105 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v104, @"%s returned error code %u (%s)", "e5rt_precompiled_compute_op_create_options_set_operation_name(createOptions, opName.UTF8String)", options_set_operation_name, v103);
                    v106 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E658A28();
                    }

                    if (error)
                    {
                      v108 = MEMORY[0x277CCA9B8];
                      v126 = *MEMORY[0x277CCA068];
                      v127 = v105;
                      v109 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v107, &v127, &v126, 1);
                      *error = objc_msgSend_errorWithDomain_code_userInfo_(v108, v110, @"ANSTErrorDomain", 5, v109);
                    }
                  }

                  else
                  {
                    precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
                    if (!precompiled_compute_operation_with_options)
                    {
                      v3 = 1;
                      goto LABEL_66;
                    }

                    v112 = e5rt_get_last_error_message();
                    v114 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v113, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options(&_operation, createOptions)", precompiled_compute_operation_with_options, v112);
                    v115 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E658A28();
                    }

                    if (error)
                    {
                      v117 = MEMORY[0x277CCA9B8];
                      v124 = *MEMORY[0x277CCA068];
                      v125 = v114;
                      v118 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v116, &v125, &v124, 1);
                      *error = objc_msgSend_errorWithDomain_code_userInfo_(v117, v119, @"ANSTErrorDomain", 5, v118);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v3 = 0;
    }

    else
    {
      if (assetType)
      {
        v45 = MEMORY[0x277CCACA8];
        v46 = ANSTAssetTypeToNSString(assetType, v6);
        v48 = objc_msgSend_stringWithFormat_(v45, v47, @"Unexpected network asset type %@", v46);

        v49 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_22E658A28();
        }

        if (error)
        {
          v51 = MEMORY[0x277CCA9B8];
          v122 = *MEMORY[0x277CCA068];
          v123 = v48;
          v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v50, &v123, &v122, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v51, v53, @"ANSTErrorDomain", 3, v52);
        }

        goto LABEL_22;
      }

      v10 = v8;
      objc_msgSend_UTF8String(v10, v11, v12);
      v15 = objc_msgSend_relativePath(self->_assetURL, v13, v14);
      v16 = v15;
      objc_msgSend_UTF8String(v16, v17, v18);
      objc_msgSend_UTF8String(self->_e5FunctionName, v19, v20);
      v3 = 1;
      precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

      if (precompiled_compute_operation)
      {
        v22 = e5rt_get_last_error_message();
        v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_create_precompiled_compute_operation(&_operation, opName.UTF8String, _assetURL.relativePath.UTF8String, _e5FunctionName.UTF8String, 1, true)", precompiled_compute_operation, v22);
        v25 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_22E658A28();
        }

        if (error)
        {
          v27 = MEMORY[0x277CCA9B8];
          v140 = *MEMORY[0x277CCA068];
          v141[0] = v24;
          v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v141, &v140, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v27, v29, @"ANSTErrorDomain", 5, v28);
        }

LABEL_22:
        v3 = 0;
      }
    }

LABEL_66:

    goto LABEL_67;
  }

  v3 = 1;
LABEL_67:
  v120 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_allocateAndBindNetworkInputsExcept:(id)except error:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  exceptCopy = except;
  if (!self->_operation)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"E5 execution stream operation is NULL");
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658A9C();
    }

    if (error)
    {
      v20 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA068];
      v42[0] = v17;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v42, &v41, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 3, v21);
    }

    goto LABEL_13;
  }

  num_inputs = e5rt_execution_stream_operation_get_num_inputs();
  if (num_inputs)
  {
    last_error_message = e5rt_get_last_error_message();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_num_inputs(_operation, &num_ports)", num_inputs, last_error_message);
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E658A9C();
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA068];
      v40 = v11;
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, &v40, &v39, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 5, v15);
    }

LABEL_13:
    v23 = 0;
    goto LABEL_22;
  }

  v24 = malloc_type_malloc(0, 0x10040436913F5uLL);
  operation = self->_operation;
  input_names = e5rt_execution_stream_operation_get_input_names();
  if (input_names)
  {
    v27 = e5rt_get_last_error_message();
    v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_input_names(_operation, num_ports, names)", input_names, v27);
    v30 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_22E658A9C();
    }

    if (error)
    {
      v32 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA068];
      v38 = v29;
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, &v38, &v37, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v32, v34, @"ANSTErrorDomain", 5, v33);
    }

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  free(v24);
LABEL_22:

  v35 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)_allocateAndBindNetworkOutputsExcept:(id)except error:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  exceptCopy = except;
  if (!self->_operation)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"E5 execution stream operation is NULL");
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658B10();
    }

    if (error)
    {
      v20 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA068];
      v42[0] = v17;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v42, &v41, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 3, v21);
    }

    goto LABEL_13;
  }

  num_outputs = e5rt_execution_stream_operation_get_num_outputs();
  if (num_outputs)
  {
    last_error_message = e5rt_get_last_error_message();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_num_outputs(_operation, &num_ports)", num_outputs, last_error_message);
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E658B10();
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA068];
      v40 = v11;
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, &v40, &v39, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 5, v15);
    }

LABEL_13:
    v23 = 0;
    goto LABEL_22;
  }

  v24 = malloc_type_malloc(0, 0x10040436913F5uLL);
  operation = self->_operation;
  output_names = e5rt_execution_stream_operation_get_output_names();
  if (output_names)
  {
    v27 = e5rt_get_last_error_message();
    v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_output_names(_operation, num_ports, names)", output_names, v27);
    v30 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_22E658B10();
    }

    if (error)
    {
      v32 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA068];
      v38 = v29;
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, &v38, &v37, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v32, v34, @"ANSTErrorDomain", 5, v33);
    }

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  free(v24);
LABEL_22:

  v35 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)_allocateAndBindPort:(e5rt_io_port *)port portName:(const char *)name error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  is_tensor = e5rt_io_port_is_tensor();
  if (is_tensor)
  {
    v8 = is_tensor;
    last_error_message = e5rt_get_last_error_message();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s returned error code %u (%s)", "e5rt_io_port_is_tensor(port, &is_tensor)", v8, last_error_message);
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E658B84();
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA068];
      v35[0] = v11;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v35, &v34, 1);
      v15 = LABEL_6:;
      objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 5, v15);
      *error = LABEL_7:;
    }
  }

  else
  {
    is_surface = e5rt_io_port_is_surface();
    if (is_surface)
    {
      v21 = is_surface;
      v22 = e5rt_get_last_error_message();
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"%s returned error code %u (%s)", "e5rt_io_port_is_surface(port, &is_surface)", v21, v22);
      v24 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_22E658B84();
      }

      if (error)
      {
        v14 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA068];
        v33 = v11;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v33, &v32, 1);
        goto LABEL_6;
      }
    }

    else
    {
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"E5 network port named '%s' is neither a tensor port nor a surface port!", name);
      v26 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_22E658B84();
      }

      if (error)
      {
        v28 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277CCA068];
        v31 = v11;
        v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, &v31, &v30, 1);
        objc_msgSend_errorWithDomain_code_userInfo_(v28, v29, @"ANSTErrorDomain", 3, v15);
        goto LABEL_7;
      }
    }
  }

  result = 0;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_allocateAndBindBufferPort:(e5rt_io_port *)port error:(id *)error
{
  v52[1] = *MEMORY[0x277D85DE8];
  e5rt_io_port_retain_buffer_object();
  v5 = e5rt_io_port_retain_tensor_desc();
  if (v5)
  {
    last_error_message = e5rt_get_last_error_message();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(port, &desc)", v5, last_error_message);
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E658BF8();
    }

    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v51 = *MEMORY[0x277CCA068];
      v52[0] = v8;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v52, &v51, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"ANSTErrorDomain", 5, v12);
    }

    goto LABEL_25;
  }

  v14 = e5rt_tensor_desc_alloc_buffer_object();
  if (v14)
  {
    v15 = e5rt_get_last_error_message();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(desc, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &bufferObject)", v14, v15);
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658BF8();
    }

    if (error)
    {
      v20 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA068];
      v50 = v17;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v50, &v49, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 5, v21);
    }

    goto LABEL_25;
  }

  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    v24 = e5rt_get_last_error_message();
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(bufferObject, &surface)", iosurface, v24);
    v27 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22E658BF8();
    }

    if (!error)
    {
      goto LABEL_24;
    }

    v29 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA068];
    v48 = v26;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v48, &v47, 1);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 5, v30);
  }

  else
  {
    AllocSize = IOSurfaceGetAllocSize(0);
    IOSurfaceLock(0, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(0);
    bzero(BaseAddress, AllocSize);
    IOSurfaceUnlock(0, 0, 0);
    v35 = e5rt_io_port_bind_buffer_object();
    if (!v35)
    {
      v42 = 1;
      goto LABEL_26;
    }

    v36 = e5rt_get_last_error_message();
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(port, bufferObject)", v35, v36);
    v38 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_22E658BF8();
    }

    if (!error)
    {
      goto LABEL_24;
    }

    v40 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA068];
    v46 = v26;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v46, &v45, 1);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_(v40, v41, @"ANSTErrorDomain", 5, v30);
  }

  *error = v32;

LABEL_24:
LABEL_25:
  v42 = 0;
LABEL_26:
  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

- (BOOL)_allocateAndBindSurfacePort:(e5rt_io_port *)port error:(id *)error
{
  v52[1] = *MEMORY[0x277D85DE8];
  e5rt_io_port_retain_surface_object();
  v5 = e5rt_io_port_retain_surface_desc();
  if (v5)
  {
    last_error_message = e5rt_get_last_error_message();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_io_port_retain_surface_desc(port, &desc)", v5, last_error_message);
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E658C6C();
    }

    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v51 = *MEMORY[0x277CCA068];
      v52[0] = v8;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v52, &v51, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"ANSTErrorDomain", 5, v12);
    }

    goto LABEL_25;
  }

  v14 = e5rt_surface_object_alloc();
  if (v14)
  {
    v15 = e5rt_get_last_error_message();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s returned error code %u (%s)", "e5rt_surface_object_alloc(&surfaceObject, desc, E5RT_SURFACE_TYPE_FORMATTED_IOSURFACE)", v14, v15);
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658C6C();
    }

    if (error)
    {
      v20 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA068];
      v50 = v17;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v50, &v49, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 5, v21);
    }

    goto LABEL_25;
  }

  iosurface = e5rt_surface_object_get_iosurface();
  if (iosurface)
  {
    v24 = e5rt_get_last_error_message();
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_surface_object_get_iosurface(surfaceObject, &surface)", iosurface, v24);
    v27 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22E658C6C();
    }

    if (!error)
    {
      goto LABEL_24;
    }

    v29 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA068];
    v48 = v26;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v48, &v47, 1);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 5, v30);
  }

  else
  {
    AllocSize = IOSurfaceGetAllocSize(0);
    IOSurfaceLock(0, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(0);
    bzero(BaseAddress, AllocSize);
    IOSurfaceUnlock(0, 0, 0);
    v35 = e5rt_io_port_bind_surface_object();
    if (!v35)
    {
      v42 = 1;
      goto LABEL_26;
    }

    v36 = e5rt_get_last_error_message();
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"%s returned error code %u (%s)", "e5rt_io_port_bind_surface_object(port, surfaceObject)", v35, v36);
    v38 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_22E658C6C();
    }

    if (!error)
    {
      goto LABEL_24;
    }

    v40 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA068];
    v46 = v26;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v46, &v45, 1);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_(v40, v41, @"ANSTErrorDomain", 5, v30);
  }

  *error = v32;

LABEL_24:
LABEL_25:
  v42 = 0;
LABEL_26:
  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

- (BOOL)_bindNetworkInputsToExistingNetwork:(id)network error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  networkCopy = network;
  operation = self->_operation;
  num_inputs = e5rt_execution_stream_operation_get_num_inputs();
  if (num_inputs)
  {
    last_error_message = e5rt_get_last_error_message();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_num_inputs(_operation, &num_ports)", num_inputs, last_error_message);
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E658CE0();
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA068];
      v34[0] = v11;
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v34, &v33, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 5, v15);
    }

    v17 = 0;
  }

  else
  {
    v18 = malloc_type_malloc(0, 0x10040436913F5uLL);
    v19 = self->_operation;
    input_names = e5rt_execution_stream_operation_get_input_names();
    if (input_names)
    {
      v21 = e5rt_get_last_error_message();
      v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_input_names(_operation, num_ports, names)", input_names, v21);
      v24 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_22E658CE0();
      }

      if (error)
      {
        v26 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA068];
        v32 = v23;
        v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v32, &v31, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v26, v28, @"ANSTErrorDomain", 5, v27);
      }

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    free(v18);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_bindNetworkOutputsToExistingNetwork:(id)network error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  networkCopy = network;
  operation = self->_operation;
  num_outputs = e5rt_execution_stream_operation_get_num_outputs();
  if (num_outputs)
  {
    last_error_message = e5rt_get_last_error_message();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_num_outputs(_operation, &num_ports)", num_outputs, last_error_message);
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E658D54();
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA068];
      v34[0] = v11;
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v34, &v33, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 5, v15);
    }

    v17 = 0;
  }

  else
  {
    v18 = malloc_type_malloc(0, 0x10040436913F5uLL);
    v19 = self->_operation;
    output_names = e5rt_execution_stream_operation_get_output_names();
    if (output_names)
    {
      v21 = e5rt_get_last_error_message();
      v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_output_names(_operation, num_ports, names)", output_names, v21);
      v24 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_22E658D54();
      }

      if (error)
      {
        v26 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA068];
        v32 = v23;
        v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v32, &v31, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v26, v28, @"ANSTErrorDomain", 5, v27);
      }

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    free(v18);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)bindNetworkInputNamed:(id)named toTensor:(id)tensor error:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  operation = self->_operation;
  namedCopy = named;
  objc_msgSend_UTF8String(namedCopy, v11, v12);
  v13 = e5rt_execution_stream_operation_retain_input_port();
  if (v13)
  {
    v15 = v13;
    last_error_message = e5rt_get_last_error_message();
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, inputName.UTF8String, &port)", v15, last_error_message);
    v19 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22E658DC8();
    }

    if (!error)
    {
      v24 = 0;
      goto LABEL_11;
    }

    v21 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA068];
    v32[0] = v18;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v32, &v31, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v21, v23, @"ANSTErrorDomain", 5, v22);
    *error = v24 = 0;
LABEL_9:

LABEL_11:
    goto LABEL_12;
  }

  v24 = objc_msgSend__bindBufferPort_toTensor_error_(self, v14, 0, tensorCopy, error);
  v25 = e5rt_io_port_release();
  if (v25)
  {
    v26 = v25;
    v27 = e5rt_get_last_error_message();
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v26, v27);
    v22 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22E658DC8();
    }

    goto LABEL_9;
  }

LABEL_12:

  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)bindNetworkOutputNamed:(id)named toTensor:(id)tensor error:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  operation = self->_operation;
  namedCopy = named;
  objc_msgSend_UTF8String(namedCopy, v11, v12);
  v13 = e5rt_execution_stream_operation_retain_output_port();
  if (v13)
  {
    v15 = v13;
    last_error_message = e5rt_get_last_error_message();
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, outputName.UTF8String, &port)", v15, last_error_message);
    v19 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22E658E3C();
    }

    if (!error)
    {
      v24 = 0;
      goto LABEL_11;
    }

    v21 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA068];
    v32[0] = v18;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v32, &v31, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v21, v23, @"ANSTErrorDomain", 5, v22);
    *error = v24 = 0;
LABEL_9:

LABEL_11:
    goto LABEL_12;
  }

  v24 = objc_msgSend__bindBufferPort_toTensor_error_(self, v14, 0, tensorCopy, error);
  v25 = e5rt_io_port_release();
  if (v25)
  {
    v26 = v25;
    v27 = e5rt_get_last_error_message();
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v26, v27);
    v22 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22E658E3C();
    }

    goto LABEL_9;
  }

LABEL_12:

  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)tensorSurfaceForNetworkInputNamed:(id)named error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  operation = self->_operation;
  v8 = namedCopy;
  objc_msgSend_UTF8String(v8, v9, v10);
  v11 = e5rt_execution_stream_operation_retain_input_port();
  if (v11)
  {
    v13 = v11;
    last_error_message = e5rt_get_last_error_message();
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, name.UTF8String, &port)", v13, last_error_message);
    v17 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22E658EB0();
    }

    if (!error)
    {
      v22 = 0;
      goto LABEL_11;
    }

    v19 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA068];
    v30[0] = v16;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v30, &v29, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 5, v20);
    *error = v22 = 0;
  }

  else
  {
    v22 = objc_msgSend__tensorSurfaceForPort_name_error_(self, v12, 0, namedCopy, error);
    v23 = e5rt_io_port_release();
    if (!v23)
    {
      goto LABEL_12;
    }

    v24 = v23;
    v25 = e5rt_get_last_error_message();
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v24, v25);
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E658EB0();
    }
  }

LABEL_11:
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)tensorSurfaceForNetworkOutputNamed:(id)named error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  operation = self->_operation;
  v8 = namedCopy;
  objc_msgSend_UTF8String(v8, v9, v10);
  v11 = e5rt_execution_stream_operation_retain_output_port();
  if (v11)
  {
    v13 = v11;
    last_error_message = e5rt_get_last_error_message();
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, name.UTF8String, &port)", v13, last_error_message);
    v17 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22E658F24();
    }

    if (!error)
    {
      v22 = 0;
      goto LABEL_11;
    }

    v19 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA068];
    v30[0] = v16;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v30, &v29, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 5, v20);
    *error = v22 = 0;
  }

  else
  {
    v22 = objc_msgSend__tensorSurfaceForPort_name_error_(self, v12, 0, namedCopy, error);
    v23 = e5rt_io_port_release();
    if (!v23)
    {
      goto LABEL_12;
    }

    v24 = v23;
    v25 = e5rt_get_last_error_message();
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v24, v25);
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E658F24();
    }
  }

LABEL_11:
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)_bindBufferPort:(e5rt_io_port *)port toTensor:(id)tensor error:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  v9 = e5rt_io_port_retain_tensor_desc();
  if (v9)
  {
    last_error_message = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(port, &desc)", v9, last_error_message);
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E658F98();
    }

    if (error)
    {
      v15 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA068];
      v49[0] = v12;
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v49, &v48, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"ANSTErrorDomain", 5, v16);
    }
  }

  else
  {
    v18 = objc_msgSend_tensorDescriptor(tensorCopy, v7, v8);
    v20 = objc_msgSend_matchesE5TensorDescriptor_error_(v18, v19, 0, error);

    if (v20)
    {
      objc_msgSend_surface(tensorCopy, v21, v22);
      v23 = e5rt_buffer_object_create_from_iosurface();
      if (v23)
      {
        v24 = e5rt_get_last_error_message();
        v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_buffer_object_create_from_iosurface(&bufferObject, tensor.surface)", v23, v24);
        v27 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_22E658F98();
        }

        if (error)
        {
          v29 = MEMORY[0x277CCA9B8];
          v46 = *MEMORY[0x277CCA068];
          v47 = v26;
          v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v47, &v46, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 5, v30);
        }
      }

      else
      {
        v32 = e5rt_io_port_bind_buffer_object();
        if (!v32)
        {
          v41 = 1;
          goto LABEL_21;
        }

        v33 = e5rt_get_last_error_message();
        v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(port, bufferObject)", v32, v33);
        v36 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_22E658F98();
        }

        if (error)
        {
          v38 = MEMORY[0x277CCA9B8];
          v44 = *MEMORY[0x277CCA068];
          v45 = v35;
          v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v45, &v44, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v38, v40, @"ANSTErrorDomain", 5, v39);
        }
      }
    }
  }

  v41 = 0;
LABEL_21:

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (id)_tensorSurfaceForPort:(e5rt_io_port *)port name:(id)name error:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = e5rt_io_port_retain_buffer_object();
  if (v7)
  {
    last_error_message = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_io_port_retain_buffer_object(port, &bufferObject)", v7, last_error_message);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E65900C();
    }

    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA068];
      v49[0] = v10;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v49, &v48, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
    }

LABEL_19:
    v34 = 0;
    v35 = 0;
    goto LABEL_20;
  }

  v16 = e5rt_io_port_retain_tensor_desc();
  if (v16)
  {
    v17 = e5rt_get_last_error_message();
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(port, &desc)", v16, v17);
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E65900C();
    }

    if (error)
    {
      v22 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA068];
      v47 = v19;
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v47, &v46, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v22, v24, @"ANSTErrorDomain", 5, v23);
    }

    goto LABEL_19;
  }

  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    v26 = e5rt_get_last_error_message();
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(bufferObject, &surfaceRef)", iosurface, v26);
    v29 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_22E65900C();
    }

    if (error)
    {
      v31 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA068];
      v45 = v28;
      v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v45, &v44, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v31, v33, @"ANSTErrorDomain", 5, v32);
    }

    goto LABEL_19;
  }

  v39 = [ANSTTensorDescriptor alloc];
  v41 = objc_msgSend_initWithE5TensorDescriptor_name_error_(v39, v40, 0, nameCopy, error);
  if (v41)
  {
    v42 = [ANSTTensorSurface alloc];
    v35 = objc_msgSend_initWithDescriptor_ioSurface_error_(v42, v43, v41, 0, error);
  }

  else
  {
    v35 = 0;
  }

  v34 = 1;
LABEL_20:
  if (v34)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (BOOL)bindNetworkInputNamed:(id)named toPixelBuffer:(id)buffer error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  operation = self->_operation;
  namedCopy = named;
  objc_msgSend_UTF8String(namedCopy, v11, v12);
  v13 = e5rt_execution_stream_operation_retain_input_port();
  if (v13)
  {
    v16 = v13;
    last_error_message = e5rt_get_last_error_message();
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, inputName.UTF8String, &port)", v16, last_error_message);
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E659080();
    }

    if (!error)
    {
      v25 = 0;
      goto LABEL_11;
    }

    v22 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA068];
    v35[0] = v19;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v35, &v34, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v22, v24, @"ANSTErrorDomain", 5, v23);
    *error = v25 = 0;
LABEL_9:

LABEL_11:
    goto LABEL_12;
  }

  v26 = objc_msgSend_pixelBuffer(bufferCopy, v14, v15);
  v25 = objc_msgSend__bindSurfacePort_toPixelBuffer_error_(self, v27, 0, v26, error);
  v28 = e5rt_io_port_release();
  if (v28)
  {
    v29 = v28;
    v30 = e5rt_get_last_error_message();
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v29, v30);
    v23 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22E659080();
    }

    goto LABEL_9;
  }

LABEL_12:

  v32 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)bindNetworkOutputNamed:(id)named toPixelBuffer:(id)buffer error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  operation = self->_operation;
  namedCopy = named;
  objc_msgSend_UTF8String(namedCopy, v11, v12);
  v13 = e5rt_execution_stream_operation_retain_output_port();
  if (v13)
  {
    v16 = v13;
    last_error_message = e5rt_get_last_error_message();
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, outputName.UTF8String, &port)", v16, last_error_message);
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E6590F4();
    }

    if (!error)
    {
      v25 = 0;
      goto LABEL_11;
    }

    v22 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA068];
    v35[0] = v19;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v35, &v34, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v22, v24, @"ANSTErrorDomain", 5, v23);
    *error = v25 = 0;
LABEL_9:

LABEL_11:
    goto LABEL_12;
  }

  v26 = objc_msgSend_pixelBuffer(bufferCopy, v14, v15);
  v25 = objc_msgSend__bindSurfacePort_toPixelBuffer_error_(self, v27, 0, v26, error);
  v28 = e5rt_io_port_release();
  if (v28)
  {
    v29 = v28;
    v30 = e5rt_get_last_error_message();
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v29, v30);
    v23 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22E6590F4();
    }

    goto LABEL_9;
  }

LABEL_12:

  v32 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)pixelBufferForNetworkInputNamed:(id)named error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  operation = self->_operation;
  v8 = namedCopy;
  objc_msgSend_UTF8String(v8, v9, v10);
  v11 = e5rt_execution_stream_operation_retain_input_port();
  if (v11)
  {
    v13 = v11;
    last_error_message = e5rt_get_last_error_message();
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, name.UTF8String, &port)", v13, last_error_message);
    v17 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22E659168();
    }

    if (!error)
    {
      v22 = 0;
      goto LABEL_11;
    }

    v19 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA068];
    v30[0] = v16;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v30, &v29, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 5, v20);
    *error = v22 = 0;
  }

  else
  {
    v22 = objc_msgSend__pixelBufferForPort_name_error_(self, v12, 0, namedCopy, error);
    v23 = e5rt_io_port_release();
    if (!v23)
    {
      goto LABEL_12;
    }

    v24 = v23;
    v25 = e5rt_get_last_error_message();
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v24, v25);
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E659168();
    }
  }

LABEL_11:
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)pixelBufferForNetworkOutputNamed:(id)named error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  operation = self->_operation;
  v8 = namedCopy;
  objc_msgSend_UTF8String(v8, v9, v10);
  v11 = e5rt_execution_stream_operation_retain_output_port();
  if (v11)
  {
    v13 = v11;
    last_error_message = e5rt_get_last_error_message();
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, name.UTF8String, &port)", v13, last_error_message);
    v17 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22E6591DC();
    }

    if (!error)
    {
      v22 = 0;
      goto LABEL_11;
    }

    v19 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA068];
    v30[0] = v16;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v30, &v29, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 5, v20);
    *error = v22 = 0;
  }

  else
  {
    v22 = objc_msgSend__pixelBufferForPort_name_error_(self, v12, 0, namedCopy, error);
    v23 = e5rt_io_port_release();
    if (!v23)
    {
      goto LABEL_12;
    }

    v24 = v23;
    v25 = e5rt_get_last_error_message();
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v24, v25);
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E6591DC();
    }
  }

LABEL_11:
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)_bindSurfacePort:(e5rt_io_port *)port toPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v91[1] = *MEMORY[0x277D85DE8];
  v7 = e5rt_io_port_retain_surface_desc();
  if (v7)
  {
    last_error_message = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_io_port_retain_surface_desc(port, &desc)", v7, last_error_message);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E659250();
    }

    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v76 = *MEMORY[0x277CCA068];
      v77 = v10;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v77, &v76, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
    }

    goto LABEL_30;
  }

  if (CVPixelBufferGetIOSurface(buffer))
  {
    Width = CVPixelBufferGetWidth(buffer);
    v19 = e5rt_surface_desc_get_width();
    if (v19)
    {
      v20 = e5rt_get_last_error_message();
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"%s returned error code %u (%s)", "e5rt_surface_desc_get_width(desc, &e5Width)", v19, v20);
      v23 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_29;
      }

      v25 = MEMORY[0x277CCA9B8];
      v88 = *MEMORY[0x277CCA068];
      v89 = v22;
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, &v89, &v88, 1);
      v28 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"ANSTErrorDomain", 5, v26);
LABEL_28:
      *error = v28;

LABEL_29:
      goto LABEL_30;
    }

    if (Width != -1)
    {
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s: Width mismatch (CVPixelBuffer %ld, E5 surface %ld)", "BOOL pixelBufferFitsE5SurfaceDescriptor(CVPixelBufferRef _Nonnull, e5rt_surface_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)", Width, -1);
      v47 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_29;
      }

      v49 = MEMORY[0x277CCA9B8];
      v86 = *MEMORY[0x277CCA068];
      v87 = v22;
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v48, &v87, &v86, 1);
      v28 = objc_msgSend_errorWithDomain_code_userInfo_(v49, v50, @"ANSTErrorDomain", 13, v26);
      goto LABEL_28;
    }

    Height = CVPixelBufferGetHeight(buffer);
    v37 = e5rt_surface_desc_get_height();
    if (v37)
    {
      v38 = e5rt_get_last_error_message();
      v40 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"%s returned error code %u (%s)", "e5rt_surface_desc_get_height(desc, &e5Height)", v37, v38);
      v41 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_42;
      }

      v43 = MEMORY[0x277CCA9B8];
      v84 = *MEMORY[0x277CCA068];
      v85 = v40;
      v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, &v85, &v84, 1);
      v46 = objc_msgSend_errorWithDomain_code_userInfo_(v43, v45, @"ANSTErrorDomain", 5, v44);
LABEL_41:
      *error = v46;

LABEL_42:
      goto LABEL_30;
    }

    if (Height != -1)
    {
      v40 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"%s: Height mismatch (CVPixelBuffer %ld, E5 surface %ld)", "BOOL pixelBufferFitsE5SurfaceDescriptor(CVPixelBufferRef _Nonnull, e5rt_surface_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)", Height, -1);
      v65 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_42;
      }

      v67 = MEMORY[0x277CCA9B8];
      v82 = *MEMORY[0x277CCA068];
      v83 = v40;
      v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v66, &v83, &v82, 1);
      v46 = objc_msgSend_errorWithDomain_code_userInfo_(v67, v68, @"ANSTErrorDomain", 13, v44);
      goto LABEL_41;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    format = e5rt_surface_desc_get_format();
    if (format)
    {
      v56 = e5rt_get_last_error_message();
      v58 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v57, @"%s returned error code %u (%s)", "e5rt_surface_desc_get_format(desc, &e5Format)", format, v56);
      v59 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_63;
      }

      v61 = MEMORY[0x277CCA9B8];
      v80 = *MEMORY[0x277CCA068];
      v81 = v58;
      v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, &v81, &v80, 1);
      v64 = objc_msgSend_errorWithDomain_code_userInfo_(v61, v63, @"ANSTErrorDomain", 5, v62);
LABEL_62:
      *error = v64;

LABEL_63:
      goto LABEL_30;
    }

    if (PixelFormatType > 1278226535)
    {
      if (PixelFormatType == 1278226536 || PixelFormatType == 1380401729 || PixelFormatType == 1278226742)
      {
        goto LABEL_57;
      }
    }

    else if (PixelFormatType == 32 || PixelFormatType == 1111970369 || PixelFormatType == 1278226488)
    {
LABEL_57:
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v54, @"%s: Pixel format mismatch (CVPixelFormatType %d, E5 format %d)", "BOOL pixelBufferFitsE5SurfaceDescriptor(CVPixelBufferRef _Nonnull, e5rt_surface_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)", PixelFormatType, 33);
      v58 = LABEL_58:;
      v72 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_63;
      }

      v74 = MEMORY[0x277CCA9B8];
      v78 = *MEMORY[0x277CCA068];
      v79 = v58;
      v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v73, &v79, &v78, 1);
      v64 = objc_msgSend_errorWithDomain_code_userInfo_(v74, v75, @"ANSTErrorDomain", 13, v62);
      goto LABEL_62;
    }

    v69 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v54, @"%s: Unsupported input pixel format type %d", "BOOL pixelFormatMatchesE5SurfaceFormat(OSType, e5rt_surface_format_t, NSError * _Nullable __autoreleasing * _Nullable)", PixelFormatType);
    v70 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      sub_22E659338();
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v71, @"%s: Pixel format mismatch (CVPixelFormatType %d, E5 format %d)", "BOOL pixelBufferFitsE5SurfaceDescriptor(CVPixelBufferRef _Nonnull, e5rt_surface_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)", PixelFormatType, 33);
    goto LABEL_58;
  }

  v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: E5 surface requires CVPixelBuffer to be IOSurface backed.", "BOOL pixelBufferFitsE5SurfaceDescriptor(CVPixelBufferRef _Nonnull, e5rt_surface_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)");
  v30 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_22E6592C4();
  }

  if (error)
  {
    v32 = MEMORY[0x277CCA9B8];
    v90 = *MEMORY[0x277CCA068];
    v91[0] = v29;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v91, &v90, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v32, v34, @"ANSTErrorDomain", 13, v33);
  }

LABEL_30:
  v51 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_pixelBufferForPort:(e5rt_io_port *)port name:(id)name error:(id *)error
{
  v61[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  pixelBufferOut = 0;
  v7 = e5rt_io_port_retain_surface_object();
  if (!v7)
  {
    iosurface = e5rt_surface_object_get_iosurface();
    if (iosurface)
    {
      last_error_message = e5rt_get_last_error_message();
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%s returned error code %u (%s)", "e5rt_surface_object_get_iosurface(surfaceObject, &surfaceRef)", iosurface, last_error_message);
      v22 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_22E6593AC();
      }

      if (error)
      {
        v24 = MEMORY[0x277CCA9B8];
        v58 = *MEMORY[0x277CCA068];
        v59 = v21;
        v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v59, &v58, 1);
        v27 = objc_msgSend_errorWithDomain_code_userInfo_(v24, v26, @"ANSTErrorDomain", 5, v25);
LABEL_17:
        v16 = 0;
        v17 = 0;
        *error = v27;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      if (!CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], 0, 0, &pixelBufferOut))
      {
        v54[0] = *MEMORY[0x277CC4EC8];
        v33 = MEMORY[0x277CCABB0];
        Width = CVPixelBufferGetWidth(pixelBufferOut);
        v36 = objc_msgSend_numberWithUnsignedLong_(v33, v35, Width);
        v55[0] = v36;
        v54[1] = *MEMORY[0x277CC4DD8];
        v37 = MEMORY[0x277CCABB0];
        Height = CVPixelBufferGetHeight(pixelBufferOut);
        v40 = objc_msgSend_numberWithUnsignedLong_(v37, v39, Height);
        v55[1] = v40;
        v54[2] = *MEMORY[0x277CC4E30];
        v41 = MEMORY[0x277CCABB0];
        PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBufferOut);
        v44 = objc_msgSend_numberWithUnsignedInt_(v41, v43, PixelFormatType);
        v54[3] = *MEMORY[0x277CC4DE8];
        v55[2] = v44;
        v55[3] = MEMORY[0x277CBEC10];
        v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, v55, v54, 4);

        v46 = [ANSTPixelBufferDescriptor alloc];
        v25 = objc_msgSend_initWithName_pixelBufferAttributes_error_(v46, v47, nameCopy, v21, error);
        v48 = [ANSTPixelBuffer alloc];
        v17 = objc_msgSend_initWithDescriptor_pixelBuffer_orientation_error_(v48, v49, v25, pixelBufferOut, 0, error);
        v16 = 1;
        goto LABEL_20;
      }

      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"Failed to create CVPixelBuffer from E5 surface object named %@", nameCopy);
      v29 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_22E6593AC();
      }

      if (error)
      {
        v31 = MEMORY[0x277CCA9B8];
        v56 = *MEMORY[0x277CCA068];
        v57 = v21;
        v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v57, &v56, 1);
        v27 = objc_msgSend_errorWithDomain_code_userInfo_(v31, v32, @"ANSTErrorDomain", 0, v25);
        goto LABEL_17;
      }
    }

    v16 = 0;
    v17 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v8 = e5rt_get_last_error_message();
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_io_port_retain_surface_object(port, &surfaceObject)", v7, v8);
  v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_22E6593AC();
  }

  if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    v60 = *MEMORY[0x277CCA068];
    v61[0] = v10;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v61, &v60, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
  }

  v16 = 0;
  v17 = 0;
LABEL_22:
  CVPixelBufferRelease(pixelBufferOut);
  if (v16)
  {
    v50 = v17;
  }

  else
  {
    v50 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

@end