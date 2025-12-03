@interface ADEspressoRunnerV2
- (ADEspressoRunnerV2)initWithPath:(id)path forEngine:(unint64_t)engine configurationName:(id)name;
- (BOOL)canBindFormat:(unsigned int)format e5rtFormat:(int)e5rtFormat;
- (__CVBuffer)createAndRegisterPixelBufferForDescriptor:(id)descriptor;
- (e5rt_io_port)retainPortForDescriptor:(id)descriptor usingOperation:(e5rt_execution_stream_operation *)operation;
- (id).cxx_construct;
- (id)registerDescriptor:(id)descriptor;
- (int64_t)execute;
- (int64_t)prewireSurfaces:(id)surfaces toDescriptors:(id)descriptors;
- (int64_t)registerIOSurface:(__IOSurface *)surface forDescriptor:(id)descriptor usingOperation:(e5rt_execution_stream_operation *)operation;
- (int64_t)registerIOSurface:(__IOSurface *)surface forSurfacePort:(e5rt_io_port *)port surfaceDesc:(e5rt_surface_desc *)desc;
- (int64_t)registerIOSurface:(__IOSurface *)surface forTensorPort:(e5rt_io_port *)port;
- (int64_t)registerPixelBufferPtr:(__CVBuffer *)ptr forDescriptor:(id)descriptor forSurfacePort:(e5rt_io_port *)port;
- (int64_t)registerPixelBufferPtr:(__CVBuffer *)ptr forDescriptor:(id)descriptor forTensorPort:(e5rt_io_port *)port;
- (int64_t)registerPixelBufferPtr:(__CVBuffer *)ptr forDescriptor:(id)descriptor usingOperation:(e5rt_execution_stream_operation *)operation;
- (int64_t)updateFeedbackLoopInputBuffer:(__CVBuffer *)buffer inputDescriptor:(id)descriptor outputBuffer:(__CVBuffer *)outputBuffer outputDescriptor:(id)outputDescriptor;
- (void)dealloc;
@end

@implementation ADEspressoRunnerV2

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 18) = 1065353216;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 28) = 1065353216;
  return self;
}

- (void)dealloc
{
  if (self->_operation)
  {
    e5rt_execution_stream_operation_release();
  }

  if (self->_stream)
  {
    e5rt_execution_stream_release();
  }

  if (self->_dummyStream)
  {
    e5rt_execution_stream_release();
  }

  v3.receiver = self;
  v3.super_class = ADEspressoRunnerV2;
  [(ADEspressoRunnerV2 *)&v3 dealloc];
}

- (int64_t)execute
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 335678456;
  v10 = 0u;
  v11 = 0u;
  kdebug_trace();
  if (e5rt_execution_stream_encode_operation())
  {
    last_error_message = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "e5rt_execution_stream_encode_operation failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v13 = last_error_message;
    v4 = MEMORY[0x277D86220];
    goto LABEL_16;
  }

  if (e5rt_execution_stream_execute_sync())
  {
    v5 = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "e5rt_execution_stream_execute_sync failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v13 = v5;
    v4 = MEMORY[0x277D86220];
    goto LABEL_16;
  }

  if (!e5rt_execution_stream_reset())
  {
    v7 = 0;
    goto LABEL_18;
  }

  v6 = e5rt_get_last_error_message();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = "e5rt_execution_stream_reset failed";
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = v6;
    v4 = MEMORY[0x277D86220];
LABEL_16:
    _os_log_error_impl(&dword_240463000, v4, OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
  }

LABEL_17:
  v7 = -22968;
LABEL_18:
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&v9);
  objc_sync_exit(selfCopy);

  return v7;
}

- (int64_t)prewireSurfaces:(id)surfaces toDescriptors:(id)descriptors
{
  v53 = *MEMORY[0x277D85DE8];
  surfacesCopy = surfaces;
  v39 = surfacesCopy;
  descriptorsCopy = descriptors;
  if (self->_dummyOperations)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = MEMORY[0x277D86220];
      v8 = "buffers already prewired. cannot prewire a second time";
      v9 = 2;
LABEL_36:
      _os_log_error_impl(&dword_240463000, v7, OS_LOG_TYPE_ERROR, v8, buf, v9);
    }

