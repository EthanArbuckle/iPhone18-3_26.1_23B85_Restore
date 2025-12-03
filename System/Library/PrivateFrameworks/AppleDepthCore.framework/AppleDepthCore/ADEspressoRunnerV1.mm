@interface ADEspressoRunnerV1
- (ADEspressoRunnerV1)initWithPath:(id)path forEngine:(unint64_t)engine configurationName:(id)name;
- (BOOL)isCVPixelBufferBindingSupportedForFormat:(unsigned int)format;
- (BOOL)isDirectBindingSupportedForFormat:(unsigned int)format;
- (__CVBuffer)createAndRegisterPixelBufferForDescriptor:(id)descriptor;
- (id).cxx_construct;
- (id)networkVersionString;
- (id)registerDescriptor:(id)descriptor;
- (int)bindPixelBufferAsVImage:(__CVBuffer *)image toBlob:(const char *)blob;
- (int64_t)execute;
- (int64_t)registerIOSurface:(__IOSurface *)surface forDescriptor:(id)descriptor;
- (int64_t)registerPixelBufferPtr:(__CVBuffer *)ptr forDescriptor:(id)descriptor;
- (int64_t)updateFeedbackLoopInputBuffer:(__CVBuffer *)buffer inputDescriptor:(id)descriptor outputBuffer:(__CVBuffer *)outputBuffer outputDescriptor:(id)outputDescriptor;
- (void)dealloc;
- (void)unlockAllVImageBindBuffers;
@end

@implementation ADEspressoRunnerV1

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 40) = 1065353216;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 50) = 1065353216;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 60) = 1065353216;
  return self;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = ADEspressoRunnerV1;
  [(ADEspressoRunnerV1 *)&v3 dealloc];
}

