@interface MLCTensorDescriptor
+ (MLCTensorDescriptor)descriptorWithShape:(NSArray *)shape sequenceLengths:(NSArray *)sequenceLengths sortedSequences:(BOOL)sortedSequences dataType:(MLCDataType)dataType;
+ (MLCTensorDescriptor)descriptorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannels batchSize:(NSUInteger)batchSize;
+ (MLCTensorDescriptor)descriptorWithWidth:(unint64_t)width height:(unint64_t)height featureChannels:(unint64_t)channels batchSize:(unint64_t)size strideForWidth:(unint64_t)forWidth strideForHeight:(unint64_t)forHeight strideForBatch:(unint64_t)batch dataType:(int)self0;
+ (unint64_t)elementByteCount:(int)count;
- (BOOL)isEqual:(id)equal;
- (NSUInteger)dimensionCount;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initNCHWTensorWithWidth:(unint64_t)width height:(unint64_t)height featureChannels:(unint64_t)channels batchSize:(unint64_t)size strideForWidth:(unint64_t)forWidth strideForHeight:(unint64_t)forHeight strideForChannel:(unint64_t)channel strideForBatch:(unint64_t)self0 fanIn:(unint64_t)self1 fanOut:(unint64_t)self2 dataType:(int)self3;
- (id)initTensorWithShape:(id)shape stride:(id)stride sequenceLengths:(id)lengths sortedSequences:(BOOL)sequences fanIn:(unint64_t)in fanOut:(unint64_t)out dataType:(int)type;
- (id)newShapeWithCount:(unint64_t)count;
- (unint64_t)elementByteCount;
- (unint64_t)elementCount;
- (unint64_t)hash;
- (void)updateStride:(id)stride tensorAllocationSize:(unint64_t)size;
@end

@implementation MLCTensorDescriptor

+ (MLCTensorDescriptor)descriptorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannels batchSize:(NSUInteger)batchSize
{
  v10 = objc_opt_class();

  return [v10 descriptorWithWidth:width height:height featureChannelCount:featureChannels batchSize:batchSize dataType:1];
}

