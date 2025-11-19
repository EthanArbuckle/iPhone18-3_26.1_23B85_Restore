@interface _ANERequest
+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 perfStats:(id)a7 procedureIndex:(id)a8;
+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 procedureIndex:(id)a7;
+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 weightsBuffer:(id)a7 perfStats:(id)a8 procedureIndex:(id)a9;
+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 weightsBuffer:(id)a7 perfStats:(id)a8 procedureIndex:(id)a9 sharedEvents:(id)a10;
+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 weightsBuffer:(id)a7 perfStats:(id)a8 procedureIndex:(id)a9 sharedEvents:(id)a10 transactionHandle:(id)a11;
+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 weightsBuffer:(id)a7 procedureIndex:(id)a8;
- (BOOL)validate;
- (_ANERequest)initWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 weightsBuffer:(id)a7 perfStats:(id)a8 procedureIndex:(id)a9 sharedEvents:(id)a10 transactionHandle:(id)a11;
- (_ANERequest)initWithVirtualModel:(void *)a3;
- (id)description;
- (unint64_t)ioSurfacesCount;
- (void)validate;
@end

@implementation _ANERequest

- (BOOL)validate
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = [(_ANERequest *)self inputArray];
  v5 = [v4 count];

  v6 = [(_ANERequest *)self outputArray];
  v7 = [v6 count];

  if (!v5 || !v7)
  {
    v24 = +[_ANELog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANERequest validate];
    }

    goto LABEL_36;
  }

  v8 = [(_ANERequest *)self inputIndexArray];
  v9 = [v8 count];

  v10 = [(_ANERequest *)self outputIndexArray];
  v11 = [v10 count];

  if (!v9 || !v11)
  {
    v24 = +[_ANELog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANERequest validate];
    }

    goto LABEL_36;
  }

  if (v5 > 0xFF || v7 >= 0x100)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138413058;
      v68 = v25;
      v69 = 2048;
      *v70 = v5;
      *&v70[8] = 2048;
      *&v70[10] = v7;
      *&v70[18] = 1024;
      *&v70[20] = 255;
      v30 = "%@: Either inputArray[%lu] or outputArray[%lu] count is greater than kANEMaxBuffers=%d";
