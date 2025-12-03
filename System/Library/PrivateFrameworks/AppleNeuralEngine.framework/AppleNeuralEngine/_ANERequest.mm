@interface _ANERequest
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices perfStats:(id)stats procedureIndex:(id)index;
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices procedureIndex:(id)index;
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index;
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0;
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0 transactionHandle:(id)self1;
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer procedureIndex:(id)index;
- (BOOL)validate;
- (_ANERequest)initWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0 transactionHandle:(id)self1;
- (_ANERequest)initWithVirtualModel:(void *)model;
- (id)description;
- (unint64_t)ioSurfacesCount;
- (void)validate;
@end

@implementation _ANERequest

- (BOOL)validate
{
  v72 = *MEMORY[0x1E69E9840];
  inputArray = [(_ANERequest *)self inputArray];
  v5 = [inputArray count];

  outputArray = [(_ANERequest *)self outputArray];
  v7 = [outputArray count];

  if (!v5 || !v7)
  {
    v24 = +[_ANELog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANERequest validate];
    }

    goto LABEL_36;
  }

  inputIndexArray = [(_ANERequest *)self inputIndexArray];
  v9 = [inputIndexArray count];

  outputIndexArray = [(_ANERequest *)self outputIndexArray];
  v11 = [outputIndexArray count];

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
      outputArray2 = NSStringFromSelector(a2);
      *buf = 138413058;
      v68 = outputArray2;
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
        inputIndexArray2 = [(_ANERequest *)self inputIndexArray];
        v15 = [inputIndexArray2 objectAtIndexedSubscript:v12];
        unsignedIntegerValue = [v15 unsignedIntegerValue];

        if (unsignedIntegerValue >= 0xFF)
        {
          break;
        }

        v12 = ++v13;
        if (v5 <= v13)
        {
          v17 = 0;
          for (i = 0; i < v7; v17 = ++i)
          {
            outputIndexArray2 = [(_ANERequest *)self outputIndexArray];
            v20 = [outputIndexArray2 objectAtIndexedSubscript:v17];
            unsignedIntegerValue2 = [v20 unsignedIntegerValue];

            if (unsignedIntegerValue2 >= 0xFF)
            {
              v24 = +[_ANELog common];
              if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_36;
              }

              outputArray2 = NSStringFromSelector(a2);
              outputIndexArray3 = [(_ANERequest *)self outputIndexArray];
              v31 = [outputIndexArray3 objectAtIndexedSubscript:v17];
              *buf = 138413314;
              v68 = outputArray2;
              v69 = 1024;
              *v70 = i;
              *&v70[4] = 2112;
              *&v70[6] = v31;
              *&v70[14] = 2048;
              *&v70[16] = unsignedIntegerValue2;
              *&v70[24] = 1024;
              *&v70[26] = 254;
              v32 = "%@: outputIndexArray[%u]=%@ length=%lu exceeds kANERequestMaxSymbolIndex=%d";
              goto LABEL_66;
            }
          }

          procedureIndex = [(_ANERequest *)self procedureIndex];
          unsignedIntegerValue3 = [procedureIndex unsignedIntegerValue];

          if (unsignedIntegerValue3 >= 0x81)
          {
            v24 = +[_ANELog common];
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            outputArray2 = NSStringFromSelector(a2);
            outputIndexArray3 = [(_ANERequest *)self procedureIndex];
            *buf = 138413058;
            v68 = outputArray2;
            v69 = 2112;
            *v70 = outputIndexArray3;
            *&v70[8] = 2048;
            *&v70[10] = unsignedIntegerValue3;
            *&v70[18] = 1024;
            *&v70[20] = 128;
            v27 = "%@: self.procedureIndex=%@ length=%lu exceeds kANEMaxProcedures=%d";
            v28 = v24;
            v29 = 38;
            goto LABEL_30;
          }

          perfStatsArray = [(_ANERequest *)self perfStatsArray];
          v36 = [perfStatsArray count];

          if (v36)
          {
            v24 = [MEMORY[0x1E695E0F8] mutableCopy];
            for (j = 0; j != v36; ++j)
            {
              perfStatsArray2 = [(_ANERequest *)self perfStatsArray];
              v39 = [perfStatsArray2 objectAtIndexedSubscript:j];
              statType = [v39 statType];

              if (statType >= 3)
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
                  *&v70[10] = statType;
                  *&v70[18] = 2048;
                  *&v70[20] = 0;
                  *&v70[28] = 2048;
                  v71 = 2;
                  _os_log_error_impl(&dword_1AD246000, v59, OS_LOG_TYPE_ERROR, "%@: self.perfStatsArray[%lu].statType=%ld is invalid. Expected: (%ld - %ld)", buf, 0x34u);
                }

                goto LABEL_36;
              }

              v41 = [MEMORY[0x1E696AD98] numberWithInteger:statType];
              v42 = [v24 objectForKey:v41];

              v43 = [MEMORY[0x1E696AD98] numberWithInteger:statType];
              if (v42)
              {
                v44 = [v24 objectForKeyedSubscript:v43];
                longValue = [v44 longValue];

                v43 = [MEMORY[0x1E696AD98] numberWithLong:longValue + 1];
                v46 = [MEMORY[0x1E696AD98] numberWithInteger:statType];
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

          sharedEvents = [(_ANERequest *)self sharedEvents];
          signalEvents = [sharedEvents signalEvents];
          v55 = [signalEvents count];

          sharedEvents2 = [(_ANERequest *)self sharedEvents];
          waitEvents = [sharedEvents2 waitEvents];
          v58 = [waitEvents count];

          if (v55 <= 0x40 && v58 < 0x41)
          {
            result = 1;
            goto LABEL_37;
          }

          v24 = +[_ANELog common];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            outputArray2 = NSStringFromSelector(a2);
            *buf = 138413058;
            v68 = outputArray2;
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

      outputArray2 = NSStringFromSelector(a2);
      outputIndexArray3 = [(_ANERequest *)self inputIndexArray];
      v31 = [outputIndexArray3 objectAtIndexedSubscript:v12];
      *buf = 138413314;
      v68 = outputArray2;
      v69 = 1024;
      *v70 = v13;
      *&v70[4] = 2112;
      *&v70[6] = v31;
      *&v70[14] = 2048;
      *&v70[16] = unsignedIntegerValue;
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
      outputArray2 = [(_ANERequest *)self outputArray];
      outputIndexArray3 = [(_ANERequest *)self outputIndexArray];
      *buf = 138413058;
      v68 = outputArray2;
      v69 = 2112;
      *v70 = outputIndexArray3;
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
      outputArray2 = [(_ANERequest *)self inputArray];
      outputIndexArray3 = [(_ANERequest *)self inputIndexArray];
      *buf = 138413058;
      v68 = outputArray2;
      v69 = 2112;
      *v70 = outputIndexArray3;
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

- (_ANERequest)initWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0 transactionHandle:(id)self1
{
  inputsCopy = inputs;
  indicesCopy = indices;
  outputsCopy = outputs;
  outputIndicesCopy = outputIndices;
  bufferCopy = buffer;
  statsCopy = stats;
  indexCopy = index;
  eventsCopy = events;
  handleCopy = handle;
  v30.receiver = self;
  v30.super_class = _ANERequest;
  v19 = [(_ANERequest *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_inputArray, inputs);
    objc_storeStrong(&v20->_inputIndexArray, indices);
    objc_storeStrong(&v20->_outputArray, outputs);
    objc_storeStrong(&v20->_outputIndexArray, outputIndices);
    objc_storeStrong(&v20->_weightsBuffer, buffer);
    objc_storeStrong(&v20->_perfStatsArray, stats);
    objc_storeStrong(&v20->_procedureIndex, index);
    objc_storeStrong(&v20->_sharedEvents, events);
    objc_storeStrong(&v20->_transactionHandle, handle);
  }

  return v20;
}

- (_ANERequest)initWithVirtualModel:(void *)model
{
  v4.receiver = self;
  v4.super_class = _ANERequest;
  return [(_ANERequest *)&v4 init];
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer procedureIndex:(id)index
{
  indexCopy = index;
  bufferCopy = buffer;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v20 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:bufferCopy perfStats:0 procedureIndex:indexCopy sharedEvents:0 transactionHandle:0];

  return v20;
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices procedureIndex:(id)index
{
  indexCopy = index;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v17 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:0 perfStats:0 procedureIndex:indexCopy sharedEvents:0 transactionHandle:0];

  return v17;
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices perfStats:(id)stats procedureIndex:(id)index
{
  indexCopy = index;
  statsCopy = stats;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v20 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:0 perfStats:statsCopy procedureIndex:indexCopy sharedEvents:0 transactionHandle:0];

  return v20;
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index
{
  indexCopy = index;
  statsCopy = stats;
  bufferCopy = buffer;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v23 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:bufferCopy perfStats:statsCopy procedureIndex:indexCopy sharedEvents:0 transactionHandle:0];

  return v23;
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0
{
  eventsCopy = events;
  indexCopy = index;
  statsCopy = stats;
  bufferCopy = buffer;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v25 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:bufferCopy perfStats:statsCopy procedureIndex:indexCopy sharedEvents:eventsCopy transactionHandle:0];

  return v25;
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0 transactionHandle:(id)self1
{
  handleCopy = handle;
  eventsCopy = events;
  indexCopy = index;
  statsCopy = stats;
  bufferCopy = buffer;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v27 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:bufferCopy perfStats:statsCopy procedureIndex:indexCopy sharedEvents:eventsCopy transactionHandle:handleCopy];

  return v27;
}

- (unint64_t)ioSurfacesCount
{
  inputIndexArray = [(_ANERequest *)self inputIndexArray];
  v4 = [inputIndexArray count];
  outputIndexArray = [(_ANERequest *)self outputIndexArray];
  v6 = [outputIndexArray count] + v4;
  weightsBuffer = [(_ANERequest *)self weightsBuffer];
  if (weightsBuffer)
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
  inputArray = [(_ANERequest *)self inputArray];
  inputIndexArray = [(_ANERequest *)self inputIndexArray];
  outputArray = [(_ANERequest *)self outputArray];
  outputIndexArray = [(_ANERequest *)self outputIndexArray];
  weightsBuffer = [(_ANERequest *)self weightsBuffer];
  procedureIndex = [(_ANERequest *)self procedureIndex];
  perfStatsArray = [(_ANERequest *)self perfStatsArray];
  sharedEvents = [(_ANERequest *)self sharedEvents];
  transactionHandle = [(_ANERequest *)self transactionHandle];
  v13 = [v16 stringWithFormat:@"%@: { inputArray=%@  inputIndexArray=%@ ; outputArray=%@ ; outputIndexArray=%@ ; weightsBuffer=%@ ; procedureIndex=%@ ; perfStatsArray=%@ ; sharedEvents=%@ ; transactionHandle=%@}", v15, inputArray, inputIndexArray, outputArray, outputIndexArray, weightsBuffer, procedureIndex, perfStatsArray, sharedEvents, transactionHandle];;

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