LABEL_37:
    v21 = -22967;
    goto LABEL_38;
  }

  if (!surfacesCopy || !descriptorsCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 134218240;
    v47 = surfacesCopy;
    v48 = 2048;
    v49 = descriptorsCopy;
    v7 = MEMORY[0x277D86220];
    v8 = "nil inputs in prewire method: %p, %p";
LABEL_35:
    v9 = 22;
    goto LABEL_36;
  }

  v10 = [surfacesCopy count];
  if (v10 != [descriptorsCopy count])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 134218240;
    v47 = [descriptorsCopy count];
    v48 = 2048;
    v49 = [surfacesCopy count];
    v7 = MEMORY[0x277D86220];
    v8 = "cannot prewire buffers: number of descriptors %lu does not match number of surface arrays %lu.";
    goto LABEL_35;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = surfacesCopy;
  v12 = 0;
  v13 = [v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v13)
  {
    v14 = *v43;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v42 + 1) + 8 * i) count];
        if (v12 <= v16)
        {
          v12 = v16;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v13);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v47 = v12;
    _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "creating %lu dummy stream operations for prewiring", buf, 0xCu);
  }

  v38 = [MEMORY[0x277CCAC20] pointerFunctionsWithOptions:514];
  [v38 setRelinquishFunction:dummyOpRelinquishFunction];
  [v38 setSizeFunction:dummyOpSizeFunction];
  obj = [MEMORY[0x277CCAC18] pointerArrayWithPointerFunctions:v38];
  if (v12)
  {
    v17 = 0;
    v18 = MEMORY[0x277D86220];
    while (1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@__op%lu", self->_path, v17];
      if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v19;
        _os_log_impl(&dword_240463000, v18, OS_LOG_TYPE_DEFAULT, "creating dummey operation %@.", buf, 0xCu);
      }

      v20 = v19;
      [v19 UTF8String];
      [(NSString *)self->_path UTF8String];
      [(NSString *)self->_functionName UTF8String];
      if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
      {
        break;
      }

      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v47 = 0;
          _os_log_impl(&dword_240463000, v18, OS_LOG_TYPE_DEFAULT, "registered dummy op %p", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v47 = 0;
        _os_log_debug_impl(&dword_240463000, v18, OS_LOG_TYPE_DEBUG, "registered dummy op %p", buf, 0xCu);
      }

      [obj addPointer:0];

      if (v12 == ++v17)
      {
        goto LABEL_39;
      }
    }

    last_error_message = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v47 = "failed creating dummy stream operation";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v47 = last_error_message;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
    }
  }

  else
  {
LABEL_39:
    for (j = 0; j < [descriptorsCopy count]; ++j)
    {
      v24 = [descriptorsCopy objectAtIndexedSubscript:j];
      v25 = [v11 objectAtIndexedSubscript:j];
      if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v25 count];
        name = [v24 name];
        *buf = 134218242;
        v47 = v26;
        v48 = 2112;
        v49 = name;
        _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "prewiring %lu surfaces to input %@", buf, 0x16u);
      }

      if (v12)
      {
        v28 = 0;
        while (1)
        {
          v29 = [v25 objectAtIndexedSubscript:{v28 % objc_msgSend(v25, "count")}];

          v21 = -[ADEspressoRunnerV2 registerIOSurface:forDescriptor:usingOperation:](self, "registerIOSurface:forDescriptor:usingOperation:", v29, v24, [obj pointerAtIndex:v28]);
          if (v21)
          {
            break;
          }

          if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            name2 = [v24 name];
            *buf = 134218498;
            v47 = v28;
            v48 = 2112;
            v49 = name2;
            v50 = 2048;
            v51 = j;
            _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "registered surface idx %lu from descriptor %@ to dummy op %lu", buf, 0x20u);
          }

          if (v12 == ++v28)
          {
            goto LABEL_51;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          name3 = [v24 name];
          *buf = 138412546;
          v47 = name3;
          v48 = 2048;
          v49 = v29;
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prewire %@: unable to bind iosurface %p", buf, 0x16u);
        }

        goto LABEL_61;
      }

