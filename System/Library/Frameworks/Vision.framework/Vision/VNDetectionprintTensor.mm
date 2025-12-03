@interface VNDetectionprintTensor
+ (id)tensorFromCSUBuffer:(id)buffer originatingRequestSpecifier:(id)specifier error:(id *)error;
+ (id)tensorFromEspressoBuffer:(id *)buffer originatingRequestSpecifier:(id)specifier error:(id *)error;
- (VNDetectionprintTensor)initWithCoder:(id)coder;
- (VNDetectionprintTensor)initWithDescriptorData:(id)data elementType:(unint64_t)type elementCount:(unint64_t)count originatingRequestSpecifier:(id)specifier;
- (id)VNEspressoModelImageprintMLMultiArrayWithConstraint:(id)constraint error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNDetectionprintTensor

- (VNDetectionprintTensor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = VNDetectionprintTensor;
  v5 = [(VNEspressoModelImageprint *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"shape"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shape"];
      shape = v5->_shape;
      v5->_shape = v6;

      if (!v5->_shape)
      {
        goto LABEL_12;
      }
    }

    else
    {
      elementCount = [(VNEspressoModelImageprint *)v5 elementCount];
      if (elementCount == 221952)
      {
        v9 = objc_alloc(MEMORY[0x1E69DF900]);
        v10 = 17;
        v11 = 768;
      }

      else
      {
        if (elementCount != 352800)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported %@", v5];
          v16 = [VNError errorForOperationFailedErrorWithLocalizedDescription:v15];
          [coderCopy failWithError:v16];

LABEL_12:
          v14 = 0;
          goto LABEL_13;
        }

        v9 = objc_alloc(MEMORY[0x1E69DF900]);
        v10 = 35;
        v11 = 288;
      }

      v12 = [v9 initWithBatchNumber:1 channels:v11 height:v10 width:v10];
      v13 = v5->_shape;
      v5->_shape = v12;
    }
  }

  v14 = v5;
LABEL_13:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNDetectionprintTensor;
  [(VNEspressoModelImageprint *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_shape forKey:@"shape"];
}

- (VNDetectionprintTensor)initWithDescriptorData:(id)data elementType:(unint64_t)type elementCount:(unint64_t)count originatingRequestSpecifier:(id)specifier
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VNDetectionprintTensor;
  v7 = [(VNEspressoModelImageprint *)&v11 initWithDescriptorData:data elementType:type elementCount:count originatingRequestSpecifier:specifier];
  if (v7)
  {
    v12[0] = count;
    v8 = [objc_alloc(MEMORY[0x1E69DF900]) initWithSizes:v12 rank:1];
    shape = v7->_shape;
    v7->_shape = v8;
  }

  return v7;
}

+ (id)tensorFromEspressoBuffer:(id *)buffer originatingRequestSpecifier:(id)specifier error:(id *)error
{
  specifierCopy = specifier;
  if (buffer->var14 == 65568)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buffer->var0 length:4 * buffer->var13];
    error = [objc_opt_class() printWithDescriptorData:v8 elementType:1 elementCount:buffer->var13 originatingRequestSpecifier:specifierCopy error:error];
    if (error)
    {
      v15 = 0;
      v9 = *&buffer->var6;
      v16 = *&buffer->var4;
      v17 = v9;
      v10 = [MEMORY[0x1E69DF900] shapeForBlobDimensions:&v15];
      v11 = error[8];
      error[8] = v10;

      errorCopy = error;
    }
  }

  else if (error)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported element storage type of 0x%04X", buffer->var14];
    *error = [VNError errorForInvalidOperationWithLocalizedDescription:v13];

    error = 0;
  }

  return error;
}

