@interface MLCTensorDescriptor
+ (MLCTensorDescriptor)descriptorWithShape:(NSArray *)shape sequenceLengths:(NSArray *)sequenceLengths sortedSequences:(BOOL)sortedSequences dataType:(MLCDataType)dataType;
+ (MLCTensorDescriptor)descriptorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannels batchSize:(NSUInteger)batchSize;
+ (MLCTensorDescriptor)descriptorWithWidth:(unint64_t)a3 height:(unint64_t)a4 featureChannels:(unint64_t)a5 batchSize:(unint64_t)a6 strideForWidth:(unint64_t)a7 strideForHeight:(unint64_t)a8 strideForBatch:(unint64_t)a9 dataType:(int)a10;
+ (unint64_t)elementByteCount:(int)a3;
- (BOOL)isEqual:(id)a3;
- (NSUInteger)dimensionCount;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initNCHWTensorWithWidth:(unint64_t)a3 height:(unint64_t)a4 featureChannels:(unint64_t)a5 batchSize:(unint64_t)a6 strideForWidth:(unint64_t)a7 strideForHeight:(unint64_t)a8 strideForChannel:(unint64_t)a9 strideForBatch:(unint64_t)a10 fanIn:(unint64_t)a11 fanOut:(unint64_t)a12 dataType:(int)a13;
- (id)initTensorWithShape:(id)a3 stride:(id)a4 sequenceLengths:(id)a5 sortedSequences:(BOOL)a6 fanIn:(unint64_t)a7 fanOut:(unint64_t)a8 dataType:(int)a9;
- (id)newShapeWithCount:(unint64_t)a3;
- (unint64_t)elementByteCount;
- (unint64_t)elementCount;
- (unint64_t)hash;
- (void)updateStride:(id)a3 tensorAllocationSize:(unint64_t)a4;
@end

@implementation MLCTensorDescriptor

+ (MLCTensorDescriptor)descriptorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannels batchSize:(NSUInteger)batchSize
{
  v10 = objc_opt_class();

  return [v10 descriptorWithWidth:width height:height featureChannelCount:featureChannels batchSize:batchSize dataType:1];
}

+ (MLCTensorDescriptor)descriptorWithWidth:(unint64_t)a3 height:(unint64_t)a4 featureChannels:(unint64_t)a5 batchSize:(unint64_t)a6 strideForWidth:(unint64_t)a7 strideForHeight:(unint64_t)a8 strideForBatch:(unint64_t)a9 dataType:(int)a10
{
  LODWORD(v12) = a10;
  v10 = [[a1 alloc] initNCHWTensorWithWidth:a3 height:a4 featureChannels:a5 batchSize:a6 strideForWidth:a7 strideForHeight:a8 strideForChannel:0 strideForBatch:a9 fanIn:a4 * a3 * a5 fanOut:a4 * a3 dataType:v12];

  return v10;
}