- (int64_t)execute
{
  v72 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v62 = 335678456;
  v63 = 0u;
  v64 = 0u;
  kdebug_trace();
  kdebug_trace();
  p_first_node = &selfCopy->_pixelBuffersToBindDirect.__table_.__first_node_;
  v4 = MEMORY[0x277D86220];
  *&v5 = 136315138;
  v61 = v5;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v6 = p_first_node + 2;
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      next = p_first_node + 2;
      if (SHIBYTE(p_first_node[4].__next_) < 0)
      {
        next = v6->__next_;
      }

      LODWORD(buf[0]) = v61;
      *(buf + 4) = next;
      _os_log_impl(&dword_240463000, v4, OS_LOG_TYPE_DEFAULT, "binding %s as pixel buffer directly", buf, 0xCu);
    }

    v8 = espresso_network_bind_direct_cvpixelbuffer();
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        if (SHIBYTE(p_first_node[4].__next_) < 0)
        {
          v6 = v6->__next_;
        }

        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = v6;
        WORD6(buf[0]) = 1024;
        *(buf + 14) = v8;
        v9 = MEMORY[0x277D86220];
        v10 = "Failed binding %s as pixel buffer directly (status:%d)";
        goto LABEL_39;
      }

      goto LABEL_60;
    }
  }

  v11 = &selfCopy->_pixelBuffersToBindIndirect.__table_.__first_node_;
  v12 = MEMORY[0x277D86220];
  while (1)
  {
    v11 = v11->__next_;
    if (!v11)
    {
      break;
    }

    v13 = v11 + 2;
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v11 + 2;
      if (SHIBYTE(v11[4].__next_) < 0)
      {
        v14 = v13->__next_;
      }

      LODWORD(buf[0]) = v61;
      *(buf + 4) = v14;
      _os_log_impl(&dword_240463000, v12, OS_LOG_TYPE_DEFAULT, "binding %s as pixel buffer", buf, 0xCu);
    }

    v15 = espresso_network_bind_cvpixelbuffer();
    if (v15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        if (SHIBYTE(v11[4].__next_) < 0)
        {
          v13 = v13->__next_;
        }

        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = v13;
        WORD6(buf[0]) = 1024;
        *(buf + 14) = v15;
        v9 = MEMORY[0x277D86220];
        v10 = "Failed binding %s as pixel buffer (status:%d)";
        goto LABEL_39;
      }

      goto LABEL_60;
    }
  }

  v16 = &selfCopy->_pixelBuffersToBindAsVImage.__table_.__first_node_;
  v17 = MEMORY[0x277D86220];
  do
  {
    v16 = v16->__next_;
    if (!v16)
    {
      v24 = selfCopy->_pixelBuffersToBindAsEspressoBufferInput.__table_.__first_node_.__next_;
      if (v24)
      {
        while (1)
        {
          v25 = v24 + 16;
          v26 = *(v24 + 6);
          v27 = espresso_network_bind_buffer();
          if (v27)
          {
            [(ADEspressoRunnerV1 *)selfCopy unlockAllVImageBindBuffers];
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_60;
            }

            if (v24[39] < 0)
            {
              v25 = *v25;
            }

            LODWORD(v68[0]) = 136315394;
            *(v68 + 4) = v25;
            WORD6(v68[0]) = 1024;
            *(v68 + 14) = v27;
            v9 = MEMORY[0x277D86220];
            v10 = "Failed binding %s as espressoBuffer (status:%d)";
            goto LABEL_71;
          }

          Width = CVPixelBufferGetWidth(v26);
          Height = CVPixelBufferGetHeight(v26);
          PixelFormatType = CVPixelBufferGetPixelFormatType(v26);
          v32 = PixelBufferUtils::asPixelBuffer(Width, Height, PixelFormatType, *&buf[0], v31);
          v33 = PixelBufferUtils::copyPixelBuffer(v32, v26, 0);
          CVPixelBufferRelease(v32);
          if (v33)
          {
            break;
          }

          v24 = *v24;
          if (!v24)
          {
            goto LABEL_45;
          }
        }

        [(ADEspressoRunnerV1 *)selfCopy unlockAllVImageBindBuffers];
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_60;
        }

        if (v24[39] < 0)
        {
          v25 = *v25;
        }

        LODWORD(v68[0]) = 136315394;
        *(v68 + 4) = v25;
        WORD6(v68[0]) = 1024;
        *(v68 + 14) = -1;
        v9 = MEMORY[0x277D86220];
        v10 = "Failed copying %s to espressoBuffer (status:%d)";
LABEL_71:
        v23 = v68;
        goto LABEL_40;
      }

