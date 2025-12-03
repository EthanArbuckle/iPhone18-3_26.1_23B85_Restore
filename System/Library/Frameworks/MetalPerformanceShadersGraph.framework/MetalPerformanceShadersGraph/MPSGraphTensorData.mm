@interface MPSGraphTensorData
- (MPSGraphTensorData)initWithDevice:(MPSGraphDevice *)device data:(NSData *)data shape:(MPSShape *)shape dataType:(MPSDataType)dataType;
- (MPSGraphTensorData)initWithDevice:(id)device IOSurface:(__IOSurface *)surface rowBytesAlignment:(unint64_t)alignment shape:(id)shape dataType:(unsigned int)type;
- (MPSGraphTensorData)initWithDevice:(id)device rowBytesAlignment:(unint64_t)alignment shape:(id)shape dataType:(unsigned int)type;
- (MPSGraphTensorData)initWithMPSImageBatch:(MPSImageBatch *)imageBatch;
- (MPSGraphTensorData)initWithMPSMatrix:(MPSMatrix *)matrix;
- (MPSGraphTensorData)initWithMPSMatrix:(MPSMatrix *)matrix rank:(NSUInteger)rank;
- (MPSGraphTensorData)initWithMPSNDArray:(MPSNDArray *)ndarray;
- (MPSGraphTensorData)initWithMPSNDArray:(id)array device:(id)device;
- (MPSGraphTensorData)initWithMPSVector:(MPSVector *)vector;
- (MPSGraphTensorData)initWithMPSVector:(MPSVector *)vector rank:(NSUInteger)rank;
- (MPSGraphTensorData)initWithMTLBuffer:(id)buffer shape:(MPSShape *)shape dataType:(MPSDataType)dataType;
- (MPSGraphTensorData)initWithMTLBuffer:(id)buffer shape:(MPSShape *)shape dataType:(MPSDataType)dataType rowBytes:(NSUInteger)rowBytes;
- (MPSGraphTensorData)initWithMTLBuffer:(id)buffer shape:(id)shape strideBytes:(id)bytes dataType:(unsigned int)type;
- (MPSGraphTensorData)initWithMTLBuffer:(id)buffer shape:(id)shape strides:(id)strides dataType:(unsigned int)type;
- (MPSGraphTensorData)initWithMTLBuffer:(id)buffer shape:(id)shape strides:(id)strides interleaves:(id)interleaves dataType:(unsigned int)type;
- (MPSGraphTensorData)initWithMTLTensor:(id)tensor;
- (MPSNDArray)mpsndarray;
- (MPSShape)shape;
- (__IOSurface)iosurface;
- (__n128)getShapeVector;
- (id)checkTensorData:(const float *)data nativeUlps:(float)ulps absoluteErr:(float)err PSNR:(float)r;
- (id)checkWithReferenceTensorData:(id)data nativeUlps:(float)ulps absoluteError:(float)error PSNR:(float)r;
- (id)debugDescription;
- (id)initEmptyWithShape:(id)shape dataType:(unsigned int)type device:(id)device;
- (id)mpsndarrayWithCommandBuffer:(id)buffer;
- (void)commonInitialize;
- (void)dealloc;
- (void)print;
- (void)printIOSurface;
- (void)printNDArray;
@end

@implementation MPSGraphTensorData

- (void)dealloc
{
  iosurface = self->_iosurface;
  if (iosurface)
  {
    CFRelease(iosurface);
  }

  v4.receiver = self;
  v4.super_class = MPSGraphTensorData;
  [(MPSGraphTensorData *)&v4 dealloc];
}

- (__IOSurface)iosurface
{
  result = self->_iosurface;
  if (!result)
  {
    mpsndarray = self->_mpsndarray;
    result = *(&mpsndarray->super.isa + *MEMORY[0x1E69744E0]);
    if (!result)
    {
      buffer = [(MPSNDArray *)mpsndarray buffer];
      _aneIOSurface = [buffer _aneIOSurface];

      return _aneIOSurface;
    }
  }

  return result;
}

- (void)commonInitialize
{
  self->_numElements = 1;
  if (self->_rank)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v3 *= *&self->_shapeValues[4 * (v2 & 0xF)];
      self->_numElements = v3;
      ++v2;
    }

    while (v2 < self->_rank);
  }

  mpsndarray = self->_mpsndarray;
  if (mpsndarray)
  {
    self->_rowBytes = *(mpsndarray + *MEMORY[0x1E6974500]);
  }
}

- (MPSShape)shape
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_rank];
  if (self->_rank)
  {
    v4 = 0;
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&self->_shapeValues[4 * (v4 & 0xF)]];
      [v3 addObject:v5];

      ++v4;
    }

    while (self->_rank > v4);
  }

  return v3;
}

- (__n128)getShapeVector
{
  result = *(self + 32);
  v3 = *(self + 48);
  v4 = *(self + 80);
  *(a2 + 32) = *(self + 64);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (MPSGraphTensorData)initWithDevice:(MPSGraphDevice *)device data:(NSData *)data shape:(MPSShape *)shape dataType:(MPSDataType)dataType
{
  v21 = device;
  v20 = data;
  v22.receiver = self;
  v22.super_class = MPSGraphTensorData;
  v19 = shape;
  v11 = [(MPSGraphTensorData *)&v22 init];
  v11->_tensorDataType = 2;
  v12 = v19;
  v13 = [(MPSShape *)v12 count];
  *&v14 = 0x100000001;
  *(&v14 + 1) = 0x100000001;
  *&v11->_shapeValues[32] = v14;
  *&v11->_shapeValues[48] = v14;
  if (v13 >= 0x10)
  {
    v15 = 16;
  }

  else
  {
    v15 = v13;
  }

  *v11->_shapeValues = v14;
  *&v11->_shapeValues[16] = v14;
  if (v13)
  {
    v16 = 0;
    do
    {
      v17 = [(MPSShape *)v12 objectAtIndexedSubscript:v16];
      *&v11->_shapeValues[4 * (v16 & 0xF)] = [v17 unsignedIntValue];

      ++v16;
    }

    while (v15 != v16);
  }

  v11->_rank = v15;
  v11->_dataType = dataType;
  objc_storeStrong(&v11->_device, device);
  objc_storeStrong(&v11->_data, data);
  [(MPSGraphTensorData *)v11 commonInitialize];

  return v11;
}

- (MPSGraphTensorData)initWithMTLBuffer:(id)buffer shape:(MPSShape *)shape dataType:(MPSDataType)dataType
{
  v5 = *&dataType;
  v8 = buffer;
  v9 = shape;
  v28.receiver = self;
  v28.super_class = MPSGraphTensorData;
  v10 = [(MPSGraphTensorData *)&v28 init];
  v11 = v10;
  v10->_tensorDataType = 0;
  v12 = v9;
  v13 = [(MPSShape *)v12 count];
  *&v14 = 0x100000001;
  *(&v14 + 1) = 0x100000001;
  *&v10->_shapeValues[32] = v14;
  *&v10->_shapeValues[48] = v14;
  if (v13 >= 0x10)
  {
    v15 = 16;
  }

  else
  {
    v15 = v13;
  }

  *v10->_shapeValues = v14;
  *&v10->_shapeValues[16] = v14;
  if (v13)
  {
    v16 = 0;
    do
    {
      v17 = [(MPSShape *)v12 objectAtIndexedSubscript:v16];
      *&v10->_shapeValues[4 * (v16 & 0xF)] = [v17 unsignedIntValue];

      ++v16;
    }

    while (v15 != v16);
  }

  v10->_rank = v15;
  v10->_dataType = v5;
  device = [v8 device];
  v19 = [MPSGraphDevice deviceWithMTLDevice:device];
  device = v11->_device;
  v11->_device = v19;

  iosurface = [v8 iosurface];
  v11->_iosurface = iosurface;
  if (iosurface)
  {
    CFRetain(iosurface);
  }

  v22 = MEMORY[0x1E6974490];
  v23 = adaptForMPS(v12);
  v24 = [v22 descriptorWithDataType:v5 shape:v23];

  [v24 setPreferPackedRows:1];
  v25 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:v8 descriptor:v24];
  mpsndarray = v11->_mpsndarray;
  v11->_mpsndarray = v25;

  [(MPSGraphTensorData *)v11 commonInitialize];
  return v11;
}