+ (id)tensorFromCSUBuffer:(id)buffer originatingRequestSpecifier:(id)specifier error:(id *)error
{
  specifierCopy = specifier;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__20142;
  v28 = __Block_byref_object_dispose__20143;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__20142;
  v22 = __Block_byref_object_dispose__20143;
  v23 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__VNDetectionprintTensor_tensorFromCSUBuffer_originatingRequestSpecifier_error___block_invoke;
  v13[3] = &unk_1E77B4508;
  v15 = &v24;
  selfCopy = self;
  v9 = specifierCopy;
  v14 = v9;
  v16 = &v18;
  [buffer accessDataUsingBlock:v13];
  v10 = v25[5];
  if (v10)
  {
    v11 = v10;
  }

  else if (error)
  {
    *error = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v10;
}

void __80__VNDetectionprintTensor_tensorFromCSUBuffer_originatingRequestSpecifier_error___block_invoke(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
  v10 = objc_opt_class();
  v11 = a3 >> 2;
  v12 = a1[4];
  v13 = *(a1[6] + 8);
  obj = *(v13 + 40);
  v14 = [v10 printWithDescriptorData:v9 elementType:1 elementCount:v11 originatingRequestSpecifier:v12 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  if (*(*(a1[5] + 8) + 40))
  {
    v17 = [objc_alloc(MEMORY[0x1E69DF9B8]) initWithByteOffsets:a5 rank:a4];
    v18 = *(a1[6] + 8);
    v24 = *(v18 + 40);
    v19 = [v17 shapeForPackedElementsOfType:65568 error:&v24];
    objc_storeStrong((v18 + 40), v24);
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x1E69DF900]) initWithSizes:objc_msgSend(v19 rank:{"sizes"), objc_msgSend(v19, "rank")}];
      v21 = *(*(a1[5] + 8) + 40);
      v22 = *(v21 + 64);
      *(v21 + 64) = v20;
    }

    else
    {
      v23 = *(a1[5] + 8);
      v22 = *(v23 + 40);
      *(v23 + 40) = 0;
    }
  }
}

- (id)VNEspressoModelImageprintMLMultiArrayWithConstraint:(id)constraint error:(id *)error
{
  v26[3] = *MEMORY[0x1E69E9840];
  constraintCopy = constraint;
  shape = [(VNDetectionprintTensor *)self shape];
  if ([shape rank] == 4 && objc_msgSend(shape, "batchNumber") == 1)
  {
    shape2 = [constraintCopy shape];
    if ([shape2 count] != 3)
    {
      if (!error)
      {
        goto LABEL_17;
      }

      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = [shape2 componentsJoinedByString:{@", "}];
      v20 = [v18 initWithFormat:@"MLMultiArrayConstraint has an unexpected shape of [ %@ ]", v19];

      v21 = [VNError errorForInvalidModelWithLocalizedDescription:v20];
LABEL_16:
      *error = v21;

      error = 0;
      goto LABEL_17;
    }

    sizes = [shape sizes];
    v10 = [shape2 objectAtIndexedSubscript:0];
    if ([v10 integerValue] == sizes[1])
    {
      v11 = [shape2 objectAtIndexedSubscript:1];
      if ([v11 integerValue] == sizes[2])
      {
        v12 = [shape2 objectAtIndexedSubscript:2];
        integerValue = [v12 integerValue];
        v13 = sizes[3];

        if (integerValue == v13)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:sizes[3] * sizes[2]];
          v26[0] = v14;
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:sizes[3]];
          v26[1] = v15;
          v26[2] = &unk_1F19C15E8;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];

          error = -[VNEspressoModelImageprint _VNEspressoModelImageprintMLMultiArrayWithDataType:shape:strides:error:](self, "_VNEspressoModelImageprintMLMultiArrayWithDataType:shape:strides:error:", [constraintCopy dataType], shape2, v16, error);

LABEL_17:
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
    if (!error)
    {
      goto LABEL_17;
    }

    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = [shape2 componentsJoinedByString:{@", "}];
    v20 = [v22 initWithFormat:@"MLMultiArrayConstraint sizes of [ %@ ] does not align with tensor shape of %@", v23, shape];

    v21 = [VNError errorForInvalidModelWithLocalizedDescription:v20];
    goto LABEL_16;
  }

  if (error)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has an unsupported shape of %@", self, shape];
    *error = [VNError errorForOperationFailedErrorWithLocalizedDescription:v17];

    error = 0;
  }

LABEL_18:

  return error;
}

@end