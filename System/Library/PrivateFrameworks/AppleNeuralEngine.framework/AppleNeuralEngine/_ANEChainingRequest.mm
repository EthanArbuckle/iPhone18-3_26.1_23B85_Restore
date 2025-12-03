@interface _ANEChainingRequest
+ (id)chainingRequestWithInputs:(id)inputs outputSets:(id)sets lbInputSymbolId:(id)id lbOutputSymbolId:(id)symbolId procedureIndex:(id)index signalEvents:(id)events transactionHandle:(id)handle fwEnqueueDelay:(id)self0 memoryPoolId:(id)self1;
- (BOOL)validate;
- (_ANEChainingRequest)initWithCoder:(id)coder;
- (_ANEChainingRequest)initWithInputs:(id)inputs outputs:(id)outputs lbInputSymbolId:(id)id lbOutputSymbolId:(id)symbolId procedureIndex:(id)index signalEvents:(id)events transactionHandle:(id)handle fwEnqueueDelay:(id)self0 memoryPoolId:(id)self1;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)validate;
@end

@implementation _ANEChainingRequest

- (_ANEChainingRequest)initWithInputs:(id)inputs outputs:(id)outputs lbInputSymbolId:(id)id lbOutputSymbolId:(id)symbolId procedureIndex:(id)index signalEvents:(id)events transactionHandle:(id)handle fwEnqueueDelay:(id)self0 memoryPoolId:(id)self1
{
  inputsCopy = inputs;
  outputsCopy = outputs;
  idCopy = id;
  symbolIdCopy = symbolId;
  indexCopy = index;
  eventsCopy = events;
  handleCopy = handle;
  delayCopy = delay;
  poolIdCopy = poolId;
  v30.receiver = self;
  v30.super_class = _ANEChainingRequest;
  v19 = [(_ANEChainingRequest *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_inputBuffer, inputs);
    objc_storeStrong(&v20->_outputSets, outputs);
    objc_storeStrong(&v20->_loopbackInputSymbolIndex, id);
    objc_storeStrong(&v20->_loopbackOutputSymbolIndex, symbolId);
    objc_storeStrong(&v20->_procedureIndex, index);
    objc_storeStrong(&v20->_signalEvents, events);
    objc_storeStrong(&v20->_transactionHandle, handle);
    objc_storeStrong(&v20->_fwEnqueueDelay, delay);
    objc_storeStrong(&v20->_memoryPoolId, poolId);
  }

  return v20;
}

+ (id)chainingRequestWithInputs:(id)inputs outputSets:(id)sets lbInputSymbolId:(id)id lbOutputSymbolId:(id)symbolId procedureIndex:(id)index signalEvents:(id)events transactionHandle:(id)handle fwEnqueueDelay:(id)self0 memoryPoolId:(id)self1
{
  poolIdCopy = poolId;
  delayCopy = delay;
  handleCopy = handle;
  eventsCopy = events;
  indexCopy = index;
  symbolIdCopy = symbolId;
  idCopy = id;
  setsCopy = sets;
  inputsCopy = inputs;
  v27 = [[self alloc] initWithInputs:inputsCopy outputs:setsCopy lbInputSymbolId:idCopy lbOutputSymbolId:symbolIdCopy procedureIndex:indexCopy signalEvents:eventsCopy transactionHandle:handleCopy fwEnqueueDelay:delayCopy memoryPoolId:poolIdCopy];

  return v27;
}