- (MPSGraphTensorData)initWithMTLBuffer:(id)buffer shape:(MPSShape *)shape dataType:(MPSDataType)dataType rowBytes:(NSUInteger)rowBytes
{
  v7 = *&dataType;
  v10 = buffer;
  v33 = shape;
  v34.receiver = self;
  v34.super_class = MPSGraphTensorData;
  v11 = [(MPSGraphTensorData *)&v34 init];
  v12 = v11;
  v11->_tensorDataType = 0;
  v13 = v33;
  v14 = [(MPSShape *)v13 count];
  *&v15 = 0x100000001;
  *(&v15 + 1) = 0x100000001;
  *&v11->_shapeValues[32] = v15;
  *&v11->_shapeValues[48] = v15;
  if (v14 >= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v14;
  }

  *v11->_shapeValues = v15;
  *&v11->_shapeValues[16] = v15;
  if (v14)
  {
    v17 = 0;
    do
    {
      v18 = [(MPSShape *)v13 objectAtIndexedSubscript:v17];
      *&v11->_shapeValues[4 * (v17 & 0xF)] = [v18 unsignedIntValue];

      ++v17;
    }

    while (v16 != v17);
  }

  v11->_rank = v16;
  v11->_dataType = v7;
  device = [v10 device];
  v20 = [MPSGraphDevice deviceWithMTLDevice:device];
  device = v12->_device;
  v12->_device = v20;

  iosurface = [v10 iosurface];
  v12->_iosurface = iosurface;
  if (iosurface)
  {
    CFRetain(iosurface);
  }

  rank = v12->_rank;
  if (rank)
  {
    v24 = [(MPSShape *)v13 objectAtIndexedSubscript:rank - 1];
    longLongValue = [v24 longLongValue];

    v26 = v7 >> 3;
    if (longLongValue * v26 <= rowBytes)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v26 = v7 >> 3;
    if (v26 <= rowBytes)
    {
      goto LABEL_13;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_13:
  if (rowBytes % v26 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12->_rowBytes = rowBytes;
  v27 = MEMORY[0x1E6974490];
  v28 = adaptForMPS(v13);
  v29 = [v27 descriptorWithDataType:v7 shape:v28];

  [v29 setRowBytes:v12->_rowBytes];
  v30 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:v10 descriptor:v29];
  mpsndarray = v12->_mpsndarray;
  v12->_mpsndarray = v30;

  [(MPSGraphTensorData *)v12 commonInitialize];
  return v12;
}

- (MPSGraphTensorData)initWithMTLBuffer:(id)buffer shape:(id)shape strides:(id)strides dataType:(unsigned int)type
{
  v6 = *&type;
  bufferCopy = buffer;
  shapeCopy = shape;
  stridesCopy = strides;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(shapeCopy, "count")}];
  for (i = 0; i < [shapeCopy count]; ++i)
  {
    [v13 addObject:&unk_1F5B75950];
  }

  v15 = [(MPSGraphTensorData *)self initWithMTLBuffer:bufferCopy shape:shapeCopy strides:stridesCopy interleaves:v13 dataType:v6];

  return v15;
}

- (MPSGraphTensorData)initWithMTLBuffer:(id)buffer shape:(id)shape strides:(id)strides interleaves:(id)interleaves dataType:(unsigned int)type
{
  v88[15] = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  shapeCopy = shape;
  stridesCopy = strides;
  interleavesCopy = interleaves;
  v75.receiver = self;
  v75.super_class = MPSGraphTensorData;
  v11 = [(MPSGraphTensorData *)&v75 init];
  v11->_tensorDataType = 0;
  v74 = shapeCopy;
  v12 = [v74 count];
  *&v13 = 0x100000001;
  *(&v13 + 1) = 0x100000001;
  *&v11->_shapeValues[32] = v13;
  *&v11->_shapeValues[48] = v13;
  if (v12 >= 0x10)
  {
    v14 = 16;
  }

  else
  {
    v14 = v12;
  }

  *v11->_shapeValues = v13;
  *&v11->_shapeValues[16] = v13;
  if (v12)
  {
    v15 = 0;
    do
    {
      v16 = [v74 objectAtIndexedSubscript:v15];
      *&v11->_shapeValues[4 * (v15 & 0xF)] = [v16 unsignedIntValue];

      ++v15;
    }

    while (v14 != v15);
  }

  v11->_rank = v14;
  v11->_dataType = type;
  device = [bufferCopy device];
  v18 = [MPSGraphDevice deviceWithMTLDevice:device];
  device = v11->_device;
  v11->_device = v18;

  iosurface = [bufferCopy iosurface];
  v11->_iosurface = iosurface;
  if (iosurface)
  {
    CFRetain(iosurface);
  }

  [v74 count];
  [stridesCopy count];
  v21 = [v74 count];
  if (v21 != [stridesCopy count] && MTLReportFailureTypeEnabled())
  {
    v62 = [v74 count];
    v65 = [stridesCopy count];
    MTLReportFailure();
  }

  [v74 count];
  [interleavesCopy count];
  v22 = [v74 count];
  if (v22 != [interleavesCopy count] && MTLReportFailureTypeEnabled())
  {
    lastObject = [v74 count];
    v66 = [interleavesCopy count];
    MTLReportFailure();
  }

  memset(v88, 0, 120);
  unsignedIntegerValue = 1;
  memset(v86, 0, sizeof(v86));
  v84 = 0;
  v85 = 1;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v77 = 0u;
  v78 = 0u;
  rank = v11->_rank;
  v24 = 16;
  if (rank < 0x10)
  {
    v24 = v11->_rank;
  }

  v76 = 1;
  v68 = rank;
  v71 = v24;
  if (rank)
  {
    v25 = v24 - 1;
    v26 = [stridesCopy objectAtIndexedSubscript:v24 - 1];
    unsignedIntegerValue = [v26 unsignedIntegerValue];

    v27 = [interleavesCopy objectAtIndexedSubscript:v25];
    unsignedIntegerValue2 = [v27 unsignedIntegerValue];
    v76 = unsignedIntegerValue2;

    v85 = *&v11->_shapeValues[4 * (v25 & 0xF)];
    if (v68 != 1)
    {
      v29 = v71 - 2;
      v30 = 1;
      do
      {
        v31 = [stridesCopy objectAtIndexedSubscript:{v29, lastObject, v66}];
        v88[v30 - 1] = [v31 unsignedIntegerValue];

        v32 = [interleavesCopy objectAtIndexedSubscript:v29];
        unsignedIntegerValue3 = [v32 unsignedIntegerValue];
        *(&v76 + v30) = unsignedIntegerValue3;

        v86[v30 - 1] = *&v11->_shapeValues[4 * (v29 & 0xF)];
        if (unsignedIntegerValue3 >= 2)
        {
          operator new();
        }

        ++v30;
        --v29;
      }

      while (v29 != -1);
      unsignedIntegerValue2 = v76;
    }

    if (unsignedIntegerValue2 != 1 && MTLReportFailureTypeEnabled())
    {
      lastObject = [interleavesCopy lastObject];
      MTLReportFailure();
    }
  }

  v34 = v71 - 1;
  if (v71 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v71;
  }

  v36 = [MEMORY[0x1E6974490] descriptorWithDataType:type dimensionCount:v35 dimensionSizes:{&v85, lastObject}];
  v37 = v36;
  v38 = unsignedIntegerValue;
  if (v68)
  {
    v39 = unsignedIntegerValue == 1;
  }

  else
  {
    v39 = 1;
  }

  v40 = !v39;
  if (!v39)
  {
    v41 = v11;
    if (v68 >= 0x10)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v64 = [v74 count];
        MTLReportFailure();
      }

      *&v37[*MEMORY[0x1E6974528]] = v38;
      *&v37[*MEMORY[0x1E6974550]] = 1;
      v42 = v71;
    }

    else
    {
      *(v36 + *MEMORY[0x1E6974528]) = unsignedIntegerValue;
      *(v36 + *MEMORY[0x1E6974550]) = 1;
      v42 = v71;
      if (v68 <= 1)
      {
LABEL_37:
        v50 = MEMORY[0x1E6974550];
        *&v37[4 * (v42 & 0xF) + *MEMORY[0x1E6974550]] = v86[v42 - 2];
        *&v37[4 * (v42 & 0xF) + *MEMORY[0x1E6974528]] = *&v37[4 * (v42 & 0xF) + *v50];
        ++*&v37[*MEMORY[0x1E6974538]];
        goto LABEL_42;
      }
    }

    v43 = &v85;
    v44 = 1;
    v45 = MEMORY[0x1E6974528];
    v46 = MEMORY[0x1E6974550];
    do
    {
      v47 = v88[v44 - 1];
      v48 = 4 * (v44 & 0xF);
      *&v37[*v45 + v48] = v47 / v38;
      v49 = *v43++;
      *&v37[*v46 + v48] = v49;
      ++v44;
      v38 = v47;
    }

    while (v42 != v44);
    goto LABEL_37;
  }

  v51 = MEMORY[0x1E6974550];
  *(v36 + *MEMORY[0x1E6974550]) = v85;
  v41 = v11;
  if (v68 >= 2)
  {
    v52 = 0;
    v53 = MEMORY[0x1E6974528];
    do
    {
      v54 = v88[v52];
      *(v36 + *v53 + 4 * (v52 & 0xF)) = v54 / v38;
      *(v36 + *v51 + 4 * ((v52 + 1) & 0xF)) = v86[v52];
      ++v52;
      v38 = v54;
    }

    while (v34 != v52);
  }

  *(v36 + *MEMORY[0x1E6974528] + 4 * (v34 & 0xF)) = v86[v34 - 1];
LABEL_42:
  v41->_rowBytes = *&v37[*MEMORY[0x1E6974528]] * (type >> 3);
  [v37 setRowBytes:v64];
  v55 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:bufferCopy descriptor:v37];
  mpsndarray = v41->_mpsndarray;
  v41->_mpsndarray = v55;

  if (v40)
  {
    v57 = 0;
    v58 = MEMORY[0x1E69744D8];
    do
    {
      v59 = v57++ & 0xF;
      *(&v11->_mpsndarray->super.isa + *v58 + v59) = v57;
    }

    while (v71 != v57);
    *(&v11->_mpsndarray->super.isa + *v58 + (v71 & 0xF)) = 0;
    --*(&v11->_mpsndarray->super.isa + *MEMORY[0x1E69744F0]);
  }

  [(MPSGraphTensorData *)v11 commonInitialize];
  v60 = v11;

  return v60;
}

