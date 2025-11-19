@interface ANSTBaseNetworkEspresso
- ($C4732ECC957FA13B9B3DF4A51A95735B)network;
- ($FD4688982923A924290ECB669CAF1EC2)getTensorByName:(const char *)a3;
- (BOOL)bindNetworkInputWithEspressoBuffer:(id *)a3 withInputName:(id)a4;
- (BOOL)bindNetworkInputWithImage:(__CVBuffer *)a3 withInputName:(id)a4;
- (BOOL)bindNetworkOutput:(const char *)a3;
- (BOOL)buildPlan;
- (BOOL)getBlobDimensionByName:(const char *)a3 andDestination:(unint64_t *)a4;
- (BOOL)initContext;
- (BOOL)initMLNetwork;
- (BOOL)initNetwork;
- (BOOL)initNetworkOutput;
- (BOOL)initPlan;
- (BOOL)prepare;
- (BOOL)runNetwork;
- (BOOL)setInput:(id)a3 fromCVPixelBuffer:(__CVBuffer *)a4;
- (CGSize)getResolutionByBlobName:(const char *)a3;
- (id).cxx_construct;
- (id)_initWithNetworkEngine:(int64_t)a3 qualityOfService:(unsigned int)a4 networkName:(id)a5 networkFileName:(id)a6 networkResolution:(id)a7;
- (void)cleanUpOutputPixelBufferMap;
- (void)dealloc;
- (void)updateOutputBlobMap;
@end

@implementation ANSTBaseNetworkEspresso

- (id)_initWithNetworkEngine:(int64_t)a3 qualityOfService:(unsigned int)a4 networkName:(id)a5 networkFileName:(id)a6 networkResolution:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x277CCA8D8];
  v16 = objc_opt_class();
  v18 = objc_msgSend_bundleForClass_(v15, v17, v16);
  v20 = objc_msgSend_pathForResource_ofType_inDirectory_(v18, v19, v12, @"mlmodelc", @"Models");
  objc_storeStrong(&self->_netPath, v20);
  objc_storeStrong(&self->_netFileName, a6);
  self->_engineType = a3;
  HIDWORD(v22) = a4 - 9;
  LODWORD(v22) = a4 - 9;
  v21 = v22 >> 3;
  if (v21 > 3)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_22E661940[v21];
  }

  self->_planPriority = v23;
  self->_isPrepared = 0;
  objc_storeStrong(&self->_networkResolution, a7);
  v24 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    netPath = self->_netPath;
    netFileName = self->_netFileName;
    v29 = 138543618;
    v30 = netPath;
    v31 = 2114;
    v32 = netFileName;
    _os_log_impl(&dword_22E5D5000, v24, OS_LOG_TYPE_DEFAULT, "ANSTBaseNetworkEspresso initialized with network path %{public}@, network file name %{public}@", &v29, 0x16u);
  }

  v27 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)prepare
{
  inited = objc_msgSend_initMLNetwork(self, a2, v2);
  if (inited)
  {
    self->_isPrepared = 1;
  }

  return inited;
}

- (BOOL)initMLNetwork
{
  if (!objc_msgSend_initContext(self, a2, v2) || !objc_msgSend_initPlan(self, v4, v5) || !objc_msgSend_initNetwork(self, v6, v7) || !objc_msgSend_buildPlan(self, v8, v9))
  {
    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_initNetworkOutput, v10);
}

- (BOOL)buildPlan
{
  v9 = *MEMORY[0x277D85DE8];
  plan = self->_plan;
  v3 = espresso_plan_build();
  if (v3)
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      last_error = espresso_get_last_error();
      sub_22E656D24(last_error, v8);
    }
  }

  result = v3 == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)initContext
{
  v12 = *MEMORY[0x277D85DE8];
  engineType = self->_engineType;
  v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v5 = v4;
  if (engineType == 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_22E5D5000, v5, OS_LOG_TYPE_DEFAULT, "Using CPU", v11, 2u);
    }
  }

  else if (engineType == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_22E5D5000, v5, OS_LOG_TYPE_DEFAULT, "Using GPU", v11, 2u);
    }
  }

  else if (engineType)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_22E656D68(engineType, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_22E5D5000, v5, OS_LOG_TYPE_DEFAULT, "Using ANE", v11, 2u);
  }

  context = espresso_create_context();
  self->_context = context;
  if (context)
  {
    if (!espresso_context_set_low_precision_accumulation())
    {
      result = 1;
      goto LABEL_22;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      last_error = espresso_get_last_error();
      sub_22E656DF4(last_error, v11);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = espresso_get_last_error();
    sub_22E656E38(v8, v11);
  }

  result = 0;
LABEL_22:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)initPlan
{
  v12 = *MEMORY[0x277D85DE8];
  context = self->_context;
  plan = espresso_create_plan();
  self->_plan = plan;
  if (plan)
  {
    planPriority = self->_planPriority;
    if (!espresso_plan_set_priority())
    {
      result = 1;
      goto LABEL_9;
    }

    v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      last_error = espresso_get_last_error();
      sub_22E656E7C(last_error, v11);
    }
  }

  else
  {
    v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = espresso_get_last_error();
      sub_22E656EC0(v8, v11);
    }
  }

  result = 0;
LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)initNetwork
{
  v28 = *MEMORY[0x277D85DE8];
  netPath = self->_netPath;
  if (netPath)
  {
    v4 = objc_msgSend_stringByAppendingPathComponent_(netPath, a2, self->_netFileName);
    plan = self->_plan;
    engineType = self->_engineType;
    v7 = v4;
    objc_msgSend_UTF8String(v7, v8, v9);
    v12 = espresso_plan_add_network();
    if (v12)
    {
      v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v21 = self->_netPath;
        v22 = 138543874;
        v23 = v21;
        v24 = 1024;
        v25 = v12;
        v26 = 2082;
        last_error = espresso_get_last_error();
        _os_log_fault_impl(&dword_22E5D5000, v13, OS_LOG_TYPE_FAULT, "%{public}@: espresso_plan_add_network failed with status %d (%{public}s)", &v22, 0x1Cu);
      }
    }

    else
    {
      networkResolution = self->_networkResolution;
      if (!networkResolution || (objc_msgSend_isEqualToString_(networkResolution, v10, &stru_28431E810) & 1) != 0 || (v18 = self->_network.plan, v19 = *&self->_network.network_index, objc_msgSend_UTF8String(self->_networkResolution, v10, v11), !espresso_network_select_configuration()))
      {
        objc_msgSend_updateOutputBlobMap(self, v10, v11);
        v14 = 1;
        goto LABEL_9;
      }

      v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = espresso_get_last_error();
        sub_22E656F04(v20, &v22);
      }
    }
  }

  else
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E656F48(v4);
    }
  }

  v14 = 0;
LABEL_9:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)updateOutputBlobMap
{
  sub_22E5D9B58(&self->_outputBufferMap);
  plan = self->_network.plan;
  v4 = *&self->_network.network_index;
  output_blob_name = espresso_get_output_blob_name();
  if (output_blob_name)
  {
    v6 = output_blob_name;
    v7 = 1;
    do
    {
      sub_22E5D8EB4(v10, v6);
      sub_22E5D9C00(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, v10);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }

      v8 = self->_network.plan;
      v9 = *&self->_network.network_index;
      v6 = espresso_get_output_blob_name();
      ++v7;
    }

    while (v6);
  }
}

- (BOOL)getBlobDimensionByName:(const char *)a3 andDestination:(unint64_t *)a4
{
  v13 = *MEMORY[0x277D85DE8];
  plan = self->_network.plan;
  v5 = *&self->_network.network_index;
  blob_dimensions = espresso_network_query_blob_dimensions();
  if (blob_dimensions)
  {
    v8 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      last_error = espresso_get_last_error();
      sub_22E656FCC(a3, last_error, v12);
    }
  }

  result = blob_dimensions == 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)initNetworkOutput
{
  for (i = self->_outputBufferMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i + 16;
    if (i[39] < 0)
    {
      v4 = *v4;
    }

    objc_msgSend_bindNetworkOutput_(self, a2, v4);
  }

  return 1;
}

- (BOOL)bindNetworkInputWithImage:(__CVBuffer *)a3 withInputName:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  plan = self->_network.plan;
  v7 = *&self->_network.network_index;
  v8 = v5;
  objc_msgSend_UTF8String(v8, v9, v10);
  v11 = espresso_network_bind_cvpixelbuffer();
  if (v11)
  {
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v5;
      v16 = objc_msgSend_UTF8String(v13, v14, v15);
      last_error = espresso_get_last_error();
      sub_22E657014(v16, last_error, v20);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11 == 0;
}

- (BOOL)bindNetworkInputWithEspressoBuffer:(id *)a3 withInputName:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  plan = self->_network.plan;
  v7 = *&self->_network.network_index;
  v8 = v5;
  objc_msgSend_UTF8String(v8, v9, v10);
  v11 = espresso_network_bind_buffer();
  if (v11)
  {
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v5;
      v16 = objc_msgSend_UTF8String(v13, v14, v15);
      last_error = espresso_get_last_error();
      sub_22E65705C(v16, last_error, v20);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11 == 0;
}