LABEL_51:
    }

    if (self->_dummyStream)
    {
      goto LABEL_63;
    }

    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "creating dummy stream for prewiring", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "creating dummy stream for prewiring", buf, 2u);
    }

    if (!e5rt_execution_stream_create())
    {
LABEL_63:
      v32 = 0;
      while (v32 < [obj count])
      {
        [obj pointerAtIndex:v32++];
        if (e5rt_execution_stream_encode_operation())
        {
          v33 = e5rt_get_last_error_message();
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v47 = "failed encoding dummy operation to stream";
            _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v47 = v33;
            v34 = MEMORY[0x277D86220];
            goto LABEL_85;
          }

          goto LABEL_60;
        }
      }

      if (!e5rt_execution_stream_prewire_in_use_allocations())
      {
        objc_storeStrong(&self->_dummyOperations, obj);
        v21 = 0;
        goto LABEL_61;
      }

      v36 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v47 = "failed prewiring stream";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v47 = v36;
        v34 = MEMORY[0x277D86220];
        goto LABEL_85;
      }
    }

    else
    {
      v37 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v47 = "failed creating dummy stream";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v47 = v37;
        v34 = MEMORY[0x277D86220];
LABEL_85:
        _os_log_error_impl(&dword_240463000, v34, OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
      }
    }
  }

LABEL_60:
  v21 = -22967;
LABEL_61:

LABEL_38:
  return v21;
}

- (int64_t)updateFeedbackLoopInputBuffer:(__CVBuffer *)buffer inputDescriptor:(id)descriptor outputBuffer:(__CVBuffer *)outputBuffer outputDescriptor:(id)outputDescriptor
{
  v41 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  outputDescriptorCopy = outputDescriptor;
  Width = CVPixelBufferGetWidth(*buffer);
  if (Width != CVPixelBufferGetWidth(*outputBuffer) || (v13 = CVPixelBufferGetHeight(*buffer), v13 != CVPixelBufferGetHeight(*outputBuffer)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = CVPixelBufferGetWidth(*buffer);
      Height = CVPixelBufferGetHeight(*buffer);
      v26 = CVPixelBufferGetWidth(*outputBuffer);
      v27 = CVPixelBufferGetHeight(*outputBuffer);
      *buf = 134218752;
      *&buf[4] = v24;
      v35 = 2048;
      v36 = Height;
      v37 = 2048;
      v38 = v26;
      v39 = 2048;
      v40 = v27;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Input and output pixel buffers have different dimensions (%zux%zu) vs (%zux%zu)", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(*buffer);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(*outputBuffer))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = CVPixelBufferGetPixelFormatType(*buffer);
      v20 = buf;
      PixelBufferUtils::pixelFormatAsString(v19, buf);
      if (v37 < 0)
      {
        v20 = *buf;
      }

      v21 = CVPixelBufferGetPixelFormatType(*outputBuffer);
      PixelBufferUtils::pixelFormatAsString(v21, __p);
      if (v29 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      *v30 = 136315394;
      v31 = v20;
      v32 = 2080;
      v33 = v22;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Input and output pixel buffers have different formats (%s) vs (%s)", v30, 0x16u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_9:
    v16 = -22953;
    goto LABEL_10;
  }

  v15 = *buffer;
  *buffer = *outputBuffer;
  *outputBuffer = v15;
  v16 = [(ADEspressoRunnerV2 *)self registerPixelBuffer:*buffer forDescriptor:descriptorCopy];
  if (v16)
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
    v16 = [(ADEspressoRunnerV2 *)self registerPixelBuffer:*outputBuffer forDescriptor:outputDescriptorCopy];
    if (v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      name2 = [outputDescriptorCopy name];
      *buf = 136315138;
      *&buf[4] = [name2 UTF8String];
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to re-register %s", buf, 0xCu);
    }
  }

LABEL_10:

  return v16;
}

- (int64_t)registerPixelBufferPtr:(__CVBuffer *)ptr forDescriptor:(id)descriptor usingOperation:(e5rt_execution_stream_operation *)operation
{
  v20 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v15 = 335679308;
  v16 = 0u;
  v17 = 0u;
  kdebug_trace();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (descriptorCopy)
  {
    v14 = [(ADEspressoRunnerV2 *)selfCopy retainPortForDescriptor:descriptorCopy usingOperation:operation];
    if (!v14)
    {
LABEL_19:
      v11 = -22971;
      goto LABEL_20;
    }

    if (e5rt_io_port_is_surface())
    {
      last_error_message = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v19 = "e5rt_io_port_is_surface failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v19 = last_error_message;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
      }

      v11 = -22971;
    }

    else
    {
      v11 = [(ADEspressoRunnerV2 *)selfCopy registerPixelBufferPtr:ptr forDescriptor:descriptorCopy forTensorPort:&v14];
    }

    if (v14 && e5rt_io_port_release())
    {
      v12 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v19 = "e5rt_io_port_release failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v19 = v12;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot register buffer for nil descriptor", buf, 2u);
    }

    v11 = -22953;
  }