LABEL_45:
      memset(v68, 0, sizeof(v68));
      v69 = 1065353216;
      v35 = &selfCopy->_pixelBuffersToBindAsEspressoBufferOutput.__table_.__first_node_;
      v34 = selfCopy->_pixelBuffersToBindAsEspressoBufferOutput.__table_.__first_node_.__next_;
      if (v34)
      {
        while (1)
        {
          v36 = v34 + 2;
          v37 = espresso_network_bind_buffer();
          if (v37)
          {
            break;
          }

          *v65 = v34 + 2;
          v38 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v68, v34 + 2);
          v40 = buf[5];
          v39 = buf[6];
          v41 = buf[4];
          *(v38 + 11) = buf[3];
          v42 = v71;
          v44 = buf[8];
          v43 = buf[9];
          *(v38 + 19) = buf[7];
          *(v38 + 21) = v44;
          *(v38 + 23) = v43;
          v38[25] = v42;
          *(v38 + 13) = v41;
          *(v38 + 15) = v40;
          *(v38 + 17) = v39;
          v46 = buf[1];
          v45 = buf[2];
          *(v38 + 5) = buf[0];
          *(v38 + 7) = v46;
          *(v38 + 9) = v45;
          v34 = *v34;
          if (!v34)
          {
            goto LABEL_48;
          }
        }

        [(ADEspressoRunnerV1 *)selfCopy unlockAllVImageBindBuffers];
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }

        if (*(v34 + 39) < 0)
        {
          v36 = *v36;
        }

        *v65 = 136315394;
        *&v65[4] = v36;
        v66 = 1024;
        v67 = v37;
        v56 = MEMORY[0x277D86220];
        v57 = "Failed binding %s as espressoBuffer (status:%d)";
        v58 = v65;
      }

      else
      {
LABEL_48:
        kdebug_trace();
        kdebug_trace();
        v47 = espresso_plan_execute_sync();
        kdebug_trace();
        kdebug_trace();
        do
        {
          v35 = v35->__next_;
          if (!v35)
          {
            kdebug_trace();
            [(ADEspressoRunnerV1 *)selfCopy unlockAllVImageBindBuffers];
            if (v47)
            {
              v59 = -22968;
            }

            else
            {
              v59 = 0;
            }

            goto LABEL_67;
          }

          v48 = v35 + 2;
          v49 = v35[6].__next_;
          *&buf[0] = v35 + 2;
          v50 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v68, &v35[2].__next_)[5];
          v51 = CVPixelBufferGetWidth(v49);
          v52 = CVPixelBufferGetHeight(v49);
          v53 = CVPixelBufferGetPixelFormatType(v49);
          v55 = PixelBufferUtils::asPixelBuffer(v51, v52, v53, v50, v54);
          LODWORD(v49) = PixelBufferUtils::copyPixelBuffer(v49, v55, 0);
          CVPixelBufferRelease(v55);
        }

        while (!v49);
        [(ADEspressoRunnerV1 *)selfCopy unlockAllVImageBindBuffers];
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }

        if (SHIBYTE(v35[4].__next_) < 0)
        {
          v48 = v48->__next_;
        }

        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = v48;
        WORD6(buf[0]) = 1024;
        *(buf + 14) = -1;
        v56 = MEMORY[0x277D86220];
        v57 = "Failed copying %s from espressoBuffer (status:%d)";
        v58 = buf;
      }

      _os_log_error_impl(&dword_240463000, v56, OS_LOG_TYPE_ERROR, v57, v58, 0x12u);
LABEL_66:
      v59 = -22971;
LABEL_67:
      std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::~__hash_table(v68);
      goto LABEL_61;
    }

    v18 = v16[6].__next_;
    CVPixelBufferLockBaseAddress(v18, 1uLL);
    v19 = v16 + 2;
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v16 + 2;
      if (SHIBYTE(v16[4].__next_) < 0)
      {
        v20 = v19->__next_;
      }

      LODWORD(buf[0]) = v61;
      *(buf + 4) = v20;
      _os_log_impl(&dword_240463000, v17, OS_LOG_TYPE_DEFAULT, "binding %s as vImage", buf, 0xCu);
    }

    v21 = v16 + 2;
    if (SHIBYTE(v16[4].__next_) < 0)
    {
      v21 = v19->__next_;
    }

    v22 = [(ADEspressoRunnerV1 *)selfCopy bindPixelBufferAsVImage:v18 toBlob:v21, v61];
  }

  while (!v22);
  [(ADEspressoRunnerV1 *)selfCopy unlockAllVImageBindBuffers];
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_60;
  }

  if (SHIBYTE(v16[4].__next_) < 0)
  {
    v19 = v19->__next_;
  }

  LODWORD(buf[0]) = 136315394;
  *(buf + 4) = v19;
  WORD6(buf[0]) = 1024;
  *(buf + 14) = v22;
  v9 = MEMORY[0x277D86220];
  v10 = "Failed binding %s as vImage (status:%d)";
LABEL_39:
  v23 = buf;
LABEL_40:
  _os_log_error_impl(&dword_240463000, v9, OS_LOG_TYPE_ERROR, v10, v23, 0x12u);
LABEL_60:
  v59 = -22971;
LABEL_61:
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&v62);
  objc_sync_exit(selfCopy);

  return v59;
}

- (void)unlockAllVImageBindBuffers
{
  for (i = self->_pixelBuffersToBindAsVImage.__table_.__first_node_.__next_; i; i = *i)
  {
    CVPixelBufferUnlockBaseAddress(*(i + 6), 1uLL);
  }
}

