@interface MPSMatrix
- (BOOL)canAliasWithNDArrayDescriptor:(id)descriptor;
- (BOOL)doesAliasWithNDArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (MPSMatrix)init;
- (MPSMatrix)initWithBuffer:(id)buffer descriptor:(MPSMatrixDescriptor *)descriptor;
- (MPSMatrix)initWithBuffer:(id)buffer offset:(NSUInteger)offset descriptor:(MPSMatrixDescriptor *)descriptor;
- (MPSMatrix)initWithDevice:(id)device descriptor:(MPSMatrixDescriptor *)descriptor;
- (NSUInteger)resourceSize;
- (id).cxx_construct;
- (id)data;
- (id)debugDescription;
- (id)initPrivateWithDescriptor:(id)descriptor device:(void *)device;
- (id)ndArrayWithCommandBuffer:(id)buffer descriptor:(id)descriptor aliasing:(unint64_t)aliasing;
@end

@implementation MPSMatrix

- (MPSMatrix)init
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (id)initPrivateWithDescriptor:(id)descriptor device:(void *)device
{
  v76.receiver = self;
  v76.super_class = MPSMatrix;
  v10 = [(MPSMatrix *)&v76 init];
  if (v10)
  {
    if (descriptor)
    {
      objc_msgSend_rowBytes(descriptor, v6, v7, v8, v9);
      objc_msgSend_columns(descriptor, v11, v12, v13, v14);
      objc_msgSend_dataType(descriptor, v15, v16, v17, v18);
      v23 = objc_msgSend_rowBytes(descriptor, v19, v20, v21, v22);
      v28 = objc_msgSend_columns(descriptor, v24, v25, v26, v27);
      if (v23 >= v28 * (objc_msgSend_dataType(descriptor, v29, v30, v31, v32) >> 3))
      {
        objc_msgSend_rowBytes(descriptor, v33, v34, v35, v36);
        objc_msgSend_dataType(descriptor, v37, v38, v39, v40);
        v45 = objc_msgSend_rowBytes(descriptor, v41, v42, v43, v44);
        if (!(v45 % (objc_msgSend_dataType(descriptor, v46, v47, v48, v49) >> 3)))
        {
          v10->_device = device;
          v10->_rows = objc_msgSend_rows(descriptor, v50, v51, v52, v53);
          v10->_columns = objc_msgSend_columns(descriptor, v54, v55, v56, v57);
          v10->_matrices = objc_msgSend_matrices(descriptor, v58, v59, v60, v61);
          v10->_rowBytes = objc_msgSend_rowBytes(descriptor, v62, v63, v64, v65);
          v10->_matrixBytes = objc_msgSend_matrixBytes(descriptor, v66, v67, v68, v69);
          v10->_dataType = objc_msgSend_dataType(descriptor, v70, v71, v72, v73);
          return v10;
        }

        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_12;
        }

LABEL_13:

        return 0;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_13;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_13;
    }

LABEL_12:
    v75 = objc_opt_class();
    NSStringFromClass(v75);
    MTLReportFailure();
    goto LABEL_13;
  }

  return v10;
}

- (MPSMatrix)initWithBuffer:(id)buffer descriptor:(MPSMatrixDescriptor *)descriptor
{
  if (!buffer)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      MTLReportFailure();
    }

    goto LABEL_8;
  }

  v8 = objc_msgSend_device(buffer, a2, buffer, descriptor, v4);
  MPSDevice = MPSDevice::GetMPSDevice(v8);
  if (!MPSDevice)
  {
LABEL_8:

    return 0;
  }

  result = objc_msgSend_initPrivateWithDescriptor_device_(self, v10, descriptor, MPSDevice, v11);
  if (result)
  {
    v13 = result;
    MPSAutoBuffer::InitWithBuffer(&result->_buffer, buffer);
    result = v13;
    v13->_offset = 0;
  }

  return result;
}

- (MPSMatrix)initWithBuffer:(id)buffer offset:(NSUInteger)offset descriptor:(MPSMatrixDescriptor *)descriptor
{
  result = objc_msgSend_initWithBuffer_descriptor_(self, a2, buffer, descriptor, descriptor);
  if (result)
  {
    result->_offset = offset;
  }

  return result;
}