LABEL_20:
  objc_sync_exit(selfCopy);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(&v15);
  return v11;
}

- (int64_t)registerPixelBufferPtr:(__CVBuffer *)ptr forDescriptor:(id)descriptor forTensorPort:(e5rt_io_port *)port
{
  v38 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v9 = *ptr;
  if (!*ptr)
  {
    if (e5rt_io_port_retain_tensor_desc())
    {
      last_error_message = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v37 = "e5rt_io_port_retain_tensor_desc failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v37 = last_error_message;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      shape = e5rt_tensor_desc_get_shape();
      v13 = shape == 0;
      if (shape)
      {
        v15 = e5rt_get_last_error_message();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v37 = "e5rt_tensor_desc_get_shape failed";
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v37 = v15;
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
        }
      }

      else
      {
        v16 = MEMORY[0xFFFFFFFFFFFFFFF0];
        imageDescriptor = [descriptorCopy imageDescriptor];
        if (PixelBufferUtils::componentsPerPixelForPixelFormat([imageDescriptor pixelFormat], 0) == 1)
        {
          imageDescriptor2 = [descriptorCopy imageDescriptor];
          v19 = PixelBufferUtils::planeCountForPixelFormat([imageDescriptor2 pixelFormat]) == 0;

          v20 = v34;
          if (v19)
          {
            v21 = v34 - 2;
            if (v34 != 2)
            {
              v22 = 0;
              do
              {
                v23 = *v22++;
                v16 *= v23;
                --v21;
              }

              while (v21);
            }
          }
        }

        else
        {

          v20 = v34;
        }

        v24 = *(8 * v20 - 8);
        imageDescriptor3 = [descriptorCopy imageDescriptor];
        pixelFormat = [imageDescriptor3 pixelFormat];
        pixelBufferOut = 0;
        BufferAttributes = getBufferAttributes();
        v28 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v24, v16, pixelFormat, BufferAttributes, &pixelBufferOut);
        v29 = pixelBufferOut;
        if (v28)
        {
          v29 = 0;
        }

        *ptr = v29;
      }
    }

    if (v13)
    {
      v9 = *ptr;
      if (*ptr)
      {
        goto LABEL_2;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        name = [descriptorCopy name];
        v32 = name;
        uTF8String = [name UTF8String];
        *buf = 136315138;
        v37 = uTF8String;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed allocating CVPixelBuffer for %s", buf, 0xCu);
      }
    }

    v11 = -22971;
    goto LABEL_33;
  }

LABEL_2:
  IOSurface = CVPixelBufferGetIOSurface(v9);
  if (IOSurface)
  {
    v11 = [(ADEspressoRunnerV2 *)self registerIOSurface:IOSurface forTensorPort:port];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Provided pixelbuffer is not io-surface backed", buf, 2u);
    }

    v11 = -22953;
  }

LABEL_33:

  return v11;
}

- (BOOL)canBindFormat:(unsigned int)format e5rtFormat:(int)e5rtFormat
{
  v10 = *MEMORY[0x277D85DE8];
  if (e5rt_cvpb_4cc_to_surface_format())
  {
    last_error_message = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "e5rt_cvpb_4cc_to_surface_format failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      *buf = 136315138;
      v9 = last_error_message;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = e5rtFormat == 0;
  }

  return v6;
}

