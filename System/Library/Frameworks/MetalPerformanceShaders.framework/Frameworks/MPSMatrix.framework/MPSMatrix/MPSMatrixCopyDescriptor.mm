@interface MPSMatrixCopyDescriptor
+ (MPSMatrixCopyDescriptor)descriptorWithSourceMatrix:(MPSMatrix *)sourceMatrix destinationMatrix:(MPSMatrix *)destinationMatrix offsets:(MPSMatrixCopyOffsets)offsets;
- (MPSMatrixCopyDescriptor)initWithDevice:(id)device count:(NSUInteger)count;
- (MPSMatrixCopyDescriptor)initWithSourceMatrices:(NSArray *)sourceMatrices destinationMatrices:(NSArray *)destinationMatrices offsetVector:(MPSVector *)offsets offset:(NSUInteger)byteOffset;
- (void)dealloc;
- (void)setCopyOperationAtIndex:(NSUInteger)index sourceMatrix:(MPSMatrix *)sourceMatrix destinationMatrix:(MPSMatrix *)destinationMatrix offsets:(MPSMatrixCopyOffsets)offsets;
@end

@implementation MPSMatrixCopyDescriptor

- (MPSMatrixCopyDescriptor)initWithDevice:(id)device count:(NSUInteger)count
{
  v11.receiver = self;
  v11.super_class = MPSMatrixCopyDescriptor;
  result = [(MPSMatrixCopyDescriptor *)&v11 init];
  if (result)
  {
    result->_gpuOffsetsVector = 0;
    v6 = result;
    result->_cpuOffsetsVector = malloc_type_malloc(16 * count, 0x1000040451B5BE8uLL);
    v6->_sourceMatrices = malloc_type_malloc(8 * count, 0x80040B8603338uLL);
    v7 = malloc_type_malloc(8 * count, 0x80040B8603338uLL);
    result = v6;
    v6->_destinationMatrices = v7;
    if (count)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = &v6->_cpuOffsetsVector[v8];
        *&v10->var0 = 0;
        *&v10->var2 = 0;
        v6->_sourceMatrices[v9] = 0;
        v6->_destinationMatrices[v9++] = 0;
        ++v8;
      }

      while (count != v9);
    }

    v6->_allocCount = count;
    v6->_filledCount = 0;
    v6->_gpuBufferOffset = 0;
  }

  return result;
}

- (MPSMatrixCopyDescriptor)initWithSourceMatrices:(NSArray *)sourceMatrices destinationMatrices:(NSArray *)destinationMatrices offsetVector:(MPSVector *)offsets offset:(NSUInteger)byteOffset
{
  v34.receiver = self;
  v34.super_class = MPSMatrixCopyDescriptor;
  v10 = [(MPSMatrixCopyDescriptor *)&v34 init];
  if (v10)
  {
    v11 = offsets;
    v10->_cpuOffsetsVector = 0;
    v10->_gpuOffsetsVector = v11;
    v19 = objc_msgSend_count(sourceMatrices, v12, v13, v14, v15, v16, v17, v18);
    v10->_sourceMatrices = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
    v10->_destinationMatrices = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
    v10->_allocCount = v19;
    v10->_filledCount = v19;
    v10->_gpuBufferOffset = byteOffset;
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v10->_sourceMatrices[i] = objc_msgSend_objectAtIndexedSubscript_(sourceMatrices, v20, i, v21, v22, v23, v24, v25);
        v10->_destinationMatrices[i] = objc_msgSend_objectAtIndexedSubscript_(destinationMatrices, v27, i, v28, v29, v30, v31, v32);
      }
    }
  }

  return v10;
}

+ (MPSMatrixCopyDescriptor)descriptorWithSourceMatrix:(MPSMatrix *)sourceMatrix destinationMatrix:(MPSMatrix *)destinationMatrix offsets:(MPSMatrixCopyOffsets)offsets
{
  v5 = *&offsets.destinationRowOffset;
  v6 = *&offsets.sourceRowOffset;
  v9 = [MPSMatrixCopyDescriptor alloc];
  v17 = objc_msgSend_device(sourceMatrix, v10, v11, v12, v13, v14, v15, v16);
  result = objc_msgSend_initWithDevice_count_(v9, v18, v17, 1, v19, v20, v21, v22);
  if (result)
  {
    v26 = result;
    objc_msgSend_setCopyOperationAtIndex_sourceMatrix_destinationMatrix_offsets_(result, v24, 0, sourceMatrix, destinationMatrix, v6, v5, v25);
    return v26;
  }

  return result;
}

- (void)setCopyOperationAtIndex:(NSUInteger)index sourceMatrix:(MPSMatrix *)sourceMatrix destinationMatrix:(MPSMatrix *)destinationMatrix offsets:(MPSMatrixCopyOffsets)offsets
{
  if (self->_allocCount > index)
  {
    v6 = *&offsets.destinationRowOffset;
    v7 = *&offsets.sourceRowOffset;
    if (!self->_sourceMatrices[index])
    {
      ++self->_filledCount;
    }

    self->_sourceMatrices[index] = sourceMatrix;
    self->_destinationMatrices[index] = destinationMatrix;
    v11 = &self->_cpuOffsetsVector[index];
    *&v11->var0 = v7;
    *&v11->var2 = v6;
  }
}

- (void)dealloc
{
  if (self->_allocCount)
  {
    v3 = 0;
    do
    {
      sourceMatrices = self->_sourceMatrices;
      if (sourceMatrices)
      {
      }

      destinationMatrices = self->_destinationMatrices;
      if (destinationMatrices)
      {
      }

      ++v3;
    }

    while (v3 < self->_allocCount);
  }

  v6 = self->_sourceMatrices;
  if (v6)
  {
    free(v6);
  }

  v7 = self->_destinationMatrices;
  if (v7)
  {
    free(v7);
  }

  cpuOffsetsVector = self->_cpuOffsetsVector;
  if (cpuOffsetsVector)
  {
    free(cpuOffsetsVector);
  }

  v9.receiver = self;
  v9.super_class = MPSMatrixCopyDescriptor;
  [(MPSMatrixCopyDescriptor *)&v9 dealloc];
}

@end