@interface _ANEChainingRequest
+ (id)chainingRequestWithInputs:(id)a3 outputSets:(id)a4 lbInputSymbolId:(id)a5 lbOutputSymbolId:(id)a6 procedureIndex:(id)a7 signalEvents:(id)a8 transactionHandle:(id)a9 fwEnqueueDelay:(id)a10 memoryPoolId:(id)a11;
- (BOOL)validate;
- (_ANEChainingRequest)initWithCoder:(id)a3;
- (_ANEChainingRequest)initWithInputs:(id)a3 outputs:(id)a4 lbInputSymbolId:(id)a5 lbOutputSymbolId:(id)a6 procedureIndex:(id)a7 signalEvents:(id)a8 transactionHandle:(id)a9 fwEnqueueDelay:(id)a10 memoryPoolId:(id)a11;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)validate;
@end

@implementation _ANEChainingRequest

- (_ANEChainingRequest)initWithInputs:(id)a3 outputs:(id)a4 lbInputSymbolId:(id)a5 lbOutputSymbolId:(id)a6 procedureIndex:(id)a7 signalEvents:(id)a8 transactionHandle:(id)a9 fwEnqueueDelay:(id)a10 memoryPoolId:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = _ANEChainingRequest;
  v19 = [(_ANEChainingRequest *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_inputBuffer, a3);
    objc_storeStrong(&v20->_outputSets, a4);
    objc_storeStrong(&v20->_loopbackInputSymbolIndex, a5);
    objc_storeStrong(&v20->_loopbackOutputSymbolIndex, a6);
    objc_storeStrong(&v20->_procedureIndex, a7);
    objc_storeStrong(&v20->_signalEvents, a8);
    objc_storeStrong(&v20->_transactionHandle, a9);
    objc_storeStrong(&v20->_fwEnqueueDelay, a10);
    objc_storeStrong(&v20->_memoryPoolId, a11);
  }

  return v20;
}

+ (id)chainingRequestWithInputs:(id)a3 outputSets:(id)a4 lbInputSymbolId:(id)a5 lbOutputSymbolId:(id)a6 procedureIndex:(id)a7 signalEvents:(id)a8 transactionHandle:(id)a9 fwEnqueueDelay:(id)a10 memoryPoolId:(id)a11
{
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [[a1 alloc] initWithInputs:v26 outputs:v25 lbInputSymbolId:v24 lbOutputSymbolId:v23 procedureIndex:v22 signalEvents:v21 transactionHandle:v20 fwEnqueueDelay:v19 memoryPoolId:v18];

  return v27;
}