+ (MLCTensorDescriptor)descriptorWithShape:(NSArray *)shape sequenceLengths:(NSArray *)sequenceLengths sortedSequences:(BOOL)sortedSequences dataType:(MLCDataType)dataType
{
  v11 = shape;
  v12 = sequenceLengths;
  if ([(NSArray *)v12 count])
  {
    if (sortedSequences)
    {
      if ([(NSArray *)v11 count]== 3 || [(NSArray *)v11 count]== 4)
      {
        if ([(NSArray *)v11 count]== 3)
        {
          v13 = [(NSArray *)v11 objectAtIndexedSubscript:2];
          v14 = [v13 unsignedIntegerValue];

          v15 = [a1 alloc];
          LODWORD(v27) = dataType;
          v16 = v11;
          v17 = v12;
          v18 = v14;
          v19 = 1;
        }

        else
        {
          v22 = [(NSArray *)v11 objectAtIndexedSubscript:1];
          v23 = [v22 unsignedIntegerValue];

          v24 = [(NSArray *)v11 objectAtIndexedSubscript:3];
          v25 = [v24 unsignedIntegerValue];

          v15 = [a1 alloc];
          v18 = v25 * v23;
          LODWORD(v27) = dataType;
          v16 = v11;
          v17 = v12;
          v19 = v25;
        }

        v21 = [v15 initTensorWithShape:v16 stride:0 sequenceLengths:v17 sortedSequences:1 fanIn:v18 fanOut:v19 dataType:v27];
        goto LABEL_14;
      }

      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCTensorDescriptor descriptorWithShape:a2 sequenceLengths:? sortedSequences:? dataType:?];
      }
    }

    else
    {
      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCTensorDescriptor descriptorWithShape:a2 sequenceLengths:? sortedSequences:? dataType:?];
      }
    }
  }

  else
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MLCTensorDescriptor descriptorWithShape:a2 sequenceLengths:? sortedSequences:? dataType:?];
    }
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (id)initNCHWTensorWithWidth:(unint64_t)a3 height:(unint64_t)a4 featureChannels:(unint64_t)a5 batchSize:(unint64_t)a6 strideForWidth:(unint64_t)a7 strideForHeight:(unint64_t)a8 strideForChannel:(unint64_t)a9 strideForBatch:(unint64_t)a10 fanIn:(unint64_t)a11 fanOut:(unint64_t)a12 dataType:(int)a13
{
  v38[4] = *MEMORY[0x277D85DE8];
  v20 = [objc_opt_class() elementByteCount:a13];
  if (v20)
  {
    v21 = a10;
    if (!a7)
    {
      a7 = v20;
    }

    if (!a8)
    {
      a8 = a7 * a3;
    }

    if (a9)
    {
      v22 = a9;
    }

    else
    {
      v22 = a8 * a4;
    }

    if (!a10)
    {
      v21 = v22 * a5;
    }

    v36 = v21;
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    v38[0] = v23;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    v38[1] = v24;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v38[2] = v25;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v38[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36];
    v37[0] = v28;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    v37[1] = v29;
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a8];
    v37[2] = v30;
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
    v37[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];

    self = [(MLCTensorDescriptor *)self initTensorWithShape:v27 stride:v32 fanIn:a11 fanOut:a12 dataType:a13];
    v33 = self;
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (id)initTensorWithShape:(id)a3 stride:(id)a4 sequenceLengths:(id)a5 sortedSequences:(BOOL)a6 fanIn:(unint64_t)a7 fanOut:(unint64_t)a8 dataType:(int)a9
{
  v11 = a6;
  v84 = a2;
  v92 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = +[MLCTensorDescriptor maxTensorDimensions];
  if ([v15 count] > v18)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(v84);
      *buf = 138412802;
      v87 = v20;
      v88 = 2048;
      v89 = [v15 count];
      v90 = 2048;
      v91 = v18;
      _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: Requested (%lu) dimensions exceed max supported (%lu) dimensions", buf, 0x20u);
    }

    goto LABEL_56;
  }

  v83 = v11;
  if ([v15 count])
  {
    v21 = 0;
    while (1)
    {
      v22 = [v15 objectAtIndexedSubscript:v21];
      v23 = [v22 unsignedIntegerValue];

      if (!v23)
      {
        break;
      }

      if (++v21 >= [v15 count])
      {
        goto LABEL_8;
      }
    }

    v19 = +[MLCLog framework];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    v37 = NSStringFromSelector(v84);
    v38 = [v15 objectAtIndexedSubscript:v21];
    *buf = 138412802;
    v87 = v37;
    v88 = 2048;
    v89 = [v38 unsignedIntegerValue];
    v90 = 2048;
    v91 = v21;
    _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: Requested (%lu) value in size for dimension (%lu) is zero", buf, 0x20u);

    goto LABEL_26;
  }

