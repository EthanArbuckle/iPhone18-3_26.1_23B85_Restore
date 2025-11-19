@interface VNFgBgE5MLProcess
+ (id)multiArrayForOutput:(id)a3 inNamedObjects:(id)a4 fromFunctionDescriptor:(id)a5 error:(id *)a6;
- (VNFgBgE5MLProcess)initWithConfiguration:(id)a3;
- (id)newInputsForFunctionDescriptor:(id)a3 inputSurfaces:(id)a4 croppedPixelBuffer:(__CVBuffer *)a5 error:(id *)a6;
@end

@implementation VNFgBgE5MLProcess

- (id)newInputsForFunctionDescriptor:(id)a3 inputSurfaces:(id)a4 croppedPixelBuffer:(__CVBuffer *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x1E69DF940]);
  if (a5)
  {
    v12 = [v9 onlyInputImage];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 name];
      v15 = [v11 assignPixelBuffer:a5 toName:v14 error:a6];

      if (v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (!a6)
      {
        goto LABEL_12;
      }

      v23 = +[VNFgBgInstanceSegmenterError genericErrorImageDescription];
      *a6 = [VNFgBgInstanceSegmenterError errorWithCode:-2 description:v23];
    }

LABEL_11:
    a6 = 0;
    goto LABEL_12;
  }

LABEL_4:
  v16 = 0;
  while (1)
  {
    v17 = [v10 inputTensors];
    v18 = [v17 count];

    if (v18 <= v16)
    {
      break;
    }

    v19 = [v10 inputTensors];
    v20 = [v19 objectAtIndexedSubscript:v16];

    v21 = [v20 valueRef];
    v22 = [v20 name];
    LOBYTE(v21) = [v11 assignSurface:v21 toName:v22 error:a6];

    ++v16;
    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  a6 = v11;
LABEL_12:

  return a6;
}

- (VNFgBgE5MLProcess)initWithConfiguration:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VNFgBgE5MLProcess;
  v5 = [(VNFgBgE5MLProcess *)&v15 init];
  if (v5)
  {
    v6 = [v4 modelURL];
    modelURL = v5->_modelURL;
    v5->_modelURL = v6;

    v8 = [v4 inputImageName];
    inputImageName = v5->_inputImageName;
    v5->_inputImageName = v8;

    v10 = [v4 inputTensorNames];
    inputTensorNames = v5->_inputTensorNames;
    v5->_inputTensorNames = v10;

    v12 = [v4 outputTensorNames];
    outputTensorNames = v5->_outputTensorNames;
    v5->_outputTensorNames = v12;
  }

  return v5;
}

+ (id)multiArrayForOutput:(id)a3 inNamedObjects:(id)a4 fromFunctionDescriptor:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 outputNamed:v9 error:a6];
  v13 = v12;
  if (v12)
  {
    v23 = [v12 shape];
    v14 = [v13 strides];
    v15 = [v13 dataType];
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
    v28 = v15;
    v16 = v23;
    v25 = v16;
    v17 = v14;
    v26 = v17;
    v27 = &v29;
    v18 = _Block_copy(aBlock);
    v19 = [v13 name];
    v20 = [v10 accessReadOnlyDataForName:v19 usingBlock:v18 error:a6];

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