- (BOOL)bindNetworkOutput:(const char *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  disabledOutputSet = self->_disabledOutputSet;
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3);
  LOBYTE(disabledOutputSet) = objc_msgSend_containsObject_(disabledOutputSet, v7, v6);

  if ((disabledOutputSet & 1) == 0)
  {
    sub_22E5D8EB4(__p, a3);
    if (!sub_22E5DA9D8(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p))
    {
      sub_22E5DA69C("unordered_map::at: key not found");
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    plan = self->_network.plan;
    v9 = *&self->_network.network_index;
    if (!espresso_network_bind_buffer())
    {
      result = 1;
      goto LABEL_10;
    }

    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      last_error = espresso_get_last_error();
      sub_22E6570A4(last_error, __p);
    }
  }

  result = 0;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- ($FD4688982923A924290ECB669CAF1EC2)getTensorByName:(const char *)a3
{
  sub_22E5D8EB4(__p, a3);
  v8 = __p;
  v4 = sub_22E5DA72C(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return (v4 + 5);
}

- (CGSize)getResolutionByBlobName:(const char *)a3
{
  v6[4] = *MEMORY[0x277D85DE8];
  objc_msgSend_getBlobDimensionByName_andDestination_(self, a2, a3, v6);
  v3 = *MEMORY[0x277D85DE8];
  v4 = v6[0];
  v5 = v6[1];
  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)runNetwork
{
  v15 = *MEMORY[0x277D85DE8];
  plan = self->_plan;
  v4 = espresso_plan_execute_sync();
  if (v4)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      netPath = self->_netPath;
      v9 = 138543874;
      v10 = netPath;
      v11 = 1024;
      v12 = v4;
      v13 = 2082;
      last_error = espresso_get_last_error();
      _os_log_fault_impl(&dword_22E5D5000, v5, OS_LOG_TYPE_FAULT, "%{public}@: espresso_plan_execute_sync failed with status %d (%{public}s)", &v9, 0x1Cu);
    }
  }

  result = v4 == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setInput:(id)a3 fromCVPixelBuffer:(__CVBuffer *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_isPrepared)
  {
    if (CVPixelBufferGetPixelFormatType(a4) == 1111970369 || CVPixelBufferGetPixelFormatType(a4) == 1278226488)
    {
      v8 = objc_msgSend_bindNetworkInputWithImage_withInputName_(self, v7, a4, v6);
    }

    else
    {
      v12 = v6;
      v15 = objc_msgSend_UTF8String(v12, v13, v14);
      sub_22E5D8EB4(__p, v15);
      if (sub_22E5DA9D8(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p))
      {
        goto LABEL_10;
      }

      v31.i64[0] = __p;
      *(sub_22E5DAAD4(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p) + 50) = 65568;
      v19 = v6;
      v22 = objc_msgSend_UTF8String(v6, v20, v21);
      objc_msgSend_getBlobDimensionByName_andDestination_(self, v23, v22, &v31);
      v29 = vextq_s8(v32, v32, 8uLL);
      v30 = vextq_s8(v31, v31, 8uLL);
      v28 = __p;
      sub_22E5DAAD4(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p);
      if (!espresso_buffer_pack_tensor_shape())
      {
LABEL_10:
        CVPixelBufferLockBaseAddress(a4, 0);
        BaseAddress = CVPixelBufferGetBaseAddress(a4);
        v31.i64[0] = __p;
        sub_22E5DAAD4(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p)[5] = BaseAddress;
        v31.i64[0] = __p;
        v17 = sub_22E5DAAD4(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p);
        v8 = objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self, v18, (v17 + 5), v6);
        CVPixelBufferUnlockBaseAddress(a4, 0);
      }

      else
      {
        v24 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          last_error = espresso_get_last_error();
          sub_22E65716C(last_error, &v28);
        }

        v8 = 0;
      }

      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E6570E8(v9);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)cleanUpOutputPixelBufferMap
{
  for (i = self->_outputPixelBufMap.__table_.__first_node_.__next_; i; i = *i)
  {
    CVPixelBufferRelease(*(i + 5));
  }

  sub_22E5D9B58(&self->_outputPixelBufMap);
}

- (void)dealloc
{
  plan = self->_plan;
  espresso_plan_destroy();
  context = self->_context;
  espresso_context_destroy();
  objc_msgSend_cleanUpOutputPixelBufferMap(self, v5, v6);
  v7.receiver = self;
  v7.super_class = ANSTBaseNetworkEspresso;
  [(ANSTBaseNetworkEspresso *)&v7 dealloc];
}

- ($C4732ECC957FA13B9B3DF4A51A95735B)network
{
  v2 = *&self->_network.network_index;
  plan = self->_network.plan;
  result.var1 = v2;
  result.var0 = plan;
  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 34) = 1065353216;
  return self;
}

@end