- (MPSMatrix)initWithDevice:(id)device descriptor:(MPSMatrixDescriptor *)descriptor
{
  MPSDevice = MPSDevice::GetMPSDevice(device);
  if (MPSDevice)
  {
    v8 = MPSDevice;
    v43.receiver = self;
    v43.super_class = MPSMatrix;
    result = [(MPSMatrix *)&v43 init];
    if (result)
    {
      result->_device = v8;
      v14 = result;
      result->_rows = objc_msgSend_rows(descriptor, v10, v11, v12, v13);
      v14->_columns = objc_msgSend_columns(descriptor, v15, v16, v17, v18);
      v14->_matrices = objc_msgSend_matrices(descriptor, v19, v20, v21, v22);
      v14->_rowBytes = objc_msgSend_rowBytes(descriptor, v23, v24, v25, v26);
      v14->_matrixBytes = objc_msgSend_matrixBytes(descriptor, v27, v28, v29, v30);
      v35 = objc_msgSend_dataType(descriptor, v31, v32, v33, v34);
      result = v14;
      v14->_dataType = v35;
      matrices = v14->_matrices;
      if (matrices < 2)
      {
        matrices = v14->_rowBytes;
        rows = v14->_rows;
      }

      else
      {
        rows = v14->_matrixBytes;
      }

      v14->_buffer._requestedSize = rows * matrices;
      v14->_buffer._device = device;
      v14->_buffer._resourceSize = xmmword_22E37B630;
      v14->_offset = 0;
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v38 = objc_opt_class();
      NSStringFromClass(v38);
      objc_msgSend_name(device, v39, v40, v41, v42);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (NSUInteger)resourceSize
{
  result = self->_buffer._resourceSize.size;
  if (result == -1)
  {
    result = self->_buffer._device;
    if (result)
    {
      selfCopy = self;
      MPSDevice = MPSDevice::GetMPSDevice(result);
      if (selfCopy->_buffer._device)
      {
        requestedSize = selfCopy->_buffer._requestedSize;
        v7 = selfCopy;
        v8 = MPSDevice;
        v9 = (*(*MPSDevice + 32))();
        v10 = (*(*v8 + 5))(v8);
        result = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(v8[2], v11, (requestedSize + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0], v10 | (16 * v9), v12);
        v7->_buffer._resourceSize.size = result;
        v7->_buffer._resourceSize.align = v13;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)data
{
  p_buffer = &self->_buffer;
  result = atomic_load_explicit(&self->_buffer, memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer(p_buffer, 0);
    return atomic_load_explicit(p_buffer, memory_order_acquire);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    goto LABEL_4;
  }

  if (self == equal)
  {
    LOBYTE(isEqual) = 1;
    return isEqual;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_4;
  }

  isEqual = objc_msgSend_isEqual_(*(self->_device + 2), v6, *(*(equal + 1) + 16), v7, v8);
  if (!isEqual)
  {
    return isEqual;
  }

  if (self->_rows != *(equal + 2) || self->_columns != *(equal + 3) || self->_rowBytes != *(equal + 5) || self->_matrices != *(equal + 4) || self->_matrixBytes != *(equal + 6) || self->_dataType != *(equal + 16))
  {
LABEL_4:
    LOBYTE(isEqual) = 0;
    return isEqual;
  }

  LOBYTE(isEqual) = sub_22E356128(&self->_buffer, equal + 9, v10, v11, v12);
  return isEqual;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MPSMatrix;
  v4 = [(MPSMatrix *)&v9 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tRows:  \t\t\t%lu\n\tColumns:\t\t%lu\n\tMatrices:\t\t%lu\n\trowBytes:\t\t%lu\n\tmatrixBytes:\t%lu", v6, v7, v4, self->_rows, self->_columns, self->_matrices, self->_rowBytes, self->_matrixBytes);
}

- (BOOL)canAliasWithNDArrayDescriptor:(id)descriptor
{
  v7 = objc_msgSend_dataType(descriptor, a2, descriptor, v3, v4);
  v8 = *(descriptor + 1);
  if (*(descriptor + 268))
  {
    v9 = *(descriptor + 1) * (v7 >> 3);
  }

  else
  {
    v9 = (*(descriptor + 1) * (v7 >> 3) + 15) & 0x3FFFFFFFFFF0;
  }

  v10 = v9 * DWORD1(v8);
  if (self->_matrices == 1)
  {
    v11 = *(descriptor + 28);
    if (v11 >= 3)
    {
      v13 = *(descriptor + 3);
      v12 = *(descriptor + 4);
      v14 = 2;
      v15 = *(descriptor + 2);
      do
      {
        v17[0] = v8;
        v17[1] = v15;
        v17[2] = v13;
        v17[3] = v12;
        v10 *= *(v17 + (v14++ & 0xF));
      }

      while (v11 != v14);
    }
  }

  return v9 == self->_rowBytes && v10 == self->_matrixBytes && self->_offset == 0;
}

- (BOOL)doesAliasWithNDArray:(id)array
{
  explicit = atomic_load_explicit(&self->_buffer, memory_order_acquire);
  v6 = atomic_load_explicit(array + 65, memory_order_acquire);
  if (explicit)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v8 = objc_msgSend_storageMode(explicit, a2, array, v3, v4);
  if (v8 != objc_msgSend_storageMode(v6, v9, v10, v11, v12))
  {
    return 0;
  }

  if (objc_msgSend_storageMode(explicit, v13, v14, v15, v16) == 2)
  {
    v21 = objc_msgSend_gpuAddress(explicit, v17, v18, v19, v20);
  }

  else
  {
    v21 = objc_msgSend_contents(explicit, v17, v18, v19, v20);
  }

  v27 = v21;
  v28 = objc_msgSend_length(explicit, v22, v23, v24, v25);
  if (objc_msgSend_storageMode(v6, v29, v30, v31, v32) == 2)
  {
    v37 = objc_msgSend_gpuAddress(v6, v33, v34, v35, v36);
  }

  else
  {
    v37 = objc_msgSend_contents(v6, v33, v34, v35, v36);
  }

  v42 = v37;
  v43 = objc_msgSend_length(v6, v38, v39, v40, v41) + v37;
  return v28 + v27 > v42 && v43 > v27;
}

- (id)ndArrayWithCommandBuffer:(id)buffer descriptor:(id)descriptor aliasing:(unint64_t)aliasing
{
  canAliasWithNDArrayDescriptor = objc_msgSend_canAliasWithNDArrayDescriptor_(self, a2, descriptor, descriptor, aliasing);
  if (aliasing <= 1 && canAliasWithNDArrayDescriptor)
  {
    v10 = [MPSNDArray alloc];
    p_buffer = &self->_buffer;
    explicit = atomic_load_explicit(p_buffer, memory_order_acquire);
    if (!explicit)
    {
      v15 = v10;
      MPSAutoBuffer::AllocateBuffer(p_buffer, 0);
      v10 = v15;
      explicit = atomic_load_explicit(p_buffer, memory_order_acquire);
    }

    v16 = objc_msgSend_initWithBuffer_descriptor_(v10, v11, explicit, descriptor, v12);

    return v16;
  }

  else
  {
    if (aliasing == 1)
    {
      return 0;
    }

    if (self->_matrixBytes != self->_rowBytes * self->_rows && MTLReportFailureTypeEnabled())
    {
      matrixBytes = self->_matrixBytes;
      v35 = self->_rowBytes * self->_rows;
      selfCopy = self;
      MTLReportFailure();
    }

    v19 = [MPSNDArray alloc];
    v24 = objc_msgSend_device(buffer, v20, v21, v22, v23);
    v18 = objc_msgSend_initWithDevice_descriptor_(v19, v25, v24, descriptor, v26);
    v27 = malloc_type_calloc(0x10uLL, 8uLL, 0x100004000313F17uLL);
    v29 = v27;
    *v27 = self->_dataType >> 3;
    if (*(descriptor + 28) >= 2uLL)
    {
      v27[1] = self->_rowBytes;
      if (*(descriptor + 28) >= 3uLL)
      {
        v30 = 3;
        v31 = 2;
        do
        {
          v27[v31] = v27[v30 - 2] * *(descriptor + ((v30 - 2) & 0xFLL) + 4);
          v31 = v30++;
        }

        while (*(descriptor + 28) > v31);
      }
    }

    v32 = atomic_load_explicit(&self->_buffer, memory_order_acquire);
    if (!v32)
    {
      MPSAutoBuffer::AllocateBuffer(&self->_buffer, 0);
      v32 = atomic_load_explicit(&self->_buffer, memory_order_acquire);
    }

    objc_msgSend_importDataWithCommandBuffer_fromBuffer_sourceDataType_offset_rowStrides_(v18, v28, buffer, v32, self->_dataType, self->_offset, v29, selfCopy, matrixBytes, v35);
    free(v29);
    return v18;
  }
}

- (id).cxx_construct
{
  atomic_store(0, self + 9);
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

@end