LABEL_8:
  if (v16)
  {
    v24 = [v16 count];
    if (v24 != [v15 count])
    {
      v19 = +[MLCLog framework];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_56:

        v47 = 0;
        goto LABEL_57;
      }

      v37 = NSStringFromSelector(v84);
      *buf = 138412802;
      v87 = v37;
      v88 = 2048;
      v89 = [v15 count];
      v90 = 2048;
      v91 = [v16 count];
      _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: Size (%lu) dimensions do not match stride (%lu) dimensions", buf, 0x20u);
LABEL_26:

      goto LABEL_56;
    }
  }

  v81 = a5;
  v82 = v16;
  if (v17)
  {
    if (!v83)
    {
      v19 = +[MLCLog framework];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [MLCTensorDescriptor initTensorWithShape:v84 stride:? sequenceLengths:? sortedSequences:? fanIn:? fanOut:? dataType:?];
      }

      goto LABEL_56;
    }

    if (![v17 count])
    {
      v19 = +[MLCLog framework];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [MLCTensorDescriptor descriptorWithShape:v84 sequenceLengths:? sortedSequences:? dataType:?];
      }

      goto LABEL_56;
    }

    if ([v15 count] == 4)
    {
      v25 = [v15 objectAtIndexedSubscript:0];
      v26 = [v25 unsignedIntegerValue];
      v27 = [v17 count];

      if (v26 != v27)
      {
        v19 = +[MLCLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MLCTensorDescriptor initTensorWithShape:v84 stride:? sequenceLengths:? sortedSequences:? fanIn:? fanOut:? dataType:?];
        }

        goto LABEL_56;
      }
    }

    v28 = [v17 objectAtIndexedSubscript:{0, v81}];
    v29 = [v28 unsignedIntegerValue];

    if (!v29)
    {
      v19 = +[MLCLog framework];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [MLCTensorDescriptor initTensorWithShape:v84 stride:? sequenceLengths:? sortedSequences:? fanIn:? fanOut:? dataType:?];
      }

      goto LABEL_56;
    }

    v30 = 0;
    while (1)
    {
      a5 = v81;
      if (v30 >= [v17 count] - 1)
      {
        break;
      }

      v31 = [v17 objectAtIndexedSubscript:v30];
      v32 = [v31 unsignedIntegerValue];
      v33 = [v17 objectAtIndexedSubscript:++v30];
      v34 = [v33 unsignedIntegerValue];

      if (v32 < v34)
      {
        v19 = +[MLCLog framework];
        v16 = v82;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MLCTensorDescriptor initTensorWithShape:v84 stride:? sequenceLengths:? sortedSequences:? fanIn:? fanOut:? dataType:?];
        }

        goto LABEL_56;
      }

      v35 = [v17 objectAtIndexedSubscript:v30];
      v36 = [v35 unsignedIntegerValue];

      v16 = v82;
      if (!v36)
      {
        v19 = +[MLCLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MLCTensorDescriptor initTensorWithShape:v84 stride:? sequenceLengths:? sortedSequences:? fanIn:? fanOut:? dataType:?];
        }

        goto LABEL_56;
      }
    }
  }

  v39 = [objc_opt_class() elementByteCount:a9];
  if (v39)
  {
    v40 = v39;
    v85.receiver = self;
    v85.super_class = MLCTensorDescriptor;
    v41 = [(MLCTensorDescriptor *)&v85 init];
    v42 = v41;
    if (v41)
    {
      v41->_dataType = a9;
      v43 = [v15 copy];
      shape = v42->_shape;
      v42->_shape = v43;

      v42->_fanIn = a7;
      v42->_fanOut = a8;
      if (v82)
      {
        v45 = [v82 copy];
        stride = v42->_stride;
        v42->_stride = v45;
      }

      else
      {
        v48 = [v15 count];
        if (v48)
        {
          v49 = v48 - 1;
          do
          {
            v80[v49] = v40;
            v50 = [v15 objectAtIndexedSubscript:v49];
            v40 *= [v50 unsignedIntegerValue];

            --v49;
          }

          while (v49 != -1);
        }

        v51 = [MEMORY[0x277CBEBF8] mutableCopy];
        if ([v15 count])
        {
          v52 = 0;
          do
          {
            v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v80[v52]];
            [v51 addObject:v53];

            ++v52;
          }

          while (v52 < [v15 count]);
        }

        v54 = [v51 copy];
        v55 = v42->_stride;
        v42->_stride = v54;

        a5 = v81;
      }

      v56 = 0;
      v57 = v83;
      if (v17 && v83)
      {
        v42->_variableLengthSequences = 0;
        if ([v17 count] >= 2)
        {
          v58 = 1;
          while (1)
          {
            v59 = [v17 objectAtIndexedSubscript:{v58, v81}];
            v60 = [v59 unsignedIntegerValue];

            v61 = v58 - 1;
            v62 = [v17 objectAtIndexedSubscript:v61];
            v63 = [v62 unsignedIntegerValue];

            if (v60 != v63)
            {
              break;
            }

            v58 = v61 + 2;
            if (v58 >= [v17 count])
            {
              goto LABEL_59;
            }
          }

          v42->_variableLengthSequences = 1;
        }

LABEL_59:
        v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v66 = [v17 count];
        v67 = [v17 objectAtIndexedSubscript:0];
        v68 = [v67 unsignedIntegerValue];

        if (v68)
        {
          v69 = 0;
          do
          {
            v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v66, v81}];
            [(NSArray *)v56 setObject:v70 atIndexedSubscript:v69];

            ++v69;
            if (v66)
            {
              do
              {
                v71 = v66 - 1;
                v72 = [v17 objectAtIndexedSubscript:v66 - 1];
                v73 = [v72 unsignedIntegerValue];

                if (v73 != v69)
                {
                  break;
                }

                --v66;
              }

              while (v71);
            }

            v74 = [v17 objectAtIndexedSubscript:0];
            v75 = [v74 unsignedIntegerValue];
          }

          while (v69 < v75);
        }

        a5 = v81;
        v57 = v83;
      }

      batchSizePerSequenceStep = v42->_batchSizePerSequenceStep;
      v42->_batchSizePerSequenceStep = v56;

      v42->_sortedSequences = v57;
      objc_storeStrong(&v42->_sequenceLengths, a5);
      v77 = [(NSArray *)v42->_stride objectAtIndexedSubscript:0];
      v78 = [v77 unsignedIntegerValue];
      v79 = [(NSArray *)v42->_shape objectAtIndexedSubscript:0];
      v42->_tensorAllocationSizeInBytes = [v79 unsignedIntegerValue] * v78;
    }

    self = v42;
    v47 = self;
  }

  else
  {
    v47 = 0;
  }

  v16 = v82;