+ (MLCTensorDescriptor)descriptorWithWidth:(unint64_t)width height:(unint64_t)height featureChannels:(unint64_t)channels batchSize:(unint64_t)size strideForWidth:(unint64_t)forWidth strideForHeight:(unint64_t)forHeight strideForBatch:(unint64_t)batch dataType:(int)self0
{
  LODWORD(v12) = type;
  v10 = [[self alloc] initNCHWTensorWithWidth:width height:height featureChannels:channels batchSize:size strideForWidth:forWidth strideForHeight:forHeight strideForChannel:0 strideForBatch:batch fanIn:height * width * channels fanOut:height * width dataType:v12];

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
          unsignedIntegerValue = [v13 unsignedIntegerValue];

          v15 = [self alloc];
          LODWORD(v27) = dataType;
          v16 = v11;
          v17 = v12;
          v18 = unsignedIntegerValue;
          v19 = 1;
        }

        else
        {
          v22 = [(NSArray *)v11 objectAtIndexedSubscript:1];
          unsignedIntegerValue2 = [v22 unsignedIntegerValue];

          v24 = [(NSArray *)v11 objectAtIndexedSubscript:3];
          unsignedIntegerValue3 = [v24 unsignedIntegerValue];

          v15 = [self alloc];
          v18 = unsignedIntegerValue3 * unsignedIntegerValue2;
          LODWORD(v27) = dataType;
          v16 = v11;
          v17 = v12;
          v19 = unsignedIntegerValue3;
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

- (id)initNCHWTensorWithWidth:(unint64_t)width height:(unint64_t)height featureChannels:(unint64_t)channels batchSize:(unint64_t)size strideForWidth:(unint64_t)forWidth strideForHeight:(unint64_t)forHeight strideForChannel:(unint64_t)channel strideForBatch:(unint64_t)self0 fanIn:(unint64_t)self1 fanOut:(unint64_t)self2 dataType:(int)self3
{
  v38[4] = *MEMORY[0x277D85DE8];
  v20 = [objc_opt_class() elementByteCount:type];
  if (v20)
  {
    batchCopy = batch;
    if (!forWidth)
    {
      forWidth = v20;
    }

    if (!forHeight)
    {
      forHeight = forWidth * width;
    }

    if (channel)
    {
      channelCopy = channel;
    }

    else
    {
      channelCopy = forHeight * height;
    }

    if (!batch)
    {
      batchCopy = channelCopy * channels;
    }

    v36 = batchCopy;
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
    v38[0] = v23;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:channels];
    v38[1] = v24;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:height];
    v38[2] = v25;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:width];
    v38[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36];
    v37[0] = v28;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:channelCopy];
    v37[1] = v29;
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:forHeight];
    v37[2] = v30;
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:forWidth];
    v37[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];

    self = [(MLCTensorDescriptor *)self initTensorWithShape:v27 stride:v32 fanIn:in fanOut:out dataType:type];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)initTensorWithShape:(id)shape stride:(id)stride sequenceLengths:(id)lengths sortedSequences:(BOOL)sequences fanIn:(unint64_t)in fanOut:(unint64_t)out dataType:(int)type
{
  sequencesCopy = sequences;
  v84 = a2;
  v92 = *MEMORY[0x277D85DE8];
  shapeCopy = shape;
  strideCopy = stride;
  lengthsCopy = lengths;
  v18 = +[MLCTensorDescriptor maxTensorDimensions];
  if ([shapeCopy count] > v18)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(v84);
      *buf = 138412802;
      v87 = v20;
      v88 = 2048;
      unsignedIntegerValue2 = [shapeCopy count];
      v90 = 2048;
      v91 = v18;
      _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: Requested (%lu) dimensions exceed max supported (%lu) dimensions", buf, 0x20u);
    }

    goto LABEL_56;
  }

  v83 = sequencesCopy;
  if ([shapeCopy count])
  {
    v21 = 0;
    while (1)
    {
      v22 = [shapeCopy objectAtIndexedSubscript:v21];
      unsignedIntegerValue = [v22 unsignedIntegerValue];

      if (!unsignedIntegerValue)
      {
        break;
      }

      if (++v21 >= [shapeCopy count])
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
    v38 = [shapeCopy objectAtIndexedSubscript:v21];
    *buf = 138412802;
    v87 = v37;
    v88 = 2048;
    unsignedIntegerValue2 = [v38 unsignedIntegerValue];
    v90 = 2048;
    v91 = v21;
    _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: Requested (%lu) value in size for dimension (%lu) is zero", buf, 0x20u);

    goto LABEL_26;
  }

LABEL_8:
  if (strideCopy)
  {
    v24 = [strideCopy count];
    if (v24 != [shapeCopy count])
    {
      v19 = +[MLCLog framework];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_56:

        selfCopy = 0;
        goto LABEL_57;
      }

      v37 = NSStringFromSelector(v84);
      *buf = 138412802;
      v87 = v37;
      v88 = 2048;
      unsignedIntegerValue2 = [shapeCopy count];
      v90 = 2048;
      v91 = [strideCopy count];
      _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: Size (%lu) dimensions do not match stride (%lu) dimensions", buf, 0x20u);
LABEL_26:

      goto LABEL_56;
    }
  }

  lengthsCopy2 = lengths;
  v82 = strideCopy;
  if (lengthsCopy)
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

    if (![lengthsCopy count])
    {
      v19 = +[MLCLog framework];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [MLCTensorDescriptor descriptorWithShape:v84 sequenceLengths:? sortedSequences:? dataType:?];
      }

      goto LABEL_56;
    }

    if ([shapeCopy count] == 4)
    {
      v25 = [shapeCopy objectAtIndexedSubscript:0];
      unsignedIntegerValue3 = [v25 unsignedIntegerValue];
      v27 = [lengthsCopy count];

      if (unsignedIntegerValue3 != v27)
      {
        v19 = +[MLCLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MLCTensorDescriptor initTensorWithShape:v84 stride:? sequenceLengths:? sortedSequences:? fanIn:? fanOut:? dataType:?];
        }

        goto LABEL_56;
      }
    }

    v28 = [lengthsCopy objectAtIndexedSubscript:{0, lengthsCopy2}];
    unsignedIntegerValue4 = [v28 unsignedIntegerValue];

    if (!unsignedIntegerValue4)
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
      lengths = lengthsCopy2;
      if (v30 >= [lengthsCopy count] - 1)
      {
        break;
      }

      v31 = [lengthsCopy objectAtIndexedSubscript:v30];
      unsignedIntegerValue5 = [v31 unsignedIntegerValue];
      v33 = [lengthsCopy objectAtIndexedSubscript:++v30];
      unsignedIntegerValue6 = [v33 unsignedIntegerValue];

      if (unsignedIntegerValue5 < unsignedIntegerValue6)
      {
        v19 = +[MLCLog framework];
        strideCopy = v82;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MLCTensorDescriptor initTensorWithShape:v84 stride:? sequenceLengths:? sortedSequences:? fanIn:? fanOut:? dataType:?];
        }

        goto LABEL_56;
      }

      v35 = [lengthsCopy objectAtIndexedSubscript:v30];
      unsignedIntegerValue7 = [v35 unsignedIntegerValue];

      strideCopy = v82;
      if (!unsignedIntegerValue7)
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

  v39 = [objc_opt_class() elementByteCount:type];
  if (v39)
  {
    v40 = v39;
    v85.receiver = self;
    v85.super_class = MLCTensorDescriptor;
    v41 = [(MLCTensorDescriptor *)&v85 init];
    v42 = v41;
    if (v41)
    {
      v41->_dataType = type;
      v43 = [shapeCopy copy];
      shape = v42->_shape;
      v42->_shape = v43;

      v42->_fanIn = in;
      v42->_fanOut = out;
      if (v82)
      {
        v45 = [v82 copy];
        stride = v42->_stride;
        v42->_stride = v45;
      }

      else
      {
        v48 = [shapeCopy count];
        if (v48)
        {
          v49 = v48 - 1;
          do
          {
            v80[v49] = v40;
            v50 = [shapeCopy objectAtIndexedSubscript:v49];
            v40 *= [v50 unsignedIntegerValue];

            --v49;
          }

          while (v49 != -1);
        }

        v51 = [MEMORY[0x277CBEBF8] mutableCopy];
        if ([shapeCopy count])
        {
          v52 = 0;
          do
          {
            v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v80[v52]];
            [v51 addObject:v53];

            ++v52;
          }

          while (v52 < [shapeCopy count]);
        }

        v54 = [v51 copy];
        v55 = v42->_stride;
        v42->_stride = v54;

        lengths = lengthsCopy2;
      }

      v56 = 0;
      v57 = v83;
      if (lengthsCopy && v83)
      {
        v42->_variableLengthSequences = 0;
        if ([lengthsCopy count] >= 2)
        {
          v58 = 1;
          while (1)
          {
            v59 = [lengthsCopy objectAtIndexedSubscript:{v58, lengthsCopy2}];
            unsignedIntegerValue8 = [v59 unsignedIntegerValue];

            v61 = v58 - 1;
            v62 = [lengthsCopy objectAtIndexedSubscript:v61];
            unsignedIntegerValue9 = [v62 unsignedIntegerValue];

            if (unsignedIntegerValue8 != unsignedIntegerValue9)
            {
              break;
            }

            v58 = v61 + 2;
            if (v58 >= [lengthsCopy count])
            {
              goto LABEL_59;
            }
          }

          v42->_variableLengthSequences = 1;
        }

LABEL_59:
        v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v66 = [lengthsCopy count];
        v67 = [lengthsCopy objectAtIndexedSubscript:0];
        unsignedIntegerValue10 = [v67 unsignedIntegerValue];

        if (unsignedIntegerValue10)
        {
          v69 = 0;
          do
          {
            v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v66, lengthsCopy2}];
            [(NSArray *)v56 setObject:v70 atIndexedSubscript:v69];

            ++v69;
            if (v66)
            {
              do
              {
                v71 = v66 - 1;
                v72 = [lengthsCopy objectAtIndexedSubscript:v66 - 1];
                unsignedIntegerValue11 = [v72 unsignedIntegerValue];

                if (unsignedIntegerValue11 != v69)
                {
                  break;
                }

                --v66;
              }

              while (v71);
            }

            v74 = [lengthsCopy objectAtIndexedSubscript:0];
            unsignedIntegerValue12 = [v74 unsignedIntegerValue];
          }

          while (v69 < unsignedIntegerValue12);
        }

        lengths = lengthsCopy2;
        v57 = v83;
      }

      batchSizePerSequenceStep = v42->_batchSizePerSequenceStep;
      v42->_batchSizePerSequenceStep = v56;

      v42->_sortedSequences = v57;
      objc_storeStrong(&v42->_sequenceLengths, lengths);
      v77 = [(NSArray *)v42->_stride objectAtIndexedSubscript:0];
      unsignedIntegerValue13 = [v77 unsignedIntegerValue];
      v79 = [(NSArray *)v42->_shape objectAtIndexedSubscript:0];
      v42->_tensorAllocationSizeInBytes = [v79 unsignedIntegerValue] * unsignedIntegerValue13;
    }

    self = v42;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  strideCopy = v82;