- (int64_t)updateFeedbackLoopInputBuffer:(__CVBuffer *)buffer inputDescriptor:(id)descriptor outputBuffer:(__CVBuffer *)outputBuffer outputDescriptor:(id)outputDescriptor
{
  v46 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  outputDescriptorCopy = outputDescriptor;
  Width = CVPixelBufferGetWidth(*buffer);
  if (Width != CVPixelBufferGetWidth(*outputBuffer) || (v13 = CVPixelBufferGetHeight(*buffer), v13 != CVPixelBufferGetHeight(*outputBuffer)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = CVPixelBufferGetWidth(*buffer);
      Height = CVPixelBufferGetHeight(*buffer);
      v27 = CVPixelBufferGetWidth(*outputBuffer);
      v28 = CVPixelBufferGetHeight(*outputBuffer);
      *buf = 134218752;
      *&buf[4] = v25;
      v40 = 2048;
      uTF8String2 = Height;
      v42 = 2048;
      v43 = v27;
      v44 = 2048;
      v45 = v28;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Input and output pixel buffers have different dimensions (%zux%zu) vs (%zux%zu)", buf, 0x2Au);
    }

    goto LABEL_10;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(*buffer);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(*outputBuffer))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v21 = CVPixelBufferGetPixelFormatType(*buffer);
      v22 = buf;
      PixelBufferUtils::pixelFormatAsString(v21, buf);
      if (v42 < 0)
      {
        v22 = *buf;
      }

      v23 = CVPixelBufferGetPixelFormatType(*outputBuffer);
      PixelBufferUtils::pixelFormatAsString(v23, __p);
      if (v34 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      *v35 = 136315394;
      v36 = v22;
      v37 = 2080;
      v38 = v24;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Input and output pixel buffers have different formats (%s) vs (%s)", v35, 0x16u);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_10:
    v18 = -22953;
    goto LABEL_11;
  }

  v15 = [(ADEspressoRunnerV1 *)self isDirectBindingSupportedForFormat:CVPixelBufferGetPixelFormatType(*buffer)];
  v16 = *buffer;
  v17 = *outputBuffer;
  if (v15)
  {
    *buffer = v17;
    *outputBuffer = v16;
    v18 = [(ADEspressoRunnerV1 *)self registerPixelBuffer:*buffer forDescriptor:descriptorCopy];
    if (v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        name = [descriptorCopy name];
        *buf = 136315138;
        *&buf[4] = [name UTF8String];
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to re-register %s", buf, 0xCu);
      }
    }

    else
    {
      v18 = [(ADEspressoRunnerV1 *)self registerPixelBuffer:*outputBuffer forDescriptor:outputDescriptorCopy];
      if (v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        name2 = [outputDescriptorCopy name];
        *buf = 136315138;
        *&buf[4] = [name2 UTF8String];
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to re-register %s", buf, 0xCu);
      }
    }
  }

  else if (PixelBufferUtils::copyPixelBuffer(v16, v17, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      name3 = [outputDescriptorCopy name];
      uTF8String = [name3 UTF8String];
      name4 = [descriptorCopy name];
      *buf = 136315394;
      *&buf[4] = uTF8String;
      v40 = 2080;
      uTF8String2 = [name4 UTF8String];
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed copying %s to %s", buf, 0x16u);
    }

    v18 = -22950;
  }

  else
  {
    v18 = 0;
  }

LABEL_11:

  return v18;
}