- (BOOL)validate
{
  v52 = *MEMORY[0x1E69E9840];
  inputBuffer = [(_ANEChainingRequest *)self inputBuffer];
  v5 = [inputBuffer count];

  outputSets = [(_ANEChainingRequest *)self outputSets];
  v7 = [outputSets count];

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
      inputBuffer2 = [(_ANEChainingRequest *)self inputBuffer];
      v11 = [inputBuffer2 objectAtIndexedSubscript:v9];
      symbolIndex = [v11 symbolIndex];
      unsignedIntegerValue = [symbolIndex unsignedIntegerValue];

      if (unsignedIntegerValue >= 0xFF)
      {
        v8 = +[_ANELog common];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        loopbackInputSymbolIndex2 = NSStringFromSelector(aSelector);
        inputBuffer3 = [(_ANEChainingRequest *)self inputBuffer];
        v36 = [inputBuffer3 objectAtIndexedSubscript:v9];
        *buf = 138413314;
        v49 = loopbackInputSymbolIndex2;
        v50 = 1024;
        *v51 = v9;
        *&v51[4] = 2112;
        *&v51[6] = v36;
        *&v51[14] = 2048;
        *&v51[16] = unsignedIntegerValue;
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
      outputSets2 = [(_ANEChainingRequest *)self outputSets];
      v18 = [outputSets2 objectAtIndexedSubscript:v16];
      outputBuffer = [v18 outputBuffer];
      v20 = [outputBuffer count];

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
            outputSets3 = [(_ANEChainingRequest *)self outputSets];
            v23 = [outputSets3 objectAtIndexedSubscript:v16];

            if (!v23)
            {
              v8 = +[_ANELog common];
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                [(_ANEChainingRequest *)aSelector validate];
              }

              goto LABEL_15;
            }

            outputSets4 = [(_ANEChainingRequest *)self outputSets];
            v25 = [outputSets4 objectAtIndexedSubscript:v16];
            outputBuffer2 = [v25 outputBuffer];
            v27 = [outputBuffer2 objectAtIndexedSubscript:v21];
            symbolIndex2 = [v27 symbolIndex];
            unsignedIntegerValue2 = [symbolIndex2 unsignedIntegerValue];

            if (unsignedIntegerValue2 >= 0xFF)
            {
              v8 = +[_ANELog common];
              if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_15;
              }

              loopbackInputSymbolIndex2 = NSStringFromSelector(aSelector);
              inputBuffer3 = [(_ANEChainingRequest *)self outputSets];
              v36 = [inputBuffer3 objectAtIndexedSubscript:v16];
              outputBuffer3 = [v36 outputBuffer];
              v38 = [outputBuffer3 objectAtIndexedSubscript:v21];
              *buf = 138413314;
              v49 = loopbackInputSymbolIndex2;
              v50 = 1024;
              *v51 = v16;
              *&v51[4] = 2112;
              *&v51[6] = v38;
              *&v51[14] = 2048;
              *&v51[16] = unsignedIntegerValue2;
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

          loopbackInputSymbolIndex = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
          v31 = [loopbackInputSymbolIndex count];

          loopbackOutputSymbolIndex = [(_ANEChainingRequest *)self loopbackOutputSymbolIndex];
          v33 = [loopbackOutputSymbolIndex count];

          if (v31 != v33)
          {
            v8 = +[_ANELog framework];
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              break;
            }

            loopbackInputSymbolIndex2 = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
            inputBuffer3 = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
            *buf = 138413058;
            v49 = loopbackInputSymbolIndex2;
            v50 = 2112;
            *v51 = inputBuffer3;
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

          procedureIndex = [(_ANEChainingRequest *)self procedureIndex];
          unsignedIntegerValue3 = [procedureIndex unsignedIntegerValue];

          if (unsignedIntegerValue3 >= 0x81)
          {
            v8 = +[_ANELog common];
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              break;
            }

            loopbackInputSymbolIndex2 = NSStringFromSelector(aSelector);
            inputBuffer3 = [(_ANEChainingRequest *)self procedureIndex];
            *buf = 138413058;
            v49 = loopbackInputSymbolIndex2;
            v50 = 2112;
            *v51 = inputBuffer3;
            *&v51[8] = 2048;
            *&v51[10] = unsignedIntegerValue3;
            *&v51[18] = 1024;
            *&v51[20] = 128;
            v39 = "%@: self.procedureIndex=%@ length=%lu exceeds kANEMaxProcedures=%d";
            v40 = v8;
            v41 = 38;
LABEL_42:
            _os_log_error_impl(&dword_1AD246000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
            goto LABEL_35;
          }

          signalEvents = [(_ANEChainingRequest *)self signalEvents];
          v45 = [signalEvents count];

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
  inputBuffer = [(_ANEChainingRequest *)self inputBuffer];
  outputSets = [(_ANEChainingRequest *)self outputSets];
  transactionHandle = [(_ANEChainingRequest *)self transactionHandle];
  procedureIndex = [(_ANEChainingRequest *)self procedureIndex];
  v10 = [v3 stringWithFormat:@"%@: { inputBuffer=%@  outputSets=%@ ; transactionHandle=%@ ; procedureIndex=%@ }", v5, inputBuffer, outputSets, transactionHandle, procedureIndex];;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  inputBuffer = [(_ANEChainingRequest *)self inputBuffer];
  [coderCopy encodeObject:inputBuffer forKey:@"inputs"];

  outputSets = [(_ANEChainingRequest *)self outputSets];
  [coderCopy encodeObject:outputSets forKey:@"outputs"];

  loopbackInputSymbolIndex = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
  [coderCopy encodeObject:loopbackInputSymbolIndex forKey:@"loopbackInputs"];

  loopbackOutputSymbolIndex = [(_ANEChainingRequest *)self loopbackOutputSymbolIndex];
  [coderCopy encodeObject:loopbackOutputSymbolIndex forKey:@"loopbackOutputs"];

  procedureIndex = [(_ANEChainingRequest *)self procedureIndex];
  [coderCopy encodeObject:procedureIndex forKey:@"procedureIndex"];

  signalEvents = [(_ANEChainingRequest *)self signalEvents];
  [coderCopy encodeObject:signalEvents forKey:@"signalEvents"];

  transactionHandle = [(_ANEChainingRequest *)self transactionHandle];
  [coderCopy encodeObject:transactionHandle forKey:@"transactionHandle"];

  fwEnqueueDelay = [(_ANEChainingRequest *)self fwEnqueueDelay];
  [coderCopy encodeObject:fwEnqueueDelay forKey:@"fwEnqueueDelay"];

  memoryPoolId = [(_ANEChainingRequest *)self memoryPoolId];
  [coderCopy encodeObject:memoryPoolId forKey:@"memoryPoolId"];
}

- (_ANEChainingRequest)initWithCoder:(id)coder
{
  v20[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v20[2] = objc_opt_class();
  v20[3] = objc_opt_class();
  v20[4] = objc_opt_class();
  v20[5] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:6];
  v6 = [v3 setWithArray:v5];

  v17 = [coderCopy decodeObjectOfClasses:v6 forKey:@"inputs"];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"outputs"];
  v8 = [coderCopy decodeObjectOfClasses:v6 forKey:@"loopbackInputs"];
  v9 = [coderCopy decodeObjectOfClasses:v6 forKey:@"loopbackOutputs"];
  v10 = [coderCopy decodeObjectOfClasses:v6 forKey:@"signalEvents"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"procedureIndex"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionHandle"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fwEnqueueDelay"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"memoryPoolId"];

  v19 = [(_ANEChainingRequest *)self initWithInputs:v17 outputs:v7 lbInputSymbolId:v8 lbOutputSymbolId:v9 procedureIndex:v11 signalEvents:v10 transactionHandle:v12 fwEnqueueDelay:v13 memoryPoolId:v14];
  v15 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)validate
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  selfCopy = self;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1AD246000, log, OS_LOG_TYPE_ERROR, "No input buffers or output sets. inputBuffer.count = %lu : outputSets.count = %lu", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end