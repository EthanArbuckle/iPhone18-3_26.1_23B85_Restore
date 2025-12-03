@interface ABPKMLNetworkV2
- (ABPKMLNetworkV2)initWithNetworkPath:(id)path networkConfig:(id)config inputNames:(id)names outputNames:(id)outputNames useSurface:(BOOL)surface;
- (BOOL)changeNetWorkConfig:(id)config;
- (BOOL)execute;
- (void)dealloc;
@end

@implementation ABPKMLNetworkV2

- (ABPKMLNetworkV2)initWithNetworkPath:(id)path networkConfig:(id)config inputNames:(id)names outputNames:(id)outputNames useSurface:(BOOL)surface
{
  v60 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  configCopy = config;
  namesCopy = names;
  outputNamesCopy = outputNames;
  v55.receiver = self;
  v55.super_class = ABPKMLNetworkV2;
  v16 = [(ABPKMLNetworkV2 *)&v55 init];
  if (v16)
  {
    v46 = outputNamesCopy;
    v17 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v59 = configCopy;
      _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_DEBUG, " network  config %@. ", buf, 0xCu);
    }

    [pathCopy UTF8String];
    [pathCopy UTF8String];
    [configCopy UTF8String];
    if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
    {
      goto LABEL_31;
    }

    v18 = [pathCopy copy];
    networkPath = v16->_networkPath;
    v16->_networkPath = v18;

    v16->_useSurface = surface;
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v45 = namesCopy;
    v21 = namesCopy;
    v22 = [v21 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v51 + 1) + 8 * i);
          v27 = [[ABPKMLNetworkBufferV2 alloc] initWithName:v26 operation:v16->_operation bindMode:0 useSurface:v16->_useSurface];
          if (!v27)
          {
            v39 = __ABPKLogSharedInstance();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v59 = v26;
              _os_log_impl(&dword_23EDDC000, v39, OS_LOG_TYPE_ERROR, " Could not create network buffer %@. ", buf, 0xCu);
            }

            v38 = 0;
            namesCopy = v45;
            outputNamesCopy = v46;
            goto LABEL_30;
          }

          v28 = v27;
          [v20 setObject:v27 forKeyedSubscript:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v51 objects:v57 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    objc_storeStrong(&v16->_inputBuffers, v20);
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v30 = v46;
    v31 = [v30 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (!v31)
    {
      goto LABEL_21;
    }

    v32 = v31;
    v33 = *v48;
    v44 = pathCopy;
LABEL_15:
    v34 = 0;
    while (1)
    {
      if (*v48 != v33)
      {
        objc_enumerationMutation(v30);
      }

      v35 = *(*(&v47 + 1) + 8 * v34);
      v36 = [[ABPKMLNetworkBufferV2 alloc] initWithName:v35 operation:v16->_operation bindMode:1 useSurface:0];
      if (!v36)
      {
        break;
      }

      v37 = v36;
      [v29 setObject:v36 forKeyedSubscript:v35];

      if (v32 == ++v34)
      {
        v32 = [v30 countByEnumeratingWithState:&v47 objects:v56 count:16];
        pathCopy = v44;
        if (!v32)
        {
LABEL_21:

          objc_storeStrong(&v16->_outputBuffers, v29);
          if (!e5rt_execution_stream_create())
          {

            namesCopy = v45;
            outputNamesCopy = v46;
            goto LABEL_23;
          }

LABEL_31:
          last_error_message = e5rt_get_last_error_message();
          printf("E5RT operation failed with message = %s", last_error_message);
          exit(1);
        }

        goto LABEL_15;
      }
    }

    v40 = __ABPKLogSharedInstance();
    outputNamesCopy = v46;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = v35;
      _os_log_impl(&dword_23EDDC000, v40, OS_LOG_TYPE_ERROR, " Could not create network buffer %@. ", buf, 0xCu);
    }

    v38 = 0;
    pathCopy = v44;
    namesCopy = v45;
  }

  else
  {
LABEL_23:
    v38 = v16;
  }

LABEL_30:

  v41 = *MEMORY[0x277D85DE8];
  return v38;
}

- (BOOL)execute
{
  stream = self->_stream;
  operation = self->_operation;
  e5rt_execution_stream_encode_operation();
  v5 = self->_stream;
  if (e5rt_execution_stream_execute_sync())
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  v6 = self->_stream;
  e5rt_execution_stream_reset();
  return 1;
}

- (BOOL)changeNetWorkConfig:(id)config
{
  v16 = *MEMORY[0x277D85DE8];
  configCopy = config;
  if (e5rt_execution_stream_operation_release())
  {
    goto LABEL_10;
  }

  [(NSString *)self->_networkPath UTF8String];
  [(NSString *)self->_networkPath UTF8String];
  [configCopy UTF8String];
  if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
  {
    goto LABEL_10;
  }

  operation = self->_operation;
  if (e5rt_execution_stream_operation_get_num_inputs())
  {
    goto LABEL_10;
  }

  v6 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " Expected input names: ", buf, 2u);
  }

  v7 = malloc_type_malloc(0, 0x10040436913F5uLL);
  v8 = self->_operation;
  if (e5rt_execution_stream_operation_get_input_names() || (free(v7), v9 = self->_operation, e5rt_execution_stream_operation_get_num_outputs()) || (v10 = malloc_type_malloc(0, 0x10040436913F5uLL), v11 = self->_operation, e5rt_execution_stream_operation_get_output_names()))
  {
LABEL_10:
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  free(v10);

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)dealloc
{
  e5rt_execution_stream_release();
  e5rt_execution_stream_operation_release();
  v3.receiver = self;
  v3.super_class = ABPKMLNetworkV2;
  [(ABPKMLNetworkV2 *)&v3 dealloc];
}

@end