- (int64_t)registerPixelBufferPtr:(__CVBuffer *)ptr forDescriptor:(id)descriptor
{
  v46 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  LODWORD(v34) = 335679308;
  v35 = 0u;
  v36 = 0u;
  kdebug_trace();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (descriptorCopy)
  {
    v8 = *ptr;
    imageDescriptor = [descriptorCopy imageDescriptor];
    pixelFormat = [imageDescriptor pixelFormat];

    [descriptorCopy isInput];
    name = [descriptorCopy name];
    uTF8String = [name UTF8String];

    if (espresso_network_query_blob_dimensions())
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        objc_sync_exit(selfCopy);
        v13 = -22971;
        goto LABEL_21;
      }

      *buf = 136315138;
      *&buf[4] = uTF8String;
      v23 = MEMORY[0x277D86220];
      v24 = "failed to get dimensions for %s";
LABEL_37:
      _os_log_error_impl(&dword_240463000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
      goto LABEL_4;
    }

    v14 = v42;
    v15 = v43;
    if (PixelBufferUtils::componentsPerPixelForPixelFormat(pixelFormat, 0) == 1 && !PixelBufferUtils::planeCountForPixelFormat(pixelFormat))
    {
      v15 = v44 * v43 * v45;
    }

    if (v8)
    {
      if (*ptr)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *buf = 0;
      BufferAttributes = getBufferAttributes();
      v21 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v42, v15, pixelFormat, BufferAttributes, buf);
      v22 = *buf;
      if (v21)
      {
        v22 = 0;
      }

      *ptr = v22;
      if (v22)
      {
LABEL_13:
        if ([(ADEspressoRunnerV1 *)selfCopy isDirectBindingSupportedForFormat:pixelFormat])
        {
          if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = uTF8String;
            _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "saving %s to bind as pixel buffer directly", buf, 0xCu);
          }

          v16 = *ptr;
          std::string::basic_string[abi:ne200100]<0>(buf, uTF8String);
          v37 = buf;
          v17 = std::__hash_table<std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PixelBufferSharedPtr>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&selfCopy->_pixelBuffersToBindDirect.__table_.__bucket_list_.__ptr_, buf);
          CVPixelBufferRelease(v17[6]);
          v18 = CVPixelBufferRetain(v16);
          goto LABEL_18;
        }

        if ([(ADEspressoRunnerV1 *)selfCopy isCVPixelBufferBindingSupportedForFormat:pixelFormat])
        {
          if (!selfCopy->_CPUBindWA)
          {
            if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = uTF8String;
              _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "saving %s to bind as CVPixelBuffer", buf, 0xCu);
            }

            v28 = *ptr;
            std::string::basic_string[abi:ne200100]<0>(buf, uTF8String);
            v37 = buf;
            v17 = std::__hash_table<std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PixelBufferSharedPtr>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&selfCopy->_pixelBuffersToBindIndirect.__table_.__bucket_list_.__ptr_, buf);
            CVPixelBufferRelease(v17[6]);
            v18 = CVPixelBufferRetain(v28);
            goto LABEL_18;
          }

          if (([descriptorCopy isInput] & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = uTF8String;
              _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot bind output %s buffer on CPU engine in this platform with provided pixel format", buf, 0xCu);
            }

            std::string::basic_string[abi:ne200100]<0>(buf, uTF8String);
            std::__hash_table<std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PixelBufferSharedPtr>>>::__erase_unique<std::string>(&selfCopy->_pixelBuffersToBindAsVImage, buf);
            if (v41 < 0)
            {
              operator delete(*buf);
            }

            v25 = -12;
            goto LABEL_70;
          }

          if ([(ADEspressoRunnerV1 *)selfCopy isVImageBindingSupportedForFormat:pixelFormat])
          {
            v25 = 0;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = uTF8String;
              _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot bind input %s buffer on CPU engine in this platform with provided pixel format", buf, 0xCu);
            }

            std::string::basic_string[abi:ne200100]<0>(buf, uTF8String);
            std::__hash_table<std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PixelBufferSharedPtr>>>::__erase_unique<std::string>(&selfCopy->_pixelBuffersToBindAsVImage, buf);
            if (v41 < 0)
            {
              operator delete(*buf);
            }

            v25 = -6;
          }

          if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = uTF8String;
            _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "saving %s to bind as vImage", buf, 0xCu);
          }

          v32 = *ptr;
          std::string::basic_string[abi:ne200100]<0>(buf, uTF8String);
          v37 = buf;
          v33 = std::__hash_table<std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PixelBufferSharedPtr>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&selfCopy->_pixelBuffersToBindAsVImage.__table_.__bucket_list_.__ptr_, buf);
          CVPixelBufferRelease(v33[6]);
          v33[6] = CVPixelBufferRetain(v32);
          if (v41 < 0)
          {
            operator delete(*buf);
          }