LABEL_24:
      _os_log_error_impl(&dword_1AD246000, v24, OS_LOG_TYPE_ERROR, v30, buf, 0x26u);
      goto LABEL_32;
    }
  }

  else if (v5 == v9)
  {
    if (v7 == v11)
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = [(_ANERequest *)self inputIndexArray];
        v15 = [v14 objectAtIndexedSubscript:v12];
        v16 = [v15 unsignedIntegerValue];

        if (v16 >= 0xFF)
        {
          break;
        }

        v12 = ++v13;
        if (v5 <= v13)
        {
          v17 = 0;
          for (i = 0; i < v7; v17 = ++i)
          {
            v19 = [(_ANERequest *)self outputIndexArray];
            v20 = [v19 objectAtIndexedSubscript:v17];
            v21 = [v20 unsignedIntegerValue];

            if (v21 >= 0xFF)
            {
              v24 = +[_ANELog common];
              if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_36;
              }

              v25 = NSStringFromSelector(a2);
              v26 = [(_ANERequest *)self outputIndexArray];
              v31 = [v26 objectAtIndexedSubscript:v17];
              *buf = 138413314;
              v68 = v25;
              v69 = 1024;
              *v70 = i;
              *&v70[4] = 2112;
              *&v70[6] = v31;
              *&v70[14] = 2048;
              *&v70[16] = v21;
              *&v70[24] = 1024;
              *&v70[26] = 254;
              v32 = "%@: outputIndexArray[%u]=%@ length=%lu exceeds kANERequestMaxSymbolIndex=%d";
              goto LABEL_66;
            }
          }

          v22 = [(_ANERequest *)self procedureIndex];
          v23 = [v22 unsignedIntegerValue];

          if (v23 >= 0x81)
          {
            v24 = +[_ANELog common];
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            v25 = NSStringFromSelector(a2);
            v26 = [(_ANERequest *)self procedureIndex];
            *buf = 138413058;
            v68 = v25;
            v69 = 2112;
            *v70 = v26;
            *&v70[8] = 2048;
            *&v70[10] = v23;
            *&v70[18] = 1024;
            *&v70[20] = 128;
            v27 = "%@: self.procedureIndex=%@ length=%lu exceeds kANEMaxProcedures=%d";
            v28 = v24;
            v29 = 38;
            goto LABEL_30;
          }

          v35 = [(_ANERequest *)self perfStatsArray];
          v36 = [v35 count];

          if (v36)
          {
            v24 = [MEMORY[0x1E695E0F8] mutableCopy];
            for (j = 0; j != v36; ++j)
            {
              v38 = [(_ANERequest *)self perfStatsArray];
              v39 = [v38 objectAtIndexedSubscript:j];
              v40 = [v39 statType];

              if (v40 >= 3)
              {
                v59 = +[_ANELog common];
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v61 = NSStringFromSelector(a2);
                  *buf = 138413314;
                  v68 = v61;
                  v69 = 2048;
                  *v70 = j;
                  *&v70[8] = 2048;
                  *&v70[10] = v40;
                  *&v70[18] = 2048;
                  *&v70[20] = 0;
                  *&v70[28] = 2048;
                  v71 = 2;
                  _os_log_error_impl(&dword_1AD246000, v59, OS_LOG_TYPE_ERROR, "%@: self.perfStatsArray[%lu].statType=%ld is invalid. Expected: (%ld - %ld)", buf, 0x34u);
                }

                goto LABEL_36;
              }

              v41 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
              v42 = [v24 objectForKey:v41];

              v43 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
              if (v42)
              {
                v44 = [v24 objectForKeyedSubscript:v43];
                v45 = [v44 longValue];

                v43 = [MEMORY[0x1E696AD98] numberWithLong:v45 + 1];
                v46 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
                [v24 setObject:v43 forKeyedSubscript:v46];
              }

              else
              {
                [v24 setObject:&unk_1F2254488 forKey:v43];
              }
            }

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v24 = v24;
            v47 = [v24 countByEnumeratingWithState:&v62 objects:v66 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v63;
              while (2)
              {
                for (k = 0; k != v48; ++k)
                {
                  if (*v63 != v49)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v51 = *(*(&v62 + 1) + 8 * k);
                  v52 = [v24 objectForKeyedSubscript:v51, v62];
                  if ([v52 longValue] >= 2)
                  {
                    v60 = +[_ANELog common];
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                    {
                      [(_ANERequest *)a2 validate];
                    }

                    goto LABEL_36;
                  }
                }

                v48 = [v24 countByEnumeratingWithState:&v62 objects:v66 count:16];
                if (v48)
                {
                  continue;
                }

                break;
              }
            }
          }

          v53 = [(_ANERequest *)self sharedEvents];
          v54 = [v53 signalEvents];
          v55 = [v54 count];

          v56 = [(_ANERequest *)self sharedEvents];
          v57 = [v56 waitEvents];
          v58 = [v57 count];

          if (v55 <= 0x40 && v58 < 0x41)
          {
            result = 1;
            goto LABEL_37;
          }

          v24 = +[_ANELog common];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = NSStringFromSelector(a2);
            *buf = 138413058;
            v68 = v25;
            v69 = 2048;
            *v70 = v55;
            *&v70[8] = 2048;
            *&v70[10] = v58;
            *&v70[18] = 1024;
            *&v70[20] = 64;
            v30 = "%@: Either signalEvents[%lu] or waitEvents[%lu] count exceeds kANEMaxEvents=%d";
            goto LABEL_24;
          }

          goto LABEL_36;
        }
      }

      v24 = +[_ANELog common];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v25 = NSStringFromSelector(a2);
      v26 = [(_ANERequest *)self inputIndexArray];
      v31 = [v26 objectAtIndexedSubscript:v12];
      *buf = 138413314;
      v68 = v25;
      v69 = 1024;
      *v70 = v13;
      *&v70[4] = 2112;
      *&v70[6] = v31;
      *&v70[14] = 2048;
      *&v70[16] = v16;
      *&v70[24] = 1024;
      *&v70[26] = 254;
      v32 = "%@: inputIndexArray[%u]=%@ length=%lu exceeds kANERequestMaxSymbolIndex=%d";
LABEL_66:
      _os_log_error_impl(&dword_1AD246000, v24, OS_LOG_TYPE_ERROR, v32, buf, 0x2Cu);

      goto LABEL_31;
    }

    v24 = +[_ANELog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(_ANERequest *)self outputArray];
      v26 = [(_ANERequest *)self outputIndexArray];
      *buf = 138413058;
      v68 = v25;
      v69 = 2112;
      *v70 = v26;
      *&v70[8] = 2048;
      *&v70[10] = v7;
      *&v70[18] = 2048;
      *&v70[20] = v11;
      v27 = "outputArray and outputIndexArray size mismatch. outputArray = %@ : outputIndexArray = %@ outputArray.count = %lu : outputIndexArray.count = %lu";
LABEL_29:
      v28 = v24;
      v29 = 42;
LABEL_30:
      _os_log_error_impl(&dword_1AD246000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
LABEL_31:

LABEL_32:
    }
  }

  else
  {
    v24 = +[_ANELog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(_ANERequest *)self inputArray];
      v26 = [(_ANERequest *)self inputIndexArray];
      *buf = 138413058;
      v68 = v25;
      v69 = 2112;
      *v70 = v26;
      *&v70[8] = 2048;
      *&v70[10] = v5;
      *&v70[18] = 2048;
      *&v70[20] = v9;
      v27 = "inputArray and inputIndexArray size mismatch. inputArray = %@ : inputIndexArray = %@ inputArray.count = %lu : inputIndexArray.count = %lu";
      goto LABEL_29;
    }
  }

