@interface MTLTensorDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)validateWithBuffer:(id)buffer offset:(unint64_t)offset error:(id *)error;
- (BOOL)validateWithDevice:(id)device error:(id *)error;
- (MTLTensorDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLTensorDescriptor

- (MTLTensorDescriptor)init
{
  v5.receiver = self;
  v5.super_class = MTLTensorDescriptor;
  v2 = [(MTLTensorDescriptor *)&v5 init];
  if (v2)
  {
    v4 = 1;
    v2->_dimensions = [[MTLTensorExtents alloc] initWithRank:1 values:&v4];
    v2->_strides = 0;
    *&v2->_dataType = vdupq_n_s64(3uLL);
    v2->_forceResourceIndex = 0;
    v2->_resourceOptions = 0;
    v2->_resourceIndex = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLTensorDescriptor;
  [(MTLTensorDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 16) = [(MTLTensorExtents *)self->_dimensions copyWithZone:zone];
  *(v5 + 24) = [(MTLTensorExtents *)self->_strides copyWithZone:zone];
  [v5 setDataType:self->_dataType];
  [v5 setUsage:self->_usage];
  [v5 setForceResourceIndex:self->_forceResourceIndex];
  [v5 setResourceIndex:self->_resourceIndex];
  [v5 setResourceOptions:self->_resourceOptions];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  result = Class == object_getClass(equal) && (v6 = -[MTLTensorExtents tensorExtentsInternal](self->_dimensions, "tensorExtentsInternal"), v6 == [*(equal + 2) tensorExtentsInternal]) && (v7 = -[MTLTensorExtents tensorExtentsInternal](self->_strides, "tensorExtentsInternal"), v7 == objc_msgSend(*(equal + 3), "tensorExtentsInternal")) && self->_dataType == *(equal + 4) && self->_usage == *(equal + 5) && self->_forceResourceIndex == *(equal + 8) && self->_resourceIndex == *(equal + 7) && self->_resourceOptions == *(equal + 6);
  return result;
}

- (unint64_t)hash
{
  bzero(v5, 0x38uLL);
  v5[0] = _MTLTensorExtentsHash(self->_dimensions);
  v5[1] = _MTLTensorExtentsHash(self->_strides);
  v3 = vextq_s8(*&self->_resourceOptions, *&self->_resourceOptions, 8uLL);
  v6 = *&self->_dataType;
  v7 = v3;
  forceResourceIndex = self->_forceResourceIndex;
  return _MTLHashState(v5, 0x38uLL);
}

- (BOOL)validateWithDevice:(id)device error:(id *)error
{
  _MTLMessageContextBegin_(v25, "[MTLTensorDescriptor validateWithDevice:error:]", 323, device, 47, "Tensor Descriptor Validation");
  validateDataType(self->_dataType, v25, v6, v7, v8, v9, v10, v11);
  if ((self->_usage & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    _MTLMessageContextPush_(v25, 4, @"Tensor usage (0x%lx) contains unknown bits", v13, v14, v15, v16, v17, self->_usage & 0xFFFFFFFFFFFFFFF8);
  }

  validateMTLResourceOptions(self->_resourceOptions, v25, v12, v13, v14, v15, v16, v17);
  validateDimensions(self->_dimensions, v25);
  if (self->_strides)
  {
    _MTLMessageContextPush_(v25, 4, @"Strides should be nil when using [MTLDevice newTensorWithDescriptor:error:]", v18, v19, v20, v21, v22, v24);
  }

  *error = _MTLMessageContextEndNSError(v25, @"MTLTensorDomain", 2);
  return v25[0] == 0;
}

- (BOOL)validateWithBuffer:(id)buffer offset:(unint64_t)offset error:(id *)error
{
  _MTLMessageContextBegin_(v49, "-[MTLTensorDescriptor validateWithBuffer:offset:error:]", 339, [buffer device], 47, "Tensor Descriptor Validation");
  v16 = tensorDataTypeBitCount(self->_dataType, v9, v10, v11, v12, v13, v14, v15);
  validateDataType(self->_dataType, v49, v17, v18, v19, v20, v21, v22);
  if ((self->_usage & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    _MTLMessageContextPush_(v49, 4, @"Tensor usage (0x%lx) contains unknown bits", v23, v24, v25, v26, v27, self->_usage & 0xFFFFFFFFFFFFFFF8);
  }

  storageMode = [(MTLTensorDescriptor *)self storageMode];
  if (storageMode != [buffer storageMode])
  {
    [MTLTensorDescriptor validateWithBuffer:offset:error:];
  }

  cpuCacheMode = [(MTLTensorDescriptor *)self cpuCacheMode];
  if (cpuCacheMode != [buffer cpuCacheMode])
  {
    [MTLTensorDescriptor validateWithBuffer:offset:error:];
  }

  if ([(MTLTensorDescriptor *)self hazardTrackingMode])
  {
    hazardTrackingMode = [(MTLTensorDescriptor *)self hazardTrackingMode];
    if (hazardTrackingMode != [buffer hazardTrackingMode])
    {
      [MTLTensorDescriptor validateWithBuffer:offset:error:];
    }
  }

  if (8 * offset % v16)
  {
    _MTLMessageContextPush_(v49, 4, @"Buffer offset (%llu bytes, %llu bits) should be aligned to the tensor data type size (%lu bits)", v30, v31, v32, v33, v34, offset);
  }

  validateDimensions(self->_dimensions, v49);
  p_strides = &self->_strides;
  strides = self->_strides;
  if (!strides)
  {
    _MTLMessageContextPush_(v49, 4, @"Strides should not be nil when using [MTLBuffer newTensorWithDescriptor:offset:error:]", v36, 0, v37, v38, v39, v48);
    strides = *p_strides;
  }

  verifyStrides(v49, 4, self->_usage, self->_dimensions, strides);
  if ((self->_usage & 4) != 0)
  {
    if (offset)
    {
      _MTLMessageContextPush_(v49, 4, @"Buffer offset (%llu) should be 0 when using MTLTensorUsageMachineLearning", v42, v43, v44, v45, v46, offset);
    }

    if ([*p_strides rank] && objc_msgSend(*p_strides, "extentAtDimensionIndex:", 0) != 1)
    {
      [MTLTensorDescriptor validateWithBuffer:? offset:? error:?];
    }

    if ([*p_strides rank] >= 2 && ((objc_msgSend(*p_strides, "extentAtDimensionIndex:", 1) * v16) & 0x1FF) != 0)
    {
      [MTLTensorDescriptor validateWithBuffer:offset:error:];
    }
  }

  *error = _MTLMessageContextEndNSError(v49, @"MTLTensorDomain", 2);
  return v49[0] == 0;
}

- (void)validateWithBuffer:offset:error:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v2 = [v1 storageMode];
  v9 = [v0 storageMode];
  OUTLINED_FUNCTION_0_9(v9, v3, @"Tensor's storage mode (0x%lu) should match the buffer's storage mode (0x%lu)", v4, v5, v6, v7, v8, v2);
}

- (void)validateWithBuffer:offset:error:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v2 = [v1 cpuCacheMode];
  v9 = [v0 cpuCacheMode];
  OUTLINED_FUNCTION_0_9(v9, v3, @"Tensor's cpu cache mode (0x%lu) should match the buffer's cpu cache mode (0x%lu)", v4, v5, v6, v7, v8, v2);
}

- (void)validateWithBuffer:offset:error:.cold.3()
{
  OUTLINED_FUNCTION_1_5();
  v2 = [v1 hazardTrackingMode];
  v9 = [v0 hazardTrackingMode];
  OUTLINED_FUNCTION_0_9(v9, v3, @"Tensor's hazard tracking mode (0x%lu) should match the buffer's hazard tracking mode (0x%lu)", v4, v5, v6, v7, v8, v2);
}

- (void)validateWithBuffer:offset:error:.cold.5()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v1;
  v3 = [*v1 extentAtDimensionIndex:1];
  v4 = ([*v2 extentAtDimensionIndex:1] * v0) >> 3;
  v5 = [*v2 extentAtDimensionIndex:1];
  OUTLINED_FUNCTION_0_9(v5, v6, @"Stride at index 1 (%llu elements, %llu bytes, %llu bits) should be 64-byte (512-bit) aligned when using MTLTensorUsageMachineLearning", v7, v8, v9, v10, v11, v3);
}

@end