LABEL_69:
          if (!v25)
          {
LABEL_20:
            objc_sync_exit(selfCopy);
            v13 = 0;
            goto LABEL_21;
          }

LABEL_70:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = uTF8String;
            v39 = 1024;
            v40 = v25;
            _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed binding espresso buffer %s, status: %d", buf, 0x12u);
            if (v8)
            {
              goto LABEL_73;
            }
          }

          else if (v8)
          {
LABEL_73:
            *ptr = 0;
            goto LABEL_4;
          }

          CVPixelBufferRelease(*ptr);
          goto LABEL_73;
        }

        if (!v8)
        {
          if (ADDebugUtilsADVerboseLogsEnabled && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = uTF8String;
            _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "binding %s buffer to espresso-managed pointer", buf, 0xCu);
          }

          CVPixelBufferRelease(*ptr);
          v25 = espresso_network_bind_buffer();
          if (!v25)
          {
            *ptr = PixelBufferUtils::asPixelBuffer(v14, v15, pixelFormat, *buf, v29);
          }

          goto LABEL_69;
        }

        if (ADDebugUtilsADVerboseLogsEnabled)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = uTF8String;
            v26 = MEMORY[0x277D86220];
            v27 = OS_LOG_TYPE_DEFAULT;
LABEL_49:
            _os_log_impl(&dword_240463000, v26, v27, "Warning: binding %s buffer to espresso-managed pointer with copying buffer. note: this is highly inefficient", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = uTF8String;
          v26 = MEMORY[0x277D86220];
          v27 = OS_LOG_TYPE_INFO;
          goto LABEL_49;
        }

        isInput = [descriptorCopy isInput];
        v31 = *ptr;
        if (isInput)
        {
          std::string::basic_string[abi:ne200100]<0>(buf, uTF8String);
          v37 = buf;
          v17 = std::__hash_table<std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PixelBufferSharedPtr>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&selfCopy->_pixelBuffersToBindAsEspressoBufferInput.__table_.__bucket_list_.__ptr_, buf);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(buf, uTF8String);
          v37 = buf;
          v17 = std::__hash_table<std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PixelBufferSharedPtr>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&selfCopy->_pixelBuffersToBindAsEspressoBufferOutput.__table_.__bucket_list_.__ptr_, buf);
        }

        CVPixelBufferRelease(v17[6]);
        v18 = CVPixelBufferRetain(v31);
LABEL_18:
        v17[6] = v18;
        if (v41 < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_20;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    *&buf[4] = uTF8String;
    v23 = MEMORY[0x277D86220];
    v24 = "failed allocating CVPixelBuffer for %s";
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot register buffer for nil descriptor", buf, 2u);
  }

  objc_sync_exit(selfCopy);
  v13 = -22953;
LABEL_21:

  InstrumentsTraceGuard::~InstrumentsTraceGuard(&v34);
  return v13;
}

- (int64_t)registerIOSurface:(__IOSurface *)surface forDescriptor:(id)descriptor
{
  v15[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  pixelBufferOut = 0;
  v14 = *MEMORY[0x277CC4DE8];
  v15[0] = MEMORY[0x277CBEC10];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  if (CVPixelBufferCreateWithIOSurface(0, surface, v7, &pixelBufferOut))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      name = [descriptorCopy name];
      *buf = 138412290;
      v13 = name;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed allocating pixel buffer for binding %@ as a surface", buf, 0xCu);
    }

    v8 = -22971;
  }

  else
  {
    v8 = [(ADEspressoRunnerV1 *)self registerPixelBuffer:pixelBufferOut forDescriptor:descriptorCopy];
    CVPixelBufferRelease(pixelBufferOut);
  }

  return v8;
}