- (int64_t)registerPixelBufferPtr:(__CVBuffer *)ptr forDescriptor:(id)descriptor forSurfacePort:(e5rt_io_port *)port
{
  v25 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    if (e5rt_io_port_retain_surface_desc())
    {
      last_error_message = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "e5rt_io_port_retain_surface_desc failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 136315138;
      v24 = last_error_message;
      v10 = MEMORY[0x277D86220];
LABEL_25:
      _os_log_error_impl(&dword_240463000, v10, OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
LABEL_26:
      v11 = -22971;
      goto LABEL_27;
    }

    if (e5rt_surface_desc_get_width())
    {
      v12 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "e5rt_surface_desc_get_width failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 136315138;
      v24 = v12;
      v10 = MEMORY[0x277D86220];
      goto LABEL_25;
    }

    if (e5rt_surface_desc_get_height())
    {
      v13 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "e5rt_surface_desc_get_height failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 136315138;
      v24 = v13;
      v10 = MEMORY[0x277D86220];
      goto LABEL_25;
    }

    if (e5rt_surface_desc_get_format())
    {
      v14 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "e5rt_surface_desc_get_format failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 136315138;
      v24 = v14;
      v10 = MEMORY[0x277D86220];
      goto LABEL_25;
    }

    if (e5rt_surface_desc_get_custom_row_strides())
    {
      v16 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "e5rt_surface_desc_get_custom_row_strides failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = v16;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
      }

LABEL_33:
      v11 = -22971;
      goto LABEL_27;
    }

    v17 = *ptr;
    if (!*ptr)
    {
      imageDescriptor = [descriptorCopy imageDescriptor];
      *ptr = PixelBufferUtils::createPixelBuffer(0, 0, [imageDescriptor pixelFormat], 1);

      v17 = *ptr;
      if (!*ptr)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          name = [descriptorCopy name];
          v21 = name;
          uTF8String = [name UTF8String];
          *buf = 136315138;
          v24 = uTF8String;
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed allocating CVPixelBuffer for %s", buf, 0xCu);
        }

        goto LABEL_33;
      }
    }

    IOSurface = CVPixelBufferGetIOSurface(v17);
    if (IOSurface)
    {
      v11 = [(ADEspressoRunnerV2 *)self registerIOSurface:IOSurface forSurfacePort:port surfaceDesc:0];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Provided pixelbuffer is not io-surface backed", buf, 2u);
      }

      v11 = -22953;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot register buffer for nil descriptor", buf, 2u);
    }

    v11 = -22953;
  }

LABEL_27:

  return v11;
}

- (__CVBuffer)createAndRegisterPixelBufferForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  texture = 0;
  v5 = [(ADEspressoRunnerV2 *)self registerPixelBufferPtr:&texture forDescriptor:descriptorCopy];
  v6 = texture;
  if (v5)
  {
    CVPixelBufferRelease(texture);
    v6 = 0;
  }

  return v6;
}

- (int64_t)registerIOSurface:(__IOSurface *)surface forSurfacePort:(e5rt_io_port *)port surfaceDesc:(e5rt_surface_desc *)desc
{
  v19 = *MEMORY[0x277D85DE8];
  PixelFormat = IOSurfaceGetPixelFormat(surface);
  if (e5rt_surface_desc_get_format())
  {
    last_error_message = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "e5rt_surface_desc_get_format failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return -22971;
    }

    goto LABEL_5;
  }

  if (![(ADEspressoRunnerV2 *)self canBindFormat:PixelFormat e5rtFormat:0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      PixelBufferUtils::pixelFormatAsString(PixelFormat, buf);
      v13 = v15 >= 0 ? buf : *buf;
      *v16 = 67109378;
      *&v16[4] = 0;
      v17 = 2080;
      v18 = v13;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unable to bind surface. mismatch in pixel formats. expecting e5rt format %d but got ostype %s", v16, 0x12u);
      if (v15 < 0)
      {
        operator delete(*buf);
      }
    }

    return -22971;
  }

  *v16 = 0;
  if (e5rt_surface_object_create_from_iosurface())
  {
    v8 = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "e5rt_surface_object_create_from_iosurface failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    v9 = MEMORY[0x277D86220];
    goto LABEL_35;
  }

  if (!e5rt_io_port_bind_surface_object())
  {
    v10 = 0;
    goto LABEL_20;
  }

  v12 = e5rt_get_last_error_message();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "e5rt_io_port_bind_surface_object failed";
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = v12;
    v9 = MEMORY[0x277D86220];