- (MPSGraphTensorData)initWithMTLBuffer:(id)buffer shape:(id)shape strideBytes:(id)bytes dataType:(unsigned int)type
{
  v6 = *&type;
  v28 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  shapeCopy = shape;
  bytesCopy = bytes;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(bytesCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = bytesCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        integerValue = [*(*(&v23 + 1) + 8 * i) integerValue];
        if (integerValue < 1 || integerValue % (v6 >> 3))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v19 = [v11 description];
            MTLReportFailure();
          }

          selfCopy = 0;
          goto LABEL_14;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
        [v10 addObject:v16];
      }

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  self = [(MPSGraphTensorData *)self initWithMTLBuffer:bufferCopy shape:shapeCopy strides:v10 dataType:v6];
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (MPSGraphTensorData)initWithMPSMatrix:(MPSMatrix *)matrix rank:(NSUInteger)rank
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = matrix;
  v33.receiver = self;
  v33.super_class = MPSGraphTensorData;
  v7 = [(MPSGraphTensorData *)&v33 init];
  v7->_tensorDataType = 0;
  v34[0] = [(MPSMatrix *)v6 columns];
  v34[1] = [(MPSMatrix *)v6 rows];
  v34[2] = [(MPSMatrix *)v6 matrices];
  v35 = vdupq_n_s64(1uLL);
  v36 = v35;
  v37 = v35;
  v38 = v35;
  v39 = v35;
  v40 = v35;
  v41 = 1;
  if (rank - 1 >= 0x10 && MTLReportFailureTypeEnabled())
  {
    v28 = rank;
    MTLReportFailure();
  }

  v8 = 16;
  if (rank < 0x10)
  {
    v8 = rank;
  }

  if (rank)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  *&v10 = 0x100000001;
  *(&v10 + 1) = 0x100000001;
  *&v7->_shapeValues[32] = v10;
  *&v7->_shapeValues[48] = v10;
  *v7->_shapeValues = v10;
  *&v7->_shapeValues[16] = v10;
  v7->_rank = v9;
  if (v9)
  {
    v11 = 0;
    v13 = *&v7->_shapeValues[32];
    v12 = *&v7->_shapeValues[48];
    v15 = *v7->_shapeValues;
    v14 = *&v7->_shapeValues[16];
    v16 = 8 * v9;
    do
    {
      v17 = *(&v33.super_class + v16);
      v29 = v15;
      v30 = v14;
      v31 = v13;
      v32 = v12;
      *(&v29 + (v11 & 0xF)) = v17;
      v13 = v31;
      v12 = v32;
      v15 = v29;
      v14 = v30;
      *&v7->_shapeValues[32] = v31;
      *&v7->_shapeValues[48] = v12;
      *v7->_shapeValues = v15;
      *&v7->_shapeValues[16] = v14;
      ++v11;
      v16 -= 8;
    }

    while (v16);
  }

  v7->_dataType = [(MPSMatrix *)v6 dataType];
  device = [(MPSMatrix *)v6 device];
  v19 = [MPSGraphDevice deviceWithMTLDevice:device];
  device = v7->_device;
  v7->_device = v19;

  columns = [(MPSMatrix *)v6 columns];
  v7->_rowBytes = columns * ([(MPSMatrix *)v6 dataType]>> 3);
  v22 = [MEMORY[0x1E6974490] descriptorWithDataType:-[MPSMatrix dataType](v6 dimensionCount:"dataType") dimensionSizes:{v9, v34}];
  if ([(MPSMatrix *)v6 rowBytes]== v7->_rowBytes)
  {
    [v22 setPreferPackedRows:1];
  }

  v23 = objc_alloc(MEMORY[0x1E6974488]);
  data = [(MPSMatrix *)v6 data];
  v25 = [v23 initWithBuffer:data descriptor:v22];
  mpsndarray = v7->_mpsndarray;
  v7->_mpsndarray = v25;

  [(MPSGraphTensorData *)v7 commonInitialize];
  return v7;
}

- (MPSGraphTensorData)initWithMPSMatrix:(MPSMatrix *)matrix
{
  v28[3] = *MEMORY[0x1E69E9840];
  v4 = matrix;
  v27.receiver = self;
  v27.super_class = MPSGraphTensorData;
  v5 = [(MPSGraphTensorData *)&v27 init];
  v5->_tensorDataType = 0;
  columns = [(MPSMatrix *)v4 columns];
  v7 = columns;
  v28[0] = columns;
  rows = [(MPSMatrix *)v4 rows];
  v9 = rows;
  v28[1] = rows;
  matrices = [(MPSMatrix *)v4 matrices];
  v28[2] = matrices;
  if (matrices == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  *&v12 = 0x100000001;
  *(&v12 + 1) = 0x100000001;
  *&v5->_shapeValues[32] = v12;
  *&v5->_shapeValues[48] = v12;
  *v5->_shapeValues = v12;
  *&v5->_shapeValues[16] = v12;
  v5->_rank = v11;
  v14 = *&v5->_shapeValues[32];
  v13 = *&v5->_shapeValues[48];
  v15 = *v5->_shapeValues;
  v16 = *&v5->_shapeValues[16];
  if (matrices == 1)
  {
    *&v15 = __PAIR64__(v7, v9);
    *v5->_shapeValues = v9;
  }

  else
  {
    *&v15 = __PAIR64__(v9, matrices);
    *&v5->_shapeValues[32] = v14;
    *&v5->_shapeValues[48] = v13;
    *v5->_shapeValues = v15;
    *&v5->_shapeValues[16] = v16;
    DWORD2(v15) = v7;
  }

  *v5->_shapeValues = v15;
  *&v5->_shapeValues[16] = v16;
  *&v5->_shapeValues[32] = v14;
  *&v5->_shapeValues[48] = v13;
  v5->_dataType = [(MPSMatrix *)v4 dataType];
  device = [(MPSMatrix *)v4 device];
  v18 = [MPSGraphDevice deviceWithMTLDevice:device];
  device = v5->_device;
  v5->_device = v18;

  columns2 = [(MPSMatrix *)v4 columns];
  v5->_rowBytes = columns2 * ([(MPSMatrix *)v4 dataType]>> 3);
  v21 = [MEMORY[0x1E6974490] descriptorWithDataType:-[MPSMatrix dataType](v4 dimensionCount:"dataType") dimensionSizes:{v11, v28}];
  if ([(MPSMatrix *)v4 rowBytes]== v5->_rowBytes)
  {
    [v21 setPreferPackedRows:1];
  }

  v22 = objc_alloc(MEMORY[0x1E6974488]);
  data = [(MPSMatrix *)v4 data];
  v24 = [v22 initWithBuffer:data descriptor:v21];
  mpsndarray = v5->_mpsndarray;
  v5->_mpsndarray = v24;

  [(MPSGraphTensorData *)v5 commonInitialize];
  return v5;
}

- (MPSGraphTensorData)initWithMPSVector:(MPSVector *)vector
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = vector;
  v26.receiver = self;
  v26.super_class = MPSGraphTensorData;
  v5 = [(MPSGraphTensorData *)&v26 init];
  v5->_tensorDataType = 0;
  v6 = [(MPSVector *)v4 length];
  v7 = v6;
  v27[0] = v6;
  vectors = [(MPSVector *)v4 vectors];
  v27[1] = vectors;
  if (vectors == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  *&v10 = 0x100000001;
  *(&v10 + 1) = 0x100000001;
  *&v5->_shapeValues[32] = v10;
  *&v5->_shapeValues[48] = v10;
  *v5->_shapeValues = v10;
  *&v5->_shapeValues[16] = v10;
  v5->_rank = v9;
  v12 = *&v5->_shapeValues[32];
  v11 = *&v5->_shapeValues[48];
  v13 = *v5->_shapeValues;
  v14 = *&v5->_shapeValues[16];
  if (vectors == 1)
  {
    LODWORD(v13) = v7;
  }

  else
  {
    *&v13 = __PAIR64__(v7, vectors);
    *v5->_shapeValues = vectors;
  }

  *v5->_shapeValues = v13;
  *&v5->_shapeValues[16] = v14;
  *&v5->_shapeValues[32] = v12;
  *&v5->_shapeValues[48] = v11;
  v5->_dataType = [(MPSVector *)v4 dataType];
  device = [(MPSVector *)v4 device];
  v16 = [MPSGraphDevice deviceWithMTLDevice:device];
  device = v5->_device;
  v5->_device = v16;

  v18 = [MEMORY[0x1E6974490] descriptorWithDataType:-[MPSVector dataType](v4 dimensionCount:"dataType") dimensionSizes:{v9, v27}];
  vectorBytes = [(MPSVector *)v4 vectorBytes];
  v20 = [(MPSVector *)v4 length];
  if (vectorBytes == v20 * ([(MPSVector *)v4 dataType]>> 3))
  {
    [v18 setPreferPackedRows:1];
  }

  v21 = objc_alloc(MEMORY[0x1E6974488]);
  data = [(MPSVector *)v4 data];
  v23 = [v21 initWithBuffer:data descriptor:v18];
  mpsndarray = v5->_mpsndarray;
  v5->_mpsndarray = v23;

  [(MPSGraphTensorData *)v5 commonInitialize];
  return v5;
}

- (MPSGraphTensorData)initWithMPSVector:(MPSVector *)vector rank:(NSUInteger)rank
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = vector;
  v34.receiver = self;
  v34.super_class = MPSGraphTensorData;
  v7 = [(MPSGraphTensorData *)&v34 init];
  v7->_tensorDataType = 0;
  v35[0] = [(MPSVector *)v6 length];
  v35[1] = [(MPSVector *)v6 vectors];
  v36 = vdupq_n_s64(1uLL);
  v37 = v36;
  v38 = v36;
  v39 = v36;
  v40 = v36;
  v41 = v36;
  v42 = v36;
  if (rank - 1 >= 0x10 && MTLReportFailureTypeEnabled())
  {
    v29 = rank;
    MTLReportFailure();
  }

  v8 = 16;
  if (rank < 0x10)
  {
    v8 = rank;
  }

  if (rank)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  *&v10 = 0x100000001;
  *(&v10 + 1) = 0x100000001;
  *&v7->_shapeValues[32] = v10;
  *&v7->_shapeValues[48] = v10;
  *v7->_shapeValues = v10;
  *&v7->_shapeValues[16] = v10;
  v7->_rank = v9;
  if (v9)
  {
    v11 = 0;
    v13 = *&v7->_shapeValues[32];
    v12 = *&v7->_shapeValues[48];
    v15 = *v7->_shapeValues;
    v14 = *&v7->_shapeValues[16];
    v16 = 8 * v9;
    do
    {
      v17 = *(&v34.super_class + v16);
      v30 = v15;
      v31 = v14;
      v32 = v13;
      v33 = v12;
      *(&v30 + (v11 & 0xF)) = v17;
      v13 = v32;
      v12 = v33;
      v15 = v30;
      v14 = v31;
      *&v7->_shapeValues[32] = v32;
      *&v7->_shapeValues[48] = v12;
      *v7->_shapeValues = v15;
      *&v7->_shapeValues[16] = v14;
      ++v11;
      v16 -= 8;
    }

    while (v16);
  }

  v7->_dataType = [(MPSVector *)v6 dataType];
  device = [(MPSVector *)v6 device];
  v19 = [MPSGraphDevice deviceWithMTLDevice:device];
  device = v7->_device;
  v7->_device = v19;

  v21 = [MEMORY[0x1E6974490] descriptorWithDataType:-[MPSVector dataType](v6 dimensionCount:"dataType") dimensionSizes:{v9, v35}];
  vectorBytes = [(MPSVector *)v6 vectorBytes];
  v23 = [(MPSVector *)v6 length];
  if (vectorBytes == v23 * ([(MPSVector *)v6 dataType]>> 3))
  {
    [v21 setPreferPackedRows:1];
  }

  v24 = objc_alloc(MEMORY[0x1E6974488]);
  data = [(MPSVector *)v6 data];
  v26 = [v24 initWithBuffer:data descriptor:v21];
  mpsndarray = v7->_mpsndarray;
  v7->_mpsndarray = v26;

  [(MPSGraphTensorData *)v7 commonInitialize];
  return v7;
}