- (BOOL)validate
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = [(_ANEChainingRequest *)self inputBuffer];
  v5 = [v4 count];

  v6 = [(_ANEChainingRequest *)self outputSets];
  v7 = [v6 count];

  if (v5 && v7)
  {
    if (v5 > 0xFF)
    {
      v8 = +[_ANELog common];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_ANEChainingRequest validate];
      }

      goto LABEL_15;
    }

    aSelector = a2;
    v47 = v7;
    v9 = 0;
    do
    {
      v10 = [(_ANEChainingRequest *)self inputBuffer];
      v11 = [v10 objectAtIndexedSubscript:v9];
      v12 = [v11 symbolIndex];
      v13 = [v12 unsignedIntegerValue];

      if (v13 >= 0xFF)
      {
        v8 = +[_ANELog common];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        v34 = NSStringFromSelector(aSelector);
        v35 = [(_ANEChainingRequest *)self inputBuffer];
        v36 = [v35 objectAtIndexedSubscript:v9];
        *buf = 138413314;
        v49 = v34;
        v50 = 1024;
        *v51 = v9;
        *&v51[4] = 2112;
        *&v51[6] = v36;
        *&v51[14] = 2048;
        *&v51[16] = v13;
        *&v51[24] = 1024;
        *&v51[26] = 254;
        _os_log_error_impl(&dword_1AD246000, v8, OS_LOG_TYPE_ERROR, "%@: inputBuffer[%u]=%@ symbolIndex=%lu exceeds kANERequestMaxSymbolIndex=%d", buf, 0x2Cu);
LABEL_34:

LABEL_35:
        goto LABEL_15;
      }

      ++v9;
    }

    while (v9 < v5);
    if (v7 > 0xC)
    {
      v8 = +[_ANELog common];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_ANEChainingRequest validate];
      }

      goto LABEL_15;
    }

    v16 = 0;
    while (2)
    {
      v17 = [(_ANEChainingRequest *)self outputSets];
      v18 = [v17 objectAtIndexedSubscript:v16];
      v19 = [v18 outputBuffer];
      v20 = [v19 count];

      if (v20)
      {
        if (v20 > 0x100)
        {
          v8 = +[_ANELog common];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [_ANEChainingRequest validate];
          }
        }

        else
        {
          v21 = 0;
          do
          {
            v22 = [(_ANEChainingRequest *)self outputSets];
            v23 = [v22 objectAtIndexedSubscript:v16];

            if (!v23)
            {
              v8 = +[_ANELog common];
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                [(_ANEChainingRequest *)aSelector validate];
              }

              goto LABEL_15;
            }

            v24 = [(_ANEChainingRequest *)self outputSets];
            v25 = [v24 objectAtIndexedSubscript:v16];
            v26 = [v25 outputBuffer];
            v27 = [v26 objectAtIndexedSubscript:v21];
            v28 = [v27 symbolIndex];
            v29 = [v28 unsignedIntegerValue];

            if (v29 >= 0xFF)
            {
              v8 = +[_ANELog common];
              if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_15;
              }

              v34 = NSStringFromSelector(aSelector);
              v35 = [(_ANEChainingRequest *)self outputSets];
              v36 = [v35 objectAtIndexedSubscript:v16];
              v37 = [v36 outputBuffer];
              v38 = [v37 objectAtIndexedSubscript:v21];
              *buf = 138413314;
              v49 = v34;
              v50 = 1024;
              *v51 = v16;
              *&v51[4] = 2112;
              *&v51[6] = v38;
              *&v51[14] = 2048;
              *&v51[16] = v29;
              *&v51[24] = 1024;
              *&v51[26] = 254;
              _os_log_error_impl(&dword_1AD246000, v8, OS_LOG_TYPE_ERROR, "%@: outputIndexArray[%u]=%@ symbolIndex=%lu exceeds kANERequestMaxSymbolIndex=%d", buf, 0x2Cu);

              goto LABEL_34;
            }

            ++v21;
          }

          while (v21 < v20);
          v16 = (v16 + 1);
          if (v16 < v47)
          {
            continue;
          }

          v30 = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
          v31 = [v30 count];

          v32 = [(_ANEChainingRequest *)self loopbackOutputSymbolIndex];
          v33 = [v32 count];

          if (v31 != v33)
          {
            v8 = +[_ANELog framework];
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              break;
            }

            v34 = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
            v35 = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
            *buf = 138413058;
            v49 = v34;
            v50 = 2112;
            *v51 = v35;
            *&v51[8] = 2048;
            *&v51[10] = v31;
            *&v51[18] = 2048;
            *&v51[20] = v33;
            v39 = "loopbackInputSymbolIndexCount and loopbackOutputSymbolIndexCount size mismatch. loopbackInputSymbolIndex = %@ : loopbackOutputSymbolIndex = %@ loopbackInputSymbolIndex.count = %lu : loopbackOutputSymbolIndex.count = %lu";
            v40 = v8;
            v41 = 42;
            goto LABEL_42;
          }

          if (v31 >= 0x101)
          {
            v8 = +[_ANELog common];
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              [_ANEChainingRequest validate];
            }

            break;
          }

          v42 = [(_ANEChainingRequest *)self procedureIndex];
          v43 = [v42 unsignedIntegerValue];

          if (v43 >= 0x81)
          {
            v8 = +[_ANELog common];
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              break;
            }

            v34 = NSStringFromSelector(aSelector);
            v35 = [(_ANEChainingRequest *)self procedureIndex];
            *buf = 138413058;
            v49 = v34;
            v50 = 2112;
            *v51 = v35;
            *&v51[8] = 2048;
            *&v51[10] = v43;
            *&v51[18] = 1024;
            *&v51[20] = 128;
            v39 = "%@: self.procedureIndex=%@ length=%lu exceeds kANEMaxProcedures=%d";
            v40 = v8;
            v41 = 38;