LABEL_36:

  result = 0;
LABEL_37:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

- (_ANERequest)initWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 weightsBuffer:(id)a7 perfStats:(id)a8 procedureIndex:(id)a9 sharedEvents:(id)a10 transactionHandle:(id)a11
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
  v30.super_class = _ANERequest;
  v19 = [(_ANERequest *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_inputArray, a3);
    objc_storeStrong(&v20->_inputIndexArray, a4);
    objc_storeStrong(&v20->_outputArray, a5);
    objc_storeStrong(&v20->_outputIndexArray, a6);
    objc_storeStrong(&v20->_weightsBuffer, a7);
    objc_storeStrong(&v20->_perfStatsArray, a8);
    objc_storeStrong(&v20->_procedureIndex, a9);
    objc_storeStrong(&v20->_sharedEvents, a10);
    objc_storeStrong(&v20->_transactionHandle, a11);
  }

  return v20;
}

- (_ANERequest)initWithVirtualModel:(void *)a3
{
  v4.receiver = self;
  v4.super_class = _ANERequest;
  return [(_ANERequest *)&v4 init];
}

+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 weightsBuffer:(id)a7 procedureIndex:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] initWithInputs:v19 inputIndices:v18 outputs:v17 outputIndices:v16 weightsBuffer:v15 perfStats:0 procedureIndex:v14 sharedEvents:0 transactionHandle:0];

  return v20;
}

+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 procedureIndex:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithInputs:v16 inputIndices:v15 outputs:v14 outputIndices:v13 weightsBuffer:0 perfStats:0 procedureIndex:v12 sharedEvents:0 transactionHandle:0];

  return v17;
}

+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 perfStats:(id)a7 procedureIndex:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] initWithInputs:v19 inputIndices:v18 outputs:v17 outputIndices:v16 weightsBuffer:0 perfStats:v15 procedureIndex:v14 sharedEvents:0 transactionHandle:0];

  return v20;
}

+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 weightsBuffer:(id)a7 perfStats:(id)a8 procedureIndex:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[a1 alloc] initWithInputs:v22 inputIndices:v21 outputs:v20 outputIndices:v19 weightsBuffer:v18 perfStats:v17 procedureIndex:v16 sharedEvents:0 transactionHandle:0];

  return v23;
}

+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 weightsBuffer:(id)a7 perfStats:(id)a8 procedureIndex:(id)a9 sharedEvents:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [[a1 alloc] initWithInputs:v24 inputIndices:v23 outputs:v22 outputIndices:v21 weightsBuffer:v20 perfStats:v19 procedureIndex:v18 sharedEvents:v17 transactionHandle:0];

  return v25;
}

+ (id)requestWithInputs:(id)a3 inputIndices:(id)a4 outputs:(id)a5 outputIndices:(id)a6 weightsBuffer:(id)a7 perfStats:(id)a8 procedureIndex:(id)a9 sharedEvents:(id)a10 transactionHandle:(id)a11
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
  v27 = [[a1 alloc] initWithInputs:v26 inputIndices:v25 outputs:v24 outputIndices:v23 weightsBuffer:v22 perfStats:v21 procedureIndex:v20 sharedEvents:v19 transactionHandle:v18];

  return v27;
}

- (unint64_t)ioSurfacesCount
{
  v3 = [(_ANERequest *)self inputIndexArray];
  v4 = [v3 count];
  v5 = [(_ANERequest *)self outputIndexArray];
  v6 = [v5 count] + v4;
  v7 = [(_ANERequest *)self weightsBuffer];
  if (v7)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v4 = [(_ANERequest *)self inputArray];
  v5 = [(_ANERequest *)self inputIndexArray];
  v6 = [(_ANERequest *)self outputArray];
  v7 = [(_ANERequest *)self outputIndexArray];
  v8 = [(_ANERequest *)self weightsBuffer];
  v9 = [(_ANERequest *)self procedureIndex];
  v10 = [(_ANERequest *)self perfStatsArray];
  v11 = [(_ANERequest *)self sharedEvents];
  v12 = [(_ANERequest *)self transactionHandle];
  v13 = [v16 stringWithFormat:@"%@: { inputArray=%@  inputIndexArray=%@ ; outputArray=%@ ; outputIndexArray=%@ ; weightsBuffer=%@ ; procedureIndex=%@ ; perfStatsArray=%@ ; sharedEvents=%@ ; transactionHandle=%@}", v15, v4, v5, v6, v7, v8, v9, v10, v11, v12];;

  return v13;
}

- (void)validate
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_1AD246000, v0, v1, "No input or output buffers. inputArray.count = %lu : outputArray.count = %lu", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

@end