- (MPSGraphTensorData)initWithMPSNDArray:(id)array device:(id)device
{
  arrayCopy = array;
  deviceCopy = device;
  v28.receiver = self;
  v28.super_class = MPSGraphTensorData;
  v9 = [(MPSGraphTensorData *)&v28 init];
  v10 = v9;
  v11 = v9;
  v9->_tensorDataType = 0;
  v9->_rank = *&arrayCopy[*MEMORY[0x1E69744F0]];
  *&v12 = 0x100000001;
  *(&v12 + 1) = 0x100000001;
  *v9->_shapeValues = v12;
  *&v9->_shapeValues[16] = v12;
  *&v9->_shapeValues[32] = v12;
  *&v9->_shapeValues[48] = v12;
  rank = v9->_rank;
  if (rank)
  {
    v14 = 0;
    v15 = -1;
    v16 = MEMORY[0x1E6974508];
    v17 = MEMORY[0x1E69744D8];
    *&v18 = 0x100000001;
    *(&v18 + 1) = 0x100000001;
    *&v19 = 0x100000001;
    *(&v19 + 1) = 0x100000001;
    *&v20 = 0x100000001;
    *(&v20 + 1) = 0x100000001;
    do
    {
      v21 = &arrayCopy[*v16];
      v23 = *&arrayCopy[*v17];
      LODWORD(v21) = *&v21[4 * (*(&v23 | v14 & 0xF) & 0xF)];
      v24 = v12;
      v25 = v18;
      v26 = v19;
      v27 = v20;
      *(&v24 + ((rank + v15) & 0xF)) = v21;
      v19 = v26;
      v20 = v27;
      v12 = v24;
      v18 = v25;
      *&v9->_shapeValues[32] = v26;
      *&v9->_shapeValues[48] = v20;
      *v9->_shapeValues = v12;
      *&v9->_shapeValues[16] = v18;
      ++v14;
      rank = v9->_rank;
      --v15;
    }

    while (v14 < rank);
  }

  v9->_dataType = [arrayCopy dataType];
  objc_storeStrong(&v10->_device, device);
  objc_storeStrong(&v10->_mpsndarray, array);
  [(MPSGraphTensorData *)v11 commonInitialize];

  return v11;
}

- (MPSGraphTensorData)initWithMPSNDArray:(MPSNDArray *)ndarray
{
  v4 = ndarray;
  device = [(MPSNDArray *)v4 device];
  v6 = [MPSGraphDevice deviceWithMTLDevice:device];
  v7 = [(MPSGraphTensorData *)self initWithMPSNDArray:v4 device:v6];

  return v7;
}

- (MPSGraphTensorData)initWithMPSImageBatch:(MPSImageBatch *)imageBatch
{
  v5 = imageBatch;
  v22.receiver = self;
  v22.super_class = MPSGraphTensorData;
  v6 = [(MPSGraphTensorData *)&v22 init];
  v6->_tensorDataType = 1;
  v6->_rank = 4;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *&v6->_shapeValues[32] = v7;
  *&v6->_shapeValues[48] = v7;
  *v6->_shapeValues = v7;
  *&v6->_shapeValues[16] = v7;
  *v6->_shapeValues = [(MPSImageBatch *)v5 count];
  v8 = [(MPSImageBatch *)v5 objectAtIndexedSubscript:0];
  *&v6->_shapeValues[4] = [v8 height];

  v9 = [(MPSImageBatch *)v5 objectAtIndexedSubscript:0];
  *&v6->_shapeValues[8] = [v9 width];

  v10 = [(MPSImageBatch *)v5 objectAtIndexedSubscript:0];
  *&v6->_shapeValues[12] = [v10 featureChannels];

  v11 = v5;
  v12 = [(MPSImageBatch *)v11 objectAtIndexedSubscript:0];
  featureChannelFormat = [v12 featureChannelFormat];

  if ((featureChannelFormat - 1) >= 4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v15 = [(MPSImageBatch *)v11 objectAtIndexedSubscript:0];
      v21 = [v15 debugDescription];
      MTLReportFailure();
    }

    v14 = 268435488;
  }

  else
  {
    v14 = dword_1E09A9480[featureChannelFormat - 1];
  }

  v6->_dataType = v14;
  v16 = [(MPSImageBatch *)v11 objectAtIndexedSubscript:0];
  device = [v16 device];
  v18 = [MPSGraphDevice deviceWithMTLDevice:device];
  device = v6->_device;
  v6->_device = v18;

  objc_storeStrong(&v6->_mpsimagebatch, imageBatch);
  [(MPSGraphTensorData *)v6 commonInitialize];

  return v6;
}

- (MPSGraphTensorData)initWithDevice:(id)device IOSurface:(__IOSurface *)surface rowBytesAlignment:(unint64_t)alignment shape:(id)shape dataType:(unsigned int)type
{
  v7 = *&type;
  deviceCopy = device;
  v32.receiver = self;
  v32.super_class = MPSGraphTensorData;
  shapeCopy = shape;
  v13 = [(MPSGraphTensorData *)&v32 init];
  *(v13 + 17) = 0;
  adaptForMPS(shapeCopy);
  v14 = v29 = surface;
  v15 = [v14 count];
  v16 = v13 + 32;
  *&v17 = 0x100000001;
  *(&v17 + 1) = 0x100000001;
  *(v13 + 4) = v17;
  *(v13 + 5) = v17;
  if (v15 >= 0x10)
  {
    v18 = 16;
  }

  else
  {
    v18 = v15;
  }

  *v16 = v17;
  *(v13 + 3) = v17;
  if (v15)
  {
    v19 = 0;
    do
    {
      v20 = [v14 objectAtIndexedSubscript:v19];
      *&v13[4 * (v19 & 0xF) + 32] = [v20 unsignedIntValue];

      ++v19;
    }

    while (v18 != v19);
  }

  *(v13 + 12) = v18;
  *(v13 + 36) = v7;
  objc_storeStrong(v13 + 19, device);
  *(v13 + 1) = (alignment + *(v16 + ((*(v13 + 24) - 1) & 0xF)) * (v7 >> 3) - 1) / alignment * alignment;
  v21 = MEMORY[0x1E6974490];
  v22 = adaptForMPS(shapeCopy);
  v23 = [v21 descriptorWithDataType:v7 shape:v22];

  [v23 setRowBytes:*(v13 + 1)];
  *(v13 + 15) = v29;
  CFRetain(v29);
  metalDevice = [deviceCopy metalDevice];
  v25 = [metalDevice newBufferWithIOSurface:v29];

  if (v25)
  {
    v26 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:v25 descriptor:v23];
    v27 = *(v13 + 13);
    *(v13 + 13) = v26;
  }

  else if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v13 commonInitialize];

  return v13;
}