LABEL_57:

  v64 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (NSUInteger)dimensionCount
{
  shape = [(MLCTensorDescriptor *)self shape];
  v3 = [shape count];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dataType = [(MLCTensorDescriptor *)self dataType];
  dimensionCount = [(MLCTensorDescriptor *)self dimensionCount];
  shape = [(MLCTensorDescriptor *)self shape];
  v9 = [v3 stringWithFormat:@"%@: { dataType=%d : numberOfDimensions=%lu : size=%@ : tensorAllocationSizeInBytes=%lu }", v5, dataType, dimensionCount, shape, -[MLCTensorDescriptor tensorAllocationSizeInBytes](self, "tensorAllocationSizeInBytes")];

  return v9;
}

- (void)updateStride:(id)stride tensorAllocationSize:(unint64_t)size
{
  strideCopy = stride;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  if ([strideCopy count])
  {
    v7 = 0;
    do
    {
      v8 = [strideCopy objectAtIndex:v7];
      [v6 setObject:v8 atIndexedSubscript:v7];

      ++v7;
    }

    while (v7 < [strideCopy count]);
  }

  [(MLCTensorDescriptor *)self setStride:v6];
  [(MLCTensorDescriptor *)self setTensorAllocationSizeInBytes:size];
}

- (unint64_t)elementCount
{
  dataType = [(MLCTensorDescriptor *)self dataType];
  if (dataType <= MLCDataTypeUInt8)
  {
    if (((1 << dataType) & 0x350) != 0)
    {

      return [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes];
    }

    if (dataType == MLCDataTypeInt64)
    {
      return [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes]>> 3;
    }

    if (dataType == MLCDataTypeInt32)
    {
      return [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes]>> 2;
    }
  }

  if (dataType == MLCDataTypeFloat32)
  {
    return [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes]>> 2;
  }

  if (dataType == MLCDataTypeFloat16)
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

+ (unint64_t)elementByteCount:(int)count
{
  v4 = count - 1;
  if (count - 1) < 9 && ((0x1FDu >> v4))
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
  dataType = [(MLCTensorDescriptor *)self dataType];

  return [v3 elementByteCount:dataType];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    dataType = [v5 dataType];
    if (dataType != [(MLCTensorDescriptor *)self dataType])
    {
      goto LABEL_18;
    }

    dimensionCount = [v5 dimensionCount];
    if (dimensionCount != [(MLCTensorDescriptor *)self dimensionCount])
    {
      goto LABEL_18;
    }

    shape = [v5 shape];
    shape2 = [(MLCTensorDescriptor *)self shape];
    if ([shape isEqualToArray:shape2])
    {
      stride = [v5 stride];
      stride2 = [(MLCTensorDescriptor *)self stride];
      if ([stride isEqualToArray:stride2])
      {
        tensorAllocationSizeInBytes = [v5 tensorAllocationSizeInBytes];
        if (tensorAllocationSizeInBytes == [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes])
        {
          sortedSequences = [v5 sortedSequences];
          sortedSequences2 = [(MLCTensorDescriptor *)self sortedSequences];

          if (sortedSequences == sortedSequences2)
          {
            sequenceLengths = [v5 sequenceLengths];
            if (sequenceLengths)
            {
              v16 = sequenceLengths;
              sequenceLengths2 = [(MLCTensorDescriptor *)self sequenceLengths];

              if (sequenceLengths2)
              {
                sequenceLengths3 = [v5 sequenceLengths];
                sequenceLengths4 = [(MLCTensorDescriptor *)self sequenceLengths];
                v20 = [sequenceLengths3 isEqualToArray:sequenceLengths4];

LABEL_11:
                batchSizePerSequenceStep = [v5 batchSizePerSequenceStep];
                if (batchSizePerSequenceStep)
                {
                  v22 = batchSizePerSequenceStep;
                  batchSizePerSequenceStep2 = [(MLCTensorDescriptor *)self batchSizePerSequenceStep];

                  if (batchSizePerSequenceStep2)
                  {
                    if (v20)
                    {
                      batchSizePerSequenceStep3 = [v5 batchSizePerSequenceStep];
                      batchSizePerSequenceStep4 = [(MLCTensorDescriptor *)self batchSizePerSequenceStep];
                      LOBYTE(v20) = [batchSizePerSequenceStep3 isEqualToArray:batchSizePerSequenceStep4];
                    }

                    goto LABEL_19;
                  }
                }

                batchSizePerSequenceStep5 = [v5 batchSizePerSequenceStep];
                if (!batchSizePerSequenceStep5)
                {
                  batchSizePerSequenceStep6 = [(MLCTensorDescriptor *)self batchSizePerSequenceStep];

                  if (!batchSizePerSequenceStep6)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_18;
                }

                goto LABEL_25;
              }
            }

            batchSizePerSequenceStep5 = [v5 sequenceLengths];
            if (batchSizePerSequenceStep5)
            {
LABEL_25:

              goto LABEL_18;
            }

            sequenceLengths5 = [(MLCTensorDescriptor *)self sequenceLengths];

            if (!sequenceLengths5)
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
  dataType = [(MLCTensorDescriptor *)self dataType];
  [(MLCTensorDescriptor *)self dimensionCount];
  shape = [(MLCTensorDescriptor *)self shape];
  [shape hash];
  stride = [(MLCTensorDescriptor *)self stride];
  [stride hash];
  [(MLCTensorDescriptor *)self tensorAllocationSizeInBytes];
  sequenceLengths = [(MLCTensorDescriptor *)self sequenceLengths];
  [sequenceLengths hash];
  [(MLCTensorDescriptor *)self sortedSequences];
  batchSizePerSequenceStep = [(MLCTensorDescriptor *)self batchSizePerSequenceStep];
  [batchSizePerSequenceStep hash];
  hashCombine_1(&v16, v7, v8, v9, v10, v11, v12, v13, dataType);

  return v16;
}

- (id)newShapeWithCount:(unint64_t)count
{
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  shape = [(MLCTensorDescriptor *)self shape];
  v7 = [shape count];

  shape2 = [(MLCTensorDescriptor *)self shape];
  v9 = shape2;
  if (v7 == count)
  {
    v10 = [shape2 copy];

    v5 = v10;
  }

  else
  {
    v11 = [shape2 count];

    if (count)
    {
      v12 = 0;
      v13 = count - v11;
      v14 = v11 - count;
      do
      {
        if (v12 >= v13)
        {
          shape3 = [(MLCTensorDescriptor *)self shape];
          v17 = [shape3 objectAtIndexedSubscript:v14 + v12];
          unsignedIntegerValue = [v17 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = 1;
        }

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
        [v5 setObject:v18 atIndexedSubscript:v12];

        ++v12;
      }

      while (count != v12);
    }
  }

  v19 = [v5 copy];

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  shape = [(MLCTensorDescriptor *)self shape];
  stride = [(MLCTensorDescriptor *)self stride];
  sequenceLengths = [(MLCTensorDescriptor *)self sequenceLengths];
  sortedSequences = [(MLCTensorDescriptor *)self sortedSequences];
  fanIn = [(MLCTensorDescriptor *)self fanIn];
  fanOut = [(MLCTensorDescriptor *)self fanOut];
  LODWORD(v13) = [(MLCTensorDescriptor *)self dataType];
  v11 = [v4 initTensorWithShape:shape stride:stride sequenceLengths:sequenceLengths sortedSequences:sortedSequences fanIn:fanIn fanOut:fanOut dataType:v13];

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