LABEL_57:

  v64 = *MEMORY[0x277D85DE8];
  return v47;
}

- (NSUInteger)dimensionCount
{
  v2 = [(MLCTensorDescriptor *)self shape];
  v3 = [v2 count];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCTensorDescriptor *)self dataType];
  v7 = [(MLCTensorDescriptor *)self dimensionCount];
  v8 = [(MLCTensorDescriptor *)self shape];
  v9 = [v3 stringWithFormat:@"%@: { dataType=%d : numberOfDimensions=%lu : size=%@ : tensorAllocationSizeInBytes=%lu }", v5, v6, v7, v8, -[MLCTensorDescriptor tensorAllocationSizeInBytes](self, "tensorAllocationSizeInBytes")];

  return v9;
}

- (void)updateStride:(id)a3 tensorAllocationSize:(unint64_t)a4
{
  v9 = a3;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  if ([v9 count])
  {
    v7 = 0;
    do
    {
      v8 = [v9 objectAtIndex:v7];
      [v6 setObject:v8 atIndexedSubscript:v7];

      ++v7;
    }

    while (v7 < [v9 count]);
  }

  [(MLCTensorDescriptor *)self setStride:v6];
  [(MLCTensorDescriptor *)self setTensorAllocationSizeInBytes:a4];
}

- (unint64_t)elementCount
{
  v4 = [(MLCTensorDescriptor *)self dataType];
  if (v4 <= MLCDataTypeUInt8)
  {
    if (((1 << v4) & 0x350) != 0)
    {

      return [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes];
    }

    if (v4 == MLCDataTypeInt64)
    {
      return [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes]>> 3;
    }

    if (v4 == MLCDataTypeInt32)
    {
      return [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes]>> 2;
    }
  }

  if (v4 == MLCDataTypeFloat32)
  {
    return [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes]>> 2;
  }

  if (v4 == MLCDataTypeFloat16)
  {
    return [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes]>> 1;
  }

  v6 = +[MLCLog framework];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceGPU multiDeviceTensorReduction:a2 sourceBuffer:? targetBuffer:?];
  }

  return 0;
}

+ (unint64_t)elementByteCount:(int)a3
{
  v4 = a3 - 1;
  if (a3 - 1) < 9 && ((0x1FDu >> v4))
  {
    return qword_238D45D10[v4];
  }

  v6 = +[MLCLog framework];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCTensorDescriptor elementByteCount:a2];
  }

  return 0;
}