LABEL_35:
    _os_log_error_impl(&dword_240463000, v9, OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
  }

LABEL_19:
  v10 = -22971;
LABEL_20:
  if (*v16 && e5rt_surface_object_release())
  {
    last_error_message = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "e5rt_surface_object_release failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return -22971;
    }

LABEL_5:
    *buf = 136315138;
    *&buf[4] = last_error_message;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
    return -22971;
  }

  return v10;
}

- (int64_t)registerIOSurface:(__IOSurface *)surface forTensorPort:(e5rt_io_port *)port
{
  v11 = *MEMORY[0x277D85DE8];
  if (e5rt_buffer_object_create_from_iosurface())
  {
    last_error_message = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "e5rt_buffer_object_create_from_iosurface failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return -22971;
    }

    *buf = 136315138;
    v10 = last_error_message;
    v5 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  if (!e5rt_io_port_bind_buffer_object())
  {
    return 0;
  }

  v6 = e5rt_get_last_error_message();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = "e5rt_io_port_bind_buffer_object failed";
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = v6;
    v5 = MEMORY[0x277D86220];
LABEL_14:
    _os_log_error_impl(&dword_240463000, v5, OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
  }

  return -22971;
}

- (int64_t)registerIOSurface:(__IOSurface *)surface forDescriptor:(id)descriptor usingOperation:(e5rt_execution_stream_operation *)operation
{
  v21 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v16 = 335679308;
  v17 = 0u;
  v18 = 0u;
  kdebug_trace();
  if (surface)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v15 = [(ADEspressoRunnerV2 *)selfCopy retainPortForDescriptor:descriptorCopy usingOperation:operation];
    if (v15)
    {
      if (e5rt_io_port_is_surface())
      {
        last_error_message = e5rt_get_last_error_message();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v20 = "e5rt_io_port_is_surface failed";
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v20 = last_error_message;
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
        }

        v11 = -22971;
      }

      else
      {
        v11 = [(ADEspressoRunnerV2 *)selfCopy registerIOSurface:surface forTensorPort:&v15];
      }

      if (!v15 || !e5rt_io_port_release())
      {
        goto LABEL_20;
      }

      v12 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v20 = "e5rt_io_port_release failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v20 = v12;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
      }
    }

    v11 = -22971;
LABEL_20:
    objc_sync_exit(selfCopy);

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    name = [descriptorCopy name];
    *buf = 138412290;
    v20 = name;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "espresso runner failed registering %@: null surface", buf, 0xCu);
  }

  v11 = -22971;
LABEL_21:
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&v16);

  return v11;
}

- (e5rt_io_port)retainPortForDescriptor:(id)descriptor usingOperation:(e5rt_execution_stream_operation *)operation
{
  v23 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  if ([descriptorCopy isInput])
  {
    name = [descriptorCopy name];
    [name UTF8String];
    v6 = e5rt_execution_stream_operation_retain_input_port() == 0;

    if (!v6)
    {
      last_error_message = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = MEMORY[0x277CCACA8];
        name2 = [descriptorCopy name];
        v15 = [v13 stringWithFormat:@"e5rt_execution_stream_operation_retain_input_port failed on input %@", name2];
        v16 = v15;
        *buf = 136315138;
        uTF8String = [v15 UTF8String];
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        uTF8String = last_error_message;
        v8 = MEMORY[0x277D86220];
LABEL_13:
        _os_log_error_impl(&dword_240463000, v8, OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
      }
    }
  }

  else
  {
    name3 = [descriptorCopy name];
    [name3 UTF8String];
    v10 = e5rt_execution_stream_operation_retain_output_port() == 0;

    if (!v10)
    {
      v11 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v17 = MEMORY[0x277CCACA8];
        name4 = [descriptorCopy name];
        v19 = [v17 stringWithFormat:@"e5rt_execution_stream_operation_retain_output_port failed on output %@", name4];
        v20 = v19;
        *buf = 136315138;
        uTF8String = [v19 UTF8String];
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        uTF8String = v11;
        v8 = MEMORY[0x277D86220];
        goto LABEL_13;
      }
    }
  }

  return 0;
}