- (MPSGraphTensorData)initWithDevice:(id)device rowBytesAlignment:(unint64_t)alignment shape:(id)shape dataType:(unsigned int)type
{
  deviceCopy = device;
  shapeCopy = shape;
  v56.receiver = self;
  v56.super_class = MPSGraphTensorData;
  v10 = [(MPSGraphTensorData *)&v56 init];
  v11 = v10;
  *(v10 + 17) = 0;
  adaptForMPS(shapeCopy);
  v12 = v50 = alignment;
  v13 = [v12 count];
  v14 = v10 + 32;
  *&v15 = 0x100000001;
  *(&v15 + 1) = 0x100000001;
  *(v10 + 4) = v15;
  *(v10 + 5) = v15;
  if (v13 >= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v13;
  }

  *v14 = v15;
  *(v10 + 3) = v15;
  if (v13)
  {
    v17 = 0;
    do
    {
      v18 = [v12 objectAtIndexedSubscript:v17];
      *&v10[4 * (v17 & 0xF) + 32] = [v18 unsignedIntValue];

      ++v17;
    }

    while (v16 != v17);
  }

  *(v10 + 12) = v16;
  *(v10 + 36) = type;
  objc_storeStrong(v10 + 19, device);
  *(v10 + 1) = (v50 + *(v14 + ((*(v10 + 24) - 1) & 0xF)) * (type >> 3) - 1) / v50 * v50;
  v19 = deviceCopy;
  if ([*(v10 + 19) type] != 1)
  {
    if ([*(v10 + 19) type] != 2)
    {
      v35 = MEMORY[0x1E6974490];
      v36 = adaptForMPS(shapeCopy);
      v37 = [v35 descriptorWithDataType:type shape:v36];

      [v37 setRowBytes:*(v10 + 1)];
      v38 = objc_alloc(MEMORY[0x1E6974488]);
      metalDevice = [*(v10 + 19) metalDevice];
      v40 = [v38 initWithDevice:metalDevice descriptor:v37];
      v41 = *(v10 + 13);
      *(v10 + 13) = v40;

      v19 = deviceCopy;
LABEL_24:

      goto LABEL_25;
    }

    v27 = *(v10 + 12) - 1;
    if (*(v10 + 12) == 1)
    {
      v34 = *(v10 + 1);
      if (v34)
      {
LABEL_23:
        v37 = [MEMORY[0x1E695E0F8] mutableCopy];
        v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
        [v37 setObject:v44 forKeyedSubscript:*MEMORY[0x1E696D130]];

        [v37 setObject:&unk_1F5B75950 forKeyedSubscript:*MEMORY[0x1E696CF58]];
        v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
        [v37 setObject:v45 forKeyedSubscript:*MEMORY[0x1E696CE58]];

        Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v37);
        v47 = IOSurfaceCreate(Copy);
        CFRelease(Copy);
        v48 = [(MPSGraphTensorData *)v11 initWithDevice:deviceCopy IOSurface:v47 rowBytesAlignment:v50 shape:shapeCopy dataType:type];
        CFRelease(v47);
        v11 = v48;
        goto LABEL_24;
      }
    }

    else
    {
      v28 = 0;
      v30 = *(v10 + 4);
      v29 = *(v10 + 5);
      v32 = *(v10 + 2);
      v31 = *(v10 + 3);
      v33 = 1;
      do
      {
        v55[0] = v32;
        v55[1] = v31;
        v55[2] = v30;
        v55[3] = v29;
        v33 *= *(v55 + (v28++ & 0xF));
      }

      while (v27 != v28);
      v34 = *(v10 + 1) * v33;
      if (v34)
      {
        goto LABEL_23;
      }
    }

    NSLog(&cfstr_InvalidPlaneco.isa, 1, 0);
    goto LABEL_23;
  }

  v20 = *(v10 + 12) - 1;
  if (*(v10 + 12) == 1)
  {
    v26 = 1;
  }

  else
  {
    v21 = 0;
    v23 = *(v10 + 4);
    v22 = *(v10 + 5);
    v25 = *(v10 + 2);
    v24 = *(v10 + 3);
    v26 = 1;
    do
    {
      v54[0] = v25;
      v54[1] = v24;
      v54[2] = v23;
      v54[3] = v22;
      v26 *= *(v54 + (v21++ & 0xF));
    }

    while (v20 != v21);
  }

  v42 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:malloc_type_malloc(*(v10 + 1) * v26 length:0x7CE279CBuLL) freeWhenDone:{*(v10 + 1) * v26, 1}];
  v43 = *(v10 + 16);
  *(v10 + 16) = v42;

  *(v10 + 17) = 2;
  v11 = [v10 initWithDevice:deviceCopy data:*(v10 + 16) shape:shapeCopy dataType:type];
LABEL_25:
  [(MPSGraphTensorData *)v11 commonInitialize];

  return v11;
}

- (id)initEmptyWithShape:(id)shape dataType:(unsigned int)type device:(id)device
{
  shapeCopy = shape;
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = MPSGraphTensorData;
  v9 = [(MPSGraphTensorData *)&v18 init];
  v9->_tensorDataType = 0;
  v10 = shapeCopy;
  v11 = [v10 count];
  *&v12 = 0x100000001;
  *(&v12 + 1) = 0x100000001;
  *&v9->_shapeValues[32] = v12;
  *&v9->_shapeValues[48] = v12;
  if (v11 >= 0x10)
  {
    v13 = 16;
  }

  else
  {
    v13 = v11;
  }

  *v9->_shapeValues = v12;
  *&v9->_shapeValues[16] = v12;
  if (v11)
  {
    v14 = 0;
    do
    {
      v15 = [v10 objectAtIndexedSubscript:v14];
      *&v9->_shapeValues[4 * (v14 & 0xF)] = [v15 unsignedIntValue];

      ++v14;
    }

    while (v13 != v14);
  }

  v9->_rank = v13;
  v9->_dataType = type;
  objc_storeStrong(&v9->_device, device);
  [(MPSGraphTensorData *)v9 commonInitialize];

  return v9;
}

