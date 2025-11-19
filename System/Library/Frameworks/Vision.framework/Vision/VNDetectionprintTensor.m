@interface VNDetectionprintTensor
+ (id)tensorFromCSUBuffer:(id)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5;
+ (id)tensorFromEspressoBuffer:(id *)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5;
- (VNDetectionprintTensor)initWithCoder:(id)a3;
- (VNDetectionprintTensor)initWithDescriptorData:(id)a3 elementType:(unint64_t)a4 elementCount:(unint64_t)a5 originatingRequestSpecifier:(id)a6;
- (id)VNEspressoModelImageprintMLMultiArrayWithConstraint:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNDetectionprintTensor

- (VNDetectionprintTensor)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = VNDetectionprintTensor;
  v5 = [(VNEspressoModelImageprint *)&v18 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"shape"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shape"];
      shape = v5->_shape;
      v5->_shape = v6;

      if (!v5->_shape)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = [(VNEspressoModelImageprint *)v5 elementCount];
      if (v8 == 221952)
      {
        v9 = objc_alloc(MEMORY[0x1E69DF900]);
        v10 = 17;
        v11 = 768;
      }

      else
      {
        if (v8 != 352800)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported %@", v5];
          v16 = [VNError errorForOperationFailedErrorWithLocalizedDescription:v15];
          [v4 failWithError:v16];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNDetectionprintTensor;
  [(VNEspressoModelImageprint *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_shape forKey:@"shape"];
}

- (VNDetectionprintTensor)initWithDescriptorData:(id)a3 elementType:(unint64_t)a4 elementCount:(unint64_t)a5 originatingRequestSpecifier:(id)a6
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VNDetectionprintTensor;
  v7 = [(VNEspressoModelImageprint *)&v11 initWithDescriptorData:a3 elementType:a4 elementCount:a5 originatingRequestSpecifier:a6];
  if (v7)
  {
    v12[0] = a5;
    v8 = [objc_alloc(MEMORY[0x1E69DF900]) initWithSizes:v12 rank:1];
    shape = v7->_shape;
    v7->_shape = v8;
  }

  return v7;
}

+ (id)tensorFromEspressoBuffer:(id *)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5
{
  v7 = a4;
  if (a3->var14 == 65568)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3->var0 length:4 * a3->var13];
    a5 = [objc_opt_class() printWithDescriptorData:v8 elementType:1 elementCount:a3->var13 originatingRequestSpecifier:v7 error:a5];
    if (a5)
    {
      v15 = 0;
      v9 = *&a3->var6;
      v16 = *&a3->var4;
      v17 = v9;
      v10 = [MEMORY[0x1E69DF900] shapeForBlobDimensions:&v15];
      v11 = a5[8];
      a5[8] = v10;

      v12 = a5;
    }
  }

  else if (a5)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported element storage type of 0x%04X", a3->var14];
    *a5 = [VNError errorForInvalidOperationWithLocalizedDescription:v13];

    a5 = 0;
  }

  return a5;
}

+ (id)tensorFromCSUBuffer:(id)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5
{
  v8 = a4;
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
  v17 = a1;
  v9 = v8;
  v14 = v9;
  v16 = &v18;
  [a3 accessDataUsingBlock:v13];
  v10 = v25[5];
  if (v10)
  {
    v11 = v10;
  }

  else if (a5)
  {
    *a5 = v19[5];
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

- (id)VNEspressoModelImageprintMLMultiArrayWithConstraint:(id)a3 error:(id *)a4
{
  v26[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(VNDetectionprintTensor *)self shape];
  if ([v7 rank] == 4 && objc_msgSend(v7, "batchNumber") == 1)
  {
    v8 = [v6 shape];
    if ([v8 count] != 3)
    {
      if (!a4)
      {
        goto LABEL_17;
      }

      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = [v8 componentsJoinedByString:{@", "}];
      v20 = [v18 initWithFormat:@"MLMultiArrayConstraint has an unexpected shape of [ %@ ]", v19];

      v21 = [VNError errorForInvalidModelWithLocalizedDescription:v20];
LABEL_16:
      *a4 = v21;

      a4 = 0;
      goto LABEL_17;
    }

    v9 = [v7 sizes];
    v10 = [v8 objectAtIndexedSubscript:0];
    if ([v10 integerValue] == v9[1])
    {
      v11 = [v8 objectAtIndexedSubscript:1];
      if ([v11 integerValue] == v9[2])
      {
        v12 = [v8 objectAtIndexedSubscript:2];
        v25 = [v12 integerValue];
        v13 = v9[3];

        if (v25 == v13)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9[3] * v9[2]];
          v26[0] = v14;
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9[3]];
          v26[1] = v15;
          v26[2] = &unk_1F19C15E8;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];

          a4 = -[VNEspressoModelImageprint _VNEspressoModelImageprintMLMultiArrayWithDataType:shape:strides:error:](self, "_VNEspressoModelImageprintMLMultiArrayWithDataType:shape:strides:error:", [v6 dataType], v8, v16, a4);

LABEL_17:
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
    if (!a4)
    {
      goto LABEL_17;
    }

    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = [v8 componentsJoinedByString:{@", "}];
    v20 = [v22 initWithFormat:@"MLMultiArrayConstraint sizes of [ %@ ] does not align with tensor shape of %@", v23, v7];

    v21 = [VNError errorForInvalidModelWithLocalizedDescription:v20];
    goto LABEL_16;
  }

  if (a4)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has an unsupported shape of %@", self, v7];
    *a4 = [VNError errorForOperationFailedErrorWithLocalizedDescription:v17];

    a4 = 0;
  }

LABEL_18:

  return a4;
}

@end