- (id)registerDescriptor:(id)descriptor
{
  v28 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v23 = 335679308;
  v24 = 0u;
  v25 = 0u;
  kdebug_trace();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = [(ADEspressoRunnerV2 *)selfCopy retainPortForDescriptor:descriptorCopy usingOperation:selfCopy->_operation];
  if (e5rt_io_port_is_surface())
  {
    last_error_message = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "e5rt_io_port_is_surface failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = last_error_message;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  if (e5rt_io_port_retain_tensor_desc())
  {
    v14 = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "e5rt_io_port_retain_tensor_desc failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = v14;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_get_shape())
  {
    v15 = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "e5rt_tensor_desc_get_shape failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = v15;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
  if (!e5rt_tensor_desc_get_strides())
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    if (e5rt_tensor_desc_alloc_buffer_object())
    {
      v18 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "e5rt_tensor_desc_alloc_buffer_object failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      *buf = 136315138;
      v27 = v18;
      v19 = MEMORY[0x277D86220];
    }

    else if (e5rt_io_port_bind_buffer_object())
    {
      v20 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "e5rt_io_port_bind_buffer_object failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      *buf = 136315138;
      v27 = v20;
      v19 = MEMORY[0x277D86220];
    }

    else
    {
      if (!e5rt_buffer_object_get_data_ptr())
      {
        v7 = 1;
        goto LABEL_8;
      }

      v21 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "e5rt_buffer_object_get_data_ptr failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      *buf = 136315138;
      v27 = v21;
      v19 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_240463000, v19, OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
LABEL_55:
    v7 = 0;
    goto LABEL_8;
  }

  v16 = e5rt_get_last_error_message();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v27 = "e5rt_tensor_desc_get_strides failed";
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v27 = v16;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
  }

  v7 = 0;
  v8 = 0;
LABEL_8:
  if (v22 && e5rt_io_port_release())
  {
    v10 = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "e5rt_io_port_release failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = v10;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
    }
  }

  else if (v7)
  {
    v11 = [ADEspressoBufferHandle alloc];
    name = [descriptorCopy name];
    v13 = [(ADEspressoBufferHandle *)v11 initWithName:name rawData:0 dimensions:v9 strides:v8];

    goto LABEL_36;
  }

  v13 = 0;
LABEL_36:

  objc_sync_exit(selfCopy);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&v23);

  return v13;
}

- (ADEspressoRunnerV2)initWithPath:(id)path forEngine:(unint64_t)engine configurationName:(id)name
{
  v61 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  nameCopy = name;
  v51 = 335679304;
  v52 = 0u;
  v53 = 0u;
  kdebug_trace();
  v50.receiver = self;
  v50.super_class = ADEspressoRunnerV2;
  v9 = [(ADEspressoRunnerV2 *)&v50 init];
  if (!v9)
  {
    goto LABEL_68;
  }

  if (nameCopy)
  {
    v10 = nameCopy;
  }

  else
  {
    v10 = @"main";
  }

  functionName = v9->_functionName;
  v9->_functionName = &v10->isa;

  objc_storeStrong(&v9->_path, path);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = pathCopy;
    _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "loading network from: %@", buf, 0xCu);
  }

  v49 = 0;
  dummyOperations = v9->_dummyOperations;
  v9->_dummyOperations = 0;

  v9->_dummyStream = 0;
  [(NSString *)v9->_path UTF8String];
  if (e5rt_program_library_create())
  {
    last_error_message = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v55 = "e5rt_program_library_create failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v55 = last_error_message;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
    }

    v14 = 0;
    goto LABEL_48;
  }

  theDict = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v9->_functionName;
    *buf = 138412290;
    v55 = v15;
    _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Espresso runner requested function: %@", buf, 0xCu);
  }

  [(NSString *)v9->_functionName UTF8String];
  if (!e5rt_program_library_get_function_metadata())
  {
    v17 = CFDictionaryGetValue(theDict, @"UserVersion");
    networkVersionString = v9->_networkVersionString;
    v9->_networkVersionString = v17;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [(NSString *)v9->_networkVersionString UTF8String];
      *buf = 136315138;
      v55 = uTF8String;
      _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "network version: %s", buf, 0xCu);
    }

    v20 = objc_opt_new();
    v21 = CFDictionaryGetValue(theDict, @"Ops");
    ops = v9->_ops;
    v9->_ops = v21;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v9->_ops;
    v23 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (!v23)
    {
LABEL_40:

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        allObjects = [v20 allObjects];
        v30 = [allObjects componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v55 = v30;
        _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "network backend is: %@", buf, 0xCu);
      }

      v14 = 1;