- (MPSGraphTensorData)initWithMTLTensor:(id)tensor
{
  tensorCopy = tensor;
  if (!tensorCopy && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [tensorCopy usage];
  if (([tensorCopy usage] & 4) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  dataType = [tensorCopy dataType];
  if (dataType <= 36)
  {
    if (dataType > 28)
    {
      if (dataType == 29)
      {
        v6 = 536870944;
        goto LABEL_25;
      }

      if (dataType == 33)
      {
        v6 = 32;
        goto LABEL_25;
      }
    }

    else
    {
      v6 = 268435472;
      if (dataType == 3)
      {
        v6 = 268435488;
        goto LABEL_25;
      }

      if (dataType == 16)
      {
        goto LABEL_25;
      }
    }
  }

  else if (dataType <= 44)
  {
    if (dataType == 37)
    {
      v6 = 536870928;
      goto LABEL_25;
    }

    if (dataType == 41)
    {
      v6 = 16;
      goto LABEL_25;
    }
  }

  else
  {
    switch(dataType)
    {
      case '-':
        v6 = 536870920;
        goto LABEL_25;
      case '1':
        v6 = 8;
        goto LABEL_25;
      case 'y':
        v6 = 2415919120;
        goto LABEL_25;
    }
  }

  v6 = 0;
LABEL_25:
  dimensions = [tensorCopy dimensions];
  v8 = MPSShapeFromTensorExtents(dimensions);

  buffer = [tensorCopy buffer];
  v10 = v6 & 0x38;
  if (buffer)
  {
    if ([v8 count])
    {
      if ([v8 count] == 1)
      {
        dimensions2 = [tensorCopy dimensions];
        v12 = [dimensions2 extentAtDimensionIndex:0];
      }

      else
      {
        dimensions2 = [tensorCopy strides];
        v12 = [dimensions2 extentAtDimensionIndex:1];
      }

      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    [tensorCopy offset];
    if ([tensorCopy offset] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    strides = [tensorCopy strides];
    rank = [strides rank];
    v18 = v15 * (v10 >> 3);

    if (rank)
    {
      v19 = 1;
      do
      {
        strides2 = [tensorCopy strides];
        rank2 = [strides2 rank];

        ++v19;
      }

      while (v19 < rank2);
    }
  }

  else
  {
    buffer = [tensorCopy internalMTLBuffer];
    if ([v8 count])
    {
      dimensions3 = [tensorCopy dimensions];
      v14 = [dimensions3 extentAtDimensionIndex:0];
    }

    else
    {
      v14 = 1;
    }

    dimensions4 = [tensorCopy dimensions];
    rank3 = [dimensions4 rank];
    v18 = v14 * (v10 >> 3);

    if (rank3)
    {
      v18 = (v18 + 63) & 0xFFFFFFFFFFFFFFC0;
    }
  }

  dimensions5 = [tensorCopy dimensions];
  rank4 = [dimensions5 rank];

  if (rank4 && (v18 & 0x3F) != 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v26 = [(MPSGraphTensorData *)self initWithMTLBuffer:buffer shape:v8 dataType:v6 rowBytes:v18];

  return v26;
}

- (id)mpsndarrayWithCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  if (self->_tensorDataType == 1)
  {
    mpsndarray = self->_mpsndarray;
    if (!mpsndarray)
    {
      v21 = MEMORY[0x1E6974490];
      dataType = self->_dataType;
      v6 = [(NSArray *)self->_mpsimagebatch objectAtIndexedSubscript:0];
      featureChannels = [v6 featureChannels];
      v8 = [(NSArray *)self->_mpsimagebatch objectAtIndexedSubscript:0];
      width = [v8 width];
      v10 = [(NSArray *)self->_mpsimagebatch objectAtIndexedSubscript:0];
      v11 = [v21 descriptorWithDataType:dataType dimensionSizes:{featureChannels, width, objc_msgSend(v10, "height"), -[NSArray count](self->_mpsimagebatch, "count"), 0}];

      v12 = objc_alloc(MEMORY[0x1E6974488]);
      v13 = [(NSArray *)self->_mpsimagebatch objectAtIndexedSubscript:0];
      device = [v13 device];
      v15 = [v12 initWithDevice:device descriptor:v11];
      v16 = self->_mpsndarray;
      self->_mpsndarray = v15;

      mpsndarray = self->_mpsndarray;
    }

    memset(v22, 0, sizeof(v22));
    [(MPSNDArray *)mpsndarray importDataWithCommandBuffer:bufferCopy fromImages:self->_mpsimagebatch offset:v22];
    mpsndarray = self->_mpsndarray;
  }

  else
  {
    mpsndarray = [(MPSGraphTensorData *)self mpsndarray];
  }

  v18 = mpsndarray;

  return v18;
}

- (MPSNDArray)mpsndarray
{
  mpsndarray = self->_mpsndarray;
  if (!mpsndarray)
  {
    tensorDataType = self->_tensorDataType;
    if (tensorDataType == 1)
    {
      v14 = [(NSArray *)self->_mpsimagebatch objectAtIndexedSubscript:0];
      device = [v14 device];
      newCommandQueue = [device newCommandQueue];
      commandBuffer = [newCommandQueue commandBuffer];

      v17 = [(MPSGraphTensorData *)self mpsndarrayWithCommandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      goto LABEL_6;
    }

    if (tensorDataType == 2)
    {
      v5 = MEMORY[0x1E6974490];
      dataType = self->_dataType;
      shape = [(MPSGraphTensorData *)self shape];
      v8 = adaptForMPS(shape);
      commandBuffer = [v5 descriptorWithDataType:dataType shape:v8];

      v10 = objc_alloc(MEMORY[0x1E6974488]);
      metalDevice = [(MPSGraphDevice *)self->_device metalDevice];
      v12 = [v10 initWithDevice:metalDevice descriptor:commandBuffer];
      v13 = self->_mpsndarray;
      self->_mpsndarray = v12;

      [(MPSNDArray *)self->_mpsndarray writeBytes:[(NSData *)self->_data bytes] strideBytes:0];
LABEL_6:

      mpsndarray = self->_mpsndarray;
      goto LABEL_8;
    }

    mpsndarray = 0;
  }

LABEL_8:
  v18 = mpsndarray;

  return v18;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MPSGraphTensorData;
  v4 = [(MPSGraphTensorData *)&v9 debugDescription];
  v5 = [(MPSNDArray *)self->_mpsndarray debugDescription];
  v6 = [(NSArray *)self->_mpsimagebatch debugDescription];
  v7 = [v3 stringWithFormat:@"%@\nmpsndarray: %@, imageBatch: %@", v4, v5, v6];

  return v7;
}

- (void)printNDArray
{
  mpsndarray = [(MPSGraphTensorData *)self mpsndarray];
  [mpsndarray printNDArray];
}

- (void)printIOSurface
{
  rank = self->_rank;
  v4 = *self->_shapeValues;
  v5 = *&self->_shapeValues[16];
  v6 = *&self->_shapeValues[48];
  v34 = *&self->_shapeValues[32];
  v35 = v6;
  v33[0] = v4;
  v33[1] = v5;
  v7 = *(v33 + ((rank - 1) & 0xF));
  v32[2] = v34;
  v32[3] = v6;
  v32[0] = v4;
  v32[1] = v5;
  v8 = *(v32 + ((rank - 2) & 0xF));
  v31[2] = v34;
  v31[3] = v6;
  v31[0] = v4;
  v31[1] = v5;
  v9 = *(v31 + ((rank - 3) & 0xF));
  v10 = (rank - 4) & 0xFLL;
  v30[2] = v34;
  v30[3] = v6;
  v30[0] = v4;
  v30[1] = v5;
  IOSurfaceLock(self->_iosurface, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(self->_iosurface);
  printf("IOSurface %dx%dx%dx%d\n\n", *(v30 + v10), v9, v8, v7);
  if (v9)
  {
    if (v8)
    {
      if (v7)
      {
        v12 = 0;
        v13 = 0;
        v27 = v9;
        do
        {
          v28 = v13;
          printf("Channel %d:    \n", v13);
          v14 = 0;
          v29 = v12;
          do
          {
            v15 = v7;
            v16 = BaseAddress;
            do
            {
              _H0 = *&v16[v12 * self->_rowBytes];
              __asm { FCVT            D0, H0 }

              printf("%f ", _D0);
              v16 += 2;
              --v15;
            }

            while (v15);
            putchar(10);
            ++v14;
            ++v12;
          }

          while (v14 != v8);
          putchar(10);
          v13 = v28 + 1;
          v12 = v29 + v8;
        }

        while (v28 + 1 != v27);
      }

      else
      {
        for (i = 0; i != v9; ++i)
        {
          printf("Channel %d:    \n", i);
          v25 = v8;
          do
          {
            putchar(10);
            --v25;
          }

          while (v25);
          putchar(10);
        }
      }
    }

    else
    {
      for (j = 0; j != v9; ++j)
      {
        printf("Channel %d:    \n", j);
        putchar(10);
      }
    }
  }

  puts("\n");
  iosurface = self->_iosurface;

  IOSurfaceUnlock(iosurface, 0, 0);
}

- (void)print
{
  if ((self->_tensorDataType | 2) == 2)
  {
    [(MPSGraphTensorData *)self printNDArray];
  }
}

- (id)checkTensorData:(const float *)data nativeUlps:(float)ulps absoluteErr:(float)err PSNR:(float)r
{
  mpsndarray = [(MPSGraphTensorData *)self mpsndarray];
  *&v11 = ulps;
  *&v12 = err;
  *&v13 = r;
  v14 = [mpsndarray checkNDArray:data nativeUlps:v11 absoluteErr:v12 PSNR:v13];

  return v14;
}

- (id)checkWithReferenceTensorData:(id)data nativeUlps:(float)ulps absoluteError:(float)error PSNR:(float)r
{
  dataCopy = data;
  mpsndarray = [dataCopy mpsndarray];
  [dataCopy dataType];
  shape = [dataCopy shape];
  v13 = [shape count];
  if (v13)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = [shape objectAtIndexedSubscript:v14];
      v15 *= [v16 unsignedIntValue];

      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v15 = 1;
  }

  dataType = [dataCopy dataType];
  if (dataType == 285212736 || dataType == 285212704)
  {
    v15 *= 2;
  }

  v18 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
  dataType2 = [dataCopy dataType];
  if (dataType2 > 268435487)
  {
    if (dataType2 > 536870919)
    {
      if (dataType2 > 536870943)
      {
        if (dataType2 == 536870944)
        {
          v51 = mpsndarray;
          v24 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
          [v51 readBytes:v24 strideBytes:0];
          if (v15)
          {
            if (v15 > 7)
            {
              v52 = v15 & 0xFFFFFFFFFFFFFFF8;
              v75 = (v24 + 16);
              v76 = v18 + 1;
              v77 = v15 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v78 = vcvtq_f32_s32(*v75);
                v76[-1] = vcvtq_f32_s32(v75[-1]);
                *v76 = v78;
                v75 += 2;
                v76 += 2;
                v77 -= 8;
              }

              while (v77);
              goto LABEL_171;
            }

            v52 = 0;
            do
            {
              v18->f32[v52] = *&v24[4 * v52];
              ++v52;
LABEL_171:
              ;
            }

            while (v15 != v52);
          }
        }

        else
        {
          if (dataType2 != 536870976)
          {
            goto LABEL_166;
          }

          v40 = mpsndarray;
          v24 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
          [v40 readBytes:v24 strideBytes:0];
          if (v15)
          {
            if (v15 > 7)
            {
              v41 = v15 & 0xFFFFFFFFFFFFFFF8;
              v83 = (v24 + 32);
              v84 = v18 + 1;
              v85 = v15 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v87 = v83[-2];
                v86 = v83[-1];
                v89 = *v83;
                v88 = v83[1];
                v83 += 4;
                v84[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v87)), vcvtq_f64_s64(v86));
                *v84 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v89)), vcvtq_f64_s64(v88));
                v84 += 2;
                v85 -= 8;
              }

              while (v85);
              goto LABEL_175;
            }

            v41 = 0;
            do
            {
              v18->f32[v41] = *&v24[8 * v41];
              ++v41;
LABEL_175:
              ;
            }

            while (v15 != v41);
          }
        }

        goto LABEL_165;
      }

      if (dataType2 != 536870920)
      {
        if (dataType2 != 536870928)
        {
          goto LABEL_166;
        }

        v26 = mpsndarray;
        v24 = malloc_type_malloc(2 * v15, 0x1000040BDFB0063uLL);
        [v26 readBytes:v24 strideBytes:0];
        if (!v15)
        {
          goto LABEL_165;
        }

        if (v15 < 4)
        {
          v28 = 0;
          goto LABEL_180;
        }

        if (v15 >= 0x10)
        {
          v28 = v15 & 0xFFFFFFFFFFFFFFF0;
          v100 = (v24 + 16);
          v101 = v18 + 2;
          v102 = v15 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v103 = *v100[-2].i8;
            v104 = vcvtq_f32_s32(vmovl_s16(*v100));
            v105 = vmovl_high_s16(*v100->i8);
            v101[-2] = vcvtq_f32_s32(vmovl_s16(*v103.i8));
            v101[-1] = vcvtq_f32_s32(vmovl_high_s16(v103));
            v27 = vcvtq_f32_s32(v105);
            *v101 = v104;
            v101[1] = v27;
            v101 += 4;
            v100 += 4;
            v102 -= 16;
          }

          while (v102);
          if (v15 == v28)
          {
            goto LABEL_165;
          }

          if ((v15 & 0xC) == 0)
          {
            do
            {
LABEL_180:
              v27.i16[0] = *&v24[2 * v28];
              v27.i64[0] = vmovl_s16(*v27.f32).u64[0];
              v27.f32[0] = v27.i32[0];
              v18->i32[v28++] = v27.i32[0];
LABEL_179:
              ;
            }

            while (v15 != v28);
            goto LABEL_165;
          }
        }

        else
        {
          v28 = 0;
        }

        v106 = v28;
        v28 = v15 & 0xFFFFFFFFFFFFFFFCLL;
        v107 = 2 * v106;
        v108 = (v18 + 4 * v106);
        v109 = v106 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v27 = vcvtq_f32_s32(vmovl_s16(*&v24[v107]));
          *v108++ = v27;
          v107 += 8;
          v109 += 4;
        }

        while (v109);
        goto LABEL_179;
      }

      v45 = mpsndarray;
      v24 = malloc_type_malloc(v15, 0x100004077774924uLL);
      [v45 readBytes:v24 strideBytes:0];
      if (!v15)
      {
        goto LABEL_165;
      }

      if (v15 < 4 || v18 < &v24[v15] && v24 < &v18->i8[4 * v15])
      {
        v48 = 0;
        goto LABEL_186;
      }

      if (v15 >= 0x10)
      {
        v130 = 0;
        v48 = v15 & 0xFFFFFFFFFFFFFFF0;
        v46 = 0xDFFFFFF0CFFFFFFLL;
        v47 = xmmword_1E09845A0;
        v131 = v18;
        do
        {
          v132 = *&v24[v130];
          v131[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v132, xmmword_1E09845A0), 0x18uLL);
          v131[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v132, xmmword_1E0984590), 0x18uLL);
          *v131 = vcvtq_n_f32_s32(vqtbl1q_s8(v132, xmmword_1E09845C0), 0x18uLL);
          v131[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v132, xmmword_1E09845B0), 0x18uLL);
          v131 += 4;
          v130 += 16;
        }

        while (v48 != v130);
        if (v15 == v48)
        {
          goto LABEL_165;
        }

        if ((v15 & 0xC) == 0)
        {
          do
          {
LABEL_186:
            v46.i8[0] = v24[v48];
            v46 = vmovl_s16(*&vmovl_s8(v46)).u64[0];
            *v46.i32 = v46.i32[0];
            v18->i32[v48++] = v46.i32[0];
LABEL_185:
            ;
          }

          while (v15 != v48);
          goto LABEL_165;
        }
      }

      else
      {
        v48 = 0;
      }

      v133 = v48;
      v48 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v134 = &v18->f32[v133];
      v46 = 0x1FFFFFF00FFFFFFLL;
      do
      {
        v47.i32[0] = *&v24[v133];
        v47 = vcvtq_n_f32_s32(vqtbl1q_s8(v47, xmmword_1E09845C0), 0x18uLL);
        *v134++ = v47;
        v133 += 4;
      }

      while (v48 != v133);
      goto LABEL_185;
    }

    if (dataType2 == 268435488)
    {
      v57 = mpsndarray;
      [v57 readBytes:v18 strideBytes:0];
      v24 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
      [v57 readBytes:v24 strideBytes:0];
      if (v15)
      {
        v58 = 0;
        if (v15 < 8 || (v18 - v24) <= 0x1F)
        {
          goto LABEL_164;
        }

        v58 = v15 & 0xFFFFFFFFFFFFFFF8;
        v59 = (v24 + 16);
        f32 = v18[1].f32;
        v61 = v15 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v62 = *v59;
          *(f32 - 1) = *(v59 - 1);
          *f32 = v62;
          v59 += 2;
          f32 += 2;
          v61 -= 8;
        }

        while (v61);
        while (v15 != v58)
        {
LABEL_164:
          v18->i32[v58] = *&v24[4 * v58];
          ++v58;
        }
      }

      goto LABEL_165;
    }

    if (dataType2 != 285212704)
    {
      if (dataType2 != 285212736)
      {
        goto LABEL_166;
      }

      v32 = mpsndarray;
      [v32 readBytes:v18 strideBytes:0];
      v24 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
      [v32 readBytes:v24 strideBytes:0];
      if (v15)
      {
        v33 = 0;
        if (v15 < 8 || (v18 - v24) <= 0x1F)
        {
          goto LABEL_159;
        }

        v33 = v15 & 0xFFFFFFFFFFFFFFF8;
        v34 = (v24 + 16);
        v35 = v18[1].f32;
        v36 = v15 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v37 = *v34;
          *(v35 - 1) = *(v34 - 1);
          *v35 = v37;
          v34 += 2;
          v35 += 2;
          v36 -= 8;
        }

        while (v36);
        while (v15 != v33)
        {
LABEL_159:
          v18->i32[v33] = *&v24[4 * v33];
          ++v33;
        }
      }

      goto LABEL_165;
    }

    v66 = mpsndarray;
    v24 = malloc_type_malloc(2 * v15, 0x1000040BDFB0063uLL);
    [v66 readBytes:v24 strideBytes:0];
    if (!v15)
    {
      goto LABEL_165;
    }

    if (v15 < 4)
    {
      v67 = 0;
      goto LABEL_184;
    }

    if (v15 >= 0x10)
    {
      v67 = v15 & 0xFFFFFFFFFFFFFFF0;
      v120 = (v24 + 16);
      v121 = v18 + 2;
      v122 = v15 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v123 = *v120[-2].i8;
        v124 = vcvtq_f32_f16(*v120);
        v125 = vcvt_hight_f32_f16(*v120->i8);
        v121[-2] = vcvtq_f32_f16(*v123.i8);
        v121[-1] = vcvt_hight_f32_f16(v123);
        *v121 = v124;
        v121[1] = v125;
        v121 += 4;
        v120 += 4;
        v122 -= 16;
      }

      while (v122);
      if (v15 == v67)
      {
        goto LABEL_165;
      }

      if ((v15 & 0xC) == 0)
      {
        do
        {
LABEL_184:
          _H0 = *&v24[2 * v67];
          __asm { FCVT            S0, H0 }

          v18->i32[v67++] = _S0;
LABEL_183:
          ;
        }

        while (v15 != v67);
        goto LABEL_165;
      }
    }

    else
    {
      v67 = 0;
    }

    v126 = v67;
    v67 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v127 = 2 * v126;
    v128 = (v18 + 4 * v126);
    v129 = v126 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v128++ = vcvtq_f32_f16(*&v24[v127]);
      v127 += 8;
      v129 += 4;
    }

    while (v129);
    goto LABEL_183;
  }

  if (dataType2 <= 15)
  {
    if (dataType2 != -2147483640)
    {
      if (dataType2 == -1879048176)
      {
        v63 = mpsndarray;
        v24 = malloc_type_malloc(2 * v15, 0x1000040BDFB0063uLL);
        [v63 readBytes:v24 strideBytes:0];
        if (v15)
        {
          for (i = 0; i != v15; ++i)
          {
            v65 = &v18->i8[4 * i];
            *(v65 + 1) = *&v24[2 * i];
            *v65 = 0;
          }
        }

        goto LABEL_165;
      }

      if (dataType2 != 8)
      {
        goto LABEL_166;
      }

      v29 = mpsndarray;
      v24 = malloc_type_malloc(v15, 0x100004077774924uLL);
      [v29 readBytes:v24 strideBytes:0];
      if (!v15)
      {
        goto LABEL_165;
      }

      if (v15 < 4 || v18 < &v24[v15] && v24 < &v18->i8[4 * v15])
      {
        v31 = 0;
        goto LABEL_188;
      }

      if (v15 >= 0x10)
      {
        v140 = 0;
        v31 = v15 & 0xFFFFFFFFFFFFFFF0;
        v30.i64[0] = 0xFFFFFF0DFFFFFF0CLL;
        v141 = v18;
        do
        {
          v142 = *&v24[v140];
          v141[2] = vcvtq_f32_u32(vqtbl1q_s8(v142, xmmword_1E09A9450));
          v141[3] = vcvtq_f32_u32(vqtbl1q_s8(v142, xmmword_1E09A9440));
          *v141 = vcvtq_f32_u32(vqtbl1q_s8(v142, xmmword_1E09A9470));
          v141[1] = vcvtq_f32_u32(vqtbl1q_s8(v142, xmmword_1E09A9460));
          v141 += 4;
          v140 += 16;
        }

        while (v31 != v140);
        if (v15 == v31)
        {
          goto LABEL_165;
        }

        if ((v15 & 0xC) == 0)
        {
          do
          {
LABEL_188:
            v30.i8[0] = v24[v31];
            v30.f32[0] = v30.u32[0];
            v18->i32[v31++] = v30.i32[0];
LABEL_187:
            ;
          }

          while (v15 != v31);
          goto LABEL_165;
        }
      }

      else
      {
        v31 = 0;
      }

      v143 = v31;
      v31 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v144 = (v18 + 4 * v143);
      do
      {
        v30.i32[0] = *&v24[v143];
        v30 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v30.f32)));
        *v144++ = v30;
        v143 += 4;
      }

      while (v31 != v143);
      goto LABEL_187;
    }

    v53 = mpsndarray;
    v24 = malloc_type_malloc(v15, 0x100004077774924uLL);
    [v53 readBytes:v24 strideBytes:0];
    if (!v15)
    {
      goto LABEL_165;
    }

    if (v15 < 4 || v18 < &v24[v15] && v24 < &v18->i8[4 * v15])
    {
      v56 = 0;
      goto LABEL_160;
    }

    if (v15 >= 0x10)
    {
      v135 = 0;
      v56 = v15 & 0xFFFFFFFFFFFFFFF0;
      v54 = 0xDFFFFFF0CFFFFFFLL;
      v55 = xmmword_1E09845A0;
      v136 = v18;
      do
      {
        v137 = *&v24[v135];
        v136[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v137, xmmword_1E09845A0), 0x18uLL);
        v136[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v137, xmmword_1E0984590), 0x18uLL);
        *v136 = vcvtq_n_f32_s32(vqtbl1q_s8(v137, xmmword_1E09845C0), 0x18uLL);
        v136[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v137, xmmword_1E09845B0), 0x18uLL);
        v136 += 4;
        v135 += 16;
      }

      while (v56 != v135);
      if (v15 == v56)
      {
        goto LABEL_165;
      }

      if ((v15 & 0xC) == 0)
      {
        do
        {
LABEL_160:
          v54.i8[0] = v24[v56];
          v54 = vmovl_s16(*&vmovl_s8(v54)).u64[0];
          *v54.i32 = v54.i32[0];
          v18->i32[v56++] = v54.i32[0];
LABEL_161:
          ;
        }

        while (v15 != v56);
        goto LABEL_165;
      }
    }

    else
    {
      v56 = 0;
    }

    v138 = v56;
    v56 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v139 = &v18->f32[v138];
    v54 = 0x1FFFFFF00FFFFFFLL;
    do
    {
      v55.i32[0] = *&v24[v138];
      v55 = vcvtq_n_f32_s32(vqtbl1q_s8(v55, xmmword_1E09845C0), 0x18uLL);
      *v139++ = v55;
      v138 += 4;
    }

    while (v56 != v138);
    goto LABEL_161;
  }

  if (dataType2 > 63)
  {
    if (dataType2 == 64)
    {
      v49 = mpsndarray;
      v24 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
      [v49 readBytes:v24 strideBytes:0];
      if (v15)
      {
        if (v15 > 7)
        {
          v50 = v15 & 0xFFFFFFFFFFFFFFF8;
          v68 = (v24 + 32);
          v69 = v18 + 1;
          v70 = v15 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v72 = v68[-2];
            v71 = v68[-1];
            v74 = *v68;
            v73 = v68[1];
            v68 += 4;
            v69[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v72)), vcvtq_f64_u64(v71));
            *v69 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v74)), vcvtq_f64_u64(v73));
            v69 += 2;
            v70 -= 8;
          }

          while (v70);
          goto LABEL_169;
        }

        v50 = 0;
        do
        {
          v18->f32[v50] = *&v24[8 * v50];
          ++v50;
LABEL_169:
          ;
        }

        while (v15 != v50);
      }

      goto LABEL_165;
    }

    if (dataType2 != 268435472)
    {
      goto LABEL_166;
    }

    v38 = mpsndarray;
    v24 = malloc_type_malloc(2 * v15, 0x1000040BDFB0063uLL);
    [v38 readBytes:v24 strideBytes:0];
    if (!v15)
    {
      goto LABEL_165;
    }

    if (v15 < 4)
    {
      v39 = 0;
      goto LABEL_182;
    }

    if (v15 >= 0x10)
    {
      v39 = v15 & 0xFFFFFFFFFFFFFFF0;
      v110 = (v24 + 16);
      v111 = v18 + 2;
      v112 = v15 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v113 = *v110[-2].i8;
        v114 = vcvtq_f32_f16(*v110);
        v115 = vcvt_hight_f32_f16(*v110->i8);
        v111[-2] = vcvtq_f32_f16(*v113.i8);
        v111[-1] = vcvt_hight_f32_f16(v113);
        *v111 = v114;
        v111[1] = v115;
        v111 += 4;
        v110 += 4;
        v112 -= 16;
      }

      while (v112);
      if (v15 == v39)
      {
        goto LABEL_165;
      }

      if ((v15 & 0xC) == 0)
      {
        do
        {
LABEL_182:
          _H0 = *&v24[2 * v39];
          __asm { FCVT            S0, H0 }

          v18->i32[v39++] = _S0;
LABEL_181:
          ;
        }

        while (v15 != v39);
        goto LABEL_165;
      }
    }

    else
    {
      v39 = 0;
    }

    v116 = v39;
    v39 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v117 = 2 * v116;
    v118 = (v18 + 4 * v116);
    v119 = v116 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v118++ = vcvtq_f32_f16(*&v24[v117]);
      v117 += 8;
      v119 += 4;
    }

    while (v119);
    goto LABEL_181;
  }

  if (dataType2 != 16)
  {
    if (dataType2 != 32)
    {
      goto LABEL_166;
    }

    v23 = mpsndarray;
    v24 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
    [v23 readBytes:v24 strideBytes:0];
    if (v15)
    {
      if (v15 > 7)
      {
        v25 = v15 & 0xFFFFFFFFFFFFFFF8;
        v79 = (v24 + 16);
        v80 = v18 + 1;
        v81 = v15 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v82 = vcvtq_f32_u32(*v79);
          v80[-1] = vcvtq_f32_u32(v79[-1]);
          *v80 = v82;
          v79 += 2;
          v80 += 2;
          v81 -= 8;
        }

        while (v81);
        goto LABEL_173;
      }

      v25 = 0;
      do
      {
        v18->f32[v25] = *&v24[4 * v25];
        ++v25;
LABEL_173:
        ;
      }

      while (v15 != v25);
    }

    goto LABEL_165;
  }

  v42 = mpsndarray;
  v24 = malloc_type_malloc(2 * v15, 0x1000040BDFB0063uLL);
  [v42 readBytes:v24 strideBytes:0];
  if (v15)
  {
    if (v15 < 4)
    {
      v44 = 0;
      do
      {
LABEL_178:
        v43.i16[0] = *&v24[2 * v44];
        v43.f32[0] = v43.u32[0];
        v18->i32[v44++] = v43.i32[0];
LABEL_177:
        ;
      }

      while (v15 != v44);
      goto LABEL_165;
    }

    if (v15 < 0x10)
    {
      v44 = 0;
      goto LABEL_109;
    }

    v44 = v15 & 0xFFFFFFFFFFFFFFF0;
    v90 = (v24 + 16);
    v91 = v18 + 2;
    v92 = v15 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v93 = *v90[-2].i8;
      v94 = vcvtq_f32_u32(vmovl_u16(*v90));
      v95 = vmovl_high_u16(*v90->i8);
      v91[-2] = vcvtq_f32_u32(vmovl_u16(*v93.i8));
      v91[-1] = vcvtq_f32_u32(vmovl_high_u16(v93));
      v43 = vcvtq_f32_u32(v95);
      *v91 = v94;
      v91[1] = v43;
      v91 += 4;
      v90 += 4;
      v92 -= 16;
    }

    while (v92);
    if (v15 != v44)
    {
      if ((v15 & 0xC) == 0)
      {
        goto LABEL_178;
      }

LABEL_109:
      v96 = v44;
      v44 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v97 = 2 * v96;
      v98 = (v18 + 4 * v96);
      v99 = v96 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v43 = vcvtq_f32_u32(vmovl_u16(*&v24[v97]));
        *v98++ = v43;
        v97 += 8;
        v99 += 4;
      }

      while (v99);
      goto LABEL_177;
    }
  }

LABEL_165:
  free(v24);

LABEL_166:
  *&v20 = ulps;
  *&v21 = error;
  *&v22 = r;
  v145 = [(MPSGraphTensorData *)self checkTensorData:v18 nativeUlps:v20 absoluteErr:v21 PSNR:v22];
  free(v18);

  return v145;
}

@end