- (unint64_t)elementByteCount
{
  v3 = objc_opt_class();
  v4 = [(MLCTensorDescriptor *)self dataType];

  return [v3 elementByteCount:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 dataType];
    if (v6 != [(MLCTensorDescriptor *)self dataType])
    {
      goto LABEL_18;
    }

    v7 = [v5 dimensionCount];
    if (v7 != [(MLCTensorDescriptor *)self dimensionCount])
    {
      goto LABEL_18;
    }

    v8 = [v5 shape];
    v9 = [(MLCTensorDescriptor *)self shape];
    if ([v8 isEqualToArray:v9])
    {
      v10 = [v5 stride];
      v11 = [(MLCTensorDescriptor *)self stride];
      if ([v10 isEqualToArray:v11])
      {
        v12 = [v5 tensorAllocationSizeInBytes];
        if (v12 == [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes])
        {
          v13 = [v5 sortedSequences];
          v14 = [(MLCTensorDescriptor *)self sortedSequences];

          if (v13 == v14)
          {
            v15 = [v5 sequenceLengths];
            if (v15)
            {
              v16 = v15;
              v17 = [(MLCTensorDescriptor *)self sequenceLengths];

              if (v17)
              {
                v18 = [v5 sequenceLengths];
                v19 = [(MLCTensorDescriptor *)self sequenceLengths];
                v20 = [v18 isEqualToArray:v19];

LABEL_11:
                v21 = [v5 batchSizePerSequenceStep];
                if (v21)
                {
                  v22 = v21;
                  v23 = [(MLCTensorDescriptor *)self batchSizePerSequenceStep];

                  if (v23)
                  {
                    if (v20)
                    {
                      v24 = [v5 batchSizePerSequenceStep];
                      v25 = [(MLCTensorDescriptor *)self batchSizePerSequenceStep];
                      LOBYTE(v20) = [v24 isEqualToArray:v25];
                    }

                    goto LABEL_19;
                  }
                }

                v27 = [v5 batchSizePerSequenceStep];
                if (!v27)
                {
                  v29 = [(MLCTensorDescriptor *)self batchSizePerSequenceStep];

                  if (!v29)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_18;
                }

                goto LABEL_25;
              }
            }

            v27 = [v5 sequenceLengths];
            if (v27)
            {
LABEL_25:

              goto LABEL_18;
            }

            v28 = [(MLCTensorDescriptor *)self sequenceLengths];

            if (!v28)
            {
              v20 = 1;
              goto LABEL_11;
            }
          }

LABEL_18:
          LOBYTE(v20) = 0;
LABEL_19:

          goto LABEL_20;
        }
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v20) = 0;
LABEL_20:

  return v20;
}

- (unint64_t)hash
{
  v16 = 0;
  v15 = [(MLCTensorDescriptor *)self dataType];
  [(MLCTensorDescriptor *)self dimensionCount];
  v3 = [(MLCTensorDescriptor *)self shape];
  [v3 hash];
  v4 = [(MLCTensorDescriptor *)self stride];
  [v4 hash];
  [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes];
  v5 = [(MLCTensorDescriptor *)self sequenceLengths];
  [v5 hash];
  [(MLCTensorDescriptor *)self sortedSequences];
  v6 = [(MLCTensorDescriptor *)self batchSizePerSequenceStep];
  [v6 hash];
  hashCombine_1(&v16, v7, v8, v9, v10, v11, v12, v13, v15);

  return v16;
}

- (id)newShapeWithCount:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [(MLCTensorDescriptor *)self shape];
  v7 = [v6 count];

  v8 = [(MLCTensorDescriptor *)self shape];
  v9 = v8;
  if (v7 == a3)
  {
    v10 = [v8 copy];

    v5 = v10;
  }

  else
  {
    v11 = [v8 count];

    if (a3)
    {
      v12 = 0;
      v13 = a3 - v11;
      v14 = v11 - a3;
      do
      {
        if (v12 >= v13)
        {
          v16 = [(MLCTensorDescriptor *)self shape];
          v17 = [v16 objectAtIndexedSubscript:v14 + v12];
          v15 = [v17 unsignedIntegerValue];
        }

        else
        {
          v15 = 1;
        }

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
        [v5 setObject:v18 atIndexedSubscript:v12];

        ++v12;
      }

      while (a3 != v12);
    }
  }

  v19 = [v5 copy];

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCTensorDescriptor *)self shape];
  v6 = [(MLCTensorDescriptor *)self stride];
  v7 = [(MLCTensorDescriptor *)self sequenceLengths];
  v8 = [(MLCTensorDescriptor *)self sortedSequences];
  v9 = [(MLCTensorDescriptor *)self fanIn];
  v10 = [(MLCTensorDescriptor *)self fanOut];
  LODWORD(v13) = [(MLCTensorDescriptor *)self dataType];
  v11 = [v4 initTensorWithShape:v5 stride:v6 sequenceLengths:v7 sortedSequences:v8 fanIn:v9 fanOut:v10 dataType:v13];

  return v11;
}

+ (void)descriptorWithShape:(const char *)a1 sequenceLengths:sortedSequences:dataType:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)descriptorWithShape:(const char *)a1 sequenceLengths:sortedSequences:dataType:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)descriptorWithShape:(const char *)a1 sequenceLengths:sortedSequences:dataType:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initTensorWithShape:(const char *)a1 stride:sequenceLengths:sortedSequences:fanIn:fanOut:dataType:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initTensorWithShape:(const char *)a1 stride:sequenceLengths:sortedSequences:fanIn:fanOut:dataType:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initTensorWithShape:(const char *)a1 stride:sequenceLengths:sortedSequences:fanIn:fanOut:dataType:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initTensorWithShape:(const char *)a1 stride:sequenceLengths:sortedSequences:fanIn:fanOut:dataType:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initTensorWithShape:(const char *)a1 stride:sequenceLengths:sortedSequences:fanIn:fanOut:dataType:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)elementByteCount:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

@end