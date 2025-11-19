@interface MPSPredicate
+ (MPSPredicate)predicateWithBuffer:(id)buffer offset:(NSUInteger)offset;
- (MPSPredicate)init;
- (MPSPredicate)initWithBuffer:(id)buffer offset:(NSUInteger)offset;
- (MPSPredicate)initWithDevice:(id)device;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSPredicate

+ (MPSPredicate)predicateWithBuffer:(id)buffer offset:(NSUInteger)offset
{
  v6 = [MPSPredicate alloc];
  v9 = objc_msgSend_initWithBuffer_offset_(v6, v7, buffer, offset, v8);

  return v9;
}

- (MPSPredicate)initWithBuffer:(id)buffer offset:(NSUInteger)offset
{
  v39.receiver = self;
  v39.super_class = MPSPredicate;
  result = [(MPSPredicate *)&v39 init];
  if (result)
  {
    v11 = result;
    if (buffer)
    {
      if ((offset & 3) == 0)
      {
        if (objc_msgSend_length(buffer, v7, v8, v9, v10) && (objc_msgSend_length(buffer, v12, v13, v14, v15), (offset | 3) >= objc_msgSend_length(buffer, v16, v17, v18, v19)))
        {
          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_13;
          }

          v34 = objc_opt_class();
          NSStringFromClass(v34);
          objc_msgSend_length(buffer, v35, v36, v37, v38);
        }

        else
        {
          v20 = objc_msgSend_device(buffer, v12, v13, v14, v15);
          MPSDevice = MPSDevice::GetMPSDevice(v20);
          if (MPSDevice && ((*(*MPSDevice + 88))(MPSDevice) & 1) != 0)
          {
            v22 = buffer;
            result = v11;
            v11->_predicateBuffer = v22;
            v11->_predicateOffset = offset;
            return result;
          }

          if (!MTLReportFailureTypeEnabled())
          {
LABEL_13:

            return 0;
          }

          v23 = objc_opt_class();
          NSStringFromClass(v23);
          v28 = objc_msgSend_device(buffer, v24, v25, v26, v27);
          objc_msgSend_name(v28, v29, v30, v31, v32);
        }

LABEL_12:
        MTLReportFailure();
        goto LABEL_13;
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

    v33 = objc_opt_class();
    NSStringFromClass(v33);
    goto LABEL_12;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = MPSPredicate;
  v4 = [(MPSPredicate *)&v14 debugDescription];
  v9 = objc_msgSend_debugDescription(self->_predicateBuffer, v5, v6, v7, v8);
  return objc_msgSend_stringWithFormat_(v3, v10, @"%@\n\tbuffer:             %@\n\toffset:            %lu\n", v11, v12, v4, v9, self->_predicateOffset);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSPredicate;
  [(MPSPredicate *)&v3 dealloc];
}

- (MPSPredicate)initWithDevice:(id)device
{
  v20.receiver = self;
  v20.super_class = MPSPredicate;
  result = [(MPSPredicate *)&v20 init];
  if (result)
  {
    v5 = result;
    MPSDevice = MPSDevice::GetMPSDevice(device);
    if (MPSDevice && (v7 = MPSDevice, v8 = *MPSDevice, ((*(*MPSDevice + 88))() & 1) != 0))
    {
      v9 = (*(v8 + 24))(v7);
      v12 = objc_msgSend_newBufferWithLength_options_(device, v10, 16, 16 * v9, v11);
      if (v12)
      {
        v13 = v12;
        result = v5;
        v5->_predicateBuffer = v13;
        v5->_predicateOffset = 0;
        return result;
      }

      if (MTLReportFailureTypeEnabled())
      {
        v19 = objc_opt_class();
        NSStringFromClass(v19);
        goto LABEL_9;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      objc_msgSend_name(device, v15, v16, v17, v18);
LABEL_9:
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (MPSPredicate)init
{
  v3 = MTLCreateSystemDefaultDevice();
  if (v3)
  {
    v7 = v3;
    v8 = objc_msgSend_initWithDevice_(self, v4, v3, v5, v6);

    return v8;
  }

  else
  {

    return 0;
  }
}

@end