LABEL_45:

      goto LABEL_46;
    }

    v24 = *v45;
LABEL_25:
    v25 = 0;
    while (1)
    {
      if (*v45 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v44 + 1) + 8 * v25);
      v27 = [v26 objectForKeyedSubscript:@"ComputeBackend"];
      [v20 addObject:v27];
      if (engine <= 2)
      {
        break;
      }

      if (engine - 3 < 2)
      {
        v28 = @"ANE";
        goto LABEL_37;
      }

      if (engine != 5)
      {
        goto LABEL_43;
      }

LABEL_38:

      if (v23 == ++v25)
      {
        v23 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v23)
        {
          goto LABEL_25;
        }

        goto LABEL_40;
      }
    }

    if (engine)
    {
      v28 = @"GPU";
      if (engine != 2)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v28 = @"CPU";
    }

LABEL_37:
    if (([v27 isEqualToString:v28] & 1) == 0)
    {
LABEL_43:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v37 = [v26 objectForKeyedSubscript:@"OpName"];
        ADCommonUtils::espressoEngineAsString(engine, __p);
        if (v43 >= 0)
        {
          v38 = __p;
        }

        else
        {
          v38 = __p[0];
        }

        *buf = 138412802;
        v55 = v37;
        v56 = 2112;
        v57 = v27;
        v58 = 2080;
        v59 = v38;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "op '%@' backend (%@) does not match requested engine (%s)", buf, 0x20u);
        if (v43 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = 0;
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v16 = e5rt_get_last_error_message();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v55 = "e5rt_program_library_get_function_metadata failed";
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v55 = v16;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
  }

  v14 = 0;
LABEL_46:
  if (theDict)
  {
    CFRelease(theDict);
  }

LABEL_48:
  if (v49 && e5rt_program_library_release())
  {
    v31 = e5rt_get_last_error_message();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v55 = "e5rt_program_library_release failed";
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v55 = v31;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
    }

    goto LABEL_67;
  }

  if (v14)
  {
    [(NSString *)v9->_path UTF8String];
    [(NSString *)v9->_path UTF8String];
    [(NSString *)v9->_functionName UTF8String];
    if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
    {
      v32 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v55 = "e5rt_execution_stream_operation_create_precompiled_compute_operation failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      *buf = 136315138;
      v55 = v32;
      v33 = MEMORY[0x277D86220];
      goto LABEL_78;
    }

    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      createOperationInputsOutputsDescription(v9->_operation);
    }

    if (e5rt_execution_stream_create())
    {
      v34 = e5rt_get_last_error_message();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v55 = "e5rt_execution_stream_create failed";
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      *buf = 136315138;
      v55 = v34;
      v33 = MEMORY[0x277D86220];
LABEL_78:
      _os_log_error_impl(&dword_240463000, v33, OS_LOG_TYPE_ERROR, "E5RT operation failed with message = %s", buf, 0xCu);
      goto LABEL_67;
    }

LABEL_68:
    v35 = v9;
    goto LABEL_69;
  }

LABEL_67:
  v35 = 0;
LABEL_69:
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&v51);

  return v35;
}

@end