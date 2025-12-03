@interface VNFgBgE5MLProcess
+ (id)multiArrayForOutput:(id)output inNamedObjects:(id)objects fromFunctionDescriptor:(id)descriptor error:(id *)error;
- (VNFgBgE5MLProcess)initWithConfiguration:(id)configuration;
- (id)newInputsForFunctionDescriptor:(id)descriptor inputSurfaces:(id)surfaces croppedPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
@end

@implementation VNFgBgE5MLProcess

- (id)newInputsForFunctionDescriptor:(id)descriptor inputSurfaces:(id)surfaces croppedPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  descriptorCopy = descriptor;
  surfacesCopy = surfaces;
  v11 = objc_alloc_init(MEMORY[0x1E69DF940]);
  if (buffer)
  {
    onlyInputImage = [descriptorCopy onlyInputImage];
    v13 = onlyInputImage;
    if (onlyInputImage)
    {
      name = [onlyInputImage name];
      v15 = [v11 assignPixelBuffer:buffer toName:name error:error];

      if (v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (!error)
      {
        goto LABEL_12;
      }

      v23 = +[VNFgBgInstanceSegmenterError genericErrorImageDescription];
      *error = [VNFgBgInstanceSegmenterError errorWithCode:-2 description:v23];
    }

LABEL_11:
    error = 0;
    goto LABEL_12;
  }

LABEL_4:
  v16 = 0;
  while (1)
  {
    inputTensors = [surfacesCopy inputTensors];
    v18 = [inputTensors count];

    if (v18 <= v16)
    {
      break;
    }

    inputTensors2 = [surfacesCopy inputTensors];
    v20 = [inputTensors2 objectAtIndexedSubscript:v16];

    valueRef = [v20 valueRef];
    name2 = [v20 name];
    LOBYTE(valueRef) = [v11 assignSurface:valueRef toName:name2 error:error];

    ++v16;
    if ((valueRef & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  error = v11;
LABEL_12:

  return error;
}

- (VNFgBgE5MLProcess)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = VNFgBgE5MLProcess;
  v5 = [(VNFgBgE5MLProcess *)&v15 init];
  if (v5)
  {
    modelURL = [configurationCopy modelURL];
    modelURL = v5->_modelURL;
    v5->_modelURL = modelURL;

    inputImageName = [configurationCopy inputImageName];
    inputImageName = v5->_inputImageName;
    v5->_inputImageName = inputImageName;

    inputTensorNames = [configurationCopy inputTensorNames];
    inputTensorNames = v5->_inputTensorNames;
    v5->_inputTensorNames = inputTensorNames;

    outputTensorNames = [configurationCopy outputTensorNames];
    outputTensorNames = v5->_outputTensorNames;
    v5->_outputTensorNames = outputTensorNames;
  }

  return v5;
}

+ (id)multiArrayForOutput:(id)output inNamedObjects:(id)objects fromFunctionDescriptor:(id)descriptor error:(id *)error
{
  outputCopy = output;
  objectsCopy = objects;
  descriptorCopy = descriptor;
  v12 = [descriptorCopy outputNamed:outputCopy error:error];
  v13 = v12;
  if (v12)
  {
    shape = [v12 shape];
    strides = [v13 strides];
    dataType = [v13 dataType];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__3823;
    v33 = __Block_byref_object_dispose__3824;
    v34 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__VNFgBgE5MLProcess_multiArrayForOutput_inNamedObjects_fromFunctionDescriptor_error___block_invoke;
    aBlock[3] = &unk_1E77B28B8;
    v28 = dataType;
    v16 = shape;
    v25 = v16;
    v17 = strides;
    v26 = v17;
    v27 = &v29;
    v18 = _Block_copy(aBlock);
    name = [v13 name];
    v20 = [objectsCopy accessReadOnlyDataForName:name usingBlock:v18 error:error];

    if (v20)
    {
      v21 = v30[5];
    }

    else
    {
      v21 = 0;
    }

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __85__VNFgBgE5MLProcess_multiArrayForOutput_inNamedObjects_fromFunctionDescriptor_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 56) == 65552)
  {
    v7 = VNFloat32DataForFloat16Data(v5, a3);
  }

  else
  {
    v8 = [v5 bytes];
    v9 = malloc_type_calloc([v6 length], 1uLL, 0x9554F9ACuLL);
    memcpy(v8, v9, [v6 length]);
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:{objc_msgSend(v6, "length")}];
    free(v9);
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; [*(a1 + 32) rank] > i; ++i)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{*(objc_msgSend(*(a1 + 32), "sizes") + 8 * i)}];
    [v10 addObject:v12];
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (j = 1; [*(a1 + 40) rank] > j; ++j)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLong:{*(objc_msgSend(*(a1 + 40), "byteOffsets") + 8 * j) / 2}];
    [v13 addObject:v15];
  }

  v16 = objc_alloc(MEMORY[0x1E695FED0]);
  BytePtr = CFDataGetBytePtr(v7);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__VNFgBgE5MLProcess_multiArrayForOutput_inNamedObjects_fromFunctionDescriptor_error___block_invoke_2;
  v22[3] = &__block_descriptor_40_e9_v16__0_v8l;
  v22[4] = v7;
  v18 = [v16 initWithDataPointer:BytePtr shape:v10 dataType:65568 strides:v13 deallocator:v22 error:0];
  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  return 1;
}

@end