- (__CVBuffer)createAndRegisterPixelBufferForDescriptor:(id)descriptor
{
  v4 = 0;
  [(ADEspressoRunnerV1 *)self registerPixelBufferPtr:&v4 forDescriptor:descriptor];
  return v4;
}

- (id)registerDescriptor:(id)descriptor
{
  v34 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [descriptorCopy isInput];
  name = [descriptorCopy name];
  [name UTF8String];
  v7 = espresso_network_bind_buffer();

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      name2 = [descriptorCopy name];
      *buf = 138412546;
      *&buf[4] = name2;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed binding espresso buffer %@, status: %d", buf, 0x12u);
    }

    v8 = 0;
  }

  else
  {
    v9 = [ADEspressoBufferHandle alloc];
    name3 = [descriptorCopy name];
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    *buf = v13;
    *&buf[16] = v14;
    v25 = v15;
    v26 = v16;
    v8 = [(ADEspressoBufferHandle *)v9 initWithName:name3 buffer:buf];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)isDirectBindingSupportedForFormat:(unsigned int)format
{
  if (self->_engineType >> 1 != 5003)
  {
    return 0;
  }

  if ([(ADEspressoRunnerV1 *)self isCVPixelBufferBindingSupportedForFormat:?])
  {
    return 1;
  }

  result = 1;
  if (format <= 1380411456)
  {
    if (format == 843264104)
    {
      return result;
    }

    v5 = 1278226536;
    goto LABEL_11;
  }

  if (format != 1380411457 && format != 1751410032)
  {
    v5 = 1751411059;
LABEL_11:
    if (format != v5)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isCVPixelBufferBindingSupportedForFormat:(unsigned int)format
{
  v3 = *&format;
  if (PixelBufferUtils::planeCountForPixelFormat(*&format))
  {
    return 0;
  }

  v5 = PixelBufferUtils::pixelSizeForPixelFormat(v3, 0);
  return v5 == PixelBufferUtils::componentsPerPixelForPixelFormat(v3, 0);
}

- (int)bindPixelBufferAsVImage:(__CVBuffer *)image toBlob:(const char *)blob
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(image);
  v6 = PixelFormatType;
  v7 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(image, 0, *MEMORY[0x277CBF3A0], &v20);
    data = v20.data;
    v11 = *&v20.height;
    rowBytes = v20.rowBytes;
    if (v8 != 1)
    {
      v18 = *&v20.height;
      height = v20.height;
      v14 = 1;
      v15 = v20.rowBytes;
      v16 = v20.data;
      while (1)
      {
        memset(&v20, 0, sizeof(v20));
        PixelBufferUtils::asVImageBuffer(image, v14, *v9, &v20);
        if (!v20.data)
        {
          return -6;
        }

        if (&v16[v15 * height] != v20.data)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot bind as vImage a buffer with non-tightly-packed planes", buf, 2u);
          }

          return -6;
        }

        height = v20.height;
        v15 = v20.rowBytes;
        ++v14;
        v16 = v20.data;
        if (v8 == v14)
        {
          v11 = v18;
          break;
        }
      }
    }
  }

  else
  {
    PixelBufferUtils::asVImageBuffer(image, *MEMORY[0x277CBF3A0], &v20);
    data = v20.data;
    v11 = *&v20.height;
    rowBytes = v20.rowBytes;
  }

  if (!data)
  {
    return -6;
  }

  if (v6 == 32)
  {
    v20.data = data;
    *&v20.height = v11;
    v20.rowBytes = rowBytes;
    return espresso_network_bind_input_vimagebuffer_argb8();
  }

  else if (v6 == 1111970369)
  {
    v20.data = data;
    *&v20.height = v11;
    v20.rowBytes = rowBytes;
    return espresso_network_bind_input_vimagebuffer_bgra8();
  }

  else
  {
    v20.data = data;
    *&v20.height = v11;
    v20.rowBytes = rowBytes;
    if (v6 == 1380401729)
    {
      return espresso_network_bind_input_vimagebuffer_rgba8();
    }

    else
    {
      return espresso_network_bind_input_vimagebuffer_planar8();
    }
  }
}