LABEL_42:
            _os_log_error_impl(&dword_1AD246000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
            goto LABEL_35;
          }

          v44 = [(_ANEChainingRequest *)self signalEvents];
          v45 = [v44 count];

          if (v45 < 0x101)
          {
            result = 1;
            goto LABEL_16;
          }

          v8 = +[_ANELog common];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [_ANEChainingRequest validate];
          }
        }
      }

      else
      {
        v8 = +[_ANELog framework];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(_ANEChainingRequest *)v8 validate];
        }
      }

      break;
    }
  }

  else
  {
    v8 = +[_ANELog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_ANEChainingRequest *)v5 validate];
    }
  }

LABEL_15:

  result = 0;
LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANEChainingRequest *)self inputBuffer];
  v7 = [(_ANEChainingRequest *)self outputSets];
  v8 = [(_ANEChainingRequest *)self transactionHandle];
  v9 = [(_ANEChainingRequest *)self procedureIndex];
  v10 = [v3 stringWithFormat:@"%@: { inputBuffer=%@  outputSets=%@ ; transactionHandle=%@ ; procedureIndex=%@ }", v5, v6, v7, v8, v9];;

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_ANEChainingRequest *)self inputBuffer];
  [v4 encodeObject:v5 forKey:@"inputs"];

  v6 = [(_ANEChainingRequest *)self outputSets];
  [v4 encodeObject:v6 forKey:@"outputs"];

  v7 = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
  [v4 encodeObject:v7 forKey:@"loopbackInputs"];

  v8 = [(_ANEChainingRequest *)self loopbackOutputSymbolIndex];
  [v4 encodeObject:v8 forKey:@"loopbackOutputs"];

  v9 = [(_ANEChainingRequest *)self procedureIndex];
  [v4 encodeObject:v9 forKey:@"procedureIndex"];

  v10 = [(_ANEChainingRequest *)self signalEvents];
  [v4 encodeObject:v10 forKey:@"signalEvents"];

  v11 = [(_ANEChainingRequest *)self transactionHandle];
  [v4 encodeObject:v11 forKey:@"transactionHandle"];

  v12 = [(_ANEChainingRequest *)self fwEnqueueDelay];
  [v4 encodeObject:v12 forKey:@"fwEnqueueDelay"];

  v13 = [(_ANEChainingRequest *)self memoryPoolId];
  [v4 encodeObject:v13 forKey:@"memoryPoolId"];
}

- (_ANEChainingRequest)initWithCoder:(id)a3
{
  v20[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v20[2] = objc_opt_class();
  v20[3] = objc_opt_class();
  v20[4] = objc_opt_class();
  v20[5] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:6];
  v6 = [v3 setWithArray:v5];

  v17 = [v4 decodeObjectOfClasses:v6 forKey:@"inputs"];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"outputs"];
  v8 = [v4 decodeObjectOfClasses:v6 forKey:@"loopbackInputs"];
  v9 = [v4 decodeObjectOfClasses:v6 forKey:@"loopbackOutputs"];
  v10 = [v4 decodeObjectOfClasses:v6 forKey:@"signalEvents"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"procedureIndex"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionHandle"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fwEnqueueDelay"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"memoryPoolId"];

  v19 = [(_ANEChainingRequest *)self initWithInputs:v17 outputs:v7 lbInputSymbolId:v8 lbOutputSymbolId:v9 procedureIndex:v11 signalEvents:v10 transactionHandle:v12 fwEnqueueDelay:v13 memoryPoolId:v14];
  v15 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)validate
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1AD246000, log, OS_LOG_TYPE_ERROR, "No input buffers or output sets. inputBuffer.count = %lu : outputSets.count = %lu", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end