@interface MPSVector
- (MPSVector)init;
- (MPSVector)initWithBuffer:(id)buffer descriptor:(MPSVectorDescriptor *)descriptor;
- (MPSVector)initWithBuffer:(id)buffer length:(unint64_t)length dataType:(unsigned int)type;
- (MPSVector)initWithBuffer:(id)buffer offset:(NSUInteger)offset descriptor:(MPSVectorDescriptor *)descriptor;
- (MPSVector)initWithDevice:(id)device descriptor:(MPSVectorDescriptor *)descriptor;
- (NSUInteger)resourceSize;
- (id).cxx_construct;
- (id)data;
- (id)initPrivateWithDescriptor:(id)descriptor device:(void *)device;
@end

@implementation MPSVector

- (MPSVector)init
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
  v68.receiver = self;
  v68.super_class = MPSVector;
  v10 = [(MPSVector *)&v68 init];
  if (v10)
  {
    if (descriptor)
    {
      objc_msgSend_vectorBytes(descriptor, v6, v7, v8, v9);
      objc_msgSend_length(descriptor, v11, v12, v13, v14);
      objc_msgSend_dataType(descriptor, v15, v16, v17, v18);
      v23 = objc_msgSend_vectorBytes(descriptor, v19, v20, v21, v22);
      v28 = objc_msgSend_length(descriptor, v24, v25, v26, v27);
      if (v23 >= v28 * (objc_msgSend_dataType(descriptor, v29, v30, v31, v32) >> 3))
      {
        objc_msgSend_vectorBytes(descriptor, v33, v34, v35, v36);
        objc_msgSend_dataType(descriptor, v37, v38, v39, v40);
        v45 = objc_msgSend_vectorBytes(descriptor, v41, v42, v43, v44);
        if (!(v45 % (objc_msgSend_dataType(descriptor, v46, v47, v48, v49) >> 3)))
        {
          v10->_device = device;
          v10->_length = objc_msgSend_length(descriptor, v50, v51, v52, v53);
          v10->_dataType = objc_msgSend_dataType(descriptor, v54, v55, v56, v57);
          v10->_vectors = objc_msgSend_vectors(descriptor, v58, v59, v60, v61);
          v10->_vectorBytes = objc_msgSend_vectorBytes(descriptor, v62, v63, v64, v65);
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
    v67 = objc_opt_class();
    NSStringFromClass(v67);
    MTLReportFailure();
    goto LABEL_13;
  }

  return v10;
}

- (MPSVector)initWithBuffer:(id)buffer length:(unint64_t)length dataType:(unsigned int)type
{
  if (!buffer)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }

    v33 = objc_opt_class();
    NSStringFromClass(v33);
    goto LABEL_8;
  }

  v9 = objc_msgSend_device(buffer, a2, buffer, length, *&type);
  MPSDevice = MPSDevice::GetMPSDevice(v9);
  if (!MPSDevice)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v22 = objc_opt_class();
      NSStringFromClass(v22);
      v27 = objc_msgSend_device(buffer, v23, v24, v25, v26);
      objc_msgSend_name(v27, v28, v29, v30, v31);
LABEL_8:
      MTLReportFailure();
    }