- (id)networkVersionString
{
  v5 = *MEMORY[0x277D85DE8];
  if (espresso_network_get_version())
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  }

  return v2;
}

- (ADEspressoRunnerV1)initWithPath:(id)path forEngine:(unint64_t)engine configurationName:(id)name
{
  v44 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  nameCopy = name;
  v37 = 335679304;
  v38 = 0u;
  v39 = 0u;
  kdebug_trace();
  v36.receiver = self;
  v36.super_class = ADEspressoRunnerV1;
  v10 = [(ADEspressoRunnerV1 *)&v36 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_44;
  }

  v10->_CPUBindWA = 0;
  v10->_storageType = 65552;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = pathCopy;
    _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "loading network from: %@", buf, 0xCu);
  }

  if (engine > 1)
  {
    switch(engine)
    {
      case 2uLL:
        v12 = 5;
        goto LABEL_14;
      case 3uLL:
        v12 = 10006;
        goto LABEL_14;
      case 4uLL:
        v12 = 10007;
LABEL_14:
        v11->_engineType = v12;
        goto LABEL_15;
    }

    goto LABEL_33;
  }

  if (engine)
  {
    if (engine == 1)
    {
      v12 = 2;
      goto LABEL_14;
    }

LABEL_33:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ADCommonUtils::espressoEngineAsString(engine, buf);
      v30 = v41 >= 0 ? buf : *buf;
      *v42 = 136315138;
      v43 = v30;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unknown espresso engine '%s' requested.", v42, 0xCu);
      if (v41 < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_43;
  }

  *&v11->_engineType = 0x1002000000000;
  v24 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.vision.EspressoFramework"];
  v25 = v24;
  if (!v24 || ([v24 infoDictionary], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "objectForKeyedSubscript:", @"CFBundleVersion"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "floatValue"), v29 = v28 < 205.0, v27, v26, v29))
  {
    v11->_CPUBindWA = 1;
  }

LABEL_15:
  context = espresso_create_context();
  v11->_ctx = context;
  if (!context)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = MEMORY[0x277D86220];
      v17 = "failed creating espresso context. this is commonly due to unsupported espresso engine.";
      v18 = 2;
      goto LABEL_22;
    }

    goto LABEL_43;
  }

  v11->_plan = espresso_create_plan();
  v14 = pathCopy;
  [pathCopy UTF8String];
  v15 = espresso_plan_add_network();
  if (!v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      networkVersionString = [(ADEspressoRunnerV1 *)v11 networkVersionString];
      v20 = networkVersionString;
      uTF8String = [networkVersionString UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String;
      _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "network version: %s", buf, 0xCu);
    }

    if (nameCopy)
    {
      v22 = nameCopy;
      [nameCopy UTF8String];
      v23 = espresso_network_select_configuration();
      if (v23)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 67109120;
        *&buf[4] = v23;
        v16 = MEMORY[0x277D86220];
        v17 = "failed selecting espresso configuration, status: %d";
        goto LABEL_19;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v31 = nameCopy;
        uTF8String2 = [nameCopy UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String2;
        _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "network configuration: %s", buf, 0xCu);
      }
    }

    v33 = espresso_plan_build();
    if (v33)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 67109120;
      *&buf[4] = v33;
      v16 = MEMORY[0x277D86220];
      v17 = "failed building espresso plan, status: %d";
      goto LABEL_19;
    }

LABEL_44:
    v34 = v11;
    goto LABEL_45;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v15;
    v16 = MEMORY[0x277D86220];
    v17 = "failed adding plan to espresso runner, status: %d";
LABEL_19:
    v18 = 8;
LABEL_22:
    _os_log_error_impl(&dword_240463000, v16, OS_LOG_TYPE_ERROR, v17, buf, v18);
  }

LABEL_43:
  v34 = 0;
LABEL_45:
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&v37);

  return v34;
}

@end