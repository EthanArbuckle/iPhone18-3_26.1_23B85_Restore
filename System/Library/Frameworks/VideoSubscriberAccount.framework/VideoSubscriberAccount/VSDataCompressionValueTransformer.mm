@interface VSDataCompressionValueTransformer
- (id)_dataByPerformingOperation:(int)operation onData:(id)data;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation VSDataCompressionValueTransformer

- (id)_dataByPerformingOperation:(int)operation onData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  memset(&v17, 0, sizeof(v17));
  if (compression_stream_init(&v17, operation, COMPRESSION_ZLIB))
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:*__error() userInfo:0];
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VSDataCompressionValueTransformer _dataByPerformingOperation:v6 onData:v7];
    }

    goto LABEL_5;
  }

  v17.src_ptr = [dataCopy bytes];
  v17.src_size = [dataCopy length];
  v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v11 = malloc_type_malloc(0x1000uLL, 0xEA2F9226uLL);
  if (v11)
  {
    v12 = v11;
    v13 = operation == 0;
    v17.dst_ptr = v11;
    v17.dst_size = 4096;
    v14 = *MEMORY[0x277CCA590];
    while (1)
    {
      v15 = compression_stream_process(&v17, v13);
      if (v15)
      {
        break;
      }

      if (!v17.dst_size)
      {
        [v10 appendBytes:v12 length:{4096, v17.dst_ptr}];
        v17.dst_ptr = v12;
        v17.dst_size = 4096;
      }
    }

    if (v15 == COMPRESSION_STATUS_ERROR)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:v14 code:*__error() userInfo:{0, v17.dst_ptr}];
      v16 = VSErrorLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_error_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_ERROR, "Error processing stream: %@", buf, 0xCu);
      }

      v10 = 0;
    }

    else
    {
      if (v15 == COMPRESSION_STATUS_END && v17.dst_size != 4096)
      {
        [v10 appendBytes:v12 length:{4096 - v17.dst_size, v17.dst_ptr}];
      }

      v6 = 0;
    }

    free(v12);
  }

  else
  {
    v6 = 0;
  }

  compression_stream_destroy(&v17);
  if (!v10)
  {
LABEL_5:
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
    }

    v8 = [VSFailable failableWithError:v6, v17.dst_ptr];
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = [VSFailable failableWithObject:v10];

  if (!v8)
  {
LABEL_8:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"The result parameter must not be nil.", v17.dst_ptr}];
  }

LABEL_9:

  return v8;
}

- (id)transformedValue:(id)value
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  valueCopy = value;
  v26 = valueCopy;
  v5 = v22[5];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277CBEAD8];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v7 raise:*MEMORY[0x277CBE660] format:{@"Unexpectedly, inputValue was %@, instead of VSFailable.", v9}];
    }

    v10 = v6;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__VSDataCompressionValueTransformer_transformedValue___block_invoke;
    v20[3] = &unk_278B73A80;
    v20[4] = &v21;
    [v10 unwrapObject:v20 error:&__block_literal_global_6];
  }

  v11 = v22[5];
  if (v11)
  {
    v12 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = MEMORY[0x277CBEAD8];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        [v13 raise:*MEMORY[0x277CBE660] format:{@"Unexpectedly, inputValue was %@, instead of NSData.", v15}];
      }

      v16 = v12;
      v17 = [v16 copy];
      v18 = [(VSDataCompressionValueTransformer *)self _dataByPerformingOperation:0 onData:v17];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
LABEL_11:
    v18 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v18;
}

- (id)reverseTransformedValue:(id)value
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  valueCopy = value;
  v26 = valueCopy;
  v5 = v22[5];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277CBEAD8];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v7 raise:*MEMORY[0x277CBE660] format:{@"Unexpectedly, inputValue was %@, instead of VSFailable.", v9}];
    }

    v10 = v6;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __61__VSDataCompressionValueTransformer_reverseTransformedValue___block_invoke;
    v20[3] = &unk_278B73A80;
    v20[4] = &v21;
    [v10 unwrapObject:v20 error:&__block_literal_global_26];
  }

  v11 = v22[5];
  if (v11)
  {
    v12 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = MEMORY[0x277CBEAD8];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        [v13 raise:*MEMORY[0x277CBE660] format:{@"Unexpectedly, inputValue was %@, instead of NSData.", v15}];
      }

      v16 = v12;
      v17 = [v16 copy];
      v18 = [(VSDataCompressionValueTransformer *)self _dataByPerformingOperation:1 onData:v17];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
LABEL_11:
    v18 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v18;
}

- (void)_dataByPerformingOperation:(uint64_t)a1 onData:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error creating stream: %@", &v2, 0xCu);
}

@end