LABEL_9:

    return 0;
  }

  v11 = MPSDevice;
  v39.receiver = self;
  v39.super_class = MPSVector;
  v12 = [(MPSVector *)&v39 init];
  self = v12;
  if (v12)
  {
    v12->_device = v11;
    v12->_length = length;
    v12->_dataType = type;
    v17 = (type >> 3) * length;
    v12->_vectors = 1;
    v12->_vectorBytes = v17;
    objc_msgSend_length(buffer, v13, v14, v15, v16);
    if (v17 <= objc_msgSend_length(buffer, v18, v19, v20, v21))
    {
      MPSAutoBuffer::InitWithBuffer(&self->_buffer, buffer);
      self->_offset = 0;
      return self;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v34 = objc_opt_class();
      NSStringFromClass(v34);
      objc_msgSend_length(buffer, v35, v36, v37, v38);
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  return self;
}

- (MPSVector)initWithBuffer:(id)buffer descriptor:(MPSVectorDescriptor *)descriptor
{
  if (!buffer)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (!descriptor)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  objc_msgSend_vectorBytes(descriptor, a2, buffer, descriptor, v4);
  objc_msgSend_length(descriptor, v8, v9, v10, v11);
  objc_msgSend_dataType(descriptor, v12, v13, v14, v15);
  v20 = objc_msgSend_vectorBytes(descriptor, v16, v17, v18, v19);
  v25 = objc_msgSend_length(descriptor, v21, v22, v23, v24);
  if (v20 < v25 * (objc_msgSend_dataType(descriptor, v26, v27, v28, v29) >> 3))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  objc_msgSend_vectorBytes(descriptor, v30, v31, v32, v33);
  objc_msgSend_dataType(descriptor, v34, v35, v36, v37);
  v42 = objc_msgSend_vectorBytes(descriptor, v38, v39, v40, v41);
  if (v42 % (objc_msgSend_dataType(descriptor, v43, v44, v45, v46) >> 3))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

LABEL_21:
    v92 = objc_opt_class();
    NSStringFromClass(v92);
    goto LABEL_11;
  }

  v51 = objc_msgSend_device(buffer, v47, v48, v49, v50);
  MPSDevice = MPSDevice::GetMPSDevice(v51);
  if (!MPSDevice)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    v81 = objc_opt_class();
    NSStringFromClass(v81);
    v86 = objc_msgSend_device(buffer, v82, v83, v84, v85);
    objc_msgSend_name(v86, v87, v88, v89, v90);
LABEL_11:
    MTLReportFailure();
    goto LABEL_12;
  }

  v53 = MPSDevice;
  v98.receiver = self;
  v98.super_class = MPSVector;
  v54 = [(MPSVector *)&v98 init];
  self = v54;
  if (v54)
  {
    v54->_device = v53;
    v54->_length = objc_msgSend_length(descriptor, v55, v56, v57, v58);
    self->_vectors = objc_msgSend_vectors(descriptor, v59, v60, v61, v62);
    self->_vectorBytes = objc_msgSend_vectorBytes(descriptor, v63, v64, v65, v66);
    v71 = objc_msgSend_dataType(descriptor, v67, v68, v69, v70);
    self->_dataType = v71;
    v72 = self->_length * (v71 >> 3);
    objc_msgSend_length(buffer, v73, v74, v75, v76);
    if (v72 <= objc_msgSend_length(buffer, v77, v78, v79, v80))
    {
      MPSAutoBuffer::InitWithBuffer(&self->_buffer, buffer);
      self->_offset = 0;
      return self;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v93 = objc_opt_class();
      NSStringFromClass(v93);
      objc_msgSend_length(buffer, v94, v95, v96, v97);
      goto LABEL_11;
    }

LABEL_12:

    return 0;
  }

  return self;
}

- (MPSVector)initWithBuffer:(id)buffer offset:(NSUInteger)offset descriptor:(MPSVectorDescriptor *)descriptor
{
  result = objc_msgSend_initWithBuffer_descriptor_(self, a2, buffer, descriptor, descriptor);
  if (result)
  {
    v12 = result;
    v13 = result->_length * (result->_dataType >> 3);
    objc_msgSend_length(buffer, v8, v9, v10, v11);
    if (v13 + offset > objc_msgSend_length(buffer, v14, v15, v16, v17))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v18 = objc_opt_class();
        NSStringFromClass(v18);
        objc_msgSend_length(buffer, v19, v20, v21, v22);
        MTLReportFailure();
      }

      return 0;
    }

    else
    {
      result = v12;
      v12->_offset = offset;
    }
  }

  return result;
}

- (MPSVector)initWithDevice:(id)device descriptor:(MPSVectorDescriptor *)descriptor
{
  MPSDevice = MPSDevice::GetMPSDevice(device);
  if (MPSDevice)
  {
    v8 = MPSDevice;
    v33.receiver = self;
    v33.super_class = MPSVector;
    result = [(MPSVector *)&v33 init];
    if (result)
    {
      result->_device = v8;
      v14 = result;
      result->_length = objc_msgSend_length(descriptor, v10, v11, v12, v13);
      v14->_vectors = objc_msgSend_vectors(descriptor, v15, v16, v17, v18);
      v14->_vectorBytes = objc_msgSend_vectorBytes(descriptor, v19, v20, v21, v22);
      v27 = objc_msgSend_dataType(descriptor, v23, v24, v25, v26);
      result = v14;
      v14->_dataType = v27;
      v14->_buffer._requestedSize = v14->_vectors * v14->_vectorBytes;
      v14->_buffer._device = device;
      v14->_buffer._resourceSize = xmmword_22E37B630;
      v14->_offset = 0;
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v28 = objc_opt_class();
      NSStringFromClass(v28);
      objc_msgSend_name(device, v29, v30, v31, v32);
      MTLReportFailure();
    }

    return 0;
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

- (id).cxx_construct
{
  atomic